-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package iretire_global_package is -- 
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
  component iretire is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      AJIT_to_ENV_logger_pipe_read_data: out std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_read_req : in std_logic_vector(0 downto 0);
      AJIT_to_ENV_logger_pipe_read_ack : out std_logic_vector(0 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data: out std_logic_vector(9 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req : in std_logic_vector(0 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_data: in std_logic_vector(153 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_write_data: in std_logic_vector(50 downto 0);
      teu_fpunit_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_read_data: out std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_write_data: in std_logic_vector(95 downto 0);
      teu_iunit_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_write_data: in std_logic_vector(53 downto 0);
      teu_loadstore_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_to_ccu_pipe_read_data: out std_logic_vector(225 downto 0);
      teu_to_ccu_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_to_ccu_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package iretire_global_package;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity calculate_performance_counter_update_Volatile is -- 
  port ( -- 
    instr_executed : in  std_logic_vector(0 downto 0);
    instr_bubbled : in  std_logic_vector(0 downto 0);
    load : in  std_logic_vector(0 downto 0);
    load_miss : in  std_logic_vector(0 downto 0);
    store : in  std_logic_vector(0 downto 0);
    store_miss : in  std_logic_vector(0 downto 0);
    bread_stream : in  std_logic_vector(0 downto 0);
    break_thread : in  std_logic_vector(0 downto 0);
    icache : in  std_logic_vector(0 downto 0);
    icache_miss : in  std_logic_vector(0 downto 0);
    perf_update_command : out  std_logic_vector(9 downto 0)-- 
  );
  -- 
end entity calculate_performance_counter_update_Volatile;
architecture calculate_performance_counter_update_Volatile_arch of calculate_performance_counter_update_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(10-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_executed_buffer :  std_logic_vector(0 downto 0);
  signal instr_bubbled_buffer :  std_logic_vector(0 downto 0);
  signal load_buffer :  std_logic_vector(0 downto 0);
  signal load_miss_buffer :  std_logic_vector(0 downto 0);
  signal store_buffer :  std_logic_vector(0 downto 0);
  signal store_miss_buffer :  std_logic_vector(0 downto 0);
  signal bread_stream_buffer :  std_logic_vector(0 downto 0);
  signal break_thread_buffer :  std_logic_vector(0 downto 0);
  signal icache_buffer :  std_logic_vector(0 downto 0);
  signal icache_miss_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal perf_update_command_buffer :  std_logic_vector(9 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_executed_buffer <= instr_executed;
  instr_bubbled_buffer <= instr_bubbled;
  load_buffer <= load;
  load_miss_buffer <= load_miss;
  store_buffer <= store;
  store_miss_buffer <= store_miss;
  bread_stream_buffer <= bread_stream;
  break_thread_buffer <= break_thread;
  icache_buffer <= icache;
  icache_miss_buffer <= icache_miss;
  -- output handling  -------------------------------------------------------
  perf_update_command <= perf_update_command_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_1321_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1326_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1330_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_1335_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u3_1323_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_1332_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u3_u5_1327_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_1336_wire : std_logic_vector(4 downto 0);
    -- 
  begin -- 
    -- flow through binary operator CONCAT_u1_u2_1321_inst
    process(instr_executed_buffer, instr_bubbled_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(instr_executed_buffer, instr_bubbled_buffer, tmp_var);
      CONCAT_u1_u2_1321_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1326_inst
    process(load_miss_buffer, store_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(load_miss_buffer, store_buffer, tmp_var);
      CONCAT_u1_u2_1326_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1330_inst
    process(store_miss_buffer, bread_stream_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(store_miss_buffer, bread_stream_buffer, tmp_var);
      CONCAT_u1_u2_1330_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1335_inst
    process(icache_buffer, icache_miss_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(icache_buffer, icache_miss_buffer, tmp_var);
      CONCAT_u1_u2_1335_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_1323_inst
    process(CONCAT_u1_u2_1321_wire, load_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1321_wire, load_buffer, tmp_var);
      CONCAT_u2_u3_1323_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_1332_inst
    process(CONCAT_u1_u2_1330_wire, break_thread_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1330_wire, break_thread_buffer, tmp_var);
      CONCAT_u2_u3_1332_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_1327_inst
    process(CONCAT_u2_u3_1323_wire, CONCAT_u1_u2_1326_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_1323_wire, CONCAT_u1_u2_1326_wire, tmp_var);
      CONCAT_u3_u5_1327_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_1336_inst
    process(CONCAT_u2_u3_1332_wire, CONCAT_u1_u2_1335_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_1332_wire, CONCAT_u1_u2_1335_wire, tmp_var);
      CONCAT_u3_u5_1336_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_1337_inst
    process(CONCAT_u3_u5_1327_wire, CONCAT_u3_u5_1336_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_1327_wire, CONCAT_u3_u5_1336_wire, tmp_var);
      perf_update_command_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end calculate_performance_counter_update_Volatile_arch;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
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
    -- flow-through slice operator slice_3734_inst
    sc_instr_class_buffer <= ctrl_word_buffer(21 downto 19);
    -- flow-through slice operator slice_3738_inst
    debug_mode_buffer <= ctrl_word_buffer(18 downto 18);
    -- flow-through slice operator slice_3742_inst
    logger_active_buffer <= ctrl_word_buffer(17 downto 17);
    -- flow-through slice operator slice_3746_inst
    proc_ilvl_buffer <= ctrl_word_buffer(16 downto 13);
    -- flow-through slice operator slice_3750_inst
    enable_traps_buffer <= ctrl_word_buffer(12 downto 12);
    -- flow-through slice operator slice_3754_inst
    single_step_mode_buffer <= ctrl_word_buffer(11 downto 11);
    -- flow-through slice operator slice_3758_inst
    ignore_break_points_buffer <= ctrl_word_buffer(10 downto 10);
    -- flow-through slice operator slice_3762_inst
    S_buffer <= ctrl_word_buffer(9 downto 9);
    -- flow-through slice operator slice_3766_inst
    imm_bit_buffer <= ctrl_word_buffer(8 downto 8);
    -- flow-through slice operator slice_3770_inst
    is_write_psr_buffer <= ctrl_word_buffer(7 downto 7);
    -- flow-through slice operator slice_3774_inst
    is_mmu_ctrl_write_buffer <= ctrl_word_buffer(6 downto 6);
    -- flow-through slice operator slice_3778_inst
    is_flush_buffer <= ctrl_word_buffer(5 downto 5);
    -- flow-through slice operator slice_3782_inst
    is_cti_buffer <= ctrl_word_buffer(4 downto 4);
    -- flow-through slice operator slice_3786_inst
    mis_predict_buffer <= ctrl_word_buffer(3 downto 3);
    -- flow-through slice operator slice_3790_inst
    trap_bit_buffer <= ctrl_word_buffer(2 downto 2);
    -- flow-through slice operator slice_3794_inst
    stream_head_buffer <= ctrl_word_buffer(1 downto 1);
    -- flow-through slice operator slice_3798_inst
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity extract_hit_info_etc_Volatile is -- 
  port ( -- 
    ls_to_retire : in  std_logic_vector(0 downto 0);
    ls_store_signature : in  std_logic_vector(31 downto 0);
    load_access : out  std_logic_vector(0 downto 0);
    load_miss : out  std_logic_vector(0 downto 0);
    store_access : out  std_logic_vector(0 downto 0);
    store_miss : out  std_logic_vector(0 downto 0);
    ls_store_signature_qualified : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity extract_hit_info_etc_Volatile;
architecture extract_hit_info_etc_Volatile_arch of extract_hit_info_etc_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(33-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ls_to_retire_buffer :  std_logic_vector(0 downto 0);
  signal ls_store_signature_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal load_access_buffer :  std_logic_vector(0 downto 0);
  signal load_miss_buffer :  std_logic_vector(0 downto 0);
  signal store_access_buffer :  std_logic_vector(0 downto 0);
  signal store_miss_buffer :  std_logic_vector(0 downto 0);
  signal ls_store_signature_qualified_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ls_to_retire_buffer <= ls_to_retire;
  ls_store_signature_buffer <= ls_store_signature;
  -- output handling  -------------------------------------------------------
  load_access <= load_access_buffer;
  load_miss <= load_miss_buffer;
  store_access <= store_access_buffer;
  store_miss <= store_miss_buffer;
  ls_store_signature_qualified <= ls_store_signature_qualified_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u2_u3_4446_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u3_u32_4449_wire : std_logic_vector(31 downto 0);
    signal NOT_u1_u1_4420_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4431_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4437_wire : std_logic_vector(0 downto 0);
    signal is_hit_4427 : std_logic_vector(0 downto 0);
    signal konst_4414_wire_constant : std_logic_vector(31 downto 0);
    signal konst_4425_wire_constant : std_logic_vector(31 downto 0);
    signal slice_4443_wire : std_logic_vector(1 downto 0);
    signal slice_4448_wire : std_logic_vector(28 downto 0);
    signal type_cast_4445_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_4451_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_4414_wire_constant <= "00000000000000000000000000011111";
    konst_4425_wire_constant <= "00000000000000000000000000011101";
    type_cast_4445_wire_constant <= "0";
    type_cast_4451_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_4452_inst
    ls_store_signature_qualified_buffer <= CONCAT_u3_u32_4449_wire when (ls_to_retire_buffer(0) /=  '0') else type_cast_4451_wire_constant;
    -- flow-through slice operator slice_4443_inst
    slice_4443_wire <= ls_store_signature_buffer(31 downto 30);
    -- flow-through slice operator slice_4448_inst
    slice_4448_wire <= ls_store_signature_buffer(28 downto 0);
    -- flow through binary operator AND_u1_u1_4421_inst
    load_access_buffer <= (ls_to_retire_buffer and NOT_u1_u1_4420_wire);
    -- flow through binary operator AND_u1_u1_4432_inst
    load_miss_buffer <= (load_access_buffer and NOT_u1_u1_4431_wire);
    -- flow through binary operator AND_u1_u1_4438_inst
    store_miss_buffer <= (store_access_buffer and NOT_u1_u1_4437_wire);
    -- flow through binary operator BITSEL_u32_u1_4415_inst
    process(ls_store_signature_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ls_store_signature_buffer, konst_4414_wire_constant, tmp_var);
      store_access_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_4426_inst
    process(ls_store_signature_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(ls_store_signature_buffer, konst_4425_wire_constant, tmp_var);
      is_hit_4427 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4446_inst
    process(slice_4443_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_4443_wire, type_cast_4445_wire_constant, tmp_var);
      CONCAT_u2_u3_4446_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u32_4449_inst
    process(CONCAT_u2_u3_4446_wire, slice_4448_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4446_wire, slice_4448_wire, tmp_var);
      CONCAT_u3_u32_4449_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_4420_inst
    process(store_access_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", store_access_buffer, tmp_var);
      NOT_u1_u1_4420_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4431_inst
    process(is_hit_4427) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_hit_4427, tmp_var);
      NOT_u1_u1_4431_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4437_inst
    process(is_hit_4427) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_hit_4427, tmp_var);
      NOT_u1_u1_4437_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end extract_hit_info_etc_Volatile_arch;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity iretire_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    noblock_teu_stream_corrector_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_read_data : in   std_logic_vector(153 downto 0);
    teu_fpunit_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_read_data : in   std_logic_vector(50 downto 0);
    teu_iunit_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_read_data : in   std_logic_vector(95 downto 0);
    teu_loadstore_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_read_data : in   std_logic_vector(53 downto 0);
    teu_iretire_instruction_log_pipe : in std_logic_vector(31 downto 0);
    teu_iretire_skipped_instruction_log_pipe : in std_logic_vector(31 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req : out  std_logic_vector(0 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data : out  std_logic_vector(9 downto 0);
    teu_to_ccu_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_to_ccu_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_to_ccu_pipe_write_data : out  std_logic_vector(225 downto 0);
    teu_iretire_instruction_log_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iretire_instruction_log_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iretire_instruction_log_pipe_pipe_write_data : out  std_logic_vector(31 downto 0);
    teu_iretire_skipped_instruction_log_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iretire_skipped_instruction_log_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iretire_skipped_instruction_log_pipe_pipe_write_data : out  std_logic_vector(31 downto 0);
    teu_iretire_to_idispatch_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_write_data : out  std_logic_vector(0 downto 0);
    send_instruction_log_call_reqs : out  std_logic_vector(0 downto 0);
    send_instruction_log_call_acks : in   std_logic_vector(0 downto 0);
    send_instruction_log_call_data : out  std_logic_vector(127 downto 0);
    send_instruction_log_call_tag  :  out  std_logic_vector(0 downto 0);
    send_instruction_log_return_reqs : out  std_logic_vector(0 downto 0);
    send_instruction_log_return_acks : in   std_logic_vector(0 downto 0);
    send_instruction_log_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity iretire_daemon;
architecture iretire_daemon_arch of iretire_daemon is -- 
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
  signal iretire_daemon_CP_131_start: Boolean;
  signal iretire_daemon_CP_131_symbol: Boolean;
  -- volatile/operator module components. 
  component calculate_performance_counter_update_Volatile is -- 
    port ( -- 
      instr_executed : in  std_logic_vector(0 downto 0);
      instr_bubbled : in  std_logic_vector(0 downto 0);
      load : in  std_logic_vector(0 downto 0);
      load_miss : in  std_logic_vector(0 downto 0);
      store : in  std_logic_vector(0 downto 0);
      store_miss : in  std_logic_vector(0 downto 0);
      bread_stream : in  std_logic_vector(0 downto 0);
      break_thread : in  std_logic_vector(0 downto 0);
      icache : in  std_logic_vector(0 downto 0);
      icache_miss : in  std_logic_vector(0 downto 0);
      perf_update_command : out  std_logic_vector(9 downto 0)-- 
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
  component extract_hit_info_etc_Volatile is -- 
    port ( -- 
      ls_to_retire : in  std_logic_vector(0 downto 0);
      ls_store_signature : in  std_logic_vector(31 downto 0);
      load_access : out  std_logic_vector(0 downto 0);
      load_miss : out  std_logic_vector(0 downto 0);
      store_access : out  std_logic_vector(0 downto 0);
      store_miss : out  std_logic_vector(0 downto 0);
      ls_store_signature_qualified : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component process_exception_Volatile is -- 
    port ( -- 
      exc : in  std_logic_vector(210 downto 0);
      to_ccu : out  std_logic_vector(225 downto 0)-- 
    );
    -- 
  end component; 
  component send_instruction_log is -- 
    generic (tag_length : integer); 
    port ( -- 
      iu_signature_to_ccu : in  std_logic_vector(31 downto 0);
      fp_signature_to_ccu : in  std_logic_vector(31 downto 0);
      ls_store_signature : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_write_req : out  std_logic_vector(0 downto 0);
      AJIT_to_ENV_logger_pipe_write_ack : in   std_logic_vector(0 downto 0);
      AJIT_to_ENV_logger_pipe_write_data : out  std_logic_vector(31 downto 0);
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
  signal W_sacrifical_ilog_4902_inst_ack_1 : boolean;
  signal phi_stmt_4916_req_1 : boolean;
  signal phi_stmt_4911_ack_0 : boolean;
  signal RPIPE_teu_iunit_to_iretire_4920_inst_ack_0 : boolean;
  signal W_sacrifical_ilog_4902_inst_ack_0 : boolean;
  signal RPIPE_teu_loadstore_to_iretire_4914_inst_req_1 : boolean;
  signal RPIPE_teu_loadstore_to_iretire_4914_inst_ack_0 : boolean;
  signal RPIPE_teu_loadstore_to_iretire_4914_inst_ack_1 : boolean;
  signal W_sacrifical_ilog_4902_inst_req_1 : boolean;
  signal RPIPE_teu_loadstore_to_iretire_4914_inst_req_0 : boolean;
  signal phi_stmt_4911_req_0 : boolean;
  signal phi_stmt_4916_req_0 : boolean;
  signal W_sacrifical_ilog_skipped_4905_inst_req_0 : boolean;
  signal RPIPE_teu_iunit_to_iretire_4920_inst_req_1 : boolean;
  signal do_while_stmt_4909_branch_req_0 : boolean;
  signal RPIPE_teu_fpunit_to_iretire_4925_inst_ack_0 : boolean;
  signal phi_stmt_4916_ack_0 : boolean;
  signal W_sacrifical_ilog_skipped_4905_inst_ack_0 : boolean;
  signal W_sacrifical_ilog_4902_inst_req_0 : boolean;
  signal RPIPE_teu_fpunit_to_iretire_4925_inst_ack_1 : boolean;
  signal phi_stmt_4911_req_1 : boolean;
  signal W_sacrifical_ilog_skipped_4905_inst_req_1 : boolean;
  signal W_sacrifical_ilog_skipped_4905_inst_ack_1 : boolean;
  signal RPIPE_teu_fpunit_to_iretire_4925_inst_req_1 : boolean;
  signal RPIPE_teu_iunit_to_iretire_4920_inst_req_0 : boolean;
  signal phi_stmt_4921_ack_0 : boolean;
  signal phi_stmt_4921_req_0 : boolean;
  signal phi_stmt_4921_req_1 : boolean;
  signal RPIPE_teu_fpunit_to_iretire_4925_inst_req_0 : boolean;
  signal RPIPE_teu_iunit_to_iretire_4920_inst_ack_1 : boolean;
  signal phi_stmt_4926_req_0 : boolean;
  signal phi_stmt_4926_req_1 : boolean;
  signal phi_stmt_4926_ack_0 : boolean;
  signal WPIPE_teu_to_ccu_5842_inst_ack_1 : boolean;
  signal call_stmt_5944_call_ack_0 : boolean;
  signal WPIPE_teu_to_ccu_5842_inst_req_1 : boolean;
  signal WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_1 : boolean;
  signal WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_1 : boolean;
  signal phi_stmt_4930_req_1 : boolean;
  signal phi_stmt_4930_req_0 : boolean;
  signal phi_stmt_4930_ack_0 : boolean;
  signal next_from_stream_corrector_d_4967_4933_buf_req_0 : boolean;
  signal next_from_stream_corrector_d_4967_4933_buf_ack_0 : boolean;
  signal next_from_stream_corrector_d_4967_4933_buf_req_1 : boolean;
  signal next_from_stream_corrector_d_4967_4933_buf_ack_1 : boolean;
  signal call_stmt_5944_call_ack_1 : boolean;
  signal call_stmt_5944_call_req_0 : boolean;
  signal WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_0 : boolean;
  signal phi_stmt_4934_req_1 : boolean;
  signal phi_stmt_4934_req_0 : boolean;
  signal phi_stmt_4934_ack_0 : boolean;
  signal next_last_is_cti_5855_4937_buf_req_0 : boolean;
  signal next_last_is_cti_5855_4937_buf_ack_0 : boolean;
  signal next_last_is_cti_5855_4937_buf_req_1 : boolean;
  signal next_last_is_cti_5855_4937_buf_ack_1 : boolean;
  signal WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_0 : boolean;
  signal phi_stmt_4938_req_1 : boolean;
  signal phi_stmt_4938_req_0 : boolean;
  signal phi_stmt_4938_ack_0 : boolean;
  signal next_last_pc_5861_4941_buf_req_0 : boolean;
  signal next_last_pc_5861_4941_buf_ack_0 : boolean;
  signal next_last_pc_5861_4941_buf_req_1 : boolean;
  signal next_last_pc_5861_4941_buf_ack_1 : boolean;
  signal phi_stmt_4942_req_1 : boolean;
  signal phi_stmt_4942_req_0 : boolean;
  signal phi_stmt_4942_ack_0 : boolean;
  signal next_iretire_state_5703_4945_buf_req_0 : boolean;
  signal next_iretire_state_5703_4945_buf_ack_0 : boolean;
  signal next_iretire_state_5703_4945_buf_req_1 : boolean;
  signal next_iretire_state_5703_4945_buf_ack_1 : boolean;
  signal phi_stmt_4946_req_1 : boolean;
  signal phi_stmt_4946_req_0 : boolean;
  signal phi_stmt_4946_ack_0 : boolean;
  signal do_while_stmt_4909_branch_ack_1 : boolean;
  signal do_while_stmt_4909_branch_ack_0 : boolean;
  signal WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_1 : boolean;
  signal WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_1 : boolean;
  signal WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_0 : boolean;
  signal WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_0 : boolean;
  signal WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_1 : boolean;
  signal get_from_ls_4972_4949_buf_req_0 : boolean;
  signal get_from_ls_4972_4949_buf_ack_0 : boolean;
  signal call_stmt_5944_call_req_1 : boolean;
  signal WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_1 : boolean;
  signal get_from_ls_4972_4949_buf_req_1 : boolean;
  signal get_from_ls_4972_4949_buf_ack_1 : boolean;
  signal WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_0 : boolean;
  signal WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_0 : boolean;
  signal phi_stmt_4950_req_1 : boolean;
  signal phi_stmt_4950_req_0 : boolean;
  signal phi_stmt_4950_ack_0 : boolean;
  signal get_from_iu_4982_4953_buf_req_0 : boolean;
  signal get_from_iu_4982_4953_buf_ack_0 : boolean;
  signal get_from_iu_4982_4953_buf_req_1 : boolean;
  signal get_from_iu_4982_4953_buf_ack_1 : boolean;
  signal phi_stmt_4954_req_1 : boolean;
  signal phi_stmt_4954_req_0 : boolean;
  signal phi_stmt_4954_ack_0 : boolean;
  signal get_from_fp_4977_4957_buf_req_0 : boolean;
  signal get_from_fp_4977_4957_buf_ack_0 : boolean;
  signal get_from_fp_4977_4957_buf_req_1 : boolean;
  signal get_from_fp_4977_4957_buf_ack_1 : boolean;
  signal phi_stmt_4958_req_1 : boolean;
  signal phi_stmt_4958_req_0 : boolean;
  signal phi_stmt_4958_ack_0 : boolean;
  signal next_psr_tbr_record_5296_4963_buf_req_0 : boolean;
  signal next_psr_tbr_record_5296_4963_buf_ack_0 : boolean;
  signal next_psr_tbr_record_5296_4963_buf_req_1 : boolean;
  signal next_psr_tbr_record_5296_4963_buf_ack_1 : boolean;
  signal WPIPE_teu_iretire_to_idispatch_5072_inst_req_0 : boolean;
  signal WPIPE_teu_iretire_to_idispatch_5072_inst_ack_0 : boolean;
  signal WPIPE_teu_iretire_to_idispatch_5072_inst_req_1 : boolean;
  signal WPIPE_teu_iretire_to_idispatch_5072_inst_ack_1 : boolean;
  signal WPIPE_teu_to_ccu_5842_inst_req_0 : boolean;
  signal WPIPE_teu_to_ccu_5842_inst_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "iretire_daemon_input_buffer", -- 
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
  iretire_daemon_CP_131_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "iretire_daemon_out_buffer", -- 
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
    preds <= iretire_daemon_CP_131_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= iretire_daemon_CP_131_start & tag_ilock_write_ack_symbol;
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
    preds <= iretire_daemon_CP_131_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  iretire_daemon_CP_131: Block -- control-path 
    signal iretire_daemon_CP_131_elements: BooleanArray(278 downto 0);
    -- 
  begin -- 
    iretire_daemon_CP_131_elements(0) <= iretire_daemon_CP_131_start;
    iretire_daemon_CP_131_symbol <= iretire_daemon_CP_131_elements(6);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	3 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	2 
    -- CP-element group 0: 	4 
    -- CP-element group 0:  members (14) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_sample_start_
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/$entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Update/$entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_sample_start_
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Update/req
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_update_start_
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Sample/req
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_update_start_
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Update/$entry
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Sample/req
      -- CP-element group 0: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Update/req
      -- 
    req_144_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_144_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(0), ack => W_sacrifical_ilog_4902_inst_req_0); -- 
    req_163_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_163_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(0), ack => W_sacrifical_ilog_skipped_4905_inst_req_1); -- 
    req_149_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_149_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(0), ack => W_sacrifical_ilog_4902_inst_req_1); -- 
    req_158_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_158_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(0), ack => W_sacrifical_ilog_skipped_4905_inst_req_0); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Sample/ack
      -- CP-element group 1: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_sample_completed_
      -- CP-element group 1: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Sample/$exit
      -- 
    ack_145_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sacrifical_ilog_4902_inst_ack_0, ack => iretire_daemon_CP_131_elements(1)); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	5 
    -- CP-element group 2:  members (3) 
      -- CP-element group 2: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Update/ack
      -- CP-element group 2: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_Update/$exit
      -- CP-element group 2: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4904_update_completed_
      -- 
    ack_150_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sacrifical_ilog_4902_inst_ack_1, ack => iretire_daemon_CP_131_elements(2)); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_sample_completed_
      -- CP-element group 3: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Sample/$exit
      -- CP-element group 3: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Sample/ack
      -- 
    ack_159_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sacrifical_ilog_skipped_4905_inst_ack_0, ack => iretire_daemon_CP_131_elements(3)); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	0 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_update_completed_
      -- CP-element group 4: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Update/$exit
      -- CP-element group 4: 	 assign_stmt_4904_to_assign_stmt_4907/assign_stmt_4907_Update/ack
      -- 
    ack_164_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sacrifical_ilog_skipped_4905_inst_ack_1, ack => iretire_daemon_CP_131_elements(4)); -- 
    -- CP-element group 5:  join  transition  place  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	2 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	7 
    -- CP-element group 5:  members (4) 
      -- CP-element group 5: 	 assign_stmt_4904_to_assign_stmt_4907/$exit
      -- CP-element group 5: 	 branch_block_stmt_4908/do_while_stmt_4909__entry__
      -- CP-element group 5: 	 branch_block_stmt_4908/$entry
      -- CP-element group 5: 	 branch_block_stmt_4908/branch_block_stmt_4908__entry__
      -- 
    iretire_daemon_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "iretire_daemon_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(2) & iretire_daemon_CP_131_elements(4);
      gj_iretire_daemon_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(5), clk => clk, reset => reset); --
    end block;
    -- CP-element group 6:  transition  place  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	278 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (4) 
      -- CP-element group 6: 	 branch_block_stmt_4908/$exit
      -- CP-element group 6: 	 branch_block_stmt_4908/do_while_stmt_4909__exit__
      -- CP-element group 6: 	 branch_block_stmt_4908/branch_block_stmt_4908__exit__
      -- CP-element group 6: 	 $exit
      -- 
    iretire_daemon_CP_131_elements(6) <= iretire_daemon_CP_131_elements(278);
    -- CP-element group 7:  transition  place  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	5 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	13 
    -- CP-element group 7:  members (2) 
      -- CP-element group 7: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909__entry__
      -- CP-element group 7: 	 branch_block_stmt_4908/do_while_stmt_4909/$entry
      -- 
    iretire_daemon_CP_131_elements(7) <= iretire_daemon_CP_131_elements(5);
    -- CP-element group 8:  merge  place  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	278 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909__exit__
      -- 
    -- Element group iretire_daemon_CP_131_elements(8) is bound as output of CP function.
    -- CP-element group 9:  merge  place  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	12 
    -- CP-element group 9:  members (1) 
      -- CP-element group 9: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_back
      -- 
    -- Element group iretire_daemon_CP_131_elements(9) is bound as output of CP function.
    -- CP-element group 10:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	276 
    -- CP-element group 10: 	277 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_4908/do_while_stmt_4909/condition_done
      -- CP-element group 10: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_taken/$entry
      -- CP-element group 10: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_exit/$entry
      -- 
    iretire_daemon_CP_131_elements(10) <= iretire_daemon_CP_131_elements(15);
    -- CP-element group 11:  branch  place  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	275 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_body_done
      -- 
    iretire_daemon_CP_131_elements(11) <= iretire_daemon_CP_131_elements(275);
    -- CP-element group 12:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	9 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	67 
    -- CP-element group 12: 	88 
    -- CP-element group 12: 	109 
    -- CP-element group 12: 	128 
    -- CP-element group 12: 	26 
    -- CP-element group 12: 	47 
    -- CP-element group 12: 	147 
    -- CP-element group 12: 	166 
    -- CP-element group 12: 	185 
    -- CP-element group 12: 	204 
    -- CP-element group 12: 	223 
    -- CP-element group 12: 	242 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/back_edge_to_loop_body
      -- 
    iretire_daemon_CP_131_elements(12) <= iretire_daemon_CP_131_elements(9);
    -- CP-element group 13:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	7 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	69 
    -- CP-element group 13: 	90 
    -- CP-element group 13: 	111 
    -- CP-element group 13: 	130 
    -- CP-element group 13: 	28 
    -- CP-element group 13: 	49 
    -- CP-element group 13: 	149 
    -- CP-element group 13: 	168 
    -- CP-element group 13: 	187 
    -- CP-element group 13: 	206 
    -- CP-element group 13: 	225 
    -- CP-element group 13: 	244 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/first_time_through_loop_body
      -- 
    iretire_daemon_CP_131_elements(13) <= iretire_daemon_CP_131_elements(7);
    -- CP-element group 14:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	62 
    -- CP-element group 14: 	63 
    -- CP-element group 14: 	82 
    -- CP-element group 14: 	83 
    -- CP-element group 14: 	103 
    -- CP-element group 14: 	104 
    -- CP-element group 14: 	122 
    -- CP-element group 14: 	123 
    -- CP-element group 14: 	22 
    -- CP-element group 14: 	41 
    -- CP-element group 14: 	42 
    -- CP-element group 14: 	21 
    -- CP-element group 14: 	141 
    -- CP-element group 14: 	142 
    -- CP-element group 14: 	160 
    -- CP-element group 14: 	161 
    -- CP-element group 14: 	179 
    -- CP-element group 14: 	180 
    -- CP-element group 14: 	198 
    -- CP-element group 14: 	199 
    -- CP-element group 14: 	217 
    -- CP-element group 14: 	218 
    -- CP-element group 14: 	236 
    -- CP-element group 14: 	237 
    -- CP-element group 14: 	274 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/$entry
      -- CP-element group 14: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/loop_body_start
      -- 
    -- Element group iretire_daemon_CP_131_elements(14) is bound as output of CP function.
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	18 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	274 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/condition_evaluated
      -- 
    condition_evaluated_186_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_186_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(15), ack => do_while_stmt_4909_branch_req_0); -- 
    iretire_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(18) & iretire_daemon_CP_131_elements(20) & iretire_daemon_CP_131_elements(274);
      gj_iretire_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	62 
    -- CP-element group 16: 	82 
    -- CP-element group 16: 	103 
    -- CP-element group 16: 	122 
    -- CP-element group 16: 	41 
    -- CP-element group 16: 	21 
    -- CP-element group 16: 	141 
    -- CP-element group 16: 	160 
    -- CP-element group 16: 	179 
    -- CP-element group 16: 	198 
    -- CP-element group 16: 	217 
    -- CP-element group 16: 	236 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	20 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	84 
    -- CP-element group 16: 	105 
    -- CP-element group 16: 	124 
    -- CP-element group 16: 	23 
    -- CP-element group 16: 	43 
    -- CP-element group 16: 	143 
    -- CP-element group 16: 	162 
    -- CP-element group 16: 	181 
    -- CP-element group 16: 	200 
    -- CP-element group 16: 	219 
    -- CP-element group 16: 	238 
    -- CP-element group 16:  members (2) 
      -- CP-element group 16: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/aggregated_phi_sample_req
      -- CP-element group 16: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_sample_start__ps
      -- 
    iretire_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 12) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1);
      constant place_markings: IntegerArray(0 to 12)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 1);
      constant place_delays: IntegerArray(0 to 12) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 13); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(62) & iretire_daemon_CP_131_elements(82) & iretire_daemon_CP_131_elements(103) & iretire_daemon_CP_131_elements(122) & iretire_daemon_CP_131_elements(41) & iretire_daemon_CP_131_elements(21) & iretire_daemon_CP_131_elements(141) & iretire_daemon_CP_131_elements(160) & iretire_daemon_CP_131_elements(179) & iretire_daemon_CP_131_elements(198) & iretire_daemon_CP_131_elements(217) & iretire_daemon_CP_131_elements(236) & iretire_daemon_CP_131_elements(20);
      gj_iretire_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 13, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	64 
    -- CP-element group 17: 	85 
    -- CP-element group 17: 	106 
    -- CP-element group 17: 	125 
    -- CP-element group 17: 	24 
    -- CP-element group 17: 	44 
    -- CP-element group 17: 	144 
    -- CP-element group 17: 	163 
    -- CP-element group 17: 	182 
    -- CP-element group 17: 	201 
    -- CP-element group 17: 	220 
    -- CP-element group 17: 	239 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17: 	275 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	62 
    -- CP-element group 17: 	82 
    -- CP-element group 17: 	103 
    -- CP-element group 17: 	122 
    -- CP-element group 17: 	41 
    -- CP-element group 17: 	21 
    -- CP-element group 17: 	141 
    -- CP-element group 17: 	160 
    -- CP-element group 17: 	179 
    -- CP-element group 17: 	198 
    -- CP-element group 17: 	217 
    -- CP-element group 17: 	236 
    -- CP-element group 17:  members (13) 
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/aggregated_phi_sample_ack
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_sample_completed_
      -- 
    iretire_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(85) & iretire_daemon_CP_131_elements(106) & iretire_daemon_CP_131_elements(125) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(144) & iretire_daemon_CP_131_elements(163) & iretire_daemon_CP_131_elements(182) & iretire_daemon_CP_131_elements(201) & iretire_daemon_CP_131_elements(220) & iretire_daemon_CP_131_elements(239);
      gj_iretire_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	15 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group iretire_daemon_CP_131_elements(18) is a control-delay.
    cp_element_18_delay: control_delay_element  generic map(name => " 18_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(17), ack => iretire_daemon_CP_131_elements(18), clk => clk, reset =>reset);
    -- CP-element group 19:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	63 
    -- CP-element group 19: 	83 
    -- CP-element group 19: 	104 
    -- CP-element group 19: 	123 
    -- CP-element group 19: 	22 
    -- CP-element group 19: 	42 
    -- CP-element group 19: 	142 
    -- CP-element group 19: 	161 
    -- CP-element group 19: 	180 
    -- CP-element group 19: 	199 
    -- CP-element group 19: 	218 
    -- CP-element group 19: 	237 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	65 
    -- CP-element group 19: 	86 
    -- CP-element group 19: 	107 
    -- CP-element group 19: 	126 
    -- CP-element group 19: 	45 
    -- CP-element group 19: 	145 
    -- CP-element group 19: 	164 
    -- CP-element group 19: 	183 
    -- CP-element group 19: 	202 
    -- CP-element group 19: 	221 
    -- CP-element group 19: 	240 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_update_start__ps
      -- CP-element group 19: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/aggregated_phi_update_req
      -- 
    iretire_daemon_cp_element_group_19: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_19"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(63) & iretire_daemon_CP_131_elements(83) & iretire_daemon_CP_131_elements(104) & iretire_daemon_CP_131_elements(123) & iretire_daemon_CP_131_elements(22) & iretire_daemon_CP_131_elements(42) & iretire_daemon_CP_131_elements(142) & iretire_daemon_CP_131_elements(161) & iretire_daemon_CP_131_elements(180) & iretire_daemon_CP_131_elements(199) & iretire_daemon_CP_131_elements(218) & iretire_daemon_CP_131_elements(237);
      gj_iretire_daemon_cp_element_group_19 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(19), clk => clk, reset => reset); --
    end block;
    -- CP-element group 20:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	66 
    -- CP-element group 20: 	87 
    -- CP-element group 20: 	108 
    -- CP-element group 20: 	127 
    -- CP-element group 20: 	25 
    -- CP-element group 20: 	46 
    -- CP-element group 20: 	146 
    -- CP-element group 20: 	165 
    -- CP-element group 20: 	184 
    -- CP-element group 20: 	203 
    -- CP-element group 20: 	222 
    -- CP-element group 20: 	241 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	15 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	16 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/aggregated_phi_update_ack
      -- 
    iretire_daemon_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(87) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(127) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(146) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(241);
      gj_iretire_daemon_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	14 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	17 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	16 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_sample_start_
      -- 
    iretire_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  join  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	14 
    -- CP-element group 22: marked-predecessors 
    -- CP-element group 22: 	25 
    -- CP-element group 22: 	259 
    -- CP-element group 22: 	263 
    -- CP-element group 22: 	266 
    -- CP-element group 22: 	269 
    -- CP-element group 22: 	272 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	19 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_update_start_
      -- 
    iretire_daemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	16 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(23) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 24:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	65 
    -- CP-element group 24: 	86 
    -- CP-element group 24: 	107 
    -- CP-element group 24: 	126 
    -- CP-element group 24: 	17 
    -- CP-element group 24: 	45 
    -- CP-element group 24: 	145 
    -- CP-element group 24: 	164 
    -- CP-element group 24: 	183 
    -- CP-element group 24: 	202 
    -- CP-element group 24: 	221 
    -- CP-element group 24: 	240 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(24) is bound as output of CP function.
    -- CP-element group 25:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	20 
    -- CP-element group 25: 	258 
    -- CP-element group 25: 	261 
    -- CP-element group 25: 	265 
    -- CP-element group 25: 	268 
    -- CP-element group 25: 	271 
    -- CP-element group 25: marked-successors 
    -- CP-element group 25: 	22 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_update_completed_
      -- CP-element group 25: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(25) is bound as output of CP function.
    -- CP-element group 26:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	12 
    -- CP-element group 26: successors 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(26) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 27:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (2) 
      -- CP-element group 27: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_loopback_sample_req
      -- CP-element group 27: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_loopback_sample_req_ps
      -- 
    phi_stmt_4911_loopback_sample_req_202_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4911_loopback_sample_req_202_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(27), ack => phi_stmt_4911_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(27) is bound as output of CP function.
    -- CP-element group 28:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	13 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(28) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 29:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (2) 
      -- CP-element group 29: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_entry_sample_req_ps
      -- CP-element group 29: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_entry_sample_req
      -- 
    phi_stmt_4911_entry_sample_req_205_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4911_entry_sample_req_205_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(29), ack => phi_stmt_4911_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (2) 
      -- CP-element group 30: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_phi_mux_ack
      -- CP-element group 30: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4911_phi_mux_ack_ps
      -- 
    phi_stmt_4911_phi_mux_ack_208_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4911_ack_0, ack => iretire_daemon_CP_131_elements(30)); -- 
    -- CP-element group 31:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(31) is bound as output of CP function.
    -- CP-element group 32:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(32) is bound as output of CP function.
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	36 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Sample/rr
      -- CP-element group 33: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_sample_start_
      -- CP-element group 33: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Sample/$entry
      -- 
    rr_221_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_221_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(33), ack => RPIPE_teu_loadstore_to_iretire_4914_inst_req_0); -- 
    iretire_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(31) & iretire_daemon_CP_131_elements(36);
      gj_iretire_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: 	35 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Update/$entry
      -- CP-element group 34: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Update/cr
      -- CP-element group 34: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_update_start_
      -- 
    cr_226_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_226_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(34), ack => RPIPE_teu_loadstore_to_iretire_4914_inst_req_1); -- 
    iretire_daemon_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(32) & iretire_daemon_CP_131_elements(35);
      gj_iretire_daemon_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	34 
    -- CP-element group 35:  members (4) 
      -- CP-element group 35: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Sample/ra
      -- CP-element group 35: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_sample_completed__ps
      -- CP-element group 35: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_sample_completed_
      -- CP-element group 35: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Sample/$exit
      -- 
    ra_222_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_loadstore_to_iretire_4914_inst_ack_0, ack => iretire_daemon_CP_131_elements(35)); -- 
    -- CP-element group 36:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: successors 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	33 
    -- CP-element group 36:  members (4) 
      -- CP-element group 36: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Update/ca
      -- CP-element group 36: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_update_completed__ps
      -- CP-element group 36: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_loadstore_to_iretire_4914_Update/$exit
      -- 
    ca_227_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_loadstore_to_iretire_4914_inst_ack_1, ack => iretire_daemon_CP_131_elements(36)); -- 
    -- CP-element group 37:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (4) 
      -- CP-element group 37: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_sample_start_
      -- CP-element group 37: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_sample_start__ps
      -- CP-element group 37: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_sample_completed_
      -- CP-element group 37: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(37) is bound as output of CP function.
    -- CP-element group 38:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_update_start__ps
      -- CP-element group 38: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(38) is bound as output of CP function.
    -- CP-element group 39:  join  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	40 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(39) <= iretire_daemon_CP_131_elements(40);
    -- CP-element group 40:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	39 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4915_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(40) is a control-delay.
    cp_element_40_delay: control_delay_element  generic map(name => " 40_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(38), ack => iretire_daemon_CP_131_elements(40), clk => clk, reset =>reset);
    -- CP-element group 41:  join  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	14 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	17 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	16 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_sample_start_
      -- 
    iretire_daemon_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	14 
    -- CP-element group 42: marked-predecessors 
    -- CP-element group 42: 	46 
    -- CP-element group 42: 	259 
    -- CP-element group 42: 	263 
    -- CP-element group 42: 	266 
    -- CP-element group 42: 	269 
    -- CP-element group 42: 	272 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	19 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_update_start_
      -- 
    iretire_daemon_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	16 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(43) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 44:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	65 
    -- CP-element group 44: 	86 
    -- CP-element group 44: 	107 
    -- CP-element group 44: 	126 
    -- CP-element group 44: 	17 
    -- CP-element group 44: 	145 
    -- CP-element group 44: 	164 
    -- CP-element group 44: 	183 
    -- CP-element group 44: 	202 
    -- CP-element group 44: 	221 
    -- CP-element group 44: 	240 
    -- CP-element group 44:  members (1) 
      -- CP-element group 44: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	24 
    -- CP-element group 45: 	19 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_update_start__ps
      -- 
    iretire_daemon_cp_element_group_45: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_45"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_45 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(45), clk => clk, reset => reset); --
    end block;
    -- CP-element group 46:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	20 
    -- CP-element group 46: 	258 
    -- CP-element group 46: 	261 
    -- CP-element group 46: 	265 
    -- CP-element group 46: 	268 
    -- CP-element group 46: 	271 
    -- CP-element group 46: marked-successors 
    -- CP-element group 46: 	42 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_update_completed_
      -- CP-element group 46: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(46) is bound as output of CP function.
    -- CP-element group 47:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	12 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(47) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 48:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_loopback_sample_req
      -- CP-element group 48: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_loopback_sample_req_ps
      -- 
    phi_stmt_4916_loopback_sample_req_246_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4916_loopback_sample_req_246_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(48), ack => phi_stmt_4916_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(48) is bound as output of CP function.
    -- CP-element group 49:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	13 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(49) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 50:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (2) 
      -- CP-element group 50: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_entry_sample_req
      -- CP-element group 50: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_entry_sample_req_ps
      -- 
    phi_stmt_4916_entry_sample_req_249_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4916_entry_sample_req_249_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(50), ack => phi_stmt_4916_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51:  members (2) 
      -- CP-element group 51: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_phi_mux_ack
      -- CP-element group 51: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4916_phi_mux_ack_ps
      -- 
    phi_stmt_4916_phi_mux_ack_252_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4916_ack_0, ack => iretire_daemon_CP_131_elements(51)); -- 
    -- CP-element group 52:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_sample_start_
      -- CP-element group 52: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(52) is bound as output of CP function.
    -- CP-element group 53:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (2) 
      -- CP-element group 53: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_update_start_
      -- CP-element group 53: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(53) is bound as output of CP function.
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	55 
    -- CP-element group 54: successors 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(54) <= iretire_daemon_CP_131_elements(55);
    -- CP-element group 55:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	54 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4918_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(55) is a control-delay.
    cp_element_55_delay: control_delay_element  generic map(name => " 55_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(53), ack => iretire_daemon_CP_131_elements(55), clk => clk, reset =>reset);
    -- CP-element group 56:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	58 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(56) is bound as output of CP function.
    -- CP-element group 57:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(57) is bound as output of CP function.
    -- CP-element group 58:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	56 
    -- CP-element group 58: marked-predecessors 
    -- CP-element group 58: 	61 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	60 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_sample_start_
      -- CP-element group 58: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Sample/rr
      -- CP-element group 58: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Sample/$entry
      -- 
    rr_273_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_273_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(58), ack => RPIPE_teu_iunit_to_iretire_4920_inst_req_0); -- 
    iretire_daemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(56) & iretire_daemon_CP_131_elements(61);
      gj_iretire_daemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	60 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	61 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Update/$entry
      -- CP-element group 59: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Update/cr
      -- CP-element group 59: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_update_start_
      -- 
    cr_278_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_278_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(59), ack => RPIPE_teu_iunit_to_iretire_4920_inst_req_1); -- 
    iretire_daemon_cp_element_group_59: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_59"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(60) & iretire_daemon_CP_131_elements(57);
      gj_iretire_daemon_cp_element_group_59 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(59), clk => clk, reset => reset); --
    end block;
    -- CP-element group 60:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	58 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	59 
    -- CP-element group 60:  members (4) 
      -- CP-element group 60: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Sample/ra
      -- CP-element group 60: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_sample_completed__ps
      -- CP-element group 60: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_sample_completed_
      -- CP-element group 60: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Sample/$exit
      -- 
    ra_274_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_to_iretire_4920_inst_ack_0, ack => iretire_daemon_CP_131_elements(60)); -- 
    -- CP-element group 61:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	59 
    -- CP-element group 61: successors 
    -- CP-element group 61: marked-successors 
    -- CP-element group 61: 	58 
    -- CP-element group 61:  members (4) 
      -- CP-element group 61: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Update/$exit
      -- CP-element group 61: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_update_completed__ps
      -- CP-element group 61: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_Update/ca
      -- CP-element group 61: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_iunit_to_iretire_4920_update_completed_
      -- 
    ca_279_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_iunit_to_iretire_4920_inst_ack_1, ack => iretire_daemon_CP_131_elements(61)); -- 
    -- CP-element group 62:  join  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	14 
    -- CP-element group 62: marked-predecessors 
    -- CP-element group 62: 	17 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	16 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_sample_start_
      -- 
    iretire_daemon_cp_element_group_62: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_62"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_62 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(62), clk => clk, reset => reset); --
    end block;
    -- CP-element group 63:  join  transition  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	14 
    -- CP-element group 63: marked-predecessors 
    -- CP-element group 63: 	66 
    -- CP-element group 63: 	259 
    -- CP-element group 63: 	263 
    -- CP-element group 63: 	266 
    -- CP-element group 63: 	269 
    -- CP-element group 63: 	272 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	19 
    -- CP-element group 63:  members (1) 
      -- CP-element group 63: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_update_start_
      -- 
    iretire_daemon_cp_element_group_63: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_63"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_63 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(63), clk => clk, reset => reset); --
    end block;
    -- CP-element group 64:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	86 
    -- CP-element group 64: 	107 
    -- CP-element group 64: 	126 
    -- CP-element group 64: 	17 
    -- CP-element group 64: 	145 
    -- CP-element group 64: 	164 
    -- CP-element group 64: 	183 
    -- CP-element group 64: 	202 
    -- CP-element group 64: 	221 
    -- CP-element group 64: 	240 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(64) is bound as output of CP function.
    -- CP-element group 65:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	24 
    -- CP-element group 65: 	44 
    -- CP-element group 65: 	19 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (1) 
      -- CP-element group 65: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_update_start__ps
      -- 
    iretire_daemon_cp_element_group_65: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_65"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_65 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(65), clk => clk, reset => reset); --
    end block;
    -- CP-element group 66:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	20 
    -- CP-element group 66: 	258 
    -- CP-element group 66: 	261 
    -- CP-element group 66: 	265 
    -- CP-element group 66: 	268 
    -- CP-element group 66: 	271 
    -- CP-element group 66: marked-successors 
    -- CP-element group 66: 	63 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_update_completed__ps
      -- CP-element group 66: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(66) is bound as output of CP function.
    -- CP-element group 67:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	12 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (1) 
      -- CP-element group 67: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(67) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 68:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (2) 
      -- CP-element group 68: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_loopback_sample_req_ps
      -- CP-element group 68: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_loopback_sample_req
      -- 
    phi_stmt_4921_loopback_sample_req_290_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4921_loopback_sample_req_290_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(68), ack => phi_stmt_4921_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(68) is bound as output of CP function.
    -- CP-element group 69:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	13 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (1) 
      -- CP-element group 69: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(69) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 70:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70:  members (2) 
      -- CP-element group 70: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_entry_sample_req_ps
      -- CP-element group 70: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_entry_sample_req
      -- 
    phi_stmt_4921_entry_sample_req_293_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4921_entry_sample_req_293_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(70), ack => phi_stmt_4921_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(70) is bound as output of CP function.
    -- CP-element group 71:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: successors 
    -- CP-element group 71:  members (2) 
      -- CP-element group 71: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_phi_mux_ack_ps
      -- CP-element group 71: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4921_phi_mux_ack
      -- 
    phi_stmt_4921_phi_mux_ack_296_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4921_ack_0, ack => iretire_daemon_CP_131_elements(71)); -- 
    -- CP-element group 72:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: successors 
    -- CP-element group 72:  members (4) 
      -- CP-element group 72: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_sample_completed_
      -- CP-element group 72: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_sample_start_
      -- CP-element group 72: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_sample_completed__ps
      -- CP-element group 72: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(72) is bound as output of CP function.
    -- CP-element group 73:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (2) 
      -- CP-element group 73: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_update_start_
      -- CP-element group 73: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(73) is bound as output of CP function.
    -- CP-element group 74:  join  transition  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	75 
    -- CP-element group 74: successors 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(74) <= iretire_daemon_CP_131_elements(75);
    -- CP-element group 75:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	74 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4923_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(75) is a control-delay.
    cp_element_75_delay: control_delay_element  generic map(name => " 75_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(73), ack => iretire_daemon_CP_131_elements(75), clk => clk, reset =>reset);
    -- CP-element group 76:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(76) is bound as output of CP function.
    -- CP-element group 77:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	79 
    -- CP-element group 77:  members (1) 
      -- CP-element group 77: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(77) is bound as output of CP function.
    -- CP-element group 78:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: marked-predecessors 
    -- CP-element group 78: 	81 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	80 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Sample/rr
      -- CP-element group 78: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Sample/$entry
      -- CP-element group 78: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_sample_start_
      -- 
    rr_317_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_317_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(78), ack => RPIPE_teu_fpunit_to_iretire_4925_inst_req_0); -- 
    iretire_daemon_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(76) & iretire_daemon_CP_131_elements(81);
      gj_iretire_daemon_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	77 
    -- CP-element group 79: 	80 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	81 
    -- CP-element group 79:  members (3) 
      -- CP-element group 79: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_update_start_
      -- CP-element group 79: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Update/$entry
      -- CP-element group 79: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Update/cr
      -- 
    cr_322_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_322_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(79), ack => RPIPE_teu_fpunit_to_iretire_4925_inst_req_1); -- 
    iretire_daemon_cp_element_group_79: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_79"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(77) & iretire_daemon_CP_131_elements(80);
      gj_iretire_daemon_cp_element_group_79 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(79), clk => clk, reset => reset); --
    end block;
    -- CP-element group 80:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	78 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	79 
    -- CP-element group 80:  members (4) 
      -- CP-element group 80: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Sample/ra
      -- CP-element group 80: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_sample_completed__ps
      -- CP-element group 80: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Sample/$exit
      -- CP-element group 80: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_sample_completed_
      -- 
    ra_318_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_to_iretire_4925_inst_ack_0, ack => iretire_daemon_CP_131_elements(80)); -- 
    -- CP-element group 81:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	79 
    -- CP-element group 81: successors 
    -- CP-element group 81: marked-successors 
    -- CP-element group 81: 	78 
    -- CP-element group 81:  members (4) 
      -- CP-element group 81: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_update_completed_
      -- CP-element group 81: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Update/ca
      -- CP-element group 81: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_Update/$exit
      -- CP-element group 81: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_teu_fpunit_to_iretire_4925_update_completed__ps
      -- 
    ca_323_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 81_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_fpunit_to_iretire_4925_inst_ack_1, ack => iretire_daemon_CP_131_elements(81)); -- 
    -- CP-element group 82:  join  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	14 
    -- CP-element group 82: marked-predecessors 
    -- CP-element group 82: 	17 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	16 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_sample_start_
      -- 
    iretire_daemon_cp_element_group_82: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_82"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_82 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(82), clk => clk, reset => reset); --
    end block;
    -- CP-element group 83:  join  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	14 
    -- CP-element group 83: marked-predecessors 
    -- CP-element group 83: 	87 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	19 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_update_start_
      -- 
    iretire_daemon_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(87);
      gj_iretire_daemon_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	16 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (1) 
      -- CP-element group 84: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(84) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 85:  join  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	17 
    -- CP-element group 85:  members (1) 
      -- CP-element group 85: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(85) is bound as output of CP function.
    -- CP-element group 86:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	64 
    -- CP-element group 86: 	24 
    -- CP-element group 86: 	44 
    -- CP-element group 86: 	19 
    -- CP-element group 86: successors 
    -- CP-element group 86:  members (1) 
      -- CP-element group 86: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_update_start__ps
      -- 
    iretire_daemon_cp_element_group_86: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_86"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_86 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(86), clk => clk, reset => reset); --
    end block;
    -- CP-element group 87:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	20 
    -- CP-element group 87: marked-successors 
    -- CP-element group 87: 	83 
    -- CP-element group 87:  members (2) 
      -- CP-element group 87: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_update_completed__ps
      -- CP-element group 87: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(87) is bound as output of CP function.
    -- CP-element group 88:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	12 
    -- CP-element group 88: successors 
    -- CP-element group 88:  members (1) 
      -- CP-element group 88: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(88) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 89:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: successors 
    -- CP-element group 89:  members (2) 
      -- CP-element group 89: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_loopback_sample_req
      -- CP-element group 89: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_loopback_sample_req_ps
      -- 
    phi_stmt_4926_loopback_sample_req_334_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4926_loopback_sample_req_334_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(89), ack => phi_stmt_4926_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(89) is bound as output of CP function.
    -- CP-element group 90:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	13 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (1) 
      -- CP-element group 90: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(90) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 91:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: successors 
    -- CP-element group 91:  members (2) 
      -- CP-element group 91: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_entry_sample_req_ps
      -- CP-element group 91: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_entry_sample_req
      -- 
    phi_stmt_4926_entry_sample_req_337_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4926_entry_sample_req_337_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(91), ack => phi_stmt_4926_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(91) is bound as output of CP function.
    -- CP-element group 92:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: successors 
    -- CP-element group 92:  members (2) 
      -- CP-element group 92: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_phi_mux_ack_ps
      -- CP-element group 92: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4926_phi_mux_ack
      -- 
    phi_stmt_4926_phi_mux_ack_340_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4926_ack_0, ack => iretire_daemon_CP_131_elements(92)); -- 
    -- CP-element group 93:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: successors 
    -- CP-element group 93:  members (4) 
      -- CP-element group 93: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_sample_start_
      -- CP-element group 93: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_sample_completed_
      -- CP-element group 93: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_sample_start__ps
      -- CP-element group 93: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(93) is bound as output of CP function.
    -- CP-element group 94:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (2) 
      -- CP-element group 94: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_update_start__ps
      -- CP-element group 94: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(94) is bound as output of CP function.
    -- CP-element group 95:  join  transition  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	96 
    -- CP-element group 95: successors 
    -- CP-element group 95:  members (1) 
      -- CP-element group 95: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(95) <= iretire_daemon_CP_131_elements(96);
    -- CP-element group 96:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	95 
    -- CP-element group 96:  members (1) 
      -- CP-element group 96: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4928_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(96) is a control-delay.
    cp_element_96_delay: control_delay_element  generic map(name => " 96_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(94), ack => iretire_daemon_CP_131_elements(96), clk => clk, reset =>reset);
    -- CP-element group 97:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	99 
    -- CP-element group 97:  members (1) 
      -- CP-element group 97: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_sample_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(97) is bound as output of CP function.
    -- CP-element group 98:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	100 
    -- CP-element group 98:  members (1) 
      -- CP-element group 98: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_update_start__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(98) is bound as output of CP function.
    -- CP-element group 99:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	97 
    -- CP-element group 99: marked-predecessors 
    -- CP-element group 99: 	102 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	101 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Sample/$entry
      -- CP-element group 99: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_sample_start_
      -- CP-element group 99: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Sample/rr
      -- 
    rr_361_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_361_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(99), ack => RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_0); -- 
    iretire_daemon_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 34) := "iretire_daemon_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(97) & iretire_daemon_CP_131_elements(102);
      gj_iretire_daemon_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	98 
    -- CP-element group 100: 	101 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	102 
    -- CP-element group 100:  members (3) 
      -- CP-element group 100: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_update_start_
      -- CP-element group 100: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Update/$entry
      -- CP-element group 100: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Update/cr
      -- 
    cr_366_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_366_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(100), ack => RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_1); -- 
    iretire_daemon_cp_element_group_100: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_100"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(98) & iretire_daemon_CP_131_elements(101);
      gj_iretire_daemon_cp_element_group_100 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(100), clk => clk, reset => reset); --
    end block;
    -- CP-element group 101:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	99 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	100 
    -- CP-element group 101:  members (4) 
      -- CP-element group 101: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Sample/$exit
      -- CP-element group 101: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_sample_completed__ps
      -- CP-element group 101: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_sample_completed_
      -- CP-element group 101: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Sample/ra
      -- 
    ra_362_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_0, ack => iretire_daemon_CP_131_elements(101)); -- 
    -- CP-element group 102:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	100 
    -- CP-element group 102: successors 
    -- CP-element group 102: marked-successors 
    -- CP-element group 102: 	99 
    -- CP-element group 102:  members (4) 
      -- CP-element group 102: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_update_completed_
      -- CP-element group 102: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_update_completed__ps
      -- CP-element group 102: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Update/$exit
      -- CP-element group 102: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/RPIPE_noblock_teu_stream_corrector_to_iretire_4929_Update/ca
      -- 
    ca_367_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 102_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_1, ack => iretire_daemon_CP_131_elements(102)); -- 
    -- CP-element group 103:  join  transition  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	14 
    -- CP-element group 103: marked-predecessors 
    -- CP-element group 103: 	17 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	16 
    -- CP-element group 103:  members (1) 
      -- CP-element group 103: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_sample_start_
      -- 
    iretire_daemon_cp_element_group_103: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_103"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_103 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(103), clk => clk, reset => reset); --
    end block;
    -- CP-element group 104:  join  transition  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	14 
    -- CP-element group 104: marked-predecessors 
    -- CP-element group 104: 	108 
    -- CP-element group 104: 	256 
    -- CP-element group 104: 	259 
    -- CP-element group 104: 	263 
    -- CP-element group 104: 	266 
    -- CP-element group 104: 	269 
    -- CP-element group 104: 	272 
    -- CP-element group 104: successors 
    -- CP-element group 104: 	19 
    -- CP-element group 104:  members (1) 
      -- CP-element group 104: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_update_start_
      -- 
    iretire_daemon_cp_element_group_104: block -- 
      constant place_capacities: IntegerArray(0 to 7) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_markings: IntegerArray(0 to 7)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1);
      constant place_delays: IntegerArray(0 to 7) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_104"; 
      signal preds: BooleanArray(1 to 8); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(256) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_104 : generic_join generic map(name => joinName, number_of_predecessors => 8, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(104), clk => clk, reset => reset); --
    end block;
    -- CP-element group 105:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	16 
    -- CP-element group 105: successors 
    -- CP-element group 105:  members (1) 
      -- CP-element group 105: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(105) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 106:  join  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: successors 
    -- CP-element group 106: 	17 
    -- CP-element group 106:  members (1) 
      -- CP-element group 106: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(106) is bound as output of CP function.
    -- CP-element group 107:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	64 
    -- CP-element group 107: 	24 
    -- CP-element group 107: 	44 
    -- CP-element group 107: 	19 
    -- CP-element group 107: successors 
    -- CP-element group 107:  members (1) 
      -- CP-element group 107: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_update_start__ps
      -- 
    iretire_daemon_cp_element_group_107: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_107"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_107 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(107), clk => clk, reset => reset); --
    end block;
    -- CP-element group 108:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	20 
    -- CP-element group 108: 	255 
    -- CP-element group 108: 	258 
    -- CP-element group 108: 	261 
    -- CP-element group 108: 	265 
    -- CP-element group 108: 	268 
    -- CP-element group 108: 	271 
    -- CP-element group 108: marked-successors 
    -- CP-element group 108: 	104 
    -- CP-element group 108:  members (2) 
      -- CP-element group 108: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_update_completed_
      -- CP-element group 108: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(108) is bound as output of CP function.
    -- CP-element group 109:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	12 
    -- CP-element group 109: successors 
    -- CP-element group 109:  members (1) 
      -- CP-element group 109: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(109) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 110:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: successors 
    -- CP-element group 110:  members (2) 
      -- CP-element group 110: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_loopback_sample_req
      -- CP-element group 110: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_loopback_sample_req_ps
      -- 
    phi_stmt_4930_loopback_sample_req_378_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4930_loopback_sample_req_378_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(110), ack => phi_stmt_4930_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(110) is bound as output of CP function.
    -- CP-element group 111:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	13 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (1) 
      -- CP-element group 111: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(111) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 112:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: successors 
    -- CP-element group 112:  members (2) 
      -- CP-element group 112: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_entry_sample_req
      -- CP-element group 112: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_entry_sample_req_ps
      -- 
    phi_stmt_4930_entry_sample_req_381_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4930_entry_sample_req_381_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(112), ack => phi_stmt_4930_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(112) is bound as output of CP function.
    -- CP-element group 113:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: successors 
    -- CP-element group 113:  members (2) 
      -- CP-element group 113: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_phi_mux_ack
      -- CP-element group 113: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4930_phi_mux_ack_ps
      -- 
    phi_stmt_4930_phi_mux_ack_384_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 113_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4930_ack_0, ack => iretire_daemon_CP_131_elements(113)); -- 
    -- CP-element group 114:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: successors 
    -- CP-element group 114:  members (4) 
      -- CP-element group 114: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_sample_start__ps
      -- CP-element group 114: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_sample_completed__ps
      -- CP-element group 114: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_sample_start_
      -- CP-element group 114: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(114) is bound as output of CP function.
    -- CP-element group 115:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	117 
    -- CP-element group 115:  members (2) 
      -- CP-element group 115: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_update_start__ps
      -- CP-element group 115: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(115) is bound as output of CP function.
    -- CP-element group 116:  join  transition  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	117 
    -- CP-element group 116: successors 
    -- CP-element group 116:  members (1) 
      -- CP-element group 116: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(116) <= iretire_daemon_CP_131_elements(117);
    -- CP-element group 117:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	115 
    -- CP-element group 117: successors 
    -- CP-element group 117: 	116 
    -- CP-element group 117:  members (1) 
      -- CP-element group 117: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4932_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(117) is a control-delay.
    cp_element_117_delay: control_delay_element  generic map(name => " 117_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(115), ack => iretire_daemon_CP_131_elements(117), clk => clk, reset =>reset);
    -- CP-element group 118:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: successors 
    -- CP-element group 118: 	120 
    -- CP-element group 118:  members (4) 
      -- CP-element group 118: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_sample_start__ps
      -- CP-element group 118: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_sample_start_
      -- CP-element group 118: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Sample/$entry
      -- CP-element group 118: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Sample/req
      -- 
    req_405_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_405_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(118), ack => next_from_stream_corrector_d_4967_4933_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(118) is bound as output of CP function.
    -- CP-element group 119:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: successors 
    -- CP-element group 119: 	121 
    -- CP-element group 119:  members (4) 
      -- CP-element group 119: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_update_start__ps
      -- CP-element group 119: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_update_start_
      -- CP-element group 119: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Update/$entry
      -- CP-element group 119: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Update/req
      -- 
    req_410_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_410_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(119), ack => next_from_stream_corrector_d_4967_4933_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(119) is bound as output of CP function.
    -- CP-element group 120:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	118 
    -- CP-element group 120: successors 
    -- CP-element group 120:  members (4) 
      -- CP-element group 120: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_sample_completed__ps
      -- CP-element group 120: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_sample_completed_
      -- CP-element group 120: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Sample/$exit
      -- CP-element group 120: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Sample/ack
      -- 
    ack_406_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 120_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_from_stream_corrector_d_4967_4933_buf_ack_0, ack => iretire_daemon_CP_131_elements(120)); -- 
    -- CP-element group 121:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	119 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (4) 
      -- CP-element group 121: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_update_completed__ps
      -- CP-element group 121: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_update_completed_
      -- CP-element group 121: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Update/$exit
      -- CP-element group 121: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_from_stream_corrector_d_4933_Update/ack
      -- 
    ack_411_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 121_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_from_stream_corrector_d_4967_4933_buf_ack_1, ack => iretire_daemon_CP_131_elements(121)); -- 
    -- CP-element group 122:  join  transition  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	14 
    -- CP-element group 122: marked-predecessors 
    -- CP-element group 122: 	17 
    -- CP-element group 122: successors 
    -- CP-element group 122: 	16 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_sample_start_
      -- 
    iretire_daemon_cp_element_group_122: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_122"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_122 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(122), clk => clk, reset => reset); --
    end block;
    -- CP-element group 123:  join  transition  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	14 
    -- CP-element group 123: marked-predecessors 
    -- CP-element group 123: 	127 
    -- CP-element group 123: successors 
    -- CP-element group 123: 	19 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_update_start_
      -- 
    iretire_daemon_cp_element_group_123: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_123"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(127);
      gj_iretire_daemon_cp_element_group_123 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(123), clk => clk, reset => reset); --
    end block;
    -- CP-element group 124:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: 	16 
    -- CP-element group 124: successors 
    -- CP-element group 124:  members (1) 
      -- CP-element group 124: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(124) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 125:  join  transition  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: successors 
    -- CP-element group 125: 	17 
    -- CP-element group 125:  members (1) 
      -- CP-element group 125: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(125) is bound as output of CP function.
    -- CP-element group 126:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: 	64 
    -- CP-element group 126: 	24 
    -- CP-element group 126: 	44 
    -- CP-element group 126: 	19 
    -- CP-element group 126: successors 
    -- CP-element group 126:  members (1) 
      -- CP-element group 126: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_update_start__ps
      -- 
    iretire_daemon_cp_element_group_126: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_126"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_126 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(126), clk => clk, reset => reset); --
    end block;
    -- CP-element group 127:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: successors 
    -- CP-element group 127: 	20 
    -- CP-element group 127: marked-successors 
    -- CP-element group 127: 	123 
    -- CP-element group 127:  members (2) 
      -- CP-element group 127: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_update_completed_
      -- CP-element group 127: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(127) is bound as output of CP function.
    -- CP-element group 128:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: 	12 
    -- CP-element group 128: successors 
    -- CP-element group 128:  members (1) 
      -- CP-element group 128: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(128) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 129:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (2) 
      -- CP-element group 129: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_loopback_sample_req
      -- CP-element group 129: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_loopback_sample_req_ps
      -- 
    phi_stmt_4934_loopback_sample_req_422_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4934_loopback_sample_req_422_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(129), ack => phi_stmt_4934_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(129) is bound as output of CP function.
    -- CP-element group 130:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: 	13 
    -- CP-element group 130: successors 
    -- CP-element group 130:  members (1) 
      -- CP-element group 130: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(130) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 131:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: successors 
    -- CP-element group 131:  members (2) 
      -- CP-element group 131: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_entry_sample_req
      -- CP-element group 131: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_entry_sample_req_ps
      -- 
    phi_stmt_4934_entry_sample_req_425_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4934_entry_sample_req_425_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(131), ack => phi_stmt_4934_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(131) is bound as output of CP function.
    -- CP-element group 132:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: successors 
    -- CP-element group 132:  members (2) 
      -- CP-element group 132: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_phi_mux_ack
      -- CP-element group 132: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4934_phi_mux_ack_ps
      -- 
    phi_stmt_4934_phi_mux_ack_428_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 132_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4934_ack_0, ack => iretire_daemon_CP_131_elements(132)); -- 
    -- CP-element group 133:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: successors 
    -- CP-element group 133:  members (4) 
      -- CP-element group 133: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_sample_start__ps
      -- CP-element group 133: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_sample_completed__ps
      -- CP-element group 133: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_sample_start_
      -- CP-element group 133: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(133) is bound as output of CP function.
    -- CP-element group 134:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: successors 
    -- CP-element group 134: 	136 
    -- CP-element group 134:  members (2) 
      -- CP-element group 134: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_update_start__ps
      -- CP-element group 134: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(134) is bound as output of CP function.
    -- CP-element group 135:  join  transition  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: 	136 
    -- CP-element group 135: successors 
    -- CP-element group 135:  members (1) 
      -- CP-element group 135: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(135) <= iretire_daemon_CP_131_elements(136);
    -- CP-element group 136:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	134 
    -- CP-element group 136: successors 
    -- CP-element group 136: 	135 
    -- CP-element group 136:  members (1) 
      -- CP-element group 136: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4936_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(136) is a control-delay.
    cp_element_136_delay: control_delay_element  generic map(name => " 136_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(134), ack => iretire_daemon_CP_131_elements(136), clk => clk, reset =>reset);
    -- CP-element group 137:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	139 
    -- CP-element group 137:  members (4) 
      -- CP-element group 137: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_sample_start__ps
      -- CP-element group 137: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_sample_start_
      -- CP-element group 137: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Sample/$entry
      -- CP-element group 137: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Sample/req
      -- 
    req_449_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_449_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(137), ack => next_last_is_cti_5855_4937_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(137) is bound as output of CP function.
    -- CP-element group 138:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: successors 
    -- CP-element group 138: 	140 
    -- CP-element group 138:  members (4) 
      -- CP-element group 138: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_update_start__ps
      -- CP-element group 138: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_update_start_
      -- CP-element group 138: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Update/$entry
      -- CP-element group 138: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Update/req
      -- 
    req_454_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_454_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(138), ack => next_last_is_cti_5855_4937_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(138) is bound as output of CP function.
    -- CP-element group 139:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: 	137 
    -- CP-element group 139: successors 
    -- CP-element group 139:  members (4) 
      -- CP-element group 139: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_sample_completed__ps
      -- CP-element group 139: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_sample_completed_
      -- CP-element group 139: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Sample/$exit
      -- CP-element group 139: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Sample/ack
      -- 
    ack_450_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 139_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_last_is_cti_5855_4937_buf_ack_0, ack => iretire_daemon_CP_131_elements(139)); -- 
    -- CP-element group 140:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	138 
    -- CP-element group 140: successors 
    -- CP-element group 140:  members (4) 
      -- CP-element group 140: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_update_completed__ps
      -- CP-element group 140: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_update_completed_
      -- CP-element group 140: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Update/$exit
      -- CP-element group 140: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_is_cti_4937_Update/ack
      -- 
    ack_455_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 140_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_last_is_cti_5855_4937_buf_ack_1, ack => iretire_daemon_CP_131_elements(140)); -- 
    -- CP-element group 141:  join  transition  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	14 
    -- CP-element group 141: marked-predecessors 
    -- CP-element group 141: 	17 
    -- CP-element group 141: successors 
    -- CP-element group 141: 	16 
    -- CP-element group 141:  members (1) 
      -- CP-element group 141: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_sample_start_
      -- 
    iretire_daemon_cp_element_group_141: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_141"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_141 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(141), clk => clk, reset => reset); --
    end block;
    -- CP-element group 142:  join  transition  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	14 
    -- CP-element group 142: marked-predecessors 
    -- CP-element group 142: 	146 
    -- CP-element group 142: successors 
    -- CP-element group 142: 	19 
    -- CP-element group 142:  members (1) 
      -- CP-element group 142: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_update_start_
      -- 
    iretire_daemon_cp_element_group_142: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_142"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(146);
      gj_iretire_daemon_cp_element_group_142 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(142), clk => clk, reset => reset); --
    end block;
    -- CP-element group 143:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: 	16 
    -- CP-element group 143: successors 
    -- CP-element group 143:  members (1) 
      -- CP-element group 143: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(143) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 144:  join  transition  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: successors 
    -- CP-element group 144: 	17 
    -- CP-element group 144:  members (1) 
      -- CP-element group 144: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(144) is bound as output of CP function.
    -- CP-element group 145:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: 	64 
    -- CP-element group 145: 	24 
    -- CP-element group 145: 	44 
    -- CP-element group 145: 	19 
    -- CP-element group 145: successors 
    -- CP-element group 145:  members (1) 
      -- CP-element group 145: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_update_start__ps
      -- 
    iretire_daemon_cp_element_group_145: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_145"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_145 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(145), clk => clk, reset => reset); --
    end block;
    -- CP-element group 146:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: successors 
    -- CP-element group 146: 	20 
    -- CP-element group 146: marked-successors 
    -- CP-element group 146: 	142 
    -- CP-element group 146:  members (2) 
      -- CP-element group 146: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_update_completed_
      -- CP-element group 146: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(146) is bound as output of CP function.
    -- CP-element group 147:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	12 
    -- CP-element group 147: successors 
    -- CP-element group 147:  members (1) 
      -- CP-element group 147: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(147) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 148:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: successors 
    -- CP-element group 148:  members (2) 
      -- CP-element group 148: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_loopback_sample_req
      -- CP-element group 148: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_loopback_sample_req_ps
      -- 
    phi_stmt_4938_loopback_sample_req_466_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4938_loopback_sample_req_466_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(148), ack => phi_stmt_4938_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(148) is bound as output of CP function.
    -- CP-element group 149:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: 	13 
    -- CP-element group 149: successors 
    -- CP-element group 149:  members (1) 
      -- CP-element group 149: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(149) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 150:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: successors 
    -- CP-element group 150:  members (2) 
      -- CP-element group 150: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_entry_sample_req
      -- CP-element group 150: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_entry_sample_req_ps
      -- 
    phi_stmt_4938_entry_sample_req_469_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4938_entry_sample_req_469_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(150), ack => phi_stmt_4938_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(150) is bound as output of CP function.
    -- CP-element group 151:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: successors 
    -- CP-element group 151:  members (2) 
      -- CP-element group 151: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_phi_mux_ack
      -- CP-element group 151: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4938_phi_mux_ack_ps
      -- 
    phi_stmt_4938_phi_mux_ack_472_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 151_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4938_ack_0, ack => iretire_daemon_CP_131_elements(151)); -- 
    -- CP-element group 152:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: successors 
    -- CP-element group 152:  members (4) 
      -- CP-element group 152: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_sample_start__ps
      -- CP-element group 152: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_sample_completed__ps
      -- CP-element group 152: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_sample_start_
      -- CP-element group 152: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(152) is bound as output of CP function.
    -- CP-element group 153:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: successors 
    -- CP-element group 153: 	155 
    -- CP-element group 153:  members (2) 
      -- CP-element group 153: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_update_start__ps
      -- CP-element group 153: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(153) is bound as output of CP function.
    -- CP-element group 154:  join  transition  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: 	155 
    -- CP-element group 154: successors 
    -- CP-element group 154:  members (1) 
      -- CP-element group 154: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(154) <= iretire_daemon_CP_131_elements(155);
    -- CP-element group 155:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: 	153 
    -- CP-element group 155: successors 
    -- CP-element group 155: 	154 
    -- CP-element group 155:  members (1) 
      -- CP-element group 155: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4940_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(155) is a control-delay.
    cp_element_155_delay: control_delay_element  generic map(name => " 155_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(153), ack => iretire_daemon_CP_131_elements(155), clk => clk, reset =>reset);
    -- CP-element group 156:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: successors 
    -- CP-element group 156: 	158 
    -- CP-element group 156:  members (4) 
      -- CP-element group 156: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_sample_start__ps
      -- CP-element group 156: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_sample_start_
      -- CP-element group 156: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Sample/$entry
      -- CP-element group 156: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Sample/req
      -- 
    req_493_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_493_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(156), ack => next_last_pc_5861_4941_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(156) is bound as output of CP function.
    -- CP-element group 157:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: successors 
    -- CP-element group 157: 	159 
    -- CP-element group 157:  members (4) 
      -- CP-element group 157: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_update_start__ps
      -- CP-element group 157: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_update_start_
      -- CP-element group 157: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Update/$entry
      -- CP-element group 157: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Update/req
      -- 
    req_498_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_498_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(157), ack => next_last_pc_5861_4941_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(157) is bound as output of CP function.
    -- CP-element group 158:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: 	156 
    -- CP-element group 158: successors 
    -- CP-element group 158:  members (4) 
      -- CP-element group 158: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_sample_completed__ps
      -- CP-element group 158: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_sample_completed_
      -- CP-element group 158: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Sample/$exit
      -- CP-element group 158: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Sample/ack
      -- 
    ack_494_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 158_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_last_pc_5861_4941_buf_ack_0, ack => iretire_daemon_CP_131_elements(158)); -- 
    -- CP-element group 159:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: 	157 
    -- CP-element group 159: successors 
    -- CP-element group 159:  members (4) 
      -- CP-element group 159: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_update_completed__ps
      -- CP-element group 159: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_update_completed_
      -- CP-element group 159: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Update/$exit
      -- CP-element group 159: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_last_pc_4941_Update/ack
      -- 
    ack_499_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 159_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_last_pc_5861_4941_buf_ack_1, ack => iretire_daemon_CP_131_elements(159)); -- 
    -- CP-element group 160:  join  transition  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: 	14 
    -- CP-element group 160: marked-predecessors 
    -- CP-element group 160: 	17 
    -- CP-element group 160: successors 
    -- CP-element group 160: 	16 
    -- CP-element group 160:  members (1) 
      -- CP-element group 160: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_sample_start_
      -- 
    iretire_daemon_cp_element_group_160: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_160"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_160 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(160), clk => clk, reset => reset); --
    end block;
    -- CP-element group 161:  join  transition  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: 	14 
    -- CP-element group 161: marked-predecessors 
    -- CP-element group 161: 	165 
    -- CP-element group 161: 	259 
    -- CP-element group 161: 	263 
    -- CP-element group 161: 	266 
    -- CP-element group 161: 	269 
    -- CP-element group 161: 	272 
    -- CP-element group 161: successors 
    -- CP-element group 161: 	19 
    -- CP-element group 161:  members (1) 
      -- CP-element group 161: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_update_start_
      -- 
    iretire_daemon_cp_element_group_161: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_161"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_161 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(161), clk => clk, reset => reset); --
    end block;
    -- CP-element group 162:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: 	16 
    -- CP-element group 162: successors 
    -- CP-element group 162:  members (1) 
      -- CP-element group 162: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(162) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 163:  join  transition  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: successors 
    -- CP-element group 163: 	17 
    -- CP-element group 163:  members (1) 
      -- CP-element group 163: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(163) is bound as output of CP function.
    -- CP-element group 164:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: 	64 
    -- CP-element group 164: 	24 
    -- CP-element group 164: 	44 
    -- CP-element group 164: 	19 
    -- CP-element group 164: successors 
    -- CP-element group 164:  members (1) 
      -- CP-element group 164: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_update_start__ps
      -- 
    iretire_daemon_cp_element_group_164: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_164"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_164 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(164), clk => clk, reset => reset); --
    end block;
    -- CP-element group 165:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: successors 
    -- CP-element group 165: 	20 
    -- CP-element group 165: 	258 
    -- CP-element group 165: 	261 
    -- CP-element group 165: 	265 
    -- CP-element group 165: 	268 
    -- CP-element group 165: 	271 
    -- CP-element group 165: marked-successors 
    -- CP-element group 165: 	161 
    -- CP-element group 165:  members (2) 
      -- CP-element group 165: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_update_completed_
      -- CP-element group 165: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(165) is bound as output of CP function.
    -- CP-element group 166:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: 	12 
    -- CP-element group 166: successors 
    -- CP-element group 166:  members (1) 
      -- CP-element group 166: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(166) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 167:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: successors 
    -- CP-element group 167:  members (2) 
      -- CP-element group 167: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_loopback_sample_req
      -- CP-element group 167: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_loopback_sample_req_ps
      -- 
    phi_stmt_4942_loopback_sample_req_510_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4942_loopback_sample_req_510_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(167), ack => phi_stmt_4942_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(167) is bound as output of CP function.
    -- CP-element group 168:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: 	13 
    -- CP-element group 168: successors 
    -- CP-element group 168:  members (1) 
      -- CP-element group 168: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(168) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 169:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: successors 
    -- CP-element group 169:  members (2) 
      -- CP-element group 169: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_entry_sample_req
      -- CP-element group 169: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_entry_sample_req_ps
      -- 
    phi_stmt_4942_entry_sample_req_513_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4942_entry_sample_req_513_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(169), ack => phi_stmt_4942_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(169) is bound as output of CP function.
    -- CP-element group 170:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: successors 
    -- CP-element group 170:  members (2) 
      -- CP-element group 170: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_phi_mux_ack
      -- CP-element group 170: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4942_phi_mux_ack_ps
      -- 
    phi_stmt_4942_phi_mux_ack_516_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 170_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4942_ack_0, ack => iretire_daemon_CP_131_elements(170)); -- 
    -- CP-element group 171:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: successors 
    -- CP-element group 171:  members (4) 
      -- CP-element group 171: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_sample_start__ps
      -- CP-element group 171: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_sample_completed__ps
      -- CP-element group 171: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_sample_start_
      -- CP-element group 171: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(171) is bound as output of CP function.
    -- CP-element group 172:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: successors 
    -- CP-element group 172: 	174 
    -- CP-element group 172:  members (2) 
      -- CP-element group 172: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_update_start__ps
      -- CP-element group 172: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(172) is bound as output of CP function.
    -- CP-element group 173:  join  transition  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: 	174 
    -- CP-element group 173: successors 
    -- CP-element group 173:  members (1) 
      -- CP-element group 173: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(173) <= iretire_daemon_CP_131_elements(174);
    -- CP-element group 174:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: 	172 
    -- CP-element group 174: successors 
    -- CP-element group 174: 	173 
    -- CP-element group 174:  members (1) 
      -- CP-element group 174: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_WB_RESET_4944_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(174) is a control-delay.
    cp_element_174_delay: control_delay_element  generic map(name => " 174_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(172), ack => iretire_daemon_CP_131_elements(174), clk => clk, reset =>reset);
    -- CP-element group 175:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: successors 
    -- CP-element group 175: 	177 
    -- CP-element group 175:  members (4) 
      -- CP-element group 175: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_sample_start__ps
      -- CP-element group 175: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_sample_start_
      -- CP-element group 175: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Sample/$entry
      -- CP-element group 175: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Sample/req
      -- 
    req_537_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_537_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(175), ack => next_iretire_state_5703_4945_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(175) is bound as output of CP function.
    -- CP-element group 176:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: successors 
    -- CP-element group 176: 	178 
    -- CP-element group 176:  members (4) 
      -- CP-element group 176: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_update_start__ps
      -- CP-element group 176: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_update_start_
      -- CP-element group 176: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Update/$entry
      -- CP-element group 176: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Update/req
      -- 
    req_542_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_542_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(176), ack => next_iretire_state_5703_4945_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(176) is bound as output of CP function.
    -- CP-element group 177:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: 	175 
    -- CP-element group 177: successors 
    -- CP-element group 177:  members (4) 
      -- CP-element group 177: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_sample_completed__ps
      -- CP-element group 177: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_sample_completed_
      -- CP-element group 177: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Sample/$exit
      -- CP-element group 177: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Sample/ack
      -- 
    ack_538_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 177_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_iretire_state_5703_4945_buf_ack_0, ack => iretire_daemon_CP_131_elements(177)); -- 
    -- CP-element group 178:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: 	176 
    -- CP-element group 178: successors 
    -- CP-element group 178:  members (4) 
      -- CP-element group 178: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_update_completed__ps
      -- CP-element group 178: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_update_completed_
      -- CP-element group 178: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Update/$exit
      -- CP-element group 178: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_iretire_state_4945_Update/ack
      -- 
    ack_543_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 178_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_iretire_state_5703_4945_buf_ack_1, ack => iretire_daemon_CP_131_elements(178)); -- 
    -- CP-element group 179:  join  transition  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: 	14 
    -- CP-element group 179: marked-predecessors 
    -- CP-element group 179: 	17 
    -- CP-element group 179: successors 
    -- CP-element group 179: 	16 
    -- CP-element group 179:  members (1) 
      -- CP-element group 179: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_sample_start_
      -- 
    iretire_daemon_cp_element_group_179: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_179"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_179 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(179), clk => clk, reset => reset); --
    end block;
    -- CP-element group 180:  join  transition  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: 	14 
    -- CP-element group 180: marked-predecessors 
    -- CP-element group 180: 	184 
    -- CP-element group 180: 	259 
    -- CP-element group 180: 	263 
    -- CP-element group 180: 	266 
    -- CP-element group 180: 	269 
    -- CP-element group 180: 	272 
    -- CP-element group 180: successors 
    -- CP-element group 180: 	19 
    -- CP-element group 180:  members (1) 
      -- CP-element group 180: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_update_start_
      -- 
    iretire_daemon_cp_element_group_180: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_180"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_180 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(180), clk => clk, reset => reset); --
    end block;
    -- CP-element group 181:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: 	16 
    -- CP-element group 181: successors 
    -- CP-element group 181:  members (1) 
      -- CP-element group 181: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(181) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 182:  join  transition  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: successors 
    -- CP-element group 182: 	17 
    -- CP-element group 182:  members (1) 
      -- CP-element group 182: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(182) is bound as output of CP function.
    -- CP-element group 183:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: 	64 
    -- CP-element group 183: 	24 
    -- CP-element group 183: 	44 
    -- CP-element group 183: 	19 
    -- CP-element group 183: successors 
    -- CP-element group 183:  members (1) 
      -- CP-element group 183: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_update_start__ps
      -- 
    iretire_daemon_cp_element_group_183: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_183"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_183 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(183), clk => clk, reset => reset); --
    end block;
    -- CP-element group 184:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: successors 
    -- CP-element group 184: 	20 
    -- CP-element group 184: 	258 
    -- CP-element group 184: 	261 
    -- CP-element group 184: 	265 
    -- CP-element group 184: 	268 
    -- CP-element group 184: 	271 
    -- CP-element group 184: marked-successors 
    -- CP-element group 184: 	180 
    -- CP-element group 184:  members (2) 
      -- CP-element group 184: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_update_completed_
      -- CP-element group 184: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(184) is bound as output of CP function.
    -- CP-element group 185:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: 	12 
    -- CP-element group 185: successors 
    -- CP-element group 185:  members (1) 
      -- CP-element group 185: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(185) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 186:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: successors 
    -- CP-element group 186:  members (2) 
      -- CP-element group 186: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_loopback_sample_req
      -- CP-element group 186: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_loopback_sample_req_ps
      -- 
    phi_stmt_4946_loopback_sample_req_554_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4946_loopback_sample_req_554_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(186), ack => phi_stmt_4946_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(186) is bound as output of CP function.
    -- CP-element group 187:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: 	13 
    -- CP-element group 187: successors 
    -- CP-element group 187:  members (1) 
      -- CP-element group 187: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(187) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 188:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: successors 
    -- CP-element group 188:  members (2) 
      -- CP-element group 188: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_entry_sample_req
      -- CP-element group 188: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_entry_sample_req_ps
      -- 
    phi_stmt_4946_entry_sample_req_557_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4946_entry_sample_req_557_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(188), ack => phi_stmt_4946_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(188) is bound as output of CP function.
    -- CP-element group 189:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: successors 
    -- CP-element group 189:  members (2) 
      -- CP-element group 189: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_phi_mux_ack
      -- CP-element group 189: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4946_phi_mux_ack_ps
      -- 
    phi_stmt_4946_phi_mux_ack_560_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 189_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4946_ack_0, ack => iretire_daemon_CP_131_elements(189)); -- 
    -- CP-element group 190:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: successors 
    -- CP-element group 190:  members (4) 
      -- CP-element group 190: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_sample_start__ps
      -- CP-element group 190: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_sample_completed__ps
      -- CP-element group 190: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_sample_start_
      -- CP-element group 190: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(190) is bound as output of CP function.
    -- CP-element group 191:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: successors 
    -- CP-element group 191: 	193 
    -- CP-element group 191:  members (2) 
      -- CP-element group 191: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_update_start__ps
      -- CP-element group 191: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(191) is bound as output of CP function.
    -- CP-element group 192:  join  transition  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: 	193 
    -- CP-element group 192: successors 
    -- CP-element group 192:  members (1) 
      -- CP-element group 192: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(192) <= iretire_daemon_CP_131_elements(193);
    -- CP-element group 193:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: 	191 
    -- CP-element group 193: successors 
    -- CP-element group 193: 	192 
    -- CP-element group 193:  members (1) 
      -- CP-element group 193: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4948_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(193) is a control-delay.
    cp_element_193_delay: control_delay_element  generic map(name => " 193_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(191), ack => iretire_daemon_CP_131_elements(193), clk => clk, reset =>reset);
    -- CP-element group 194:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: successors 
    -- CP-element group 194: 	196 
    -- CP-element group 194:  members (4) 
      -- CP-element group 194: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_sample_start__ps
      -- CP-element group 194: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_sample_start_
      -- CP-element group 194: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Sample/$entry
      -- CP-element group 194: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Sample/req
      -- 
    req_581_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_581_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(194), ack => get_from_ls_4972_4949_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(194) is bound as output of CP function.
    -- CP-element group 195:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: successors 
    -- CP-element group 195: 	197 
    -- CP-element group 195:  members (4) 
      -- CP-element group 195: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_update_start__ps
      -- CP-element group 195: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_update_start_
      -- CP-element group 195: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Update/$entry
      -- CP-element group 195: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Update/req
      -- 
    req_586_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_586_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(195), ack => get_from_ls_4972_4949_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(195) is bound as output of CP function.
    -- CP-element group 196:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: 	194 
    -- CP-element group 196: successors 
    -- CP-element group 196:  members (4) 
      -- CP-element group 196: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_sample_completed__ps
      -- CP-element group 196: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_sample_completed_
      -- CP-element group 196: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Sample/$exit
      -- CP-element group 196: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Sample/ack
      -- 
    ack_582_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 196_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_ls_4972_4949_buf_ack_0, ack => iretire_daemon_CP_131_elements(196)); -- 
    -- CP-element group 197:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: 	195 
    -- CP-element group 197: successors 
    -- CP-element group 197:  members (4) 
      -- CP-element group 197: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_update_completed__ps
      -- CP-element group 197: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_update_completed_
      -- CP-element group 197: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Update/$exit
      -- CP-element group 197: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_ls_4949_Update/ack
      -- 
    ack_587_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 197_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_ls_4972_4949_buf_ack_1, ack => iretire_daemon_CP_131_elements(197)); -- 
    -- CP-element group 198:  join  transition  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: 	14 
    -- CP-element group 198: marked-predecessors 
    -- CP-element group 198: 	17 
    -- CP-element group 198: successors 
    -- CP-element group 198: 	16 
    -- CP-element group 198:  members (1) 
      -- CP-element group 198: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_sample_start_
      -- 
    iretire_daemon_cp_element_group_198: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_198"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_198 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(198), clk => clk, reset => reset); --
    end block;
    -- CP-element group 199:  join  transition  bypass  pipeline-parent 
    -- CP-element group 199: predecessors 
    -- CP-element group 199: 	14 
    -- CP-element group 199: marked-predecessors 
    -- CP-element group 199: 	203 
    -- CP-element group 199: 	259 
    -- CP-element group 199: 	263 
    -- CP-element group 199: 	266 
    -- CP-element group 199: 	269 
    -- CP-element group 199: 	272 
    -- CP-element group 199: successors 
    -- CP-element group 199: 	19 
    -- CP-element group 199:  members (1) 
      -- CP-element group 199: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_update_start_
      -- 
    iretire_daemon_cp_element_group_199: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_199"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_199 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(199), clk => clk, reset => reset); --
    end block;
    -- CP-element group 200:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 200: predecessors 
    -- CP-element group 200: 	16 
    -- CP-element group 200: successors 
    -- CP-element group 200:  members (1) 
      -- CP-element group 200: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(200) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 201:  join  transition  bypass  pipeline-parent 
    -- CP-element group 201: predecessors 
    -- CP-element group 201: successors 
    -- CP-element group 201: 	17 
    -- CP-element group 201:  members (1) 
      -- CP-element group 201: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(201) is bound as output of CP function.
    -- CP-element group 202:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 202: predecessors 
    -- CP-element group 202: 	64 
    -- CP-element group 202: 	24 
    -- CP-element group 202: 	44 
    -- CP-element group 202: 	19 
    -- CP-element group 202: successors 
    -- CP-element group 202:  members (1) 
      -- CP-element group 202: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_update_start__ps
      -- 
    iretire_daemon_cp_element_group_202: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_202"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_202 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(202), clk => clk, reset => reset); --
    end block;
    -- CP-element group 203:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 203: predecessors 
    -- CP-element group 203: successors 
    -- CP-element group 203: 	20 
    -- CP-element group 203: 	258 
    -- CP-element group 203: 	261 
    -- CP-element group 203: 	265 
    -- CP-element group 203: 	268 
    -- CP-element group 203: 	271 
    -- CP-element group 203: marked-successors 
    -- CP-element group 203: 	199 
    -- CP-element group 203:  members (2) 
      -- CP-element group 203: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_update_completed_
      -- CP-element group 203: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(203) is bound as output of CP function.
    -- CP-element group 204:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 204: predecessors 
    -- CP-element group 204: 	12 
    -- CP-element group 204: successors 
    -- CP-element group 204:  members (1) 
      -- CP-element group 204: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(204) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 205:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 205: predecessors 
    -- CP-element group 205: successors 
    -- CP-element group 205:  members (2) 
      -- CP-element group 205: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_loopback_sample_req
      -- CP-element group 205: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_loopback_sample_req_ps
      -- 
    phi_stmt_4950_loopback_sample_req_598_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4950_loopback_sample_req_598_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(205), ack => phi_stmt_4950_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(205) is bound as output of CP function.
    -- CP-element group 206:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 206: predecessors 
    -- CP-element group 206: 	13 
    -- CP-element group 206: successors 
    -- CP-element group 206:  members (1) 
      -- CP-element group 206: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(206) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 207:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 207: predecessors 
    -- CP-element group 207: successors 
    -- CP-element group 207:  members (2) 
      -- CP-element group 207: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_entry_sample_req
      -- CP-element group 207: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_entry_sample_req_ps
      -- 
    phi_stmt_4950_entry_sample_req_601_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4950_entry_sample_req_601_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(207), ack => phi_stmt_4950_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(207) is bound as output of CP function.
    -- CP-element group 208:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 208: predecessors 
    -- CP-element group 208: successors 
    -- CP-element group 208:  members (2) 
      -- CP-element group 208: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_phi_mux_ack
      -- CP-element group 208: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4950_phi_mux_ack_ps
      -- 
    phi_stmt_4950_phi_mux_ack_604_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 208_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4950_ack_0, ack => iretire_daemon_CP_131_elements(208)); -- 
    -- CP-element group 209:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 209: predecessors 
    -- CP-element group 209: successors 
    -- CP-element group 209:  members (4) 
      -- CP-element group 209: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_sample_start__ps
      -- CP-element group 209: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_sample_completed__ps
      -- CP-element group 209: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_sample_start_
      -- CP-element group 209: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(209) is bound as output of CP function.
    -- CP-element group 210:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 210: predecessors 
    -- CP-element group 210: successors 
    -- CP-element group 210: 	212 
    -- CP-element group 210:  members (2) 
      -- CP-element group 210: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_update_start__ps
      -- CP-element group 210: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(210) is bound as output of CP function.
    -- CP-element group 211:  join  transition  bypass  pipeline-parent 
    -- CP-element group 211: predecessors 
    -- CP-element group 211: 	212 
    -- CP-element group 211: successors 
    -- CP-element group 211:  members (1) 
      -- CP-element group 211: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(211) <= iretire_daemon_CP_131_elements(212);
    -- CP-element group 212:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 212: predecessors 
    -- CP-element group 212: 	210 
    -- CP-element group 212: successors 
    -- CP-element group 212: 	211 
    -- CP-element group 212:  members (1) 
      -- CP-element group 212: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4952_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(212) is a control-delay.
    cp_element_212_delay: control_delay_element  generic map(name => " 212_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(210), ack => iretire_daemon_CP_131_elements(212), clk => clk, reset =>reset);
    -- CP-element group 213:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 213: predecessors 
    -- CP-element group 213: successors 
    -- CP-element group 213: 	215 
    -- CP-element group 213:  members (4) 
      -- CP-element group 213: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_sample_start__ps
      -- CP-element group 213: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_sample_start_
      -- CP-element group 213: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Sample/$entry
      -- CP-element group 213: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Sample/req
      -- 
    req_625_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_625_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(213), ack => get_from_iu_4982_4953_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(213) is bound as output of CP function.
    -- CP-element group 214:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 214: predecessors 
    -- CP-element group 214: successors 
    -- CP-element group 214: 	216 
    -- CP-element group 214:  members (4) 
      -- CP-element group 214: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_update_start__ps
      -- CP-element group 214: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_update_start_
      -- CP-element group 214: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Update/$entry
      -- CP-element group 214: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Update/req
      -- 
    req_630_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_630_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(214), ack => get_from_iu_4982_4953_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(214) is bound as output of CP function.
    -- CP-element group 215:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 215: predecessors 
    -- CP-element group 215: 	213 
    -- CP-element group 215: successors 
    -- CP-element group 215:  members (4) 
      -- CP-element group 215: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_sample_completed__ps
      -- CP-element group 215: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_sample_completed_
      -- CP-element group 215: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Sample/$exit
      -- CP-element group 215: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Sample/ack
      -- 
    ack_626_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 215_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_iu_4982_4953_buf_ack_0, ack => iretire_daemon_CP_131_elements(215)); -- 
    -- CP-element group 216:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 216: predecessors 
    -- CP-element group 216: 	214 
    -- CP-element group 216: successors 
    -- CP-element group 216:  members (4) 
      -- CP-element group 216: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_update_completed__ps
      -- CP-element group 216: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_update_completed_
      -- CP-element group 216: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Update/$exit
      -- CP-element group 216: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_iu_4953_Update/ack
      -- 
    ack_631_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 216_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_iu_4982_4953_buf_ack_1, ack => iretire_daemon_CP_131_elements(216)); -- 
    -- CP-element group 217:  join  transition  bypass  pipeline-parent 
    -- CP-element group 217: predecessors 
    -- CP-element group 217: 	14 
    -- CP-element group 217: marked-predecessors 
    -- CP-element group 217: 	17 
    -- CP-element group 217: successors 
    -- CP-element group 217: 	16 
    -- CP-element group 217:  members (1) 
      -- CP-element group 217: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_sample_start_
      -- 
    iretire_daemon_cp_element_group_217: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_217"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_217 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(217), clk => clk, reset => reset); --
    end block;
    -- CP-element group 218:  join  transition  bypass  pipeline-parent 
    -- CP-element group 218: predecessors 
    -- CP-element group 218: 	14 
    -- CP-element group 218: marked-predecessors 
    -- CP-element group 218: 	222 
    -- CP-element group 218: 	259 
    -- CP-element group 218: 	263 
    -- CP-element group 218: 	266 
    -- CP-element group 218: 	269 
    -- CP-element group 218: 	272 
    -- CP-element group 218: successors 
    -- CP-element group 218: 	19 
    -- CP-element group 218:  members (1) 
      -- CP-element group 218: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_update_start_
      -- 
    iretire_daemon_cp_element_group_218: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_218"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(259) & iretire_daemon_CP_131_elements(263) & iretire_daemon_CP_131_elements(266) & iretire_daemon_CP_131_elements(269) & iretire_daemon_CP_131_elements(272);
      gj_iretire_daemon_cp_element_group_218 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(218), clk => clk, reset => reset); --
    end block;
    -- CP-element group 219:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 219: predecessors 
    -- CP-element group 219: 	16 
    -- CP-element group 219: successors 
    -- CP-element group 219:  members (1) 
      -- CP-element group 219: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(219) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 220:  join  transition  bypass  pipeline-parent 
    -- CP-element group 220: predecessors 
    -- CP-element group 220: successors 
    -- CP-element group 220: 	17 
    -- CP-element group 220:  members (1) 
      -- CP-element group 220: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(220) is bound as output of CP function.
    -- CP-element group 221:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 221: predecessors 
    -- CP-element group 221: 	64 
    -- CP-element group 221: 	24 
    -- CP-element group 221: 	44 
    -- CP-element group 221: 	19 
    -- CP-element group 221: successors 
    -- CP-element group 221:  members (1) 
      -- CP-element group 221: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_update_start__ps
      -- 
    iretire_daemon_cp_element_group_221: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_221"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_221 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(221), clk => clk, reset => reset); --
    end block;
    -- CP-element group 222:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 222: predecessors 
    -- CP-element group 222: successors 
    -- CP-element group 222: 	20 
    -- CP-element group 222: 	258 
    -- CP-element group 222: 	261 
    -- CP-element group 222: 	265 
    -- CP-element group 222: 	268 
    -- CP-element group 222: 	271 
    -- CP-element group 222: marked-successors 
    -- CP-element group 222: 	218 
    -- CP-element group 222:  members (2) 
      -- CP-element group 222: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_update_completed_
      -- CP-element group 222: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(222) is bound as output of CP function.
    -- CP-element group 223:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 223: predecessors 
    -- CP-element group 223: 	12 
    -- CP-element group 223: successors 
    -- CP-element group 223:  members (1) 
      -- CP-element group 223: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(223) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 224:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 224: predecessors 
    -- CP-element group 224: successors 
    -- CP-element group 224:  members (2) 
      -- CP-element group 224: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_loopback_sample_req
      -- CP-element group 224: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_loopback_sample_req_ps
      -- 
    phi_stmt_4954_loopback_sample_req_642_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4954_loopback_sample_req_642_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(224), ack => phi_stmt_4954_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(224) is bound as output of CP function.
    -- CP-element group 225:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 225: predecessors 
    -- CP-element group 225: 	13 
    -- CP-element group 225: successors 
    -- CP-element group 225:  members (1) 
      -- CP-element group 225: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(225) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 226:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 226: predecessors 
    -- CP-element group 226: successors 
    -- CP-element group 226:  members (2) 
      -- CP-element group 226: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_entry_sample_req
      -- CP-element group 226: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_entry_sample_req_ps
      -- 
    phi_stmt_4954_entry_sample_req_645_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4954_entry_sample_req_645_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(226), ack => phi_stmt_4954_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(226) is bound as output of CP function.
    -- CP-element group 227:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 227: predecessors 
    -- CP-element group 227: successors 
    -- CP-element group 227:  members (2) 
      -- CP-element group 227: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_phi_mux_ack
      -- CP-element group 227: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4954_phi_mux_ack_ps
      -- 
    phi_stmt_4954_phi_mux_ack_648_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 227_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4954_ack_0, ack => iretire_daemon_CP_131_elements(227)); -- 
    -- CP-element group 228:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 228: predecessors 
    -- CP-element group 228: successors 
    -- CP-element group 228:  members (4) 
      -- CP-element group 228: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_sample_start__ps
      -- CP-element group 228: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_sample_completed__ps
      -- CP-element group 228: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_sample_start_
      -- CP-element group 228: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(228) is bound as output of CP function.
    -- CP-element group 229:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 229: predecessors 
    -- CP-element group 229: successors 
    -- CP-element group 229: 	231 
    -- CP-element group 229:  members (2) 
      -- CP-element group 229: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_update_start__ps
      -- CP-element group 229: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(229) is bound as output of CP function.
    -- CP-element group 230:  join  transition  bypass  pipeline-parent 
    -- CP-element group 230: predecessors 
    -- CP-element group 230: 	231 
    -- CP-element group 230: successors 
    -- CP-element group 230:  members (1) 
      -- CP-element group 230: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(230) <= iretire_daemon_CP_131_elements(231);
    -- CP-element group 231:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 231: predecessors 
    -- CP-element group 231: 	229 
    -- CP-element group 231: successors 
    -- CP-element group 231: 	230 
    -- CP-element group 231:  members (1) 
      -- CP-element group 231: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/konst_4956_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(231) is a control-delay.
    cp_element_231_delay: control_delay_element  generic map(name => " 231_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(229), ack => iretire_daemon_CP_131_elements(231), clk => clk, reset =>reset);
    -- CP-element group 232:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 232: predecessors 
    -- CP-element group 232: successors 
    -- CP-element group 232: 	234 
    -- CP-element group 232:  members (4) 
      -- CP-element group 232: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_sample_start__ps
      -- CP-element group 232: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_sample_start_
      -- CP-element group 232: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Sample/$entry
      -- CP-element group 232: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Sample/req
      -- 
    req_669_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_669_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(232), ack => get_from_fp_4977_4957_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(232) is bound as output of CP function.
    -- CP-element group 233:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 233: predecessors 
    -- CP-element group 233: successors 
    -- CP-element group 233: 	235 
    -- CP-element group 233:  members (4) 
      -- CP-element group 233: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_update_start__ps
      -- CP-element group 233: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_update_start_
      -- CP-element group 233: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Update/$entry
      -- CP-element group 233: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Update/req
      -- 
    req_674_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_674_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(233), ack => get_from_fp_4977_4957_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(233) is bound as output of CP function.
    -- CP-element group 234:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 234: predecessors 
    -- CP-element group 234: 	232 
    -- CP-element group 234: successors 
    -- CP-element group 234:  members (4) 
      -- CP-element group 234: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_sample_completed__ps
      -- CP-element group 234: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_sample_completed_
      -- CP-element group 234: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Sample/$exit
      -- CP-element group 234: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Sample/ack
      -- 
    ack_670_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 234_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_fp_4977_4957_buf_ack_0, ack => iretire_daemon_CP_131_elements(234)); -- 
    -- CP-element group 235:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 235: predecessors 
    -- CP-element group 235: 	233 
    -- CP-element group 235: successors 
    -- CP-element group 235:  members (4) 
      -- CP-element group 235: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_update_completed__ps
      -- CP-element group 235: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_update_completed_
      -- CP-element group 235: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Update/$exit
      -- CP-element group 235: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_get_from_fp_4957_Update/ack
      -- 
    ack_675_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 235_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => get_from_fp_4977_4957_buf_ack_1, ack => iretire_daemon_CP_131_elements(235)); -- 
    -- CP-element group 236:  join  transition  bypass  pipeline-parent 
    -- CP-element group 236: predecessors 
    -- CP-element group 236: 	14 
    -- CP-element group 236: marked-predecessors 
    -- CP-element group 236: 	17 
    -- CP-element group 236: successors 
    -- CP-element group 236: 	16 
    -- CP-element group 236:  members (1) 
      -- CP-element group 236: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_sample_start_
      -- 
    iretire_daemon_cp_element_group_236: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_236"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(17);
      gj_iretire_daemon_cp_element_group_236 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(236), clk => clk, reset => reset); --
    end block;
    -- CP-element group 237:  join  transition  bypass  pipeline-parent 
    -- CP-element group 237: predecessors 
    -- CP-element group 237: 	14 
    -- CP-element group 237: marked-predecessors 
    -- CP-element group 237: 	241 
    -- CP-element group 237: 	259 
    -- CP-element group 237: successors 
    -- CP-element group 237: 	19 
    -- CP-element group 237:  members (1) 
      -- CP-element group 237: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_update_start_
      -- 
    iretire_daemon_cp_element_group_237: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_237"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(14) & iretire_daemon_CP_131_elements(241) & iretire_daemon_CP_131_elements(259);
      gj_iretire_daemon_cp_element_group_237 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(237), clk => clk, reset => reset); --
    end block;
    -- CP-element group 238:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 238: predecessors 
    -- CP-element group 238: 	16 
    -- CP-element group 238: successors 
    -- CP-element group 238:  members (1) 
      -- CP-element group 238: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_sample_start__ps
      -- 
    iretire_daemon_CP_131_elements(238) <= iretire_daemon_CP_131_elements(16);
    -- CP-element group 239:  join  transition  bypass  pipeline-parent 
    -- CP-element group 239: predecessors 
    -- CP-element group 239: successors 
    -- CP-element group 239: 	17 
    -- CP-element group 239:  members (1) 
      -- CP-element group 239: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_sample_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(239) is bound as output of CP function.
    -- CP-element group 240:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 240: predecessors 
    -- CP-element group 240: 	64 
    -- CP-element group 240: 	24 
    -- CP-element group 240: 	44 
    -- CP-element group 240: 	19 
    -- CP-element group 240: successors 
    -- CP-element group 240:  members (1) 
      -- CP-element group 240: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_update_start__ps
      -- 
    iretire_daemon_cp_element_group_240: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_240"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(64) & iretire_daemon_CP_131_elements(24) & iretire_daemon_CP_131_elements(44) & iretire_daemon_CP_131_elements(19);
      gj_iretire_daemon_cp_element_group_240 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(240), clk => clk, reset => reset); --
    end block;
    -- CP-element group 241:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 241: predecessors 
    -- CP-element group 241: successors 
    -- CP-element group 241: 	20 
    -- CP-element group 241: 	258 
    -- CP-element group 241: marked-successors 
    -- CP-element group 241: 	237 
    -- CP-element group 241:  members (2) 
      -- CP-element group 241: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_update_completed_
      -- CP-element group 241: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_update_completed__ps
      -- 
    -- Element group iretire_daemon_CP_131_elements(241) is bound as output of CP function.
    -- CP-element group 242:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 242: predecessors 
    -- CP-element group 242: 	12 
    -- CP-element group 242: successors 
    -- CP-element group 242:  members (1) 
      -- CP-element group 242: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_loopback_trigger
      -- 
    iretire_daemon_CP_131_elements(242) <= iretire_daemon_CP_131_elements(12);
    -- CP-element group 243:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 243: predecessors 
    -- CP-element group 243: successors 
    -- CP-element group 243:  members (2) 
      -- CP-element group 243: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_loopback_sample_req
      -- CP-element group 243: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_loopback_sample_req_ps
      -- 
    phi_stmt_4958_loopback_sample_req_686_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4958_loopback_sample_req_686_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(243), ack => phi_stmt_4958_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(243) is bound as output of CP function.
    -- CP-element group 244:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 244: predecessors 
    -- CP-element group 244: 	13 
    -- CP-element group 244: successors 
    -- CP-element group 244:  members (1) 
      -- CP-element group 244: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_entry_trigger
      -- 
    iretire_daemon_CP_131_elements(244) <= iretire_daemon_CP_131_elements(13);
    -- CP-element group 245:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 245: predecessors 
    -- CP-element group 245: successors 
    -- CP-element group 245:  members (2) 
      -- CP-element group 245: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_entry_sample_req
      -- CP-element group 245: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_entry_sample_req_ps
      -- 
    phi_stmt_4958_entry_sample_req_689_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_4958_entry_sample_req_689_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(245), ack => phi_stmt_4958_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(245) is bound as output of CP function.
    -- CP-element group 246:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 246: predecessors 
    -- CP-element group 246: successors 
    -- CP-element group 246:  members (2) 
      -- CP-element group 246: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_phi_mux_ack
      -- CP-element group 246: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/phi_stmt_4958_phi_mux_ack_ps
      -- 
    phi_stmt_4958_phi_mux_ack_692_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 246_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_4958_ack_0, ack => iretire_daemon_CP_131_elements(246)); -- 
    -- CP-element group 247:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 247: predecessors 
    -- CP-element group 247: successors 
    -- CP-element group 247:  members (4) 
      -- CP-element group 247: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_sample_start__ps
      -- CP-element group 247: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_sample_completed__ps
      -- CP-element group 247: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_sample_start_
      -- CP-element group 247: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_sample_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(247) is bound as output of CP function.
    -- CP-element group 248:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 248: predecessors 
    -- CP-element group 248: successors 
    -- CP-element group 248: 	250 
    -- CP-element group 248:  members (2) 
      -- CP-element group 248: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_update_start__ps
      -- CP-element group 248: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_update_start_
      -- 
    -- Element group iretire_daemon_CP_131_elements(248) is bound as output of CP function.
    -- CP-element group 249:  join  transition  bypass  pipeline-parent 
    -- CP-element group 249: predecessors 
    -- CP-element group 249: 	250 
    -- CP-element group 249: successors 
    -- CP-element group 249:  members (1) 
      -- CP-element group 249: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_update_completed__ps
      -- 
    iretire_daemon_CP_131_elements(249) <= iretire_daemon_CP_131_elements(250);
    -- CP-element group 250:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 250: predecessors 
    -- CP-element group 250: 	248 
    -- CP-element group 250: successors 
    -- CP-element group 250: 	249 
    -- CP-element group 250:  members (1) 
      -- CP-element group 250: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/type_cast_4962_update_completed_
      -- 
    -- Element group iretire_daemon_CP_131_elements(250) is a control-delay.
    cp_element_250_delay: control_delay_element  generic map(name => " 250_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(248), ack => iretire_daemon_CP_131_elements(250), clk => clk, reset =>reset);
    -- CP-element group 251:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 251: predecessors 
    -- CP-element group 251: successors 
    -- CP-element group 251: 	253 
    -- CP-element group 251:  members (4) 
      -- CP-element group 251: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_sample_start__ps
      -- CP-element group 251: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_sample_start_
      -- CP-element group 251: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Sample/$entry
      -- CP-element group 251: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Sample/req
      -- 
    req_713_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_713_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(251), ack => next_psr_tbr_record_5296_4963_buf_req_0); -- 
    -- Element group iretire_daemon_CP_131_elements(251) is bound as output of CP function.
    -- CP-element group 252:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 252: predecessors 
    -- CP-element group 252: successors 
    -- CP-element group 252: 	254 
    -- CP-element group 252:  members (4) 
      -- CP-element group 252: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_update_start__ps
      -- CP-element group 252: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_update_start_
      -- CP-element group 252: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Update/$entry
      -- CP-element group 252: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Update/req
      -- 
    req_718_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_718_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(252), ack => next_psr_tbr_record_5296_4963_buf_req_1); -- 
    -- Element group iretire_daemon_CP_131_elements(252) is bound as output of CP function.
    -- CP-element group 253:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 253: predecessors 
    -- CP-element group 253: 	251 
    -- CP-element group 253: successors 
    -- CP-element group 253:  members (4) 
      -- CP-element group 253: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_sample_completed__ps
      -- CP-element group 253: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_sample_completed_
      -- CP-element group 253: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Sample/$exit
      -- CP-element group 253: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Sample/ack
      -- 
    ack_714_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 253_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_psr_tbr_record_5296_4963_buf_ack_0, ack => iretire_daemon_CP_131_elements(253)); -- 
    -- CP-element group 254:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 254: predecessors 
    -- CP-element group 254: 	252 
    -- CP-element group 254: successors 
    -- CP-element group 254:  members (4) 
      -- CP-element group 254: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_update_completed__ps
      -- CP-element group 254: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_update_completed_
      -- CP-element group 254: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Update/$exit
      -- CP-element group 254: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/R_next_psr_tbr_record_4963_Update/ack
      -- 
    ack_719_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 254_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_psr_tbr_record_5296_4963_buf_ack_1, ack => iretire_daemon_CP_131_elements(254)); -- 
    -- CP-element group 255:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 255: predecessors 
    -- CP-element group 255: 	108 
    -- CP-element group 255: marked-predecessors 
    -- CP-element group 255: 	257 
    -- CP-element group 255: successors 
    -- CP-element group 255: 	256 
    -- CP-element group 255:  members (3) 
      -- CP-element group 255: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_sample_start_
      -- CP-element group 255: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Sample/$entry
      -- CP-element group 255: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Sample/req
      -- 
    req_728_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_728_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(255), ack => WPIPE_teu_iretire_to_idispatch_5072_inst_req_0); -- 
    iretire_daemon_cp_element_group_255: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_255"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(257);
      gj_iretire_daemon_cp_element_group_255 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(255), clk => clk, reset => reset); --
    end block;
    -- CP-element group 256:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 256: predecessors 
    -- CP-element group 256: 	255 
    -- CP-element group 256: successors 
    -- CP-element group 256: 	257 
    -- CP-element group 256: marked-successors 
    -- CP-element group 256: 	104 
    -- CP-element group 256:  members (6) 
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_sample_completed_
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_update_start_
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Sample/$exit
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Sample/ack
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Update/$entry
      -- CP-element group 256: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Update/req
      -- 
    ack_729_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 256_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_to_idispatch_5072_inst_ack_0, ack => iretire_daemon_CP_131_elements(256)); -- 
    req_733_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_733_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(256), ack => WPIPE_teu_iretire_to_idispatch_5072_inst_req_1); -- 
    -- CP-element group 257:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 257: predecessors 
    -- CP-element group 257: 	256 
    -- CP-element group 257: successors 
    -- CP-element group 257: 	275 
    -- CP-element group 257: marked-successors 
    -- CP-element group 257: 	255 
    -- CP-element group 257:  members (3) 
      -- CP-element group 257: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_update_completed_
      -- CP-element group 257: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Update/$exit
      -- CP-element group 257: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_to_idispatch_5072_Update/ack
      -- 
    ack_734_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 257_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_to_idispatch_5072_inst_ack_1, ack => iretire_daemon_CP_131_elements(257)); -- 
    -- CP-element group 258:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 258: predecessors 
    -- CP-element group 258: 	66 
    -- CP-element group 258: 	108 
    -- CP-element group 258: 	25 
    -- CP-element group 258: 	46 
    -- CP-element group 258: 	165 
    -- CP-element group 258: 	184 
    -- CP-element group 258: 	203 
    -- CP-element group 258: 	222 
    -- CP-element group 258: 	241 
    -- CP-element group 258: marked-predecessors 
    -- CP-element group 258: 	260 
    -- CP-element group 258: successors 
    -- CP-element group 258: 	259 
    -- CP-element group 258:  members (3) 
      -- CP-element group 258: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_sample_start_
      -- CP-element group 258: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Sample/$entry
      -- CP-element group 258: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Sample/req
      -- 
    req_742_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_742_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(258), ack => WPIPE_teu_to_ccu_5842_inst_req_0); -- 
    iretire_daemon_cp_element_group_258: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_258"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(241) & iretire_daemon_CP_131_elements(260);
      gj_iretire_daemon_cp_element_group_258 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(258), clk => clk, reset => reset); --
    end block;
    -- CP-element group 259:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 259: predecessors 
    -- CP-element group 259: 	258 
    -- CP-element group 259: successors 
    -- CP-element group 259: 	260 
    -- CP-element group 259: marked-successors 
    -- CP-element group 259: 	63 
    -- CP-element group 259: 	104 
    -- CP-element group 259: 	22 
    -- CP-element group 259: 	42 
    -- CP-element group 259: 	161 
    -- CP-element group 259: 	180 
    -- CP-element group 259: 	199 
    -- CP-element group 259: 	218 
    -- CP-element group 259: 	237 
    -- CP-element group 259:  members (6) 
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Update/req
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Update/$entry
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_sample_completed_
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_update_start_
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Sample/$exit
      -- CP-element group 259: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Sample/ack
      -- 
    ack_743_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 259_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_5842_inst_ack_0, ack => iretire_daemon_CP_131_elements(259)); -- 
    req_747_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_747_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(259), ack => WPIPE_teu_to_ccu_5842_inst_req_1); -- 
    -- CP-element group 260:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 260: predecessors 
    -- CP-element group 260: 	259 
    -- CP-element group 260: successors 
    -- CP-element group 260: 	275 
    -- CP-element group 260: marked-successors 
    -- CP-element group 260: 	258 
    -- CP-element group 260:  members (3) 
      -- CP-element group 260: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Update/ack
      -- CP-element group 260: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_Update/$exit
      -- CP-element group 260: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_to_ccu_5842_update_completed_
      -- 
    ack_748_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 260_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_5842_inst_ack_1, ack => iretire_daemon_CP_131_elements(260)); -- 
    -- CP-element group 261:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 261: predecessors 
    -- CP-element group 261: 	66 
    -- CP-element group 261: 	108 
    -- CP-element group 261: 	25 
    -- CP-element group 261: 	46 
    -- CP-element group 261: 	165 
    -- CP-element group 261: 	184 
    -- CP-element group 261: 	203 
    -- CP-element group 261: 	222 
    -- CP-element group 261: marked-predecessors 
    -- CP-element group 261: 	263 
    -- CP-element group 261: successors 
    -- CP-element group 261: 	263 
    -- CP-element group 261:  members (3) 
      -- CP-element group 261: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_sample_start_
      -- CP-element group 261: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Sample/crr
      -- CP-element group 261: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Sample/$entry
      -- 
    crr_756_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_756_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(261), ack => call_stmt_5944_call_req_0); -- 
    iretire_daemon_cp_element_group_261: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_261"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(263);
      gj_iretire_daemon_cp_element_group_261 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(261), clk => clk, reset => reset); --
    end block;
    -- CP-element group 262:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 262: predecessors 
    -- CP-element group 262: marked-predecessors 
    -- CP-element group 262: 	264 
    -- CP-element group 262: successors 
    -- CP-element group 262: 	264 
    -- CP-element group 262:  members (3) 
      -- CP-element group 262: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_update_start_
      -- CP-element group 262: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Update/$entry
      -- CP-element group 262: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Update/ccr
      -- 
    ccr_761_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_761_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(262), ack => call_stmt_5944_call_req_1); -- 
    iretire_daemon_cp_element_group_262: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_262"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= iretire_daemon_CP_131_elements(264);
      gj_iretire_daemon_cp_element_group_262 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(262), clk => clk, reset => reset); --
    end block;
    -- CP-element group 263:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 263: predecessors 
    -- CP-element group 263: 	261 
    -- CP-element group 263: successors 
    -- CP-element group 263: marked-successors 
    -- CP-element group 263: 	63 
    -- CP-element group 263: 	104 
    -- CP-element group 263: 	22 
    -- CP-element group 263: 	42 
    -- CP-element group 263: 	161 
    -- CP-element group 263: 	180 
    -- CP-element group 263: 	199 
    -- CP-element group 263: 	218 
    -- CP-element group 263: 	261 
    -- CP-element group 263:  members (3) 
      -- CP-element group 263: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_sample_completed_
      -- CP-element group 263: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Sample/cra
      -- CP-element group 263: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Sample/$exit
      -- 
    cra_757_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 263_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_5944_call_ack_0, ack => iretire_daemon_CP_131_elements(263)); -- 
    -- CP-element group 264:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 264: predecessors 
    -- CP-element group 264: 	262 
    -- CP-element group 264: successors 
    -- CP-element group 264: 	275 
    -- CP-element group 264: marked-successors 
    -- CP-element group 264: 	262 
    -- CP-element group 264:  members (3) 
      -- CP-element group 264: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Update/cca
      -- CP-element group 264: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_update_completed_
      -- CP-element group 264: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/call_stmt_5944_Update/$exit
      -- 
    cca_762_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 264_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_5944_call_ack_1, ack => iretire_daemon_CP_131_elements(264)); -- 
    -- CP-element group 265:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 265: predecessors 
    -- CP-element group 265: 	66 
    -- CP-element group 265: 	108 
    -- CP-element group 265: 	25 
    -- CP-element group 265: 	46 
    -- CP-element group 265: 	165 
    -- CP-element group 265: 	184 
    -- CP-element group 265: 	203 
    -- CP-element group 265: 	222 
    -- CP-element group 265: marked-predecessors 
    -- CP-element group 265: 	267 
    -- CP-element group 265: successors 
    -- CP-element group 265: 	266 
    -- CP-element group 265:  members (3) 
      -- CP-element group 265: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Sample/$entry
      -- CP-element group 265: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_sample_start_
      -- CP-element group 265: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Sample/req
      -- 
    req_770_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_770_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(265), ack => WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_0); -- 
    iretire_daemon_cp_element_group_265: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_265"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(267);
      gj_iretire_daemon_cp_element_group_265 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(265), clk => clk, reset => reset); --
    end block;
    -- CP-element group 266:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 266: predecessors 
    -- CP-element group 266: 	265 
    -- CP-element group 266: successors 
    -- CP-element group 266: 	267 
    -- CP-element group 266: marked-successors 
    -- CP-element group 266: 	63 
    -- CP-element group 266: 	104 
    -- CP-element group 266: 	22 
    -- CP-element group 266: 	42 
    -- CP-element group 266: 	161 
    -- CP-element group 266: 	180 
    -- CP-element group 266: 	199 
    -- CP-element group 266: 	218 
    -- CP-element group 266:  members (6) 
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_update_start_
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Update/$entry
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_sample_completed_
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Update/req
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Sample/ack
      -- CP-element group 266: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Sample/$exit
      -- 
    ack_771_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 266_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_0, ack => iretire_daemon_CP_131_elements(266)); -- 
    req_775_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_775_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(266), ack => WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_1); -- 
    -- CP-element group 267:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 267: predecessors 
    -- CP-element group 267: 	266 
    -- CP-element group 267: successors 
    -- CP-element group 267: 	275 
    -- CP-element group 267: marked-successors 
    -- CP-element group 267: 	265 
    -- CP-element group 267:  members (3) 
      -- CP-element group 267: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Update/$exit
      -- CP-element group 267: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_update_completed_
      -- CP-element group 267: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_instruction_log_pipe_5959_Update/ack
      -- 
    ack_776_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 267_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_1, ack => iretire_daemon_CP_131_elements(267)); -- 
    -- CP-element group 268:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 268: predecessors 
    -- CP-element group 268: 	66 
    -- CP-element group 268: 	108 
    -- CP-element group 268: 	25 
    -- CP-element group 268: 	46 
    -- CP-element group 268: 	165 
    -- CP-element group 268: 	184 
    -- CP-element group 268: 	203 
    -- CP-element group 268: 	222 
    -- CP-element group 268: marked-predecessors 
    -- CP-element group 268: 	270 
    -- CP-element group 268: successors 
    -- CP-element group 268: 	269 
    -- CP-element group 268:  members (3) 
      -- CP-element group 268: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Sample/req
      -- CP-element group 268: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Sample/$entry
      -- CP-element group 268: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_sample_start_
      -- 
    req_784_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_784_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(268), ack => WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_0); -- 
    iretire_daemon_cp_element_group_268: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_268"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(270);
      gj_iretire_daemon_cp_element_group_268 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(268), clk => clk, reset => reset); --
    end block;
    -- CP-element group 269:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 269: predecessors 
    -- CP-element group 269: 	268 
    -- CP-element group 269: successors 
    -- CP-element group 269: 	270 
    -- CP-element group 269: marked-successors 
    -- CP-element group 269: 	63 
    -- CP-element group 269: 	104 
    -- CP-element group 269: 	22 
    -- CP-element group 269: 	42 
    -- CP-element group 269: 	161 
    -- CP-element group 269: 	180 
    -- CP-element group 269: 	199 
    -- CP-element group 269: 	218 
    -- CP-element group 269:  members (6) 
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Update/req
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Update/$entry
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Sample/ack
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Sample/$exit
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_update_start_
      -- CP-element group 269: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_sample_completed_
      -- 
    ack_785_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 269_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_0, ack => iretire_daemon_CP_131_elements(269)); -- 
    req_789_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_789_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(269), ack => WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_1); -- 
    -- CP-element group 270:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 270: predecessors 
    -- CP-element group 270: 	269 
    -- CP-element group 270: successors 
    -- CP-element group 270: 	275 
    -- CP-element group 270: marked-successors 
    -- CP-element group 270: 	268 
    -- CP-element group 270:  members (3) 
      -- CP-element group 270: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Update/ack
      -- CP-element group 270: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_Update/$exit
      -- CP-element group 270: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_update_completed_
      -- 
    ack_790_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 270_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_1, ack => iretire_daemon_CP_131_elements(270)); -- 
    -- CP-element group 271:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 271: predecessors 
    -- CP-element group 271: 	66 
    -- CP-element group 271: 	108 
    -- CP-element group 271: 	25 
    -- CP-element group 271: 	46 
    -- CP-element group 271: 	165 
    -- CP-element group 271: 	184 
    -- CP-element group 271: 	203 
    -- CP-element group 271: 	222 
    -- CP-element group 271: marked-predecessors 
    -- CP-element group 271: 	273 
    -- CP-element group 271: successors 
    -- CP-element group 271: 	272 
    -- CP-element group 271:  members (3) 
      -- CP-element group 271: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Sample/req
      -- CP-element group 271: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Sample/$entry
      -- CP-element group 271: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_sample_start_
      -- 
    req_798_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_798_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(271), ack => WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_0); -- 
    iretire_daemon_cp_element_group_271: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_271"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(66) & iretire_daemon_CP_131_elements(108) & iretire_daemon_CP_131_elements(25) & iretire_daemon_CP_131_elements(46) & iretire_daemon_CP_131_elements(165) & iretire_daemon_CP_131_elements(184) & iretire_daemon_CP_131_elements(203) & iretire_daemon_CP_131_elements(222) & iretire_daemon_CP_131_elements(273);
      gj_iretire_daemon_cp_element_group_271 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(271), clk => clk, reset => reset); --
    end block;
    -- CP-element group 272:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 272: predecessors 
    -- CP-element group 272: 	271 
    -- CP-element group 272: successors 
    -- CP-element group 272: 	273 
    -- CP-element group 272: marked-successors 
    -- CP-element group 272: 	63 
    -- CP-element group 272: 	104 
    -- CP-element group 272: 	22 
    -- CP-element group 272: 	42 
    -- CP-element group 272: 	161 
    -- CP-element group 272: 	180 
    -- CP-element group 272: 	199 
    -- CP-element group 272: 	218 
    -- CP-element group 272:  members (6) 
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Update/req
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Update/$entry
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Sample/ack
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Sample/$exit
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_update_start_
      -- CP-element group 272: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_sample_completed_
      -- 
    ack_799_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 272_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_0, ack => iretire_daemon_CP_131_elements(272)); -- 
    req_803_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_803_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iretire_daemon_CP_131_elements(272), ack => WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_1); -- 
    -- CP-element group 273:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 273: predecessors 
    -- CP-element group 273: 	272 
    -- CP-element group 273: successors 
    -- CP-element group 273: 	275 
    -- CP-element group 273: marked-successors 
    -- CP-element group 273: 	271 
    -- CP-element group 273:  members (3) 
      -- CP-element group 273: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Update/ack
      -- CP-element group 273: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_Update/$exit
      -- CP-element group 273: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_update_completed_
      -- 
    ack_804_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 273_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_1, ack => iretire_daemon_CP_131_elements(273)); -- 
    -- CP-element group 274:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 274: predecessors 
    -- CP-element group 274: 	14 
    -- CP-element group 274: successors 
    -- CP-element group 274: 	15 
    -- CP-element group 274:  members (1) 
      -- CP-element group 274: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group iretire_daemon_CP_131_elements(274) is a control-delay.
    cp_element_274_delay: control_delay_element  generic map(name => " 274_delay", delay_value => 1)  port map(req => iretire_daemon_CP_131_elements(14), ack => iretire_daemon_CP_131_elements(274), clk => clk, reset =>reset);
    -- CP-element group 275:  join  transition  bypass  pipeline-parent 
    -- CP-element group 275: predecessors 
    -- CP-element group 275: 	17 
    -- CP-element group 275: 	257 
    -- CP-element group 275: 	260 
    -- CP-element group 275: 	264 
    -- CP-element group 275: 	267 
    -- CP-element group 275: 	270 
    -- CP-element group 275: 	273 
    -- CP-element group 275: successors 
    -- CP-element group 275: 	11 
    -- CP-element group 275:  members (1) 
      -- CP-element group 275: 	 branch_block_stmt_4908/do_while_stmt_4909/do_while_stmt_4909_loop_body/$exit
      -- 
    iretire_daemon_cp_element_group_275: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 7,1 => 7,2 => 7,3 => 7,4 => 7,5 => 7,6 => 7);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 35) := "iretire_daemon_cp_element_group_275"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iretire_daemon_CP_131_elements(17) & iretire_daemon_CP_131_elements(257) & iretire_daemon_CP_131_elements(260) & iretire_daemon_CP_131_elements(264) & iretire_daemon_CP_131_elements(267) & iretire_daemon_CP_131_elements(270) & iretire_daemon_CP_131_elements(273);
      gj_iretire_daemon_cp_element_group_275 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iretire_daemon_CP_131_elements(275), clk => clk, reset => reset); --
    end block;
    -- CP-element group 276:  transition  input  bypass  pipeline-parent 
    -- CP-element group 276: predecessors 
    -- CP-element group 276: 	10 
    -- CP-element group 276: successors 
    -- CP-element group 276:  members (2) 
      -- CP-element group 276: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_exit/ack
      -- CP-element group 276: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_exit/$exit
      -- 
    ack_809_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 276_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4909_branch_ack_0, ack => iretire_daemon_CP_131_elements(276)); -- 
    -- CP-element group 277:  transition  input  bypass  pipeline-parent 
    -- CP-element group 277: predecessors 
    -- CP-element group 277: 	10 
    -- CP-element group 277: successors 
    -- CP-element group 277:  members (2) 
      -- CP-element group 277: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_taken/ack
      -- CP-element group 277: 	 branch_block_stmt_4908/do_while_stmt_4909/loop_taken/$exit
      -- 
    ack_813_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 277_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_4909_branch_ack_1, ack => iretire_daemon_CP_131_elements(277)); -- 
    -- CP-element group 278:  transition  bypass  pipeline-parent 
    -- CP-element group 278: predecessors 
    -- CP-element group 278: 	8 
    -- CP-element group 278: successors 
    -- CP-element group 278: 	6 
    -- CP-element group 278:  members (1) 
      -- CP-element group 278: 	 branch_block_stmt_4908/do_while_stmt_4909/$exit
      -- 
    iretire_daemon_CP_131_elements(278) <= iretire_daemon_CP_131_elements(8);
    iretire_daemon_do_while_stmt_4909_terminator_814: loop_terminator -- 
      generic map (name => " iretire_daemon_do_while_stmt_4909_terminator_814", max_iterations_in_flight =>7) 
      port map(loop_body_exit => iretire_daemon_CP_131_elements(11),loop_continue => iretire_daemon_CP_131_elements(277),loop_terminate => iretire_daemon_CP_131_elements(276),loop_back => iretire_daemon_CP_131_elements(9),loop_exit => iretire_daemon_CP_131_elements(8),clk => clk, reset => reset); -- 
    phi_stmt_4911_phi_seq_236_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(26);
      iretire_daemon_CP_131_elements(31)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(35);
      iretire_daemon_CP_131_elements(32)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(36);
      iretire_daemon_CP_131_elements(27) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(28);
      iretire_daemon_CP_131_elements(37)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(37);
      iretire_daemon_CP_131_elements(38)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(39);
      iretire_daemon_CP_131_elements(29) <= phi_mux_reqs(1);
      phi_stmt_4911_phi_seq_236 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4911_phi_seq_236") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(23), 
          phi_sample_ack => iretire_daemon_CP_131_elements(24), 
          phi_update_req => iretire_daemon_CP_131_elements(19), 
          phi_update_ack => iretire_daemon_CP_131_elements(25), 
          phi_mux_ack => iretire_daemon_CP_131_elements(30), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4916_phi_seq_280_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(49);
      iretire_daemon_CP_131_elements(52)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(52);
      iretire_daemon_CP_131_elements(53)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(54);
      iretire_daemon_CP_131_elements(50) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(47);
      iretire_daemon_CP_131_elements(56)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(60);
      iretire_daemon_CP_131_elements(57)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(61);
      iretire_daemon_CP_131_elements(48) <= phi_mux_reqs(1);
      phi_stmt_4916_phi_seq_280 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4916_phi_seq_280") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(43), 
          phi_sample_ack => iretire_daemon_CP_131_elements(44), 
          phi_update_req => iretire_daemon_CP_131_elements(45), 
          phi_update_ack => iretire_daemon_CP_131_elements(46), 
          phi_mux_ack => iretire_daemon_CP_131_elements(51), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4921_phi_seq_324_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(69);
      iretire_daemon_CP_131_elements(72)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(72);
      iretire_daemon_CP_131_elements(73)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(74);
      iretire_daemon_CP_131_elements(70) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(67);
      iretire_daemon_CP_131_elements(76)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(80);
      iretire_daemon_CP_131_elements(77)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(81);
      iretire_daemon_CP_131_elements(68) <= phi_mux_reqs(1);
      phi_stmt_4921_phi_seq_324 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4921_phi_seq_324") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(16), 
          phi_sample_ack => iretire_daemon_CP_131_elements(64), 
          phi_update_req => iretire_daemon_CP_131_elements(65), 
          phi_update_ack => iretire_daemon_CP_131_elements(66), 
          phi_mux_ack => iretire_daemon_CP_131_elements(71), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4926_phi_seq_368_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(90);
      iretire_daemon_CP_131_elements(93)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(93);
      iretire_daemon_CP_131_elements(94)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(95);
      iretire_daemon_CP_131_elements(91) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(88);
      iretire_daemon_CP_131_elements(97)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(101);
      iretire_daemon_CP_131_elements(98)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(102);
      iretire_daemon_CP_131_elements(89) <= phi_mux_reqs(1);
      phi_stmt_4926_phi_seq_368 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4926_phi_seq_368") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(84), 
          phi_sample_ack => iretire_daemon_CP_131_elements(85), 
          phi_update_req => iretire_daemon_CP_131_elements(86), 
          phi_update_ack => iretire_daemon_CP_131_elements(87), 
          phi_mux_ack => iretire_daemon_CP_131_elements(92), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4930_phi_seq_412_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(111);
      iretire_daemon_CP_131_elements(114)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(114);
      iretire_daemon_CP_131_elements(115)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(116);
      iretire_daemon_CP_131_elements(112) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(109);
      iretire_daemon_CP_131_elements(118)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(120);
      iretire_daemon_CP_131_elements(119)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(121);
      iretire_daemon_CP_131_elements(110) <= phi_mux_reqs(1);
      phi_stmt_4930_phi_seq_412 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4930_phi_seq_412") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(105), 
          phi_sample_ack => iretire_daemon_CP_131_elements(106), 
          phi_update_req => iretire_daemon_CP_131_elements(107), 
          phi_update_ack => iretire_daemon_CP_131_elements(108), 
          phi_mux_ack => iretire_daemon_CP_131_elements(113), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4934_phi_seq_456_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(130);
      iretire_daemon_CP_131_elements(133)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(133);
      iretire_daemon_CP_131_elements(134)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(135);
      iretire_daemon_CP_131_elements(131) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(128);
      iretire_daemon_CP_131_elements(137)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(139);
      iretire_daemon_CP_131_elements(138)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(140);
      iretire_daemon_CP_131_elements(129) <= phi_mux_reqs(1);
      phi_stmt_4934_phi_seq_456 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4934_phi_seq_456") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(124), 
          phi_sample_ack => iretire_daemon_CP_131_elements(125), 
          phi_update_req => iretire_daemon_CP_131_elements(126), 
          phi_update_ack => iretire_daemon_CP_131_elements(127), 
          phi_mux_ack => iretire_daemon_CP_131_elements(132), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4938_phi_seq_500_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(149);
      iretire_daemon_CP_131_elements(152)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(152);
      iretire_daemon_CP_131_elements(153)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(154);
      iretire_daemon_CP_131_elements(150) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(147);
      iretire_daemon_CP_131_elements(156)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(158);
      iretire_daemon_CP_131_elements(157)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(159);
      iretire_daemon_CP_131_elements(148) <= phi_mux_reqs(1);
      phi_stmt_4938_phi_seq_500 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4938_phi_seq_500") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(143), 
          phi_sample_ack => iretire_daemon_CP_131_elements(144), 
          phi_update_req => iretire_daemon_CP_131_elements(145), 
          phi_update_ack => iretire_daemon_CP_131_elements(146), 
          phi_mux_ack => iretire_daemon_CP_131_elements(151), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4942_phi_seq_544_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(168);
      iretire_daemon_CP_131_elements(171)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(171);
      iretire_daemon_CP_131_elements(172)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(173);
      iretire_daemon_CP_131_elements(169) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(166);
      iretire_daemon_CP_131_elements(175)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(177);
      iretire_daemon_CP_131_elements(176)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(178);
      iretire_daemon_CP_131_elements(167) <= phi_mux_reqs(1);
      phi_stmt_4942_phi_seq_544 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4942_phi_seq_544") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(162), 
          phi_sample_ack => iretire_daemon_CP_131_elements(163), 
          phi_update_req => iretire_daemon_CP_131_elements(164), 
          phi_update_ack => iretire_daemon_CP_131_elements(165), 
          phi_mux_ack => iretire_daemon_CP_131_elements(170), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4946_phi_seq_588_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(187);
      iretire_daemon_CP_131_elements(190)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(190);
      iretire_daemon_CP_131_elements(191)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(192);
      iretire_daemon_CP_131_elements(188) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(185);
      iretire_daemon_CP_131_elements(194)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(196);
      iretire_daemon_CP_131_elements(195)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(197);
      iretire_daemon_CP_131_elements(186) <= phi_mux_reqs(1);
      phi_stmt_4946_phi_seq_588 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4946_phi_seq_588") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(181), 
          phi_sample_ack => iretire_daemon_CP_131_elements(182), 
          phi_update_req => iretire_daemon_CP_131_elements(183), 
          phi_update_ack => iretire_daemon_CP_131_elements(184), 
          phi_mux_ack => iretire_daemon_CP_131_elements(189), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4950_phi_seq_632_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(206);
      iretire_daemon_CP_131_elements(209)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(209);
      iretire_daemon_CP_131_elements(210)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(211);
      iretire_daemon_CP_131_elements(207) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(204);
      iretire_daemon_CP_131_elements(213)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(215);
      iretire_daemon_CP_131_elements(214)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(216);
      iretire_daemon_CP_131_elements(205) <= phi_mux_reqs(1);
      phi_stmt_4950_phi_seq_632 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4950_phi_seq_632") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(200), 
          phi_sample_ack => iretire_daemon_CP_131_elements(201), 
          phi_update_req => iretire_daemon_CP_131_elements(202), 
          phi_update_ack => iretire_daemon_CP_131_elements(203), 
          phi_mux_ack => iretire_daemon_CP_131_elements(208), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4954_phi_seq_676_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(225);
      iretire_daemon_CP_131_elements(228)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(228);
      iretire_daemon_CP_131_elements(229)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(230);
      iretire_daemon_CP_131_elements(226) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(223);
      iretire_daemon_CP_131_elements(232)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(234);
      iretire_daemon_CP_131_elements(233)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(235);
      iretire_daemon_CP_131_elements(224) <= phi_mux_reqs(1);
      phi_stmt_4954_phi_seq_676 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4954_phi_seq_676") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(219), 
          phi_sample_ack => iretire_daemon_CP_131_elements(220), 
          phi_update_req => iretire_daemon_CP_131_elements(221), 
          phi_update_ack => iretire_daemon_CP_131_elements(222), 
          phi_mux_ack => iretire_daemon_CP_131_elements(227), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_4958_phi_seq_720_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iretire_daemon_CP_131_elements(244);
      iretire_daemon_CP_131_elements(247)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iretire_daemon_CP_131_elements(247);
      iretire_daemon_CP_131_elements(248)<= src_update_reqs(0);
      src_update_acks(0)  <= iretire_daemon_CP_131_elements(249);
      iretire_daemon_CP_131_elements(245) <= phi_mux_reqs(0);
      triggers(1)  <= iretire_daemon_CP_131_elements(242);
      iretire_daemon_CP_131_elements(251)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iretire_daemon_CP_131_elements(253);
      iretire_daemon_CP_131_elements(252)<= src_update_reqs(1);
      src_update_acks(1)  <= iretire_daemon_CP_131_elements(254);
      iretire_daemon_CP_131_elements(243) <= phi_mux_reqs(1);
      phi_stmt_4958_phi_seq_720 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_4958_phi_seq_720") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iretire_daemon_CP_131_elements(238), 
          phi_sample_ack => iretire_daemon_CP_131_elements(239), 
          phi_update_req => iretire_daemon_CP_131_elements(240), 
          phi_update_ack => iretire_daemon_CP_131_elements(241), 
          phi_mux_ack => iretire_daemon_CP_131_elements(246), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_187_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= iretire_daemon_CP_131_elements(12);
        preds(1)  <= iretire_daemon_CP_131_elements(13);
        entry_tmerge_187 : transition_merge -- 
          generic map(name => " entry_tmerge_187")
          port map (preds => preds, symbol_out => iretire_daemon_CP_131_elements(14));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_5259_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5276_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5476_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5480_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5495_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5499_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5514_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5518_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5532_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5537_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5541_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5651_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5654_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5658_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5735_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5746_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5924_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5927_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5935_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5978_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5885_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5888_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5892_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5896_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5899_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u11_u16_5817_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u16_u180_5835_wire : std_logic_vector(179 downto 0);
    signal CONCAT_u19_u31_5798_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u1_u2_5291_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5769_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5778_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5783_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5788_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5795_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5801_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5810_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5815_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5820_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_5825_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u5_5773_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u5_5792_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u3_5346_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5785_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5803_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5812_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5822_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u32_u64_5294_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_5829_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_5832_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u36_u164_5834_wire : std_logic_vector(163 downto 0);
    signal CONCAT_u3_u11_5807_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u3_u36_5826_wire : std_logic_vector(35 downto 0);
    signal CONCAT_u3_u5_5789_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_5816_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u5_5764_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u5_u12_5797_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u5_u6_5766_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u7_5796_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u5_u9_5775_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u64_u128_5833_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u6_u8_5770_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u7_u8_5806_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u8_u19_5780_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u9_u11_5779_wire : std_logic_vector(10 downto 0);
    signal EQ_u2_u1_5479_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5498_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5517_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5719_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5725_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5732_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_5743_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5472_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5491_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_5510_wire : std_logic_vector(0 downto 0);
    signal EQ_u6_u1_5475_wire : std_logic_vector(0 downto 0);
    signal EQ_u6_u1_5494_wire : std_logic_vector(0 downto 0);
    signal EQ_u6_u1_5513_wire : std_logic_vector(0 downto 0);
    signal MUX_5268_wire : std_logic_vector(31 downto 0);
    signal MUX_5285_wire : std_logic_vector(31 downto 0);
    signal MUX_5722_wire : std_logic_vector(0 downto 0);
    signal MUX_5728_wire : std_logic_vector(0 downto 0);
    signal MUX_5738_wire : std_logic_vector(0 downto 0);
    signal MUX_5740_wire : std_logic_vector(0 downto 0);
    signal MUX_5749_wire : std_logic_vector(0 downto 0);
    signal MUX_5751_wire : std_logic_vector(0 downto 0);
    signal MUX_5853_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5257_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5274_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5466_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5468_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5485_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5487_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5504_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5506_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5530_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5535_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5539_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5594_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5604_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5612_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5620_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5626_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5632_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5638_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5644_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5685_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5867_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5905_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5907_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5926_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5950_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5977_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5469_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5488_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5507_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5533_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5542_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5597_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5599_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5607_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5615_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5655_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5660_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5666_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5674_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5676_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5729_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5752_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5753_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5889_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5893_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5900_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5908_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5910_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_teu_stream_corrector_to_iretire_4929_wire : std_logic_vector(153 downto 0);
    signal RPIPE_teu_fpunit_to_iretire_4925_wire : std_logic_vector(50 downto 0);
    signal RPIPE_teu_iretire_instruction_log_pipe_4903_wire : std_logic_vector(31 downto 0);
    signal RPIPE_teu_iretire_skipped_instruction_log_pipe_4906_wire : std_logic_vector(31 downto 0);
    signal RPIPE_teu_iunit_to_iretire_4920_wire : std_logic_vector(95 downto 0);
    signal RPIPE_teu_loadstore_to_iretire_4914_wire : std_logic_vector(53 downto 0);
    signal R_ONE_1_5736_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_5747_wire_constant : std_logic_vector(0 downto 0);
    signal R_TERMINATES_STREAM_5151_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_5156_wire_constant : std_logic_vector(2 downto 0);
    signal R_WB_MISPREDICTED_STREAM_5731_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_5724_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_4944_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_5718_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_5742_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_5737_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_5748_wire_constant : std_logic_vector(0 downto 0);
    signal S_5142 : std_logic_vector(0 downto 0);
    signal annul_instruction_5018 : std_logic_vector(0 downto 0);
    signal annul_next_5022 : std_logic_vector(0 downto 0);
    signal break_stream_5692 : std_logic_vector(0 downto 0);
    signal break_thread_5678 : std_logic_vector(0 downto 0);
    signal bubbled_5870 : std_logic_vector(0 downto 0);
    signal corrected_npc_5066 : std_logic_vector(31 downto 0);
    signal cu2_to_retire_5050 : std_logic_vector(0 downto 0);
    signal curr_psr_5249 : std_logic_vector(31 downto 0);
    signal curr_psr_modified_5241 : std_logic_vector(0 downto 0);
    signal curr_tbr_5253 : std_logic_vector(31 downto 0);
    signal curr_tbr_modified_5245 : std_logic_vector(0 downto 0);
    signal data_access_exception_trap_5623 : std_logic_vector(0 downto 0);
    signal dbg_bp_hit_5107 : std_logic_vector(0 downto 0);
    signal debug_mode_5142 : std_logic_vector(0 downto 0);
    signal disp_cp_disabled_trap_5115 : std_logic_vector(0 downto 0);
    signal disp_fp_disabled_trap_5119 : std_logic_vector(0 downto 0);
    signal disp_illegal_instr_trap_5123 : std_logic_vector(0 downto 0);
    signal disp_mae_trap_5111 : std_logic_vector(0 downto 0);
    signal dispatch_traps_5026 : std_logic_vector(3 downto 0);
    signal enable_traps_5142 : std_logic_vector(0 downto 0);
    signal fetch_error_5014 : std_logic_vector(0 downto 0);
    signal flush_like_instruction_5142 : std_logic_vector(0 downto 0);
    signal fp_ieee_754_5450 : std_logic_vector(0 downto 0);
    signal fp_ieee_754_trap_5647 : std_logic_vector(0 downto 0);
    signal fp_ignore_5430 : std_logic_vector(0 downto 0);
    signal fp_invalid_reg_5442 : std_logic_vector(0 downto 0);
    signal fp_invalid_reg_trap_5635 : std_logic_vector(0 downto 0);
    signal fp_machine_error_5418 : std_logic_vector(0 downto 0);
    signal fp_match_5501 : std_logic_vector(0 downto 0);
    signal fp_register_update_5920 : std_logic_vector(0 downto 0);
    signal fp_sequence_error_5446 : std_logic_vector(0 downto 0);
    signal fp_sequence_error_trap_5641 : std_logic_vector(0 downto 0);
    signal fp_sid_5414 : std_logic_vector(5 downto 0);
    signal fp_signature_to_ccu_5931 : std_logic_vector(31 downto 0);
    signal fp_stream_id_5410 : std_logic_vector(1 downto 0);
    signal fp_tid_5406 : std_logic_vector(3 downto 0);
    signal fp_trap_5422 : std_logic_vector(0 downto 0);
    signal fp_traps_5426 : std_logic_vector(3 downto 0);
    signal fp_unimpl_instr_5438 : std_logic_vector(0 downto 0);
    signal fp_unimpl_instr_trap_5629 : std_logic_vector(0 downto 0);
    signal fp_write_signature_5434 : std_logic_vector(31 downto 0);
    signal from_fpunit_4921 : std_logic_vector(50 downto 0);
    signal from_fpunit_qualified_5402 : std_logic_vector(50 downto 0);
    signal from_iunit_4916 : std_logic_vector(95 downto 0);
    signal from_iunit_qualified_5181 : std_logic_vector(95 downto 0);
    signal from_ls_4911 : std_logic_vector(53 downto 0);
    signal from_ls_qualified_5302 : std_logic_vector(53 downto 0);
    signal from_stream_corrector_4926 : std_logic_vector(153 downto 0);
    signal from_stream_corrector_d_4930 : std_logic_vector(153 downto 0);
    signal fu2_to_retire_5046 : std_logic_vector(0 downto 0);
    signal get_from_fp_4977 : std_logic_vector(0 downto 0);
    signal get_from_fp_4977_4957_buffered : std_logic_vector(0 downto 0);
    signal get_from_fp_d_4954 : std_logic_vector(0 downto 0);
    signal get_from_iu_4982 : std_logic_vector(0 downto 0);
    signal get_from_iu_4982_4953_buffered : std_logic_vector(0 downto 0);
    signal get_from_iu_d_4950 : std_logic_vector(0 downto 0);
    signal get_from_ls_4972 : std_logic_vector(0 downto 0);
    signal get_from_ls_4972_4949_buffered : std_logic_vector(0 downto 0);
    signal get_from_ls_d_4946 : std_logic_vector(0 downto 0);
    signal icache_hit_5006 : std_logic_vector(0 downto 0);
    signal icache_was_used_5002 : std_logic_vector(0 downto 0);
    signal ignore_break_points_5142 : std_logic_vector(0 downto 0);
    signal illegal_instr_trap_5601 : std_logic_vector(0 downto 0);
    signal ilog_5957 : std_logic_vector(31 downto 0);
    signal ilvl_5034 : std_logic_vector(3 downto 0);
    signal imm_bit_5142 : std_logic_vector(0 downto 0);
    signal instruction_can_be_executed_5703 : std_logic_vector(0 downto 0);
    signal interrupt_flag_5030 : std_logic_vector(0 downto 0);
    signal iretire_state_4942 : std_logic_vector(1 downto 0);
    signal is_cti_5142 : std_logic_vector(0 downto 0);
    signal is_flush_5142 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_write_5142 : std_logic_vector(0 downto 0);
    signal is_write_psr_5142 : std_logic_vector(0 downto 0);
    signal iu2_to_retire_5042 : std_logic_vector(0 downto 0);
    signal iu_div_by_0_trap_5560 : std_logic_vector(0 downto 0);
    signal iu_ignore_5201 : std_logic_vector(0 downto 0);
    signal iu_illegal_instr_5548 : std_logic_vector(0 downto 0);
    signal iu_machine_error_5197 : std_logic_vector(0 downto 0);
    signal iu_match_5482 : std_logic_vector(0 downto 0);
    signal iu_mem_addr_not_aligned_5568 : std_logic_vector(0 downto 0);
    signal iu_priv_instr_5552 : std_logic_vector(0 downto 0);
    signal iu_register_updated_5902 : std_logic_vector(0 downto 0);
    signal iu_sid_5193 : std_logic_vector(5 downto 0);
    signal iu_signature_to_ccu_5914 : std_logic_vector(31 downto 0);
    signal iu_stream_id_5189 : std_logic_vector(1 downto 0);
    signal iu_tagged_overflow_trap_5556 : std_logic_vector(0 downto 0);
    signal iu_tid_5185 : std_logic_vector(3 downto 0);
    signal iu_trap_5213 : std_logic_vector(0 downto 0);
    signal iu_traps_5217 : std_logic_vector(14 downto 0);
    signal iu_write_signature_5221 : std_logic_vector(31 downto 0);
    signal kill_thread_now_5681 : std_logic_vector(0 downto 0);
    signal konst_4915_wire_constant : std_logic_vector(53 downto 0);
    signal konst_4918_wire_constant : std_logic_vector(95 downto 0);
    signal konst_4923_wire_constant : std_logic_vector(50 downto 0);
    signal konst_4928_wire_constant : std_logic_vector(153 downto 0);
    signal konst_4932_wire_constant : std_logic_vector(153 downto 0);
    signal konst_4936_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4940_wire_constant : std_logic_vector(31 downto 0);
    signal konst_4948_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4952_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4956_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4970_wire_constant : std_logic_vector(153 downto 0);
    signal konst_4975_wire_constant : std_logic_vector(153 downto 0);
    signal konst_4980_wire_constant : std_logic_vector(153 downto 0);
    signal konst_5073_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5179_wire_constant : std_logic_vector(95 downto 0);
    signal konst_5266_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5283_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5300_wire_constant : std_logic_vector(53 downto 0);
    signal konst_5358_wire_constant : std_logic_vector(5 downto 0);
    signal konst_5400_wire_constant : std_logic_vector(50 downto 0);
    signal konst_5721_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5727_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5739_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5750_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5849_wire_constant : std_logic_vector(0 downto 0);
    signal konst_5884_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5887_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5891_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5895_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5898_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5911_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5918_wire_constant : std_logic_vector(3 downto 0);
    signal konst_5929_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5997_wire_constant : std_logic_vector(0 downto 0);
    signal last_is_cti_4934 : std_logic_vector(0 downto 0);
    signal last_pc_4938 : std_logic_vector(31 downto 0);
    signal load_access_5342 : std_logic_vector(0 downto 0);
    signal load_miss_5342 : std_logic_vector(0 downto 0);
    signal logging_active_5142 : std_logic_vector(0 downto 0);
    signal ls_data_access_exception_5376 : std_logic_vector(0 downto 0);
    signal ls_dbg_info_5349 : std_logic_vector(3 downto 0);
    signal ls_dbg_wp_hit_5354 : std_logic_vector(0 downto 0);
    signal ls_dbg_wp_id_5322 : std_logic_vector(1 downto 0);
    signal ls_dbg_wp_read_hit_5326 : std_logic_vector(0 downto 0);
    signal ls_dbg_wp_write_hit_5330 : std_logic_vector(0 downto 0);
    signal ls_error_5384 : std_logic_vector(0 downto 0);
    signal ls_illegal_instr_5368 : std_logic_vector(0 downto 0);
    signal ls_match_5520 : std_logic_vector(0 downto 0);
    signal ls_mem_addr_not_aligned_5380 : std_logic_vector(0 downto 0);
    signal ls_priv_instr_5372 : std_logic_vector(0 downto 0);
    signal ls_sid_5314 : std_logic_vector(5 downto 0);
    signal ls_store_signature_5334 : std_logic_vector(31 downto 0);
    signal ls_store_signature_qualified_5342 : std_logic_vector(31 downto 0);
    signal ls_stream_id_5310 : std_logic_vector(1 downto 0);
    signal ls_tid_5306 : std_logic_vector(3 downto 0);
    signal ls_to_retire_5054 : std_logic_vector(0 downto 0);
    signal ls_trap_5364 : std_logic_vector(0 downto 0);
    signal ls_trap_info_5318 : std_logic_vector(5 downto 0);
    signal ls_trap_info_qualified_5360 : std_logic_vector(5 downto 0);
    signal mem_addr_not_aligned_trap_5617 : std_logic_vector(0 downto 0);
    signal next_from_stream_corrector_d_4967 : std_logic_vector(153 downto 0);
    signal next_from_stream_corrector_d_4967_4933_buffered : std_logic_vector(153 downto 0);
    signal next_iretire_state_5703 : std_logic_vector(1 downto 0);
    signal next_iretire_state_5703_4945_buffered : std_logic_vector(1 downto 0);
    signal next_last_is_cti_5855 : std_logic_vector(0 downto 0);
    signal next_last_is_cti_5855_4937_buffered : std_logic_vector(0 downto 0);
    signal next_last_pc_5861 : std_logic_vector(31 downto 0);
    signal next_last_pc_5861_4941_buffered : std_logic_vector(31 downto 0);
    signal next_psr_5270 : std_logic_vector(31 downto 0);
    signal next_psr_modified_5261 : std_logic_vector(0 downto 0);
    signal next_psr_tbr_record_5296 : std_logic_vector(65 downto 0);
    signal next_psr_tbr_record_5296_4963_buffered : std_logic_vector(65 downto 0);
    signal next_tbr_5287 : std_logic_vector(31 downto 0);
    signal next_tbr_modified_5278 : std_logic_vector(0 downto 0);
    signal nnpc_5070 : std_logic_vector(31 downto 0);
    signal pc_5062 : std_logic_vector(31 downto 0);
    signal performance_counter_update_command_5980 : std_logic_vector(9 downto 0);
    signal predecessor_trap_bit_5142 : std_logic_vector(0 downto 0);
    signal priv_instr_trap_5609 : std_logic_vector(0 downto 0);
    signal proc_ilvl_5142 : std_logic_vector(3 downto 0);
    signal psr_modified_5205 : std_logic_vector(0 downto 0);
    signal psr_tbr_record_4958 : std_logic_vector(65 downto 0);
    signal psr_tbr_val_5225 : std_logic_vector(31 downto 0);
    signal sacrifical_ilog_4904 : std_logic_vector(31 downto 0);
    signal sacrifical_ilog_skipped_4907 : std_logic_vector(31 downto 0);
    signal sc_dbg_info_5058 : std_logic_vector(3 downto 0);
    signal sc_instr_class_5142 : std_logic_vector(2 downto 0);
    signal sc_instr_terminates_stream_5153 : std_logic_vector(0 downto 0);
    signal sc_instr_terminates_thread_5158 : std_logic_vector(0 downto 0);
    signal send_logger_info_5938 : std_logic_vector(0 downto 0);
    signal send_to_exception_5755 : std_logic_vector(0 downto 0);
    signal signal_to_idispatch_5010 : std_logic_vector(0 downto 0);
    signal single_step_mode_5142 : std_logic_vector(0 downto 0);
    signal skipped_5952 : std_logic_vector(0 downto 0);
    signal slice_5917_wire : std_logic_vector(3 downto 0);
    signal slot_id_4998 : std_logic_vector(5 downto 0);
    signal store_access_5342 : std_logic_vector(0 downto 0);
    signal store_miss_5342 : std_logic_vector(0 downto 0);
    signal stream_head_5142 : std_logic_vector(0 downto 0);
    signal stream_id_4994 : std_logic_vector(1 downto 0);
    signal tbr_modified_5209 : std_logic_vector(0 downto 0);
    signal terminate_thread_5687 : std_logic_vector(0 downto 0);
    signal there_was_a_machine_error_5662 : std_logic_vector(0 downto 0);
    signal there_was_a_trap_5544 : std_logic_vector(0 downto 0);
    signal thread_control_word_5038 : std_logic_vector(21 downto 0);
    signal thread_head_5142 : std_logic_vector(0 downto 0);
    signal thread_id_4990 : std_logic_vector(3 downto 0);
    signal ticc_trap_type_5580 : std_logic_vector(6 downto 0);
    signal to_ccu_5840 : std_logic_vector(225 downto 0);
    signal to_exception_5837 : std_logic_vector(210 downto 0);
    signal trap_instr_trap_5564 : std_logic_vector(0 downto 0);
    signal type_cast_4962_wire_constant : std_logic_vector(65 downto 0);
    signal upstream_trap_or_error_5669 : std_logic_vector(0 downto 0);
    signal valid_from_sc_4986 : std_logic_vector(0 downto 0);
    signal window_overflow_trap_5576 : std_logic_vector(0 downto 0);
    signal window_underflow_trap_5572 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_5783_wire_constant <= "00";
    R_ONE_1_5736_wire_constant <= "1";
    R_ONE_1_5747_wire_constant <= "1";
    R_TERMINATES_STREAM_5151_wire_constant <= "011";
    R_TERMINATES_THREAD_5156_wire_constant <= "111";
    R_WB_MISPREDICTED_STREAM_5731_wire_constant <= "10";
    R_WB_NORMAL_5724_wire_constant <= "01";
    R_WB_RESET_4944_wire_constant <= "00";
    R_WB_RESET_5718_wire_constant <= "00";
    R_WB_TRAPPED_5742_wire_constant <= "11";
    R_ZERO_1_5737_wire_constant <= "0";
    R_ZERO_1_5748_wire_constant <= "0";
    konst_4915_wire_constant <= "000000000000000000000000000000000000000000000000000000";
    konst_4918_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_4923_wire_constant <= "000000000000000000000000000000000000000000000000000";
    konst_4928_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_4932_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_4936_wire_constant <= "0";
    konst_4940_wire_constant <= "00000000000000000000000000000000";
    konst_4948_wire_constant <= "0";
    konst_4952_wire_constant <= "0";
    konst_4956_wire_constant <= "0";
    konst_4970_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100100";
    konst_4975_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100110";
    konst_4980_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100111";
    konst_5073_wire_constant <= "1";
    konst_5179_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_5266_wire_constant <= "00000000000000000000000000000000";
    konst_5283_wire_constant <= "00000000000000000000000000000000";
    konst_5300_wire_constant <= "000000000000000000000000000000000000000000000000000000";
    konst_5358_wire_constant <= "000000";
    konst_5400_wire_constant <= "000000000000000000000000000000000000000000000000000";
    konst_5721_wire_constant <= "0";
    konst_5727_wire_constant <= "0";
    konst_5739_wire_constant <= "0";
    konst_5750_wire_constant <= "0";
    konst_5849_wire_constant <= "0";
    konst_5884_wire_constant <= "00000000000000000000000000011111";
    konst_5887_wire_constant <= "00000000000000000000000000010011";
    konst_5891_wire_constant <= "00000000000000000000000000010010";
    konst_5895_wire_constant <= "00000000000000000000000000010001";
    konst_5898_wire_constant <= "00000000000000000000000000010000";
    konst_5911_wire_constant <= "00000000000000000000000000000000";
    konst_5918_wire_constant <= "0000";
    konst_5929_wire_constant <= "00000000000000000000000000000000";
    konst_5997_wire_constant <= "1";
    type_cast_4962_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000";
    phi_stmt_4911: Block -- phi operator 
      signal idata: std_logic_vector(107 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= RPIPE_teu_loadstore_to_iretire_4914_wire & konst_4915_wire_constant;
      req <= phi_stmt_4911_req_0 & phi_stmt_4911_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4911",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 54) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4911_ack_0,
          idata => idata,
          odata => from_ls_4911,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4911
    phi_stmt_4916: Block -- phi operator 
      signal idata: std_logic_vector(191 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4918_wire_constant & RPIPE_teu_iunit_to_iretire_4920_wire;
      req <= phi_stmt_4916_req_0 & phi_stmt_4916_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4916",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 96) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4916_ack_0,
          idata => idata,
          odata => from_iunit_4916,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4916
    phi_stmt_4921: Block -- phi operator 
      signal idata: std_logic_vector(101 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4923_wire_constant & RPIPE_teu_fpunit_to_iretire_4925_wire;
      req <= phi_stmt_4921_req_0 & phi_stmt_4921_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4921",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 51) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4921_ack_0,
          idata => idata,
          odata => from_fpunit_4921,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4921
    phi_stmt_4926: Block -- phi operator 
      signal idata: std_logic_vector(307 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4928_wire_constant & RPIPE_noblock_teu_stream_corrector_to_iretire_4929_wire;
      req <= phi_stmt_4926_req_0 & phi_stmt_4926_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4926",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 154) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4926_ack_0,
          idata => idata,
          odata => from_stream_corrector_4926,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4926
    phi_stmt_4930: Block -- phi operator 
      signal idata: std_logic_vector(307 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4932_wire_constant & next_from_stream_corrector_d_4967_4933_buffered;
      req <= phi_stmt_4930_req_0 & phi_stmt_4930_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4930",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 154) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4930_ack_0,
          idata => idata,
          odata => from_stream_corrector_d_4930,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4930
    phi_stmt_4934: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4936_wire_constant & next_last_is_cti_5855_4937_buffered;
      req <= phi_stmt_4934_req_0 & phi_stmt_4934_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4934",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4934_ack_0,
          idata => idata,
          odata => last_is_cti_4934,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4934
    phi_stmt_4938: Block -- phi operator 
      signal idata: std_logic_vector(63 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4940_wire_constant & next_last_pc_5861_4941_buffered;
      req <= phi_stmt_4938_req_0 & phi_stmt_4938_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4938",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 32) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4938_ack_0,
          idata => idata,
          odata => last_pc_4938,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4938
    phi_stmt_4942: Block -- phi operator 
      signal idata: std_logic_vector(3 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= R_WB_RESET_4944_wire_constant & next_iretire_state_5703_4945_buffered;
      req <= phi_stmt_4942_req_0 & phi_stmt_4942_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4942",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 2) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4942_ack_0,
          idata => idata,
          odata => iretire_state_4942,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4942
    phi_stmt_4946: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4948_wire_constant & get_from_ls_4972_4949_buffered;
      req <= phi_stmt_4946_req_0 & phi_stmt_4946_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4946",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4946_ack_0,
          idata => idata,
          odata => get_from_ls_d_4946,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4946
    phi_stmt_4950: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4952_wire_constant & get_from_iu_4982_4953_buffered;
      req <= phi_stmt_4950_req_0 & phi_stmt_4950_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4950",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4950_ack_0,
          idata => idata,
          odata => get_from_iu_d_4950,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4950
    phi_stmt_4954: Block -- phi operator 
      signal idata: std_logic_vector(1 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_4956_wire_constant & get_from_fp_4977_4957_buffered;
      req <= phi_stmt_4954_req_0 & phi_stmt_4954_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4954",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 1) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4954_ack_0,
          idata => idata,
          odata => get_from_fp_d_4954,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4954
    phi_stmt_4958: Block -- phi operator 
      signal idata: std_logic_vector(131 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_4962_wire_constant & next_psr_tbr_record_5296_4963_buffered;
      req <= phi_stmt_4958_req_0 & phi_stmt_4958_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_4958",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 66) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_4958_ack_0,
          idata => idata,
          odata => psr_tbr_record_4958,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_4958
    -- flow-through select operator MUX_5180_inst
    from_iunit_qualified_5181 <= from_iunit_4916 when (get_from_iu_d_4950(0) /=  '0') else konst_5179_wire_constant;
    -- flow-through select operator MUX_5268_inst
    MUX_5268_wire <= konst_5266_wire_constant when (thread_head_5142(0) /=  '0') else curr_psr_5249;
    -- flow-through select operator MUX_5269_inst
    next_psr_5270 <= psr_tbr_val_5225 when (psr_modified_5205(0) /=  '0') else MUX_5268_wire;
    -- flow-through select operator MUX_5285_inst
    MUX_5285_wire <= konst_5283_wire_constant when (thread_head_5142(0) /=  '0') else curr_tbr_5253;
    -- flow-through select operator MUX_5286_inst
    next_tbr_5287 <= psr_tbr_val_5225 when (tbr_modified_5209(0) /=  '0') else MUX_5285_wire;
    -- flow-through select operator MUX_5301_inst
    from_ls_qualified_5302 <= from_ls_4911 when (get_from_ls_d_4946(0) /=  '0') else konst_5300_wire_constant;
    -- flow-through select operator MUX_5359_inst
    ls_trap_info_qualified_5360 <= ls_trap_info_5318 when (ls_to_retire_5054(0) /=  '0') else konst_5358_wire_constant;
    -- flow-through select operator MUX_5401_inst
    from_fpunit_qualified_5402 <= from_fpunit_4921 when (get_from_fp_d_4954(0) /=  '0') else konst_5400_wire_constant;
    -- flow-through select operator MUX_5722_inst
    MUX_5722_wire <= break_thread_5678 when (EQ_u2_u1_5719_wire(0) /=  '0') else konst_5721_wire_constant;
    -- flow-through select operator MUX_5728_inst
    MUX_5728_wire <= break_thread_5678 when (EQ_u2_u1_5725_wire(0) /=  '0') else konst_5727_wire_constant;
    -- flow-through select operator MUX_5738_inst
    MUX_5738_wire <= R_ONE_1_5736_wire_constant when (AND_u1_u1_5735_wire(0) /=  '0') else R_ZERO_1_5737_wire_constant;
    -- flow-through select operator MUX_5740_inst
    MUX_5740_wire <= MUX_5738_wire when (EQ_u2_u1_5732_wire(0) /=  '0') else konst_5739_wire_constant;
    -- flow-through select operator MUX_5749_inst
    MUX_5749_wire <= R_ONE_1_5747_wire_constant when (AND_u1_u1_5746_wire(0) /=  '0') else R_ZERO_1_5748_wire_constant;
    -- flow-through select operator MUX_5751_inst
    MUX_5751_wire <= MUX_5749_wire when (EQ_u2_u1_5743_wire(0) /=  '0') else konst_5750_wire_constant;
    -- flow-through select operator MUX_5853_inst
    MUX_5853_wire <= is_cti_5142 when (valid_from_sc_4986(0) /=  '0') else last_is_cti_4934;
    -- flow-through select operator MUX_5854_inst
    next_last_is_cti_5855 <= konst_5849_wire_constant when (thread_head_5142(0) /=  '0') else MUX_5853_wire;
    -- flow-through select operator MUX_5860_inst
    next_last_pc_5861 <= pc_5062 when (valid_from_sc_4986(0) /=  '0') else last_pc_4938;
    -- flow-through select operator MUX_5913_inst
    iu_signature_to_ccu_5914 <= konst_5911_wire_constant when (OR_u1_u1_5910_wire(0) /=  '0') else iu_write_signature_5221;
    -- flow-through select operator MUX_5930_inst
    fp_signature_to_ccu_5931 <= fp_write_signature_5434 when (AND_u1_u1_5927_wire(0) /=  '0') else konst_5929_wire_constant;
    -- flow-through slice operator slice_4985_inst
    valid_from_sc_4986 <= from_stream_corrector_d_4930(153 downto 153);
    -- flow-through slice operator slice_4989_inst
    thread_id_4990 <= from_stream_corrector_d_4930(152 downto 149);
    -- flow-through slice operator slice_4993_inst
    stream_id_4994 <= from_stream_corrector_d_4930(148 downto 147);
    -- flow-through slice operator slice_4997_inst
    slot_id_4998 <= from_stream_corrector_d_4930(146 downto 141);
    -- flow-through slice operator slice_5001_inst
    icache_was_used_5002 <= from_stream_corrector_d_4930(140 downto 140);
    -- flow-through slice operator slice_5005_inst
    icache_hit_5006 <= from_stream_corrector_d_4930(139 downto 139);
    -- flow-through slice operator slice_5009_inst
    signal_to_idispatch_5010 <= from_stream_corrector_d_4930(138 downto 138);
    -- flow-through slice operator slice_5013_inst
    fetch_error_5014 <= from_stream_corrector_d_4930(137 downto 137);
    -- flow-through slice operator slice_5017_inst
    annul_instruction_5018 <= from_stream_corrector_d_4930(136 downto 136);
    -- flow-through slice operator slice_5021_inst
    annul_next_5022 <= from_stream_corrector_d_4930(135 downto 135);
    -- flow-through slice operator slice_5025_inst
    dispatch_traps_5026 <= from_stream_corrector_d_4930(134 downto 131);
    -- flow-through slice operator slice_5029_inst
    interrupt_flag_5030 <= from_stream_corrector_d_4930(130 downto 130);
    -- flow-through slice operator slice_5033_inst
    ilvl_5034 <= from_stream_corrector_d_4930(129 downto 126);
    -- flow-through slice operator slice_5037_inst
    thread_control_word_5038 <= from_stream_corrector_d_4930(125 downto 104);
    -- flow-through slice operator slice_5041_inst
    iu2_to_retire_5042 <= from_stream_corrector_d_4930(103 downto 103);
    -- flow-through slice operator slice_5045_inst
    fu2_to_retire_5046 <= from_stream_corrector_d_4930(102 downto 102);
    -- flow-through slice operator slice_5049_inst
    cu2_to_retire_5050 <= from_stream_corrector_d_4930(101 downto 101);
    -- flow-through slice operator slice_5053_inst
    ls_to_retire_5054 <= from_stream_corrector_d_4930(100 downto 100);
    -- flow-through slice operator slice_5057_inst
    sc_dbg_info_5058 <= from_stream_corrector_d_4930(99 downto 96);
    -- flow-through slice operator slice_5061_inst
    pc_5062 <= from_stream_corrector_d_4930(95 downto 64);
    -- flow-through slice operator slice_5065_inst
    corrected_npc_5066 <= from_stream_corrector_d_4930(63 downto 32);
    -- flow-through slice operator slice_5069_inst
    nnpc_5070 <= from_stream_corrector_d_4930(31 downto 0);
    -- flow-through slice operator slice_5106_inst
    dbg_bp_hit_5107 <= sc_dbg_info_5058(0 downto 0);
    -- flow-through slice operator slice_5110_inst
    disp_mae_trap_5111 <= dispatch_traps_5026(3 downto 3);
    -- flow-through slice operator slice_5114_inst
    disp_cp_disabled_trap_5115 <= dispatch_traps_5026(2 downto 2);
    -- flow-through slice operator slice_5118_inst
    disp_fp_disabled_trap_5119 <= dispatch_traps_5026(1 downto 1);
    -- flow-through slice operator slice_5122_inst
    disp_illegal_instr_trap_5123 <= dispatch_traps_5026(0 downto 0);
    -- flow-through slice operator slice_5184_inst
    iu_tid_5185 <= from_iunit_qualified_5181(95 downto 92);
    -- flow-through slice operator slice_5188_inst
    iu_stream_id_5189 <= from_iunit_qualified_5181(91 downto 90);
    -- flow-through slice operator slice_5192_inst
    iu_sid_5193 <= from_iunit_qualified_5181(89 downto 84);
    -- flow-through slice operator slice_5196_inst
    iu_machine_error_5197 <= from_iunit_qualified_5181(83 downto 83);
    -- flow-through slice operator slice_5200_inst
    iu_ignore_5201 <= from_iunit_qualified_5181(82 downto 82);
    -- flow-through slice operator slice_5204_inst
    psr_modified_5205 <= from_iunit_qualified_5181(81 downto 81);
    -- flow-through slice operator slice_5208_inst
    tbr_modified_5209 <= from_iunit_qualified_5181(80 downto 80);
    -- flow-through slice operator slice_5212_inst
    iu_trap_5213 <= from_iunit_qualified_5181(79 downto 79);
    -- flow-through slice operator slice_5216_inst
    iu_traps_5217 <= from_iunit_qualified_5181(78 downto 64);
    -- flow-through slice operator slice_5220_inst
    iu_write_signature_5221 <= from_iunit_qualified_5181(63 downto 32);
    -- flow-through slice operator slice_5224_inst
    psr_tbr_val_5225 <= from_iunit_qualified_5181(31 downto 0);
    -- flow-through slice operator slice_5240_inst
    curr_psr_modified_5241 <= psr_tbr_record_4958(65 downto 65);
    -- flow-through slice operator slice_5244_inst
    curr_tbr_modified_5245 <= psr_tbr_record_4958(64 downto 64);
    -- flow-through slice operator slice_5248_inst
    curr_psr_5249 <= psr_tbr_record_4958(63 downto 32);
    -- flow-through slice operator slice_5252_inst
    curr_tbr_5253 <= psr_tbr_record_4958(31 downto 0);
    -- flow-through slice operator slice_5305_inst
    ls_tid_5306 <= from_ls_qualified_5302(53 downto 50);
    -- flow-through slice operator slice_5309_inst
    ls_stream_id_5310 <= from_ls_qualified_5302(49 downto 48);
    -- flow-through slice operator slice_5313_inst
    ls_sid_5314 <= from_ls_qualified_5302(47 downto 42);
    -- flow-through slice operator slice_5317_inst
    ls_trap_info_5318 <= from_ls_qualified_5302(41 downto 36);
    -- flow-through slice operator slice_5321_inst
    ls_dbg_wp_id_5322 <= from_ls_qualified_5302(35 downto 34);
    -- flow-through slice operator slice_5325_inst
    ls_dbg_wp_read_hit_5326 <= from_ls_qualified_5302(33 downto 33);
    -- flow-through slice operator slice_5329_inst
    ls_dbg_wp_write_hit_5330 <= from_ls_qualified_5302(32 downto 32);
    -- flow-through slice operator slice_5333_inst
    ls_store_signature_5334 <= from_ls_qualified_5302(31 downto 0);
    -- flow-through slice operator slice_5363_inst
    ls_trap_5364 <= ls_trap_info_qualified_5360(5 downto 5);
    -- flow-through slice operator slice_5367_inst
    ls_illegal_instr_5368 <= ls_trap_info_qualified_5360(4 downto 4);
    -- flow-through slice operator slice_5371_inst
    ls_priv_instr_5372 <= ls_trap_info_qualified_5360(3 downto 3);
    -- flow-through slice operator slice_5375_inst
    ls_data_access_exception_5376 <= ls_trap_info_qualified_5360(2 downto 2);
    -- flow-through slice operator slice_5379_inst
    ls_mem_addr_not_aligned_5380 <= ls_trap_info_qualified_5360(1 downto 1);
    -- flow-through slice operator slice_5383_inst
    ls_error_5384 <= ls_trap_info_qualified_5360(0 downto 0);
    -- flow-through slice operator slice_5405_inst
    fp_tid_5406 <= from_fpunit_qualified_5402(50 downto 47);
    -- flow-through slice operator slice_5409_inst
    fp_stream_id_5410 <= from_fpunit_qualified_5402(46 downto 45);
    -- flow-through slice operator slice_5413_inst
    fp_sid_5414 <= from_fpunit_qualified_5402(44 downto 39);
    -- flow-through slice operator slice_5417_inst
    fp_machine_error_5418 <= from_fpunit_qualified_5402(38 downto 38);
    -- flow-through slice operator slice_5421_inst
    fp_trap_5422 <= from_fpunit_qualified_5402(37 downto 37);
    -- flow-through slice operator slice_5425_inst
    fp_traps_5426 <= from_fpunit_qualified_5402(36 downto 33);
    -- flow-through slice operator slice_5429_inst
    fp_ignore_5430 <= from_fpunit_qualified_5402(32 downto 32);
    -- flow-through slice operator slice_5433_inst
    fp_write_signature_5434 <= from_fpunit_qualified_5402(31 downto 0);
    -- flow-through slice operator slice_5437_inst
    fp_unimpl_instr_5438 <= fp_traps_5426(3 downto 3);
    -- flow-through slice operator slice_5441_inst
    fp_invalid_reg_5442 <= fp_traps_5426(2 downto 2);
    -- flow-through slice operator slice_5445_inst
    fp_sequence_error_5446 <= fp_traps_5426(1 downto 1);
    -- flow-through slice operator slice_5449_inst
    fp_ieee_754_5450 <= fp_traps_5426(0 downto 0);
    -- flow-through slice operator slice_5547_inst
    iu_illegal_instr_5548 <= iu_traps_5217(14 downto 14);
    -- flow-through slice operator slice_5551_inst
    iu_priv_instr_5552 <= iu_traps_5217(13 downto 13);
    -- flow-through slice operator slice_5555_inst
    iu_tagged_overflow_trap_5556 <= iu_traps_5217(12 downto 12);
    -- flow-through slice operator slice_5559_inst
    iu_div_by_0_trap_5560 <= iu_traps_5217(11 downto 11);
    -- flow-through slice operator slice_5563_inst
    trap_instr_trap_5564 <= iu_traps_5217(10 downto 10);
    -- flow-through slice operator slice_5567_inst
    iu_mem_addr_not_aligned_5568 <= iu_traps_5217(9 downto 9);
    -- flow-through slice operator slice_5571_inst
    window_underflow_trap_5572 <= iu_traps_5217(8 downto 8);
    -- flow-through slice operator slice_5575_inst
    window_overflow_trap_5576 <= iu_traps_5217(7 downto 7);
    -- flow-through slice operator slice_5579_inst
    ticc_trap_type_5580 <= iu_traps_5217(6 downto 0);
    -- flow-through slice operator slice_5917_inst
    slice_5917_wire <= fp_write_signature_5434(31 downto 28);
    -- interlock W_ilog_5955_inst
    process(pc_5062) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := pc_5062(31 downto 0);
      ilog_5957 <= tmp_var; -- 
    end process;
    -- interlock W_kill_thread_now_5679_inst
    process(upstream_trap_or_error_5669) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := upstream_trap_or_error_5669(0 downto 0);
      kill_thread_now_5681 <= tmp_var; -- 
    end process;
    -- interlock W_next_from_stream_corrector_d_4965_inst
    process(from_stream_corrector_4926) -- 
      variable tmp_var : std_logic_vector(153 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 153 downto 0) := from_stream_corrector_4926(153 downto 0);
      next_from_stream_corrector_d_4967 <= tmp_var; -- 
    end process;
    W_sacrifical_ilog_4902_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_sacrifical_ilog_4902_inst_req_0;
      W_sacrifical_ilog_4902_inst_ack_0<= wack(0);
      rreq(0) <= W_sacrifical_ilog_4902_inst_req_1;
      W_sacrifical_ilog_4902_inst_ack_1<= rack(0);
      W_sacrifical_ilog_4902_inst : InterlockBuffer generic map ( -- 
        name => "W_sacrifical_ilog_4902_inst",
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
        write_data => RPIPE_teu_iretire_instruction_log_pipe_4903_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => sacrifical_ilog_4904,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_sacrifical_ilog_skipped_4905_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_sacrifical_ilog_skipped_4905_inst_req_0;
      W_sacrifical_ilog_skipped_4905_inst_ack_0<= wack(0);
      rreq(0) <= W_sacrifical_ilog_skipped_4905_inst_req_1;
      W_sacrifical_ilog_skipped_4905_inst_ack_1<= rack(0);
      W_sacrifical_ilog_skipped_4905_inst : InterlockBuffer generic map ( -- 
        name => "W_sacrifical_ilog_skipped_4905_inst",
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
        write_data => RPIPE_teu_iretire_skipped_instruction_log_pipe_4906_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => sacrifical_ilog_skipped_4907,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    get_from_fp_4977_4957_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= get_from_fp_4977_4957_buf_req_0;
      get_from_fp_4977_4957_buf_ack_0<= wack(0);
      rreq(0) <= get_from_fp_4977_4957_buf_req_1;
      get_from_fp_4977_4957_buf_ack_1<= rack(0);
      get_from_fp_4977_4957_buf : InterlockBuffer generic map ( -- 
        name => "get_from_fp_4977_4957_buf",
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
        write_data => get_from_fp_4977,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => get_from_fp_4977_4957_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    get_from_iu_4982_4953_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= get_from_iu_4982_4953_buf_req_0;
      get_from_iu_4982_4953_buf_ack_0<= wack(0);
      rreq(0) <= get_from_iu_4982_4953_buf_req_1;
      get_from_iu_4982_4953_buf_ack_1<= rack(0);
      get_from_iu_4982_4953_buf : InterlockBuffer generic map ( -- 
        name => "get_from_iu_4982_4953_buf",
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
        write_data => get_from_iu_4982,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => get_from_iu_4982_4953_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    get_from_ls_4972_4949_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= get_from_ls_4972_4949_buf_req_0;
      get_from_ls_4972_4949_buf_ack_0<= wack(0);
      rreq(0) <= get_from_ls_4972_4949_buf_req_1;
      get_from_ls_4972_4949_buf_ack_1<= rack(0);
      get_from_ls_4972_4949_buf : InterlockBuffer generic map ( -- 
        name => "get_from_ls_4972_4949_buf",
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
        write_data => get_from_ls_4972,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => get_from_ls_4972_4949_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_from_stream_corrector_d_4967_4933_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_from_stream_corrector_d_4967_4933_buf_req_0;
      next_from_stream_corrector_d_4967_4933_buf_ack_0<= wack(0);
      rreq(0) <= next_from_stream_corrector_d_4967_4933_buf_req_1;
      next_from_stream_corrector_d_4967_4933_buf_ack_1<= rack(0);
      next_from_stream_corrector_d_4967_4933_buf : InterlockBuffer generic map ( -- 
        name => "next_from_stream_corrector_d_4967_4933_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 154,
        out_data_width => 154,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_from_stream_corrector_d_4967,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_from_stream_corrector_d_4967_4933_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_iretire_state_5703_4945_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_iretire_state_5703_4945_buf_req_0;
      next_iretire_state_5703_4945_buf_ack_0<= wack(0);
      rreq(0) <= next_iretire_state_5703_4945_buf_req_1;
      next_iretire_state_5703_4945_buf_ack_1<= rack(0);
      next_iretire_state_5703_4945_buf : InterlockBuffer generic map ( -- 
        name => "next_iretire_state_5703_4945_buf",
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
        write_data => next_iretire_state_5703,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_iretire_state_5703_4945_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_last_is_cti_5855_4937_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_last_is_cti_5855_4937_buf_req_0;
      next_last_is_cti_5855_4937_buf_ack_0<= wack(0);
      rreq(0) <= next_last_is_cti_5855_4937_buf_req_1;
      next_last_is_cti_5855_4937_buf_ack_1<= rack(0);
      next_last_is_cti_5855_4937_buf : InterlockBuffer generic map ( -- 
        name => "next_last_is_cti_5855_4937_buf",
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
        write_data => next_last_is_cti_5855,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_last_is_cti_5855_4937_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_last_pc_5861_4941_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_last_pc_5861_4941_buf_req_0;
      next_last_pc_5861_4941_buf_ack_0<= wack(0);
      rreq(0) <= next_last_pc_5861_4941_buf_req_1;
      next_last_pc_5861_4941_buf_ack_1<= rack(0);
      next_last_pc_5861_4941_buf : InterlockBuffer generic map ( -- 
        name => "next_last_pc_5861_4941_buf",
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
        write_data => next_last_pc_5861,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_last_pc_5861_4941_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    next_psr_tbr_record_5296_4963_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_psr_tbr_record_5296_4963_buf_req_0;
      next_psr_tbr_record_5296_4963_buf_ack_0<= wack(0);
      rreq(0) <= next_psr_tbr_record_5296_4963_buf_req_1;
      next_psr_tbr_record_5296_4963_buf_ack_1<= rack(0);
      next_psr_tbr_record_5296_4963_buf : InterlockBuffer generic map ( -- 
        name => "next_psr_tbr_record_5296_4963_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 66,
        out_data_width => 66,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_psr_tbr_record_5296,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_psr_tbr_record_5296_4963_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_4909_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_5997_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_4909_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_4909_branch_req_0,
          ack0 => do_while_stmt_4909_branch_ack_0,
          ack1 => do_while_stmt_4909_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_5259_inst
    AND_u1_u1_5259_wire <= (NOT_u1_u1_5257_wire and curr_psr_modified_5241);
    -- flow through binary operator AND_u1_u1_5276_inst
    AND_u1_u1_5276_wire <= (NOT_u1_u1_5274_wire and curr_tbr_modified_5245);
    -- flow through binary operator AND_u1_u1_5476_inst
    AND_u1_u1_5476_wire <= (EQ_u4_u1_5472_wire and EQ_u6_u1_5475_wire);
    -- flow through binary operator AND_u1_u1_5480_inst
    AND_u1_u1_5480_wire <= (AND_u1_u1_5476_wire and EQ_u2_u1_5479_wire);
    -- flow through binary operator AND_u1_u1_5495_inst
    AND_u1_u1_5495_wire <= (EQ_u4_u1_5491_wire and EQ_u6_u1_5494_wire);
    -- flow through binary operator AND_u1_u1_5499_inst
    AND_u1_u1_5499_wire <= (AND_u1_u1_5495_wire and EQ_u2_u1_5498_wire);
    -- flow through binary operator AND_u1_u1_5514_inst
    AND_u1_u1_5514_wire <= (EQ_u4_u1_5510_wire and EQ_u6_u1_5513_wire);
    -- flow through binary operator AND_u1_u1_5518_inst
    AND_u1_u1_5518_wire <= (AND_u1_u1_5514_wire and EQ_u2_u1_5517_wire);
    -- flow through binary operator AND_u1_u1_5532_inst
    AND_u1_u1_5532_wire <= (NOT_u1_u1_5530_wire and ls_trap_5364);
    -- flow through binary operator AND_u1_u1_5537_inst
    AND_u1_u1_5537_wire <= (NOT_u1_u1_5535_wire and iu_trap_5213);
    -- flow through binary operator AND_u1_u1_5541_inst
    AND_u1_u1_5541_wire <= (NOT_u1_u1_5539_wire and fp_trap_5422);
    -- flow through binary operator AND_u1_u1_5600_inst
    illegal_instr_trap_5601 <= (NOT_u1_u1_5594_wire and OR_u1_u1_5599_wire);
    -- flow through binary operator AND_u1_u1_5608_inst
    priv_instr_trap_5609 <= (NOT_u1_u1_5604_wire and OR_u1_u1_5607_wire);
    -- flow through binary operator AND_u1_u1_5616_inst
    mem_addr_not_aligned_trap_5617 <= (NOT_u1_u1_5612_wire and OR_u1_u1_5615_wire);
    -- flow through binary operator AND_u1_u1_5622_inst
    data_access_exception_trap_5623 <= (NOT_u1_u1_5620_wire and ls_data_access_exception_5376);
    -- flow through binary operator AND_u1_u1_5628_inst
    fp_unimpl_instr_trap_5629 <= (NOT_u1_u1_5626_wire and fp_unimpl_instr_5438);
    -- flow through binary operator AND_u1_u1_5634_inst
    fp_invalid_reg_trap_5635 <= (NOT_u1_u1_5632_wire and fp_invalid_reg_5442);
    -- flow through binary operator AND_u1_u1_5640_inst
    fp_sequence_error_trap_5641 <= (NOT_u1_u1_5638_wire and fp_sequence_error_5446);
    -- flow through binary operator AND_u1_u1_5646_inst
    fp_ieee_754_trap_5647 <= (NOT_u1_u1_5644_wire and fp_ieee_754_5450);
    -- flow through binary operator AND_u1_u1_5651_inst
    AND_u1_u1_5651_wire <= (iu2_to_retire_5042 and iu_machine_error_5197);
    -- flow through binary operator AND_u1_u1_5654_inst
    AND_u1_u1_5654_wire <= (fu2_to_retire_5046 and fp_machine_error_5418);
    -- flow through binary operator AND_u1_u1_5658_inst
    AND_u1_u1_5658_wire <= (ls_to_retire_5054 and ls_error_5384);
    -- flow through binary operator AND_u1_u1_5677_inst
    break_thread_5678 <= (valid_from_sc_4986 and OR_u1_u1_5676_wire);
    -- flow through binary operator AND_u1_u1_5686_inst
    terminate_thread_5687 <= (break_thread_5678 and NOT_u1_u1_5685_wire);
    -- flow through binary operator AND_u1_u1_5691_inst
    break_stream_5692 <= (valid_from_sc_4986 and sc_instr_terminates_stream_5153);
    -- flow through binary operator AND_u1_u1_5735_inst
    AND_u1_u1_5735_wire <= (stream_head_5142 and break_thread_5678);
    -- flow through binary operator AND_u1_u1_5746_inst
    AND_u1_u1_5746_wire <= (thread_head_5142 and break_thread_5678);
    -- flow through binary operator AND_u1_u1_5754_inst
    send_to_exception_5755 <= (valid_from_sc_4986 and OR_u1_u1_5753_wire);
    -- flow through binary operator AND_u1_u1_5869_inst
    bubbled_5870 <= (NOT_u1_u1_5867_wire and valid_from_sc_4986);
    -- flow through binary operator AND_u1_u1_5924_inst
    AND_u1_u1_5924_wire <= (fu2_to_retire_5046 and fp_register_update_5920);
    -- flow through binary operator AND_u1_u1_5927_inst
    AND_u1_u1_5927_wire <= (AND_u1_u1_5924_wire and NOT_u1_u1_5926_wire);
    -- flow through binary operator AND_u1_u1_5935_inst
    AND_u1_u1_5935_wire <= (valid_from_sc_4986 and logging_active_5142);
    -- flow through binary operator AND_u1_u1_5937_inst
    send_logger_info_5938 <= (AND_u1_u1_5935_wire and instruction_can_be_executed_5703);
    -- flow through binary operator AND_u1_u1_5951_inst
    skipped_5952 <= (valid_from_sc_4986 and NOT_u1_u1_5950_wire);
    -- flow through binary operator AND_u1_u1_5978_inst
    AND_u1_u1_5978_wire <= (icache_was_used_5002 and NOT_u1_u1_5977_wire);
    -- flow through binary operator BITSEL_u154_u1_4971_inst
    process(from_stream_corrector_4926) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_stream_corrector_4926, konst_4970_wire_constant, tmp_var);
      get_from_ls_4972 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u154_u1_4976_inst
    process(from_stream_corrector_4926) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_stream_corrector_4926, konst_4975_wire_constant, tmp_var);
      get_from_fp_4977 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u154_u1_4981_inst
    process(from_stream_corrector_4926) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_stream_corrector_4926, konst_4980_wire_constant, tmp_var);
      get_from_iu_4982 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5885_inst
    process(iu_write_signature_5221) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(iu_write_signature_5221, konst_5884_wire_constant, tmp_var);
      BITSEL_u32_u1_5885_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5888_inst
    process(iu_write_signature_5221) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(iu_write_signature_5221, konst_5887_wire_constant, tmp_var);
      BITSEL_u32_u1_5888_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5892_inst
    process(iu_write_signature_5221) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(iu_write_signature_5221, konst_5891_wire_constant, tmp_var);
      BITSEL_u32_u1_5892_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5896_inst
    process(iu_write_signature_5221) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(iu_write_signature_5221, konst_5895_wire_constant, tmp_var);
      BITSEL_u32_u1_5896_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5899_inst
    process(iu_write_signature_5221) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(iu_write_signature_5221, konst_5898_wire_constant, tmp_var);
      BITSEL_u32_u1_5899_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u11_u16_5817_inst
    process(CONCAT_u3_u11_5807_wire, CONCAT_u3_u5_5816_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u11_5807_wire, CONCAT_u3_u5_5816_wire, tmp_var);
      CONCAT_u11_u16_5817_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u180_5835_inst
    process(CONCAT_u11_u16_5817_wire, CONCAT_u36_u164_5834_wire) -- 
      variable tmp_var : std_logic_vector(179 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u11_u16_5817_wire, CONCAT_u36_u164_5834_wire, tmp_var);
      CONCAT_u16_u180_5835_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u19_u31_5798_inst
    process(CONCAT_u8_u19_5780_wire, CONCAT_u5_u12_5797_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u19_5780_wire, CONCAT_u5_u12_5797_wire, tmp_var);
      CONCAT_u19_u31_5798_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5291_inst
    process(next_psr_modified_5261, next_tbr_modified_5278) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_psr_modified_5261, next_tbr_modified_5278, tmp_var);
      CONCAT_u1_u2_5291_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5769_inst
    process(there_was_a_trap_5544, annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(there_was_a_trap_5544, annul_instruction_5018, tmp_var);
      CONCAT_u1_u2_5769_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5778_inst
    process(iu_machine_error_5197, fp_machine_error_5418) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_machine_error_5197, fp_machine_error_5418, tmp_var);
      CONCAT_u1_u2_5778_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5788_inst
    process(disp_cp_disabled_trap_5115, disp_fp_disabled_trap_5119) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(disp_cp_disabled_trap_5115, disp_fp_disabled_trap_5119, tmp_var);
      CONCAT_u1_u2_5788_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5795_inst
    process(illegal_instr_trap_5601, priv_instr_trap_5609) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(illegal_instr_trap_5601, priv_instr_trap_5609, tmp_var);
      CONCAT_u1_u2_5795_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5801_inst
    process(iu_tagged_overflow_trap_5556, iu_div_by_0_trap_5560) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_tagged_overflow_trap_5556, iu_div_by_0_trap_5560, tmp_var);
      CONCAT_u1_u2_5801_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5810_inst
    process(window_underflow_trap_5572, window_overflow_trap_5576) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(window_underflow_trap_5572, window_overflow_trap_5576, tmp_var);
      CONCAT_u1_u2_5810_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5815_inst
    process(fp_unimpl_instr_trap_5629, fp_invalid_reg_trap_5635) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fp_unimpl_instr_trap_5629, fp_invalid_reg_trap_5635, tmp_var);
      CONCAT_u1_u2_5815_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5820_inst
    process(fp_sequence_error_trap_5641, fp_ieee_754_trap_5647) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fp_sequence_error_trap_5641, fp_ieee_754_trap_5647, tmp_var);
      CONCAT_u1_u2_5820_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_5825_inst
    process(next_tbr_modified_5278, next_psr_5270) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(next_tbr_modified_5278, next_psr_5270, tmp_var);
      CONCAT_u1_u33_5825_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_5773_inst
    process(annul_next_5022, sc_dbg_info_5058) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_next_5022, sc_dbg_info_5058, tmp_var);
      CONCAT_u1_u5_5773_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_5792_inst
    process(interrupt_flag_5030, ilvl_5034) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(interrupt_flag_5030, ilvl_5034, tmp_var);
      CONCAT_u1_u5_5792_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5346_inst
    process(ls_dbg_wp_id_5322, ls_dbg_wp_read_hit_5326) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_dbg_wp_id_5322, ls_dbg_wp_read_hit_5326, tmp_var);
      CONCAT_u2_u3_5346_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5785_inst
    process(CONCAT_u1_u2_5783_wire_constant, disp_mae_trap_5111) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5783_wire_constant, disp_mae_trap_5111, tmp_var);
      CONCAT_u2_u3_5785_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5803_inst
    process(CONCAT_u1_u2_5801_wire, trap_instr_trap_5564) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5801_wire, trap_instr_trap_5564, tmp_var);
      CONCAT_u2_u3_5803_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5812_inst
    process(CONCAT_u1_u2_5810_wire, data_access_exception_trap_5623) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5810_wire, data_access_exception_trap_5623, tmp_var);
      CONCAT_u2_u3_5812_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5822_inst
    process(CONCAT_u1_u2_5820_wire, next_psr_modified_5261) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5820_wire, next_psr_modified_5261, tmp_var);
      CONCAT_u2_u3_5822_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u66_5295_inst
    process(CONCAT_u1_u2_5291_wire, CONCAT_u32_u64_5294_wire) -- 
      variable tmp_var : std_logic_vector(65 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5291_wire, CONCAT_u32_u64_5294_wire, tmp_var);
      next_psr_tbr_record_5296 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u31_u211_5836_inst
    process(CONCAT_u19_u31_5798_wire, CONCAT_u16_u180_5835_wire) -- 
      variable tmp_var : std_logic_vector(210 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u19_u31_5798_wire, CONCAT_u16_u180_5835_wire, tmp_var);
      to_exception_5837 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_5294_inst
    process(next_psr_5270, next_tbr_5287) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_psr_5270, next_tbr_5287, tmp_var);
      CONCAT_u32_u64_5294_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_5829_inst
    process(next_tbr_5287, pc_5062) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_tbr_5287, pc_5062, tmp_var);
      CONCAT_u32_u64_5829_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_5832_inst
    process(corrected_npc_5066, nnpc_5070) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(corrected_npc_5066, nnpc_5070, tmp_var);
      CONCAT_u32_u64_5832_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u36_u164_5834_inst
    process(CONCAT_u3_u36_5826_wire, CONCAT_u64_u128_5833_wire) -- 
      variable tmp_var : std_logic_vector(163 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u36_5826_wire, CONCAT_u64_u128_5833_wire, tmp_var);
      CONCAT_u36_u164_5834_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u11_5807_inst
    process(CONCAT_u2_u3_5803_wire, CONCAT_u7_u8_5806_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5803_wire, CONCAT_u7_u8_5806_wire, tmp_var);
      CONCAT_u3_u11_5807_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u36_5826_inst
    process(CONCAT_u2_u3_5822_wire, CONCAT_u1_u33_5825_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5822_wire, CONCAT_u1_u33_5825_wire, tmp_var);
      CONCAT_u3_u36_5826_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_5348_inst
    process(CONCAT_u2_u3_5346_wire, ls_dbg_wp_write_hit_5330) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5346_wire, ls_dbg_wp_write_hit_5330, tmp_var);
      ls_dbg_info_5349 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_5789_inst
    process(CONCAT_u2_u3_5785_wire, CONCAT_u1_u2_5788_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5785_wire, CONCAT_u1_u2_5788_wire, tmp_var);
      CONCAT_u3_u5_5789_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_5816_inst
    process(CONCAT_u2_u3_5812_wire, CONCAT_u1_u2_5815_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5812_wire, CONCAT_u1_u2_5815_wire, tmp_var);
      CONCAT_u3_u5_5816_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_5764_inst
    process(thread_id_4990, single_step_mode_5142) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_4990, single_step_mode_5142, tmp_var);
      CONCAT_u4_u5_5764_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u12_5797_inst
    process(CONCAT_u3_u5_5789_wire, CONCAT_u5_u7_5796_wire) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_5789_wire, CONCAT_u5_u7_5796_wire, tmp_var);
      CONCAT_u5_u12_5797_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_5766_inst
    process(CONCAT_u4_u5_5764_wire, there_was_a_machine_error_5662) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_5764_wire, there_was_a_machine_error_5662, tmp_var);
      CONCAT_u5_u6_5766_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_5796_inst
    process(CONCAT_u1_u5_5792_wire, CONCAT_u1_u2_5795_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_5792_wire, CONCAT_u1_u2_5795_wire, tmp_var);
      CONCAT_u5_u7_5796_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_5775_inst
    process(CONCAT_u1_u5_5773_wire, ls_dbg_info_5349) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_5773_wire, ls_dbg_info_5349, tmp_var);
      CONCAT_u5_u9_5775_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_5833_inst
    process(CONCAT_u32_u64_5829_wire, CONCAT_u32_u64_5832_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_5829_wire, CONCAT_u32_u64_5832_wire, tmp_var);
      CONCAT_u64_u128_5833_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u8_5770_inst
    process(CONCAT_u5_u6_5766_wire, CONCAT_u1_u2_5769_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u6_5766_wire, CONCAT_u1_u2_5769_wire, tmp_var);
      CONCAT_u6_u8_5770_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u8_5806_inst
    process(ticc_trap_type_5580, mem_addr_not_aligned_trap_5617) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(ticc_trap_type_5580, mem_addr_not_aligned_trap_5617, tmp_var);
      CONCAT_u7_u8_5806_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u19_5780_inst
    process(CONCAT_u6_u8_5770_wire, CONCAT_u9_u11_5779_wire) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u8_5770_wire, CONCAT_u9_u11_5779_wire, tmp_var);
      CONCAT_u8_u19_5780_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u11_5779_inst
    process(CONCAT_u5_u9_5775_wire, CONCAT_u1_u2_5778_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u9_5775_wire, CONCAT_u1_u2_5778_wire, tmp_var);
      CONCAT_u9_u11_5779_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5479_inst
    process(iu_stream_id_5189, stream_id_4994) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iu_stream_id_5189, stream_id_4994, tmp_var);
      EQ_u2_u1_5479_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5498_inst
    process(fp_stream_id_5410, stream_id_4994) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fp_stream_id_5410, stream_id_4994, tmp_var);
      EQ_u2_u1_5498_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5517_inst
    process(ls_stream_id_5310, stream_id_4994) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_stream_id_5310, stream_id_4994, tmp_var);
      EQ_u2_u1_5517_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5719_inst
    process(iretire_state_4942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iretire_state_4942, R_WB_RESET_5718_wire_constant, tmp_var);
      EQ_u2_u1_5719_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5725_inst
    process(iretire_state_4942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iretire_state_4942, R_WB_NORMAL_5724_wire_constant, tmp_var);
      EQ_u2_u1_5725_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5732_inst
    process(iretire_state_4942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iretire_state_4942, R_WB_MISPREDICTED_STREAM_5731_wire_constant, tmp_var);
      EQ_u2_u1_5732_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_5743_inst
    process(iretire_state_4942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iretire_state_4942, R_WB_TRAPPED_5742_wire_constant, tmp_var);
      EQ_u2_u1_5743_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_5152_inst
    process(sc_instr_class_5142) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_5142, R_TERMINATES_STREAM_5151_wire_constant, tmp_var);
      sc_instr_terminates_stream_5153 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_5157_inst
    process(sc_instr_class_5142) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_5142, R_TERMINATES_THREAD_5156_wire_constant, tmp_var);
      sc_instr_terminates_thread_5158 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5472_inst
    process(iu_tid_5185, thread_id_4990) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iu_tid_5185, thread_id_4990, tmp_var);
      EQ_u4_u1_5472_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5491_inst
    process(fp_tid_5406, thread_id_4990) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fp_tid_5406, thread_id_4990, tmp_var);
      EQ_u4_u1_5491_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_5510_inst
    process(ls_tid_5306, thread_id_4990) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_tid_5306, thread_id_4990, tmp_var);
      EQ_u4_u1_5510_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u6_u1_5475_inst
    process(iu_sid_5193, slot_id_4998) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iu_sid_5193, slot_id_4998, tmp_var);
      EQ_u6_u1_5475_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u6_u1_5494_inst
    process(fp_sid_5414, slot_id_4998) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(fp_sid_5414, slot_id_4998, tmp_var);
      EQ_u6_u1_5494_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u6_u1_5513_inst
    process(ls_sid_5314, slot_id_4998) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_sid_5314, slot_id_4998, tmp_var);
      EQ_u6_u1_5513_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_5919_inst
    process(slice_5917_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_5917_wire, konst_5918_wire_constant, tmp_var);
      fp_register_update_5920 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_5257_inst
    process(thread_head_5142) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5142, tmp_var);
      NOT_u1_u1_5257_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5274_inst
    process(thread_head_5142) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_5142, tmp_var);
      NOT_u1_u1_5274_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5466_inst
    process(valid_from_sc_4986) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_sc_4986, tmp_var);
      NOT_u1_u1_5466_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5468_inst
    process(iu2_to_retire_5042) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu2_to_retire_5042, tmp_var);
      NOT_u1_u1_5468_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5485_inst
    process(valid_from_sc_4986) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_sc_4986, tmp_var);
      NOT_u1_u1_5485_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5487_inst
    process(fu2_to_retire_5046) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fu2_to_retire_5046, tmp_var);
      NOT_u1_u1_5487_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5504_inst
    process(ls_to_retire_5054) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ls_to_retire_5054, tmp_var);
      NOT_u1_u1_5504_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5506_inst
    process(valid_from_sc_4986) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_from_sc_4986, tmp_var);
      NOT_u1_u1_5506_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5530_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5530_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5535_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5535_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5539_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5539_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5594_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5594_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5604_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5604_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5612_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5612_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5620_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5620_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5626_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5626_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5632_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5632_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5638_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5638_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5644_inst
    process(annul_instruction_5018) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instruction_5018, tmp_var);
      NOT_u1_u1_5644_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5685_inst
    process(kill_thread_now_5681) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", kill_thread_now_5681, tmp_var);
      NOT_u1_u1_5685_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5867_inst
    process(instruction_can_be_executed_5703) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", instruction_can_be_executed_5703, tmp_var);
      NOT_u1_u1_5867_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5905_inst
    process(iu2_to_retire_5042) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu2_to_retire_5042, tmp_var);
      NOT_u1_u1_5905_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5907_inst
    process(iu_register_updated_5902) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_register_updated_5902, tmp_var);
      NOT_u1_u1_5907_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5926_inst
    process(fp_ignore_5430) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fp_ignore_5430, tmp_var);
      NOT_u1_u1_5926_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5950_inst
    process(instruction_can_be_executed_5703) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", instruction_can_be_executed_5703, tmp_var);
      NOT_u1_u1_5950_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5977_inst
    process(icache_hit_5006) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", icache_hit_5006, tmp_var);
      NOT_u1_u1_5977_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_5260_inst
    next_psr_modified_5261 <= (psr_modified_5205 or AND_u1_u1_5259_wire);
    -- flow through binary operator OR_u1_u1_5277_inst
    next_tbr_modified_5278 <= (tbr_modified_5209 or AND_u1_u1_5276_wire);
    -- flow through binary operator OR_u1_u1_5353_inst
    ls_dbg_wp_hit_5354 <= (ls_dbg_wp_write_hit_5330 or ls_dbg_wp_read_hit_5326);
    -- flow through binary operator OR_u1_u1_5469_inst
    OR_u1_u1_5469_wire <= (NOT_u1_u1_5466_wire or NOT_u1_u1_5468_wire);
    -- flow through binary operator OR_u1_u1_5481_inst
    iu_match_5482 <= (OR_u1_u1_5469_wire or AND_u1_u1_5480_wire);
    -- flow through binary operator OR_u1_u1_5488_inst
    OR_u1_u1_5488_wire <= (NOT_u1_u1_5485_wire or NOT_u1_u1_5487_wire);
    -- flow through binary operator OR_u1_u1_5500_inst
    fp_match_5501 <= (OR_u1_u1_5488_wire or AND_u1_u1_5499_wire);
    -- flow through binary operator OR_u1_u1_5507_inst
    OR_u1_u1_5507_wire <= (NOT_u1_u1_5504_wire or NOT_u1_u1_5506_wire);
    -- flow through binary operator OR_u1_u1_5519_inst
    ls_match_5520 <= (OR_u1_u1_5507_wire or AND_u1_u1_5518_wire);
    -- flow through binary operator OR_u1_u1_5533_inst
    OR_u1_u1_5533_wire <= (predecessor_trap_bit_5142 or AND_u1_u1_5532_wire);
    -- flow through binary operator OR_u1_u1_5542_inst
    OR_u1_u1_5542_wire <= (AND_u1_u1_5537_wire or AND_u1_u1_5541_wire);
    -- flow through binary operator OR_u1_u1_5543_inst
    there_was_a_trap_5544 <= (OR_u1_u1_5533_wire or OR_u1_u1_5542_wire);
    -- flow through binary operator OR_u1_u1_5597_inst
    OR_u1_u1_5597_wire <= (disp_illegal_instr_trap_5123 or iu_illegal_instr_5548);
    -- flow through binary operator OR_u1_u1_5599_inst
    OR_u1_u1_5599_wire <= (OR_u1_u1_5597_wire or ls_illegal_instr_5368);
    -- flow through binary operator OR_u1_u1_5607_inst
    OR_u1_u1_5607_wire <= (iu_priv_instr_5552 or ls_priv_instr_5372);
    -- flow through binary operator OR_u1_u1_5615_inst
    OR_u1_u1_5615_wire <= (iu_mem_addr_not_aligned_5568 or ls_mem_addr_not_aligned_5380);
    -- flow through binary operator OR_u1_u1_5655_inst
    OR_u1_u1_5655_wire <= (AND_u1_u1_5651_wire or AND_u1_u1_5654_wire);
    -- flow through binary operator OR_u1_u1_5660_inst
    OR_u1_u1_5660_wire <= (AND_u1_u1_5658_wire or fetch_error_5014);
    -- flow through binary operator OR_u1_u1_5661_inst
    there_was_a_machine_error_5662 <= (OR_u1_u1_5655_wire or OR_u1_u1_5660_wire);
    -- flow through binary operator OR_u1_u1_5666_inst
    OR_u1_u1_5666_wire <= (dbg_bp_hit_5107 or there_was_a_trap_5544);
    -- flow through binary operator OR_u1_u1_5668_inst
    upstream_trap_or_error_5669 <= (OR_u1_u1_5666_wire or there_was_a_machine_error_5662);
    -- flow through binary operator OR_u1_u1_5674_inst
    OR_u1_u1_5674_wire <= (ls_dbg_wp_hit_5354 or sc_instr_terminates_thread_5158);
    -- flow through binary operator OR_u1_u1_5676_inst
    OR_u1_u1_5676_wire <= (OR_u1_u1_5674_wire or upstream_trap_or_error_5669);
    -- flow through binary operator OR_u1_u1_5729_inst
    OR_u1_u1_5729_wire <= (MUX_5722_wire or MUX_5728_wire);
    -- flow through binary operator OR_u1_u1_5752_inst
    OR_u1_u1_5752_wire <= (MUX_5740_wire or MUX_5751_wire);
    -- flow through binary operator OR_u1_u1_5753_inst
    OR_u1_u1_5753_wire <= (OR_u1_u1_5729_wire or OR_u1_u1_5752_wire);
    -- flow through binary operator OR_u1_u1_5889_inst
    OR_u1_u1_5889_wire <= (BITSEL_u32_u1_5885_wire or BITSEL_u32_u1_5888_wire);
    -- flow through binary operator OR_u1_u1_5893_inst
    OR_u1_u1_5893_wire <= (OR_u1_u1_5889_wire or BITSEL_u32_u1_5892_wire);
    -- flow through binary operator OR_u1_u1_5900_inst
    OR_u1_u1_5900_wire <= (BITSEL_u32_u1_5896_wire or BITSEL_u32_u1_5899_wire);
    -- flow through binary operator OR_u1_u1_5901_inst
    iu_register_updated_5902 <= (OR_u1_u1_5893_wire or OR_u1_u1_5900_wire);
    -- flow through binary operator OR_u1_u1_5908_inst
    OR_u1_u1_5908_wire <= (NOT_u1_u1_5905_wire or NOT_u1_u1_5907_wire);
    -- flow through binary operator OR_u1_u1_5910_inst
    OR_u1_u1_5910_wire <= (OR_u1_u1_5908_wire or iu_ignore_5201);
    -- shared inport operator group (0) : RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(153 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_0;
      RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_req_1;
      RPIPE_noblock_teu_stream_corrector_to_iretire_4929_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_stream_corrector_to_iretire_4929_wire <= data_out(153 downto 0);
      noblock_teu_stream_corrector_to_iretire_read_0_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iretire_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_stream_corrector_to_iretire_read_0: InputPortRevised -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iretire_read_0", data_width => 154,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => true,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => noblock_teu_stream_corrector_to_iretire_pipe_read_req(0),
          oack => noblock_teu_stream_corrector_to_iretire_pipe_read_ack(0),
          odata => noblock_teu_stream_corrector_to_iretire_pipe_read_data(153 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_teu_fpunit_to_iretire_4925_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(50 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_fpunit_to_iretire_4925_inst_req_0;
      RPIPE_teu_fpunit_to_iretire_4925_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_fpunit_to_iretire_4925_inst_req_1;
      RPIPE_teu_fpunit_to_iretire_4925_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_fp_4977(0);
      RPIPE_teu_fpunit_to_iretire_4925_wire <= data_out(50 downto 0);
      teu_fpunit_to_iretire_read_1_gI: SplitGuardInterface generic map(name => "teu_fpunit_to_iretire_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_fpunit_to_iretire_read_1: InputPort_P2P -- 
        generic map ( name => "teu_fpunit_to_iretire_read_1", data_width => 51,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  4)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_fpunit_to_iretire_pipe_read_req(0),
          oack => teu_fpunit_to_iretire_pipe_read_ack(0),
          odata => teu_fpunit_to_iretire_pipe_read_data(50 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- read from input-signal teu_iretire_instruction_log_pipe
    RPIPE_teu_iretire_instruction_log_pipe_4903_wire <= teu_iretire_instruction_log_pipe;
    -- read from input-signal teu_iretire_skipped_instruction_log_pipe
    RPIPE_teu_iretire_skipped_instruction_log_pipe_4906_wire <= teu_iretire_skipped_instruction_log_pipe;
    -- shared inport operator group (4) : RPIPE_teu_iunit_to_iretire_4920_inst 
    InportGroup_4: Block -- 
      signal data_out: std_logic_vector(95 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_iunit_to_iretire_4920_inst_req_0;
      RPIPE_teu_iunit_to_iretire_4920_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_iunit_to_iretire_4920_inst_req_1;
      RPIPE_teu_iunit_to_iretire_4920_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_iu_4982(0);
      RPIPE_teu_iunit_to_iretire_4920_wire <= data_out(95 downto 0);
      teu_iunit_to_iretire_read_4_gI: SplitGuardInterface generic map(name => "teu_iunit_to_iretire_read_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_iunit_to_iretire_read_4: InputPort_P2P -- 
        generic map ( name => "teu_iunit_to_iretire_read_4", data_width => 96,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  4)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_iunit_to_iretire_pipe_read_req(0),
          oack => teu_iunit_to_iretire_pipe_read_ack(0),
          odata => teu_iunit_to_iretire_pipe_read_data(95 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 4
    -- shared inport operator group (5) : RPIPE_teu_loadstore_to_iretire_4914_inst 
    InportGroup_5: Block -- 
      signal data_out: std_logic_vector(53 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_loadstore_to_iretire_4914_inst_req_0;
      RPIPE_teu_loadstore_to_iretire_4914_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_loadstore_to_iretire_4914_inst_req_1;
      RPIPE_teu_loadstore_to_iretire_4914_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_from_ls_4972(0);
      RPIPE_teu_loadstore_to_iretire_4914_wire <= data_out(53 downto 0);
      teu_loadstore_to_iretire_read_5_gI: SplitGuardInterface generic map(name => "teu_loadstore_to_iretire_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_loadstore_to_iretire_read_5: InputPort_P2P -- 
        generic map ( name => "teu_loadstore_to_iretire_read_5", data_width => 54,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  4)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_loadstore_to_iretire_pipe_read_req(0),
          oack => teu_loadstore_to_iretire_pipe_read_ack(0),
          odata => teu_loadstore_to_iretire_pipe_read_data(53 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- shared outport operator group (0) : WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(9 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_0;
      WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_req_1;
      WPIPE_CPU_to_PERFORMANCE_COUNTER_UPDATE_5985_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= valid_from_sc_4986(0);
      data_in <= performance_counter_update_command_5980;
      CPU_to_PERFORMANCE_COUNTER_UPDATE_write_0_gI: SplitGuardInterface generic map(name => "CPU_to_PERFORMANCE_COUNTER_UPDATE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      CPU_to_PERFORMANCE_COUNTER_UPDATE_write_0: OutputPortRevised -- 
        generic map ( name => "CPU_to_PERFORMANCE_COUNTER_UPDATE", data_width => 10, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req(0),
          oack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack(0),
          odata => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data(9 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_teu_iretire_instruction_log_pipe_5959_inst 
    OutportGroup_1: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_0;
      WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iretire_instruction_log_pipe_5959_inst_req_1;
      WPIPE_teu_iretire_instruction_log_pipe_5959_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= instruction_can_be_executed_5703(0);
      data_in <= ilog_5957;
      teu_iretire_instruction_log_pipe_write_1_gI: SplitGuardInterface generic map(name => "teu_iretire_instruction_log_pipe_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iretire_instruction_log_pipe_write_1: OutputPortRevised -- 
        generic map ( name => "teu_iretire_instruction_log_pipe", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iretire_instruction_log_pipe_pipe_write_req(0),
          oack => teu_iretire_instruction_log_pipe_pipe_write_ack(0),
          odata => teu_iretire_instruction_log_pipe_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst 
    OutportGroup_2: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_0;
      WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_req_1;
      WPIPE_teu_iretire_skipped_instruction_log_pipe_5963_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= skipped_5952(0);
      data_in <= ilog_5957;
      teu_iretire_skipped_instruction_log_pipe_write_2_gI: SplitGuardInterface generic map(name => "teu_iretire_skipped_instruction_log_pipe_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iretire_skipped_instruction_log_pipe_write_2: OutputPortRevised -- 
        generic map ( name => "teu_iretire_skipped_instruction_log_pipe", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iretire_skipped_instruction_log_pipe_pipe_write_req(0),
          oack => teu_iretire_skipped_instruction_log_pipe_pipe_write_ack(0),
          odata => teu_iretire_skipped_instruction_log_pipe_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_teu_iretire_to_idispatch_5072_inst 
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
      sample_req_unguarded(0) <= WPIPE_teu_iretire_to_idispatch_5072_inst_req_0;
      WPIPE_teu_iretire_to_idispatch_5072_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iretire_to_idispatch_5072_inst_req_1;
      WPIPE_teu_iretire_to_idispatch_5072_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= signal_to_idispatch_5010(0);
      data_in <= konst_5073_wire_constant;
      teu_iretire_to_idispatch_write_3_gI: SplitGuardInterface generic map(name => "teu_iretire_to_idispatch_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iretire_to_idispatch_write_3: OutputPortRevised -- 
        generic map ( name => "teu_iretire_to_idispatch", data_width => 1, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iretire_to_idispatch_pipe_write_req(0),
          oack => teu_iretire_to_idispatch_pipe_write_ack(0),
          odata => teu_iretire_to_idispatch_pipe_write_data(0 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_teu_to_ccu_5842_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(225 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_to_ccu_5842_inst_req_0;
      WPIPE_teu_to_ccu_5842_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_to_ccu_5842_inst_req_1;
      WPIPE_teu_to_ccu_5842_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_exception_5755(0);
      data_in <= to_ccu_5840;
      teu_to_ccu_write_4_gI: SplitGuardInterface generic map(name => "teu_to_ccu_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_to_ccu_write_4: OutputPortRevised -- 
        generic map ( name => "teu_to_ccu", data_width => 226, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_to_ccu_pipe_write_req(0),
          oack => teu_to_ccu_pipe_write_ack(0),
          odata => teu_to_ccu_pipe_write_data(225 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    volatile_operator_decode_thread_control_word_5467: decode_thread_control_word_Volatile port map(ctrl_word => thread_control_word_5038, sc_instr_class => sc_instr_class_5142, debug_mode => debug_mode_5142, logger_active => logging_active_5142, proc_ilvl => proc_ilvl_5142, enable_traps => enable_traps_5142, single_step_mode => single_step_mode_5142, ignore_break_points => ignore_break_points_5142, S => S_5142, imm_bit => imm_bit_5142, is_write_psr => is_write_psr_5142, is_mmu_ctrl_write => is_mmu_ctrl_write_5142, is_flush => is_flush_5142, is_cti => is_cti_5142, mis_predict => flush_like_instruction_5142, trap_bit => predecessor_trap_bit_5142, stream_head => stream_head_5142, thread_head => thread_head_5142); 
    volatile_operator_extract_hit_info_etc_5508: extract_hit_info_etc_Volatile port map(ls_to_retire => ls_to_retire_5054, ls_store_signature => ls_store_signature_5334, load_access => load_access_5342, load_miss => load_miss_5342, store_access => store_access_5342, store_miss => store_miss_5342, ls_store_signature_qualified => ls_store_signature_qualified_5342); 
    volatile_operator_writeback_fsm_5612: writeback_fsm_Volatile port map(wb_state => iretire_state_4942, valid_bit => valid_from_sc_4986, thread_head => thread_head_5142, stream_head => stream_head_5142, break_thread => break_thread_5678, terminate_thread => terminate_thread_5687, kill_thread_now => kill_thread_now_5681, break_stream => break_stream_5692, next_wb_state => next_iretire_state_5703, instr_can_execute => instruction_can_be_executed_5703); 
    volatile_operator_process_exception_5665: process_exception_Volatile port map(exc => to_exception_5837, to_ccu => to_ccu_5840); 
    -- shared call operator group (4) : call_stmt_5944_call 
    send_instruction_log_call_group_4: Block -- 
      signal data_in: std_logic_vector(127 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_5944_call_req_0;
      call_stmt_5944_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_5944_call_req_1;
      call_stmt_5944_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= send_logger_info_5938(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      send_instruction_log_call_group_4_gI: SplitGuardInterface generic map(name => "send_instruction_log_call_group_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      data_in <= iu_signature_to_ccu_5914 & fp_signature_to_ccu_5931 & ls_store_signature_qualified_5342 & pc_5062;
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 128,
        owidth => 128,
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
          reqR => send_instruction_log_call_reqs(0),
          ackR => send_instruction_log_call_acks(0),
          dataR => send_instruction_log_call_data(127 downto 0),
          tagR => send_instruction_log_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => send_instruction_log_return_acks(0), -- cross-over
          ackL => send_instruction_log_return_reqs(0), -- cross-over
          tagL => send_instruction_log_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 4
    volatile_operator_calculate_performance_counter_update_5702: calculate_performance_counter_update_Volatile port map(instr_executed => instruction_can_be_executed_5703, instr_bubbled => bubbled_5870, load => load_access_5342, load_miss => load_miss_5342, store => store_access_5342, store_miss => store_miss_5342, bread_stream => break_stream_5692, break_thread => break_thread_5678, icache => icache_was_used_5002, icache_miss => AND_u1_u1_5978_wire, perf_update_command => performance_counter_update_command_5980); 
    -- 
  end Block; -- data_path
  -- 
end iretire_daemon_arch;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity process_exception_Volatile is -- 
  port ( -- 
    exc : in  std_logic_vector(210 downto 0);
    to_ccu : out  std_logic_vector(225 downto 0)-- 
  );
  -- 
end entity process_exception_Volatile;
architecture process_exception_Volatile_arch of process_exception_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(211-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal exc_buffer :  std_logic_vector(210 downto 0);
  -- output port buffer signals
  signal to_ccu_buffer :  std_logic_vector(225 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  exc_buffer <= exc;
  -- output handling  -------------------------------------------------------
  to_ccu <= to_ccu_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u10_u13_4775_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u13_u19_4793_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u16_u33_4866_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u2_4772_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4784_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4789_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4796_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4801_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4807_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4812_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4823_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4827_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_4869_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u5_4854_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u3_4774_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4786_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4791_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4798_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4809_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4820_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4829_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u5_4803_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u32_u64_4872_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_4876_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u33_u97_4873_wire : std_logic_vector(96 downto 0);
    signal CONCAT_u3_u5_4813_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4824_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u6_4792_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u8_4804_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_4861_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u5_u16_4858_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u64_u96_4878_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u7_u11_4857_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u8_u13_4814_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u8_u17_4865_wire : std_logic_vector(16 downto 0);
    signal CONCAT_u8_u9_4767_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u8_u9_4864_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u97_u193_4879_wire : std_logic_vector(192 downto 0);
    signal CONCAT_u9_u10_4769_wire : std_logic_vector(9 downto 0);
    signal MUX_4761_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4779_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4782_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4783_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_4852_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4773_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4776_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4790_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4797_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4810_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_2_4818_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_3_4802_wire_constant : std_logic_vector(2 downto 0);
    signal R_ZERO_8_4765_wire_constant : std_logic_vector(7 downto 0);
    signal annul_instr_4638 : std_logic_vector(0 downto 0);
    signal annul_next_4642 : std_logic_vector(0 downto 0);
    signal annul_post_trap_instr_4763 : std_logic_vector(0 downto 0);
    signal cp_disabled_trap_4658 : std_logic_vector(0 downto 0);
    signal data_access_exception_trap_4710 : std_logic_vector(0 downto 0);
    signal fp_disabled_trap_4662 : std_logic_vector(0 downto 0);
    signal fp_ieee_754_trap_4726 : std_logic_vector(0 downto 0);
    signal fp_invalid_reg_trap_4718 : std_logic_vector(0 downto 0);
    signal fp_sequence_error_trap_4722 : std_logic_vector(0 downto 0);
    signal fp_unimpl_instr_trap_4714 : std_logic_vector(0 downto 0);
    signal illegal_instr_trap_4674 : std_logic_vector(0 downto 0);
    signal ilvl_4670 : std_logic_vector(3 downto 0);
    signal interrupt_flag_4666 : std_logic_vector(0 downto 0);
    signal iu_div_by_0_trap_4686 : std_logic_vector(0 downto 0);
    signal iu_tagged_overflow_trap_4682 : std_logic_vector(0 downto 0);
    signal konst_4760_wire_constant : std_logic_vector(0 downto 0);
    signal ls_dbg_info_4650 : std_logic_vector(3 downto 0);
    signal machine_error_4630 : std_logic_vector(0 downto 0);
    signal mae_trap_4654 : std_logic_vector(0 downto 0);
    signal mem_addr_not_aligned_trap_4698 : std_logic_vector(0 downto 0);
    signal nnpc_4754 : std_logic_vector(31 downto 0);
    signal npc_4750 : std_logic_vector(31 downto 0);
    signal pc_4746 : std_logic_vector(31 downto 0);
    signal priv_instr_trap_4678 : std_logic_vector(0 downto 0);
    signal psr_4738 : std_logic_vector(31 downto 0);
    signal psr_modified_4730 : std_logic_vector(0 downto 0);
    signal ret_status_4831 : std_logic_vector(7 downto 0);
    signal sc_dbg_info_4646 : std_logic_vector(3 downto 0);
    signal single_step_4626 : std_logic_vector(0 downto 0);
    signal tbr_4742 : std_logic_vector(31 downto 0);
    signal tbr_modified_4734 : std_logic_vector(0 downto 0);
    signal thread_id_4622 : std_logic_vector(3 downto 0);
    signal ticc_trap_type_4694 : std_logic_vector(6 downto 0);
    signal trap_flag_4634 : std_logic_vector(0 downto 0);
    signal trap_instr_trap_4690 : std_logic_vector(0 downto 0);
    signal tv_4816 : std_logic_vector(31 downto 0);
    signal window_overflow_trap_4706 : std_logic_vector(0 downto 0);
    signal window_underflow_trap_4702 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_4852_wire_constant <= "1";
    R_ZERO_1_4773_wire_constant <= "0";
    R_ZERO_1_4776_wire_constant <= "0";
    R_ZERO_1_4790_wire_constant <= "0";
    R_ZERO_1_4797_wire_constant <= "0";
    R_ZERO_1_4810_wire_constant <= "0";
    R_ZERO_2_4818_wire_constant <= "00";
    R_ZERO_3_4802_wire_constant <= "000";
    R_ZERO_8_4765_wire_constant <= "00000000";
    konst_4760_wire_constant <= "0";
    -- flow-through select operator MUX_4761_inst
    MUX_4761_wire <= annul_next_4642 when (interrupt_flag_4666(0) /=  '0') else konst_4760_wire_constant;
    -- flow-through select operator MUX_4762_inst
    annul_post_trap_instr_4763 <= annul_instr_4638 when (trap_flag_4634(0) /=  '0') else MUX_4761_wire;
    -- flow-through slice operator slice_4621_inst
    thread_id_4622 <= exc_buffer(210 downto 207);
    -- flow-through slice operator slice_4625_inst
    single_step_4626 <= exc_buffer(206 downto 206);
    -- flow-through slice operator slice_4629_inst
    machine_error_4630 <= exc_buffer(205 downto 205);
    -- flow-through slice operator slice_4633_inst
    trap_flag_4634 <= exc_buffer(204 downto 204);
    -- flow-through slice operator slice_4637_inst
    annul_instr_4638 <= exc_buffer(203 downto 203);
    -- flow-through slice operator slice_4641_inst
    annul_next_4642 <= exc_buffer(202 downto 202);
    -- flow-through slice operator slice_4645_inst
    sc_dbg_info_4646 <= exc_buffer(201 downto 198);
    -- flow-through slice operator slice_4649_inst
    ls_dbg_info_4650 <= exc_buffer(197 downto 194);
    -- flow-through slice operator slice_4653_inst
    mae_trap_4654 <= exc_buffer(189 downto 189);
    -- flow-through slice operator slice_4657_inst
    cp_disabled_trap_4658 <= exc_buffer(188 downto 188);
    -- flow-through slice operator slice_4661_inst
    fp_disabled_trap_4662 <= exc_buffer(187 downto 187);
    -- flow-through slice operator slice_4665_inst
    interrupt_flag_4666 <= exc_buffer(186 downto 186);
    -- flow-through slice operator slice_4669_inst
    ilvl_4670 <= exc_buffer(185 downto 182);
    -- flow-through slice operator slice_4673_inst
    illegal_instr_trap_4674 <= exc_buffer(181 downto 181);
    -- flow-through slice operator slice_4677_inst
    priv_instr_trap_4678 <= exc_buffer(180 downto 180);
    -- flow-through slice operator slice_4681_inst
    iu_tagged_overflow_trap_4682 <= exc_buffer(179 downto 179);
    -- flow-through slice operator slice_4685_inst
    iu_div_by_0_trap_4686 <= exc_buffer(178 downto 178);
    -- flow-through slice operator slice_4689_inst
    trap_instr_trap_4690 <= exc_buffer(177 downto 177);
    -- flow-through slice operator slice_4693_inst
    ticc_trap_type_4694 <= exc_buffer(176 downto 170);
    -- flow-through slice operator slice_4697_inst
    mem_addr_not_aligned_trap_4698 <= exc_buffer(169 downto 169);
    -- flow-through slice operator slice_4701_inst
    window_underflow_trap_4702 <= exc_buffer(168 downto 168);
    -- flow-through slice operator slice_4705_inst
    window_overflow_trap_4706 <= exc_buffer(167 downto 167);
    -- flow-through slice operator slice_4709_inst
    data_access_exception_trap_4710 <= exc_buffer(166 downto 166);
    -- flow-through slice operator slice_4713_inst
    fp_unimpl_instr_trap_4714 <= exc_buffer(165 downto 165);
    -- flow-through slice operator slice_4717_inst
    fp_invalid_reg_trap_4718 <= exc_buffer(164 downto 164);
    -- flow-through slice operator slice_4721_inst
    fp_sequence_error_trap_4722 <= exc_buffer(163 downto 163);
    -- flow-through slice operator slice_4725_inst
    fp_ieee_754_trap_4726 <= exc_buffer(162 downto 162);
    -- flow-through slice operator slice_4729_inst
    psr_modified_4730 <= exc_buffer(161 downto 161);
    -- flow-through slice operator slice_4733_inst
    tbr_modified_4734 <= exc_buffer(160 downto 160);
    -- flow-through slice operator slice_4737_inst
    psr_4738 <= exc_buffer(159 downto 128);
    -- flow-through slice operator slice_4741_inst
    tbr_4742 <= exc_buffer(127 downto 96);
    -- flow-through slice operator slice_4745_inst
    pc_4746 <= exc_buffer(95 downto 64);
    -- flow-through slice operator slice_4749_inst
    npc_4750 <= exc_buffer(63 downto 32);
    -- flow-through slice operator slice_4753_inst
    nnpc_4754 <= exc_buffer(31 downto 0);
    -- flow through binary operator CONCAT_u10_u13_4775_inst
    process(CONCAT_u9_u10_4769_wire, CONCAT_u2_u3_4774_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u9_u10_4769_wire, CONCAT_u2_u3_4774_wire, tmp_var);
      CONCAT_u10_u13_4775_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u19_4793_inst
    process(CONCAT_u10_u13_4775_wire, CONCAT_u3_u6_4792_wire) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u10_u13_4775_wire, CONCAT_u3_u6_4792_wire, tmp_var);
      CONCAT_u13_u19_4793_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u33_4866_inst
    process(CONCAT_u5_u16_4858_wire, CONCAT_u8_u17_4865_wire) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u16_4858_wire, CONCAT_u8_u17_4865_wire, tmp_var);
      CONCAT_u16_u33_4866_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u19_u32_4815_inst
    process(CONCAT_u13_u19_4793_wire, CONCAT_u8_u13_4814_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u19_4793_wire, CONCAT_u8_u13_4814_wire, tmp_var);
      tv_4816 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4772_inst
    process(iu_tagged_overflow_trap_4682, data_access_exception_trap_4710) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_tagged_overflow_trap_4682, data_access_exception_trap_4710, tmp_var);
      CONCAT_u1_u2_4772_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4784_inst
    process(R_ZERO_1_4776_wire_constant, OR_u1_u1_4783_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_4776_wire_constant, OR_u1_u1_4783_wire, tmp_var);
      CONCAT_u1_u2_4784_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4789_inst
    process(window_underflow_trap_4702, window_overflow_trap_4706) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(window_underflow_trap_4702, window_overflow_trap_4706, tmp_var);
      CONCAT_u1_u2_4789_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4796_inst
    process(cp_disabled_trap_4658, fp_disabled_trap_4662) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(cp_disabled_trap_4658, fp_disabled_trap_4662, tmp_var);
      CONCAT_u1_u2_4796_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4801_inst
    process(illegal_instr_trap_4674, priv_instr_trap_4678) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(illegal_instr_trap_4674, priv_instr_trap_4678, tmp_var);
      CONCAT_u1_u2_4801_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4807_inst
    process(mae_trap_4654, annul_post_trap_instr_4763) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(mae_trap_4654, annul_post_trap_instr_4763, tmp_var);
      CONCAT_u1_u2_4807_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4812_inst
    process(R_ZERO_1_4810_wire_constant, trap_flag_4634) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_4810_wire_constant, trap_flag_4634, tmp_var);
      CONCAT_u1_u2_4812_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4823_inst
    process(annul_next_4642, single_step_4626) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_next_4642, single_step_4626, tmp_var);
      CONCAT_u1_u2_4823_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4827_inst
    process(trap_flag_4634, interrupt_flag_4666) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(trap_flag_4634, interrupt_flag_4666, tmp_var);
      CONCAT_u1_u2_4827_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_4869_inst
    process(tbr_modified_4734, psr_4738) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(tbr_modified_4734, psr_4738, tmp_var);
      CONCAT_u1_u33_4869_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_4854_inst
    process(R_ONE_1_4852_wire_constant, thread_id_4622) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_4852_wire_constant, thread_id_4622, tmp_var);
      CONCAT_u1_u5_4854_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4774_inst
    process(CONCAT_u1_u2_4772_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4772_wire, R_ZERO_1_4773_wire_constant, tmp_var);
      CONCAT_u2_u3_4774_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4786_inst
    process(CONCAT_u1_u2_4784_wire, mem_addr_not_aligned_trap_4698) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4784_wire, mem_addr_not_aligned_trap_4698, tmp_var);
      CONCAT_u2_u3_4786_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4791_inst
    process(CONCAT_u1_u2_4789_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4789_wire, R_ZERO_1_4790_wire_constant, tmp_var);
      CONCAT_u2_u3_4791_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4798_inst
    process(CONCAT_u1_u2_4796_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4796_wire, R_ZERO_1_4797_wire_constant, tmp_var);
      CONCAT_u2_u3_4798_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4809_inst
    process(CONCAT_u1_u2_4807_wire, mae_trap_4654) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4807_wire, mae_trap_4654, tmp_var);
      CONCAT_u2_u3_4809_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4820_inst
    process(R_ZERO_2_4818_wire_constant, annul_instr_4638) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_2_4818_wire_constant, annul_instr_4638, tmp_var);
      CONCAT_u2_u3_4820_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4829_inst
    process(CONCAT_u1_u2_4827_wire, machine_error_4630) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4827_wire, machine_error_4630, tmp_var);
      CONCAT_u2_u3_4829_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u5_4803_inst
    process(CONCAT_u1_u2_4801_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4801_wire, R_ZERO_3_4802_wire_constant, tmp_var);
      CONCAT_u2_u5_4803_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_4872_inst
    process(tbr_4742, pc_4746) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(tbr_4742, pc_4746, tmp_var);
      CONCAT_u32_u64_4872_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_4876_inst
    process(npc_4750, nnpc_4754) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(npc_4750, nnpc_4754, tmp_var);
      CONCAT_u32_u64_4876_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u226_4880_inst
    process(CONCAT_u16_u33_4866_wire, CONCAT_u97_u193_4879_wire) -- 
      variable tmp_var : std_logic_vector(225 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u33_4866_wire, CONCAT_u97_u193_4879_wire, tmp_var);
      to_ccu_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u97_4873_inst
    process(CONCAT_u1_u33_4869_wire, CONCAT_u32_u64_4872_wire) -- 
      variable tmp_var : std_logic_vector(96 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u33_4869_wire, CONCAT_u32_u64_4872_wire, tmp_var);
      CONCAT_u33_u97_4873_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4813_inst
    process(CONCAT_u2_u3_4809_wire, CONCAT_u1_u2_4812_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4809_wire, CONCAT_u1_u2_4812_wire, tmp_var);
      CONCAT_u3_u5_4813_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4824_inst
    process(CONCAT_u2_u3_4820_wire, CONCAT_u1_u2_4823_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4820_wire, CONCAT_u1_u2_4823_wire, tmp_var);
      CONCAT_u3_u5_4824_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_4792_inst
    process(CONCAT_u2_u3_4786_wire, CONCAT_u2_u3_4791_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4786_wire, CONCAT_u2_u3_4791_wire, tmp_var);
      CONCAT_u3_u6_4792_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u8_4804_inst
    process(CONCAT_u2_u3_4798_wire, CONCAT_u2_u5_4803_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4798_wire, CONCAT_u2_u5_4803_wire, tmp_var);
      CONCAT_u3_u8_4804_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_4861_inst
    process(sc_dbg_info_4646, ls_dbg_info_4650) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_dbg_info_4646, ls_dbg_info_4650, tmp_var);
      CONCAT_u4_u8_4861_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u16_4858_inst
    process(CONCAT_u1_u5_4854_wire, CONCAT_u7_u11_4857_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_4854_wire, CONCAT_u7_u11_4857_wire, tmp_var);
      CONCAT_u5_u16_4858_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u8_4830_inst
    process(CONCAT_u3_u5_4824_wire, CONCAT_u2_u3_4829_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_4824_wire, CONCAT_u2_u3_4829_wire, tmp_var);
      ret_status_4831 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_4878_inst
    process(CONCAT_u32_u64_4876_wire, tv_4816) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_4876_wire, tv_4816, tmp_var);
      CONCAT_u64_u96_4878_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u11_4857_inst
    process(ticc_trap_type_4694, ilvl_4670) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(ticc_trap_type_4694, ilvl_4670, tmp_var);
      CONCAT_u7_u11_4857_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u13_4814_inst
    process(CONCAT_u3_u8_4804_wire, CONCAT_u3_u5_4813_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u8_4804_wire, CONCAT_u3_u5_4813_wire, tmp_var);
      CONCAT_u8_u13_4814_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u17_4865_inst
    process(CONCAT_u4_u8_4861_wire, CONCAT_u8_u9_4864_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_4861_wire, CONCAT_u8_u9_4864_wire, tmp_var);
      CONCAT_u8_u17_4865_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u9_4767_inst
    process(R_ZERO_8_4765_wire_constant, trap_instr_trap_4690) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_8_4765_wire_constant, trap_instr_trap_4690, tmp_var);
      CONCAT_u8_u9_4767_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u9_4864_inst
    process(ret_status_4831, psr_modified_4730) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(ret_status_4831, psr_modified_4730, tmp_var);
      CONCAT_u8_u9_4864_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u97_u193_4879_inst
    process(CONCAT_u33_u97_4873_wire, CONCAT_u64_u96_4878_wire) -- 
      variable tmp_var : std_logic_vector(192 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u33_u97_4873_wire, CONCAT_u64_u96_4878_wire, tmp_var);
      CONCAT_u97_u193_4879_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u10_4769_inst
    process(CONCAT_u8_u9_4767_wire, iu_div_by_0_trap_4686) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u9_4767_wire, iu_div_by_0_trap_4686, tmp_var);
      CONCAT_u9_u10_4769_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_4779_inst
    OR_u1_u1_4779_wire <= (fp_invalid_reg_trap_4718 or fp_sequence_error_trap_4722);
    -- flow through binary operator OR_u1_u1_4782_inst
    OR_u1_u1_4782_wire <= (fp_unimpl_instr_trap_4714 or fp_ieee_754_trap_4726);
    -- flow through binary operator OR_u1_u1_4783_inst
    OR_u1_u1_4783_wire <= (OR_u1_u1_4779_wire or OR_u1_u1_4782_wire);
    -- 
  end Block; -- data_path
  -- 
end process_exception_Volatile_arch;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity send_instruction_log is -- 
  generic (tag_length : integer); 
  port ( -- 
    iu_signature_to_ccu : in  std_logic_vector(31 downto 0);
    fp_signature_to_ccu : in  std_logic_vector(31 downto 0);
    ls_store_signature : in  std_logic_vector(31 downto 0);
    pc : in  std_logic_vector(31 downto 0);
    AJIT_to_ENV_logger_pipe_write_req : out  std_logic_vector(0 downto 0);
    AJIT_to_ENV_logger_pipe_write_ack : in   std_logic_vector(0 downto 0);
    AJIT_to_ENV_logger_pipe_write_data : out  std_logic_vector(31 downto 0);
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
end entity send_instruction_log;
architecture send_instruction_log_arch of send_instruction_log is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 128)-1 downto 0);
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
  signal iu_signature_to_ccu_buffer :  std_logic_vector(31 downto 0);
  signal iu_signature_to_ccu_update_enable: Boolean;
  signal fp_signature_to_ccu_buffer :  std_logic_vector(31 downto 0);
  signal fp_signature_to_ccu_update_enable: Boolean;
  signal ls_store_signature_buffer :  std_logic_vector(31 downto 0);
  signal ls_store_signature_update_enable: Boolean;
  signal pc_buffer :  std_logic_vector(31 downto 0);
  signal pc_update_enable: Boolean;
  -- output port buffer signals
  signal send_instruction_log_CP_69_start: Boolean;
  signal send_instruction_log_CP_69_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_AJIT_to_ENV_logger_4888_inst_req_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4888_inst_ack_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4888_inst_req_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4888_inst_ack_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4891_inst_req_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4891_inst_ack_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4891_inst_req_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4891_inst_ack_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4894_inst_req_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4894_inst_ack_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4894_inst_req_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4894_inst_ack_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4897_inst_req_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4897_inst_ack_0 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4897_inst_req_1 : boolean;
  signal WPIPE_AJIT_to_ENV_logger_4897_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "send_instruction_log_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 128) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(31 downto 0) <= iu_signature_to_ccu;
  iu_signature_to_ccu_buffer <= in_buffer_data_out(31 downto 0);
  in_buffer_data_in(63 downto 32) <= fp_signature_to_ccu;
  fp_signature_to_ccu_buffer <= in_buffer_data_out(63 downto 32);
  in_buffer_data_in(95 downto 64) <= ls_store_signature;
  ls_store_signature_buffer <= in_buffer_data_out(95 downto 64);
  in_buffer_data_in(127 downto 96) <= pc;
  pc_buffer <= in_buffer_data_out(127 downto 96);
  in_buffer_data_in(tag_length + 127 downto 128) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 127 downto 128);
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
  send_instruction_log_CP_69_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "send_instruction_log_out_buffer", -- 
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
    preds <= send_instruction_log_CP_69_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= send_instruction_log_CP_69_start & tag_ilock_write_ack_symbol;
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
    preds <= send_instruction_log_CP_69_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  send_instruction_log_CP_69: Block -- control-path 
    signal send_instruction_log_CP_69_elements: BooleanArray(8 downto 0);
    -- 
  begin -- 
    send_instruction_log_CP_69_elements(0) <= send_instruction_log_CP_69_start;
    send_instruction_log_CP_69_symbol <= send_instruction_log_CP_69_elements(8);
    -- CP-element group 0:  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (5) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_4890_to_assign_stmt_4899/$entry
      -- CP-element group 0: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_sample_start_
      -- CP-element group 0: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Sample/req
      -- 
    req_82_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_82_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(0), ack => WPIPE_AJIT_to_ENV_logger_4888_inst_req_0); -- 
    -- CP-element group 1:  transition  input  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	2 
    -- CP-element group 1:  members (6) 
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_sample_completed_
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_update_start_
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Sample/ack
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Update/$entry
      -- CP-element group 1: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Update/req
      -- 
    ack_83_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4888_inst_ack_0, ack => send_instruction_log_CP_69_elements(1)); -- 
    req_87_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_87_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(1), ack => WPIPE_AJIT_to_ENV_logger_4888_inst_req_1); -- 
    -- CP-element group 2:  transition  input  output  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	1 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (6) 
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_update_completed_
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Update/$exit
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4888_Update/ack
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_sample_start_
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Sample/$entry
      -- CP-element group 2: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Sample/req
      -- 
    ack_88_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4888_inst_ack_1, ack => send_instruction_log_CP_69_elements(2)); -- 
    req_96_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_96_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(2), ack => WPIPE_AJIT_to_ENV_logger_4891_inst_req_0); -- 
    -- CP-element group 3:  transition  input  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (6) 
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_sample_completed_
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_update_start_
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Sample/$exit
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Sample/ack
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Update/$entry
      -- CP-element group 3: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Update/req
      -- 
    ack_97_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4891_inst_ack_0, ack => send_instruction_log_CP_69_elements(3)); -- 
    req_101_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_101_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(3), ack => WPIPE_AJIT_to_ENV_logger_4891_inst_req_1); -- 
    -- CP-element group 4:  transition  input  output  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (6) 
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_update_completed_
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Update/$exit
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4891_Update/ack
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_sample_start_
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Sample/req
      -- 
    ack_102_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4891_inst_ack_1, ack => send_instruction_log_CP_69_elements(4)); -- 
    req_110_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_110_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(4), ack => WPIPE_AJIT_to_ENV_logger_4894_inst_req_0); -- 
    -- CP-element group 5:  transition  input  output  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_sample_completed_
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_update_start_
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Sample/ack
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Update/$entry
      -- CP-element group 5: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Update/req
      -- 
    ack_111_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4894_inst_ack_0, ack => send_instruction_log_CP_69_elements(5)); -- 
    req_115_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_115_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(5), ack => WPIPE_AJIT_to_ENV_logger_4894_inst_req_1); -- 
    -- CP-element group 6:  transition  input  output  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	7 
    -- CP-element group 6:  members (6) 
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_update_completed_
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Update/$exit
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4894_Update/ack
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_sample_start_
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Sample/$entry
      -- CP-element group 6: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Sample/req
      -- 
    ack_116_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4894_inst_ack_1, ack => send_instruction_log_CP_69_elements(6)); -- 
    req_124_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_124_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(6), ack => WPIPE_AJIT_to_ENV_logger_4897_inst_req_0); -- 
    -- CP-element group 7:  transition  input  output  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	6 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (6) 
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_sample_completed_
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_update_start_
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Sample/$exit
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Sample/ack
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Update/$entry
      -- CP-element group 7: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Update/req
      -- 
    ack_125_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4897_inst_ack_0, ack => send_instruction_log_CP_69_elements(7)); -- 
    req_129_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_129_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => send_instruction_log_CP_69_elements(7), ack => WPIPE_AJIT_to_ENV_logger_4897_inst_req_1); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (5) 
      -- CP-element group 8: 	 $exit
      -- CP-element group 8: 	 assign_stmt_4890_to_assign_stmt_4899/$exit
      -- CP-element group 8: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_update_completed_
      -- CP-element group 8: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Update/$exit
      -- CP-element group 8: 	 assign_stmt_4890_to_assign_stmt_4899/WPIPE_AJIT_to_ENV_logger_4897_Update/ack
      -- 
    ack_130_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_AJIT_to_ENV_logger_4897_inst_ack_1, ack => send_instruction_log_CP_69_elements(8)); -- 
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared outport operator group (0) : WPIPE_AJIT_to_ENV_logger_4888_inst WPIPE_AJIT_to_ENV_logger_4897_inst WPIPE_AJIT_to_ENV_logger_4894_inst WPIPE_AJIT_to_ENV_logger_4891_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(127 downto 0);
      signal sample_req, sample_ack : BooleanArray( 3 downto 0);
      signal update_req, update_ack : BooleanArray( 3 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 3 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 3 downto 0);
      signal guard_vector : std_logic_vector( 3 downto 0);
      constant inBUFs : IntegerArray(3 downto 0) := (3 => 0, 2 => 0, 1 => 0, 0 => 0);
      constant guardFlags : BooleanArray(3 downto 0) := (0 => false, 1 => false, 2 => false, 3 => false);
      constant guardBuffering: IntegerArray(3 downto 0)  := (0 => 2, 1 => 2, 2 => 2, 3 => 2);
      -- 
    begin -- 
      sample_req_unguarded(3) <= WPIPE_AJIT_to_ENV_logger_4888_inst_req_0;
      sample_req_unguarded(2) <= WPIPE_AJIT_to_ENV_logger_4897_inst_req_0;
      sample_req_unguarded(1) <= WPIPE_AJIT_to_ENV_logger_4894_inst_req_0;
      sample_req_unguarded(0) <= WPIPE_AJIT_to_ENV_logger_4891_inst_req_0;
      WPIPE_AJIT_to_ENV_logger_4888_inst_ack_0 <= sample_ack_unguarded(3);
      WPIPE_AJIT_to_ENV_logger_4897_inst_ack_0 <= sample_ack_unguarded(2);
      WPIPE_AJIT_to_ENV_logger_4894_inst_ack_0 <= sample_ack_unguarded(1);
      WPIPE_AJIT_to_ENV_logger_4891_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(3) <= WPIPE_AJIT_to_ENV_logger_4888_inst_req_1;
      update_req_unguarded(2) <= WPIPE_AJIT_to_ENV_logger_4897_inst_req_1;
      update_req_unguarded(1) <= WPIPE_AJIT_to_ENV_logger_4894_inst_req_1;
      update_req_unguarded(0) <= WPIPE_AJIT_to_ENV_logger_4891_inst_req_1;
      WPIPE_AJIT_to_ENV_logger_4888_inst_ack_1 <= update_ack_unguarded(3);
      WPIPE_AJIT_to_ENV_logger_4897_inst_ack_1 <= update_ack_unguarded(2);
      WPIPE_AJIT_to_ENV_logger_4894_inst_ack_1 <= update_ack_unguarded(1);
      WPIPE_AJIT_to_ENV_logger_4891_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      guard_vector(2)  <=  '1';
      guard_vector(3)  <=  '1';
      data_in <= iu_signature_to_ccu_buffer & pc_buffer & ls_store_signature_buffer & fp_signature_to_ccu_buffer;
      AJIT_to_ENV_logger_write_0_gI: SplitGuardInterface generic map(name => "AJIT_to_ENV_logger_write_0_gI", nreqs => 4, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      AJIT_to_ENV_logger_write_0: OutputPortRevised -- 
        generic map ( name => "AJIT_to_ENV_logger", data_width => 32, num_reqs => 4, input_buffering => inBUFs, full_rate => false,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => AJIT_to_ENV_logger_pipe_write_req(0),
          oack => AJIT_to_ENV_logger_pipe_write_ack(0),
          odata => AJIT_to_ENV_logger_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end send_instruction_log_arch;
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
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
    signal AND_u1_u1_4519_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4523_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4542_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4546_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4586_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4600_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4480_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4496_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4513_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4536_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4564_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4573_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4583_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_4597_wire : std_logic_vector(0 downto 0);
    signal MUX_4489_wire : std_logic_vector(1 downto 0);
    signal MUX_4490_wire : std_logic_vector(1 downto 0);
    signal MUX_4491_wire : std_logic_vector(1 downto 0);
    signal MUX_4493_wire : std_logic_vector(1 downto 0);
    signal MUX_4505_wire : std_logic_vector(1 downto 0);
    signal MUX_4506_wire : std_logic_vector(1 downto 0);
    signal MUX_4507_wire : std_logic_vector(1 downto 0);
    signal MUX_4509_wire : std_logic_vector(1 downto 0);
    signal MUX_4528_wire : std_logic_vector(1 downto 0);
    signal MUX_4529_wire : std_logic_vector(1 downto 0);
    signal MUX_4530_wire : std_logic_vector(1 downto 0);
    signal MUX_4531_wire : std_logic_vector(1 downto 0);
    signal MUX_4533_wire : std_logic_vector(1 downto 0);
    signal MUX_4551_wire : std_logic_vector(1 downto 0);
    signal MUX_4552_wire : std_logic_vector(1 downto 0);
    signal MUX_4553_wire : std_logic_vector(1 downto 0);
    signal MUX_4554_wire : std_logic_vector(1 downto 0);
    signal MUX_4556_wire : std_logic_vector(1 downto 0);
    signal MUX_4568_wire : std_logic_vector(0 downto 0);
    signal MUX_4570_wire : std_logic_vector(0 downto 0);
    signal MUX_4577_wire : std_logic_vector(0 downto 0);
    signal MUX_4579_wire : std_logic_vector(0 downto 0);
    signal MUX_4591_wire : std_logic_vector(0 downto 0);
    signal MUX_4592_wire : std_logic_vector(0 downto 0);
    signal MUX_4594_wire : std_logic_vector(0 downto 0);
    signal MUX_4605_wire : std_logic_vector(0 downto 0);
    signal MUX_4606_wire : std_logic_vector(0 downto 0);
    signal MUX_4608_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4482_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4498_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4515_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4538_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4580_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4609_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4610_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_4510_wire : std_logic_vector(1 downto 0);
    signal OR_u2_u2_4557_wire : std_logic_vector(1 downto 0);
    signal R_ONE_1_4567_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_4576_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_4589_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_4603_wire_constant : std_logic_vector(0 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4487_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4503_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4512_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4516_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4524_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4527_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4547_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_4582_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4488_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4495_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4499_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4504_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4526_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4549_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_4572_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_4479_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_4483_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_4563_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4485_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4501_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4520_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4535_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4539_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4543_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4550_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_4596_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_4566_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4575_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4587_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4590_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4601_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4604_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4492_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4508_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4532_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4555_wire_constant : std_logic_vector(1 downto 0);
    signal konst_4569_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4578_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4593_wire_constant : std_logic_vector(0 downto 0);
    signal konst_4607_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_4567_wire_constant <= "1";
    R_ONE_1_4576_wire_constant <= "1";
    R_ONE_1_4589_wire_constant <= "1";
    R_ONE_1_4603_wire_constant <= "1";
    R_WB_MISPREDICTED_STREAM_4487_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4503_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4512_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4516_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4524_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4527_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4547_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_4582_wire_constant <= "10";
    R_WB_NORMAL_4488_wire_constant <= "01";
    R_WB_NORMAL_4495_wire_constant <= "01";
    R_WB_NORMAL_4499_wire_constant <= "01";
    R_WB_NORMAL_4504_wire_constant <= "01";
    R_WB_NORMAL_4526_wire_constant <= "01";
    R_WB_NORMAL_4549_wire_constant <= "01";
    R_WB_NORMAL_4572_wire_constant <= "01";
    R_WB_RESET_4479_wire_constant <= "00";
    R_WB_RESET_4483_wire_constant <= "00";
    R_WB_RESET_4563_wire_constant <= "00";
    R_WB_TRAPPED_4485_wire_constant <= "11";
    R_WB_TRAPPED_4501_wire_constant <= "11";
    R_WB_TRAPPED_4520_wire_constant <= "11";
    R_WB_TRAPPED_4535_wire_constant <= "11";
    R_WB_TRAPPED_4539_wire_constant <= "11";
    R_WB_TRAPPED_4543_wire_constant <= "11";
    R_WB_TRAPPED_4550_wire_constant <= "11";
    R_WB_TRAPPED_4596_wire_constant <= "11";
    R_ZERO_1_4566_wire_constant <= "0";
    R_ZERO_1_4575_wire_constant <= "0";
    R_ZERO_1_4587_wire_constant <= "0";
    R_ZERO_1_4590_wire_constant <= "0";
    R_ZERO_1_4601_wire_constant <= "0";
    R_ZERO_1_4604_wire_constant <= "0";
    konst_4492_wire_constant <= "00";
    konst_4508_wire_constant <= "00";
    konst_4532_wire_constant <= "00";
    konst_4555_wire_constant <= "00";
    konst_4569_wire_constant <= "0";
    konst_4578_wire_constant <= "0";
    konst_4593_wire_constant <= "0";
    konst_4607_wire_constant <= "0";
    -- flow-through select operator MUX_4489_inst
    MUX_4489_wire <= R_WB_MISPREDICTED_STREAM_4487_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_4488_wire_constant;
    -- flow-through select operator MUX_4490_inst
    MUX_4490_wire <= R_WB_TRAPPED_4485_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_4489_wire;
    -- flow-through select operator MUX_4491_inst
    MUX_4491_wire <= R_WB_RESET_4483_wire_constant when (NOT_u1_u1_4482_wire(0) /=  '0') else MUX_4490_wire;
    -- flow-through select operator MUX_4493_inst
    MUX_4493_wire <= MUX_4491_wire when (EQ_u2_u1_4480_wire(0) /=  '0') else konst_4492_wire_constant;
    -- flow-through select operator MUX_4505_inst
    MUX_4505_wire <= R_WB_MISPREDICTED_STREAM_4503_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_4504_wire_constant;
    -- flow-through select operator MUX_4506_inst
    MUX_4506_wire <= R_WB_TRAPPED_4501_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_4505_wire;
    -- flow-through select operator MUX_4507_inst
    MUX_4507_wire <= R_WB_NORMAL_4499_wire_constant when (NOT_u1_u1_4498_wire(0) /=  '0') else MUX_4506_wire;
    -- flow-through select operator MUX_4509_inst
    MUX_4509_wire <= MUX_4507_wire when (EQ_u2_u1_4496_wire(0) /=  '0') else konst_4508_wire_constant;
    -- flow-through select operator MUX_4528_inst
    MUX_4528_wire <= R_WB_NORMAL_4526_wire_constant when (stream_head_buffer(0) /=  '0') else R_WB_MISPREDICTED_STREAM_4527_wire_constant;
    -- flow-through select operator MUX_4529_inst
    MUX_4529_wire <= R_WB_MISPREDICTED_STREAM_4524_wire_constant when (AND_u1_u1_4523_wire(0) /=  '0') else MUX_4528_wire;
    -- flow-through select operator MUX_4530_inst
    MUX_4530_wire <= R_WB_TRAPPED_4520_wire_constant when (AND_u1_u1_4519_wire(0) /=  '0') else MUX_4529_wire;
    -- flow-through select operator MUX_4531_inst
    MUX_4531_wire <= R_WB_MISPREDICTED_STREAM_4516_wire_constant when (NOT_u1_u1_4515_wire(0) /=  '0') else MUX_4530_wire;
    -- flow-through select operator MUX_4533_inst
    MUX_4533_wire <= MUX_4531_wire when (EQ_u2_u1_4513_wire(0) /=  '0') else konst_4532_wire_constant;
    -- flow-through select operator MUX_4551_inst
    MUX_4551_wire <= R_WB_NORMAL_4549_wire_constant when (thread_head_buffer(0) /=  '0') else R_WB_TRAPPED_4550_wire_constant;
    -- flow-through select operator MUX_4552_inst
    MUX_4552_wire <= R_WB_MISPREDICTED_STREAM_4547_wire_constant when (AND_u1_u1_4546_wire(0) /=  '0') else MUX_4551_wire;
    -- flow-through select operator MUX_4553_inst
    MUX_4553_wire <= R_WB_TRAPPED_4543_wire_constant when (AND_u1_u1_4542_wire(0) /=  '0') else MUX_4552_wire;
    -- flow-through select operator MUX_4554_inst
    MUX_4554_wire <= R_WB_TRAPPED_4539_wire_constant when (NOT_u1_u1_4538_wire(0) /=  '0') else MUX_4553_wire;
    -- flow-through select operator MUX_4556_inst
    MUX_4556_wire <= MUX_4554_wire when (EQ_u2_u1_4536_wire(0) /=  '0') else konst_4555_wire_constant;
    -- flow-through select operator MUX_4568_inst
    MUX_4568_wire <= R_ZERO_1_4566_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_4567_wire_constant;
    -- flow-through select operator MUX_4570_inst
    MUX_4570_wire <= MUX_4568_wire when (EQ_u2_u1_4564_wire(0) /=  '0') else konst_4569_wire_constant;
    -- flow-through select operator MUX_4577_inst
    MUX_4577_wire <= R_ZERO_1_4575_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_4576_wire_constant;
    -- flow-through select operator MUX_4579_inst
    MUX_4579_wire <= MUX_4577_wire when (EQ_u2_u1_4573_wire(0) /=  '0') else konst_4578_wire_constant;
    -- flow-through select operator MUX_4591_inst
    MUX_4591_wire <= R_ONE_1_4589_wire_constant when (stream_head_buffer(0) /=  '0') else R_ZERO_1_4590_wire_constant;
    -- flow-through select operator MUX_4592_inst
    MUX_4592_wire <= R_ZERO_1_4587_wire_constant when (AND_u1_u1_4586_wire(0) /=  '0') else MUX_4591_wire;
    -- flow-through select operator MUX_4594_inst
    MUX_4594_wire <= MUX_4592_wire when (EQ_u2_u1_4583_wire(0) /=  '0') else konst_4593_wire_constant;
    -- flow-through select operator MUX_4605_inst
    MUX_4605_wire <= R_ONE_1_4603_wire_constant when (thread_head_buffer(0) /=  '0') else R_ZERO_1_4604_wire_constant;
    -- flow-through select operator MUX_4606_inst
    MUX_4606_wire <= R_ZERO_1_4601_wire_constant when (AND_u1_u1_4600_wire(0) /=  '0') else MUX_4605_wire;
    -- flow-through select operator MUX_4608_inst
    MUX_4608_wire <= MUX_4606_wire when (EQ_u2_u1_4597_wire(0) /=  '0') else konst_4607_wire_constant;
    -- flow through binary operator AND_u1_u1_4519_inst
    AND_u1_u1_4519_wire <= (stream_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_4523_inst
    AND_u1_u1_4523_wire <= (stream_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_4542_inst
    AND_u1_u1_4542_wire <= (thread_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_4546_inst
    AND_u1_u1_4546_wire <= (thread_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_4586_inst
    AND_u1_u1_4586_wire <= (stream_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_4600_inst
    AND_u1_u1_4600_wire <= (thread_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_4611_inst
    instr_can_execute_buffer <= (valid_bit_buffer and OR_u1_u1_4610_wire);
    -- flow through binary operator EQ_u2_u1_4480_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_4479_wire_constant, tmp_var);
      EQ_u2_u1_4480_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4496_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_4495_wire_constant, tmp_var);
      EQ_u2_u1_4496_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4513_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_4512_wire_constant, tmp_var);
      EQ_u2_u1_4513_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4536_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_4535_wire_constant, tmp_var);
      EQ_u2_u1_4536_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4564_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_4563_wire_constant, tmp_var);
      EQ_u2_u1_4564_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4573_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_4572_wire_constant, tmp_var);
      EQ_u2_u1_4573_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4583_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_4582_wire_constant, tmp_var);
      EQ_u2_u1_4583_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_4597_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_4596_wire_constant, tmp_var);
      EQ_u2_u1_4597_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_4482_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_4482_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4498_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_4498_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4515_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_4515_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4538_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_4538_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_4580_inst
    OR_u1_u1_4580_wire <= (MUX_4570_wire or MUX_4579_wire);
    -- flow through binary operator OR_u1_u1_4609_inst
    OR_u1_u1_4609_wire <= (MUX_4594_wire or MUX_4608_wire);
    -- flow through binary operator OR_u1_u1_4610_inst
    OR_u1_u1_4610_wire <= (OR_u1_u1_4580_wire or OR_u1_u1_4609_wire);
    -- flow through binary operator OR_u2_u2_4510_inst
    OR_u2_u2_4510_wire <= (MUX_4493_wire or MUX_4509_wire);
    -- flow through binary operator OR_u2_u2_4557_inst
    OR_u2_u2_4557_wire <= (MUX_4533_wire or MUX_4556_wire);
    -- flow through binary operator OR_u2_u2_4558_inst
    next_wb_state_buffer <= (OR_u2_u2_4510_wire or OR_u2_u2_4557_wire);
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
library teu_iretire;
use teu_iretire.iretire_global_package.all;
entity iretire is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    AJIT_to_ENV_logger_pipe_read_data: out std_logic_vector(31 downto 0);
    AJIT_to_ENV_logger_pipe_read_req : in std_logic_vector(0 downto 0);
    AJIT_to_ENV_logger_pipe_read_ack : out std_logic_vector(0 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data: out std_logic_vector(9 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req : in std_logic_vector(0 downto 0);
    CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_data: in std_logic_vector(153 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_write_data: in std_logic_vector(50 downto 0);
    teu_fpunit_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_fpunit_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_read_data: out std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_write_data: in std_logic_vector(95 downto 0);
    teu_iunit_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_write_data: in std_logic_vector(53 downto 0);
    teu_loadstore_to_iretire_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_iretire_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_to_ccu_pipe_read_data: out std_logic_vector(225 downto 0);
    teu_to_ccu_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_to_ccu_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture iretire_arch  of iretire is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module calculate_performance_counter_update
  -- declarations related to module decode_thread_control_word
  -- declarations related to module extract_hit_info_etc
  -- declarations related to module iretire_daemon
  component iretire_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      noblock_teu_stream_corrector_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iretire_pipe_read_data : in   std_logic_vector(153 downto 0);
      teu_fpunit_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_fpunit_to_iretire_pipe_read_data : in   std_logic_vector(50 downto 0);
      teu_iunit_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_read_data : in   std_logic_vector(95 downto 0);
      teu_loadstore_to_iretire_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_loadstore_to_iretire_pipe_read_data : in   std_logic_vector(53 downto 0);
      teu_iretire_instruction_log_pipe : in std_logic_vector(31 downto 0);
      teu_iretire_skipped_instruction_log_pipe : in std_logic_vector(31 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req : out  std_logic_vector(0 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data : out  std_logic_vector(9 downto 0);
      teu_to_ccu_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_to_ccu_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_to_ccu_pipe_write_data : out  std_logic_vector(225 downto 0);
      teu_iretire_instruction_log_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iretire_instruction_log_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iretire_instruction_log_pipe_pipe_write_data : out  std_logic_vector(31 downto 0);
      teu_iretire_skipped_instruction_log_pipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iretire_skipped_instruction_log_pipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iretire_skipped_instruction_log_pipe_pipe_write_data : out  std_logic_vector(31 downto 0);
      teu_iretire_to_idispatch_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_data : out  std_logic_vector(0 downto 0);
      send_instruction_log_call_reqs : out  std_logic_vector(0 downto 0);
      send_instruction_log_call_acks : in   std_logic_vector(0 downto 0);
      send_instruction_log_call_data : out  std_logic_vector(127 downto 0);
      send_instruction_log_call_tag  :  out  std_logic_vector(0 downto 0);
      send_instruction_log_return_reqs : out  std_logic_vector(0 downto 0);
      send_instruction_log_return_acks : in   std_logic_vector(0 downto 0);
      send_instruction_log_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module iretire_daemon
  signal iretire_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal iretire_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal iretire_daemon_start_req : std_logic;
  signal iretire_daemon_start_ack : std_logic;
  signal iretire_daemon_fin_req   : std_logic;
  signal iretire_daemon_fin_ack : std_logic;
  -- declarations related to module process_exception
  -- declarations related to module send_instruction_log
  component send_instruction_log is -- 
    generic (tag_length : integer); 
    port ( -- 
      iu_signature_to_ccu : in  std_logic_vector(31 downto 0);
      fp_signature_to_ccu : in  std_logic_vector(31 downto 0);
      ls_store_signature : in  std_logic_vector(31 downto 0);
      pc : in  std_logic_vector(31 downto 0);
      AJIT_to_ENV_logger_pipe_write_req : out  std_logic_vector(0 downto 0);
      AJIT_to_ENV_logger_pipe_write_ack : in   std_logic_vector(0 downto 0);
      AJIT_to_ENV_logger_pipe_write_data : out  std_logic_vector(31 downto 0);
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
  -- argument signals for module send_instruction_log
  signal send_instruction_log_iu_signature_to_ccu :  std_logic_vector(31 downto 0);
  signal send_instruction_log_fp_signature_to_ccu :  std_logic_vector(31 downto 0);
  signal send_instruction_log_ls_store_signature :  std_logic_vector(31 downto 0);
  signal send_instruction_log_pc :  std_logic_vector(31 downto 0);
  signal send_instruction_log_in_args    : std_logic_vector(127 downto 0);
  signal send_instruction_log_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal send_instruction_log_tag_out   : std_logic_vector(1 downto 0);
  signal send_instruction_log_start_req : std_logic;
  signal send_instruction_log_start_ack : std_logic;
  signal send_instruction_log_fin_req   : std_logic;
  signal send_instruction_log_fin_ack : std_logic;
  -- caller side aggregated signals for module send_instruction_log
  signal send_instruction_log_call_reqs: std_logic_vector(0 downto 0);
  signal send_instruction_log_call_acks: std_logic_vector(0 downto 0);
  signal send_instruction_log_return_reqs: std_logic_vector(0 downto 0);
  signal send_instruction_log_return_acks: std_logic_vector(0 downto 0);
  signal send_instruction_log_call_data: std_logic_vector(127 downto 0);
  signal send_instruction_log_call_tag: std_logic_vector(0 downto 0);
  signal send_instruction_log_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module writeback_fsm
  -- aggregate signals for write to pipe AJIT_to_ENV_logger
  signal AJIT_to_ENV_logger_pipe_write_data: std_logic_vector(31 downto 0);
  signal AJIT_to_ENV_logger_pipe_write_req: std_logic_vector(0 downto 0);
  signal AJIT_to_ENV_logger_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe CPU_to_PERFORMANCE_COUNTER_UPDATE
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data: std_logic_vector(9 downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req: std_logic_vector(0 downto 0);
  signal CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_stream_corrector_to_iretire
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_data: std_logic_vector(153 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iretire_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_fpunit_to_iretire
  signal teu_fpunit_to_iretire_pipe_read_data: std_logic_vector(50 downto 0);
  signal teu_fpunit_to_iretire_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_to_iretire_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_iretire_instruction_log_pipe
  signal teu_iretire_instruction_log_pipe_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_iretire_instruction_log_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iretire_instruction_log_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe teu_iretire_instruction_log_pipe
  signal teu_iretire_instruction_log_pipe: std_logic_vector(31 downto 0);
  -- aggregate signals for write to pipe teu_iretire_skipped_instruction_log_pipe
  signal teu_iretire_skipped_instruction_log_pipe_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_iretire_skipped_instruction_log_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iretire_skipped_instruction_log_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- signal decl. for read from internal signal pipe teu_iretire_skipped_instruction_log_pipe
  signal teu_iretire_skipped_instruction_log_pipe: std_logic_vector(31 downto 0);
  -- aggregate signals for write to pipe teu_iretire_to_idispatch
  signal teu_iretire_to_idispatch_pipe_write_data: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iunit_to_iretire
  signal teu_iunit_to_iretire_pipe_read_data: std_logic_vector(95 downto 0);
  signal teu_iunit_to_iretire_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iunit_to_iretire_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_loadstore_to_iretire
  signal teu_loadstore_to_iretire_pipe_read_data: std_logic_vector(53 downto 0);
  signal teu_loadstore_to_iretire_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_iretire_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_to_ccu
  signal teu_to_ccu_pipe_write_data: std_logic_vector(225 downto 0);
  signal teu_to_ccu_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_to_ccu_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module iretire_daemon
  iretire_daemon_instance:iretire_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => iretire_daemon_start_req,
      start_ack => iretire_daemon_start_ack,
      fin_req => iretire_daemon_fin_req,
      fin_ack => iretire_daemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_teu_stream_corrector_to_iretire_pipe_read_req => noblock_teu_stream_corrector_to_iretire_pipe_read_req(0 downto 0),
      noblock_teu_stream_corrector_to_iretire_pipe_read_ack => noblock_teu_stream_corrector_to_iretire_pipe_read_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iretire_pipe_read_data => noblock_teu_stream_corrector_to_iretire_pipe_read_data(153 downto 0),
      teu_fpunit_to_iretire_pipe_read_req => teu_fpunit_to_iretire_pipe_read_req(0 downto 0),
      teu_fpunit_to_iretire_pipe_read_ack => teu_fpunit_to_iretire_pipe_read_ack(0 downto 0),
      teu_fpunit_to_iretire_pipe_read_data => teu_fpunit_to_iretire_pipe_read_data(50 downto 0),
      teu_iretire_instruction_log_pipe => teu_iretire_instruction_log_pipe,
      teu_iretire_skipped_instruction_log_pipe => teu_iretire_skipped_instruction_log_pipe,
      teu_iunit_to_iretire_pipe_read_req => teu_iunit_to_iretire_pipe_read_req(0 downto 0),
      teu_iunit_to_iretire_pipe_read_ack => teu_iunit_to_iretire_pipe_read_ack(0 downto 0),
      teu_iunit_to_iretire_pipe_read_data => teu_iunit_to_iretire_pipe_read_data(95 downto 0),
      teu_loadstore_to_iretire_pipe_read_req => teu_loadstore_to_iretire_pipe_read_req(0 downto 0),
      teu_loadstore_to_iretire_pipe_read_ack => teu_loadstore_to_iretire_pipe_read_ack(0 downto 0),
      teu_loadstore_to_iretire_pipe_read_data => teu_loadstore_to_iretire_pipe_read_data(53 downto 0),
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req(0 downto 0),
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack(0 downto 0),
      CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data(9 downto 0),
      teu_to_ccu_pipe_write_req => teu_to_ccu_pipe_write_req(0 downto 0),
      teu_to_ccu_pipe_write_ack => teu_to_ccu_pipe_write_ack(0 downto 0),
      teu_to_ccu_pipe_write_data => teu_to_ccu_pipe_write_data(225 downto 0),
      teu_iretire_instruction_log_pipe_pipe_write_req => teu_iretire_instruction_log_pipe_pipe_write_req(0 downto 0),
      teu_iretire_instruction_log_pipe_pipe_write_ack => teu_iretire_instruction_log_pipe_pipe_write_ack(0 downto 0),
      teu_iretire_instruction_log_pipe_pipe_write_data => teu_iretire_instruction_log_pipe_pipe_write_data(31 downto 0),
      teu_iretire_skipped_instruction_log_pipe_pipe_write_req => teu_iretire_skipped_instruction_log_pipe_pipe_write_req(0 downto 0),
      teu_iretire_skipped_instruction_log_pipe_pipe_write_ack => teu_iretire_skipped_instruction_log_pipe_pipe_write_ack(0 downto 0),
      teu_iretire_skipped_instruction_log_pipe_pipe_write_data => teu_iretire_skipped_instruction_log_pipe_pipe_write_data(31 downto 0),
      teu_iretire_to_idispatch_pipe_write_req => teu_iretire_to_idispatch_pipe_write_req(0 downto 0),
      teu_iretire_to_idispatch_pipe_write_ack => teu_iretire_to_idispatch_pipe_write_ack(0 downto 0),
      teu_iretire_to_idispatch_pipe_write_data => teu_iretire_to_idispatch_pipe_write_data(0 downto 0),
      send_instruction_log_call_reqs => send_instruction_log_call_reqs(0 downto 0),
      send_instruction_log_call_acks => send_instruction_log_call_acks(0 downto 0),
      send_instruction_log_call_data => send_instruction_log_call_data(127 downto 0),
      send_instruction_log_call_tag => send_instruction_log_call_tag(0 downto 0),
      send_instruction_log_return_reqs => send_instruction_log_return_reqs(0 downto 0),
      send_instruction_log_return_acks => send_instruction_log_return_acks(0 downto 0),
      send_instruction_log_return_tag => send_instruction_log_return_tag(0 downto 0),
      tag_in => iretire_daemon_tag_in,
      tag_out => iretire_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  iretire_daemon_tag_in <= (others => '0');
  iretire_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => iretire_daemon_start_req, start_ack => iretire_daemon_start_ack,  fin_req => iretire_daemon_fin_req,  fin_ack => iretire_daemon_fin_ack);
  -- module send_instruction_log
  send_instruction_log_iu_signature_to_ccu <= send_instruction_log_in_args(127 downto 96);
  send_instruction_log_fp_signature_to_ccu <= send_instruction_log_in_args(95 downto 64);
  send_instruction_log_ls_store_signature <= send_instruction_log_in_args(63 downto 32);
  send_instruction_log_pc <= send_instruction_log_in_args(31 downto 0);
  -- call arbiter for module send_instruction_log
  send_instruction_log_arbiter: SplitCallArbiterNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoOutargs", num_reqs => 1,
      call_data_width => 128,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => send_instruction_log_call_reqs,
      call_acks => send_instruction_log_call_acks,
      return_reqs => send_instruction_log_return_reqs,
      return_acks => send_instruction_log_return_acks,
      call_data  => send_instruction_log_call_data,
      call_tag  => send_instruction_log_call_tag,
      return_tag  => send_instruction_log_return_tag,
      call_mtag => send_instruction_log_tag_in,
      return_mtag => send_instruction_log_tag_out,
      call_mreq => send_instruction_log_start_req,
      call_mack => send_instruction_log_start_ack,
      return_mreq => send_instruction_log_fin_req,
      return_mack => send_instruction_log_fin_ack,
      call_mdata => send_instruction_log_in_args,
      clk => clk, 
      reset => reset --
    ); --
  send_instruction_log_instance:send_instruction_log-- 
    generic map(tag_length => 2)
    port map(-- 
      iu_signature_to_ccu => send_instruction_log_iu_signature_to_ccu,
      fp_signature_to_ccu => send_instruction_log_fp_signature_to_ccu,
      ls_store_signature => send_instruction_log_ls_store_signature,
      pc => send_instruction_log_pc,
      start_req => send_instruction_log_start_req,
      start_ack => send_instruction_log_start_ack,
      fin_req => send_instruction_log_fin_req,
      fin_ack => send_instruction_log_fin_ack,
      clk => clk,
      reset => reset,
      AJIT_to_ENV_logger_pipe_write_req => AJIT_to_ENV_logger_pipe_write_req(0 downto 0),
      AJIT_to_ENV_logger_pipe_write_ack => AJIT_to_ENV_logger_pipe_write_ack(0 downto 0),
      AJIT_to_ENV_logger_pipe_write_data => AJIT_to_ENV_logger_pipe_write_data(31 downto 0),
      tag_in => send_instruction_log_tag_in,
      tag_out => send_instruction_log_tag_out-- 
    ); -- 
  AJIT_to_ENV_logger_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe AJIT_to_ENV_logger",
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
      read_req => AJIT_to_ENV_logger_pipe_read_req,
      read_ack => AJIT_to_ENV_logger_pipe_read_ack,
      read_data => AJIT_to_ENV_logger_pipe_read_data,
      write_req => AJIT_to_ENV_logger_pipe_write_req,
      write_ack => AJIT_to_ENV_logger_pipe_write_ack,
      write_data => AJIT_to_ENV_logger_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  CPU_to_PERFORMANCE_COUNTER_UPDATE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe CPU_to_PERFORMANCE_COUNTER_UPDATE",
      num_reads => 1,
      num_writes => 1,
      data_width => 10,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_req,
      read_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_ack,
      read_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_read_data,
      write_req => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_req,
      write_ack => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_ack,
      write_data => CPU_to_PERFORMANCE_COUNTER_UPDATE_pipe_write_data,
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
  teu_fpunit_to_iretire_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 51,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_fpunit_to_iretire_pipe_read_req,
      read_ack => teu_fpunit_to_iretire_pipe_read_ack,
      read_data => teu_fpunit_to_iretire_pipe_read_data,
      write_req => teu_fpunit_to_iretire_pipe_write_req,
      write_ack => teu_fpunit_to_iretire_pipe_write_ack,
      write_data => teu_fpunit_to_iretire_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iretire_instruction_log_pipe_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe teu_iretire_instruction_log_pipe",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => teu_iretire_instruction_log_pipe,
      write_req => teu_iretire_instruction_log_pipe_pipe_write_req,
      write_ack => teu_iretire_instruction_log_pipe_pipe_write_ack,
      write_data => teu_iretire_instruction_log_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iretire_skipped_instruction_log_pipe_Signal: SignalBase -- 
    generic map( -- 
      name => "pipe teu_iretire_skipped_instruction_log_pipe",
      volatile_flag => false,
      num_writes => 1,
      data_width => 32 --
    ) 
    port map( -- 
      read_data => teu_iretire_skipped_instruction_log_pipe,
      write_req => teu_iretire_skipped_instruction_log_pipe_pipe_write_req,
      write_ack => teu_iretire_skipped_instruction_log_pipe_pipe_write_ack,
      write_data => teu_iretire_skipped_instruction_log_pipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iretire_to_idispatch_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iretire_to_idispatch",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => true,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iretire_to_idispatch_pipe_read_req,
      read_ack => teu_iretire_to_idispatch_pipe_read_ack,
      read_data => teu_iretire_to_idispatch_pipe_read_data,
      write_req => teu_iretire_to_idispatch_pipe_write_req,
      write_ack => teu_iretire_to_idispatch_pipe_write_ack,
      write_data => teu_iretire_to_idispatch_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  teu_iunit_to_iretire_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_iunit_to_iretire",
      num_reads => 1,
      num_writes => 1,
      data_width => 96,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_iunit_to_iretire_pipe_read_req,
      read_ack => teu_iunit_to_iretire_pipe_read_ack,
      read_data => teu_iunit_to_iretire_pipe_read_data,
      write_req => teu_iunit_to_iretire_pipe_write_req,
      write_ack => teu_iunit_to_iretire_pipe_write_ack,
      write_data => teu_iunit_to_iretire_pipe_write_data,
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
  teu_to_ccu_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu",
      num_reads => 1,
      num_writes => 1,
      data_width => 226,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_to_ccu_pipe_read_req,
      read_ack => teu_to_ccu_pipe_read_ack,
      read_data => teu_to_ccu_pipe_read_data,
      write_req => teu_to_ccu_pipe_write_req,
      write_ack => teu_to_ccu_pipe_write_ack,
      write_data => teu_to_ccu_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end iretire_arch;
