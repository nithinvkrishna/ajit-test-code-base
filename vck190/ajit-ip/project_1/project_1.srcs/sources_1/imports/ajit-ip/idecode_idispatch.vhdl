-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package idecode_idispatch_global_package is -- 
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
  constant IID_RESET : std_logic_vector(1 downto 0) := "00";
  constant IID_RUN : std_logic_vector(1 downto 0) := "01";
  constant IID_WAIT_NEW_STREAM : std_logic_vector(1 downto 0) := "10";
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
  component idecode_idispatch is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      debug_bp_0: in std_logic_vector(31 downto 0);
      debug_bp_1: in std_logic_vector(31 downto 0);
      debug_bp_2: in std_logic_vector(31 downto 0);
      debug_bp_3: in std_logic_vector(31 downto 0);
      debug_dbg_interrupt: in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_data: out std_logic_vector(147 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data: out std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_data: out std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_data: out std_logic_vector(125 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_data: in std_logic_vector(147 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_idispatch_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_data: out std_logic_vector(149 downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_idispatch_to_iunit_exec_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_data: out std_logic_vector(204 downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_data: in std_logic_vector(223 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_data: in std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_iretire_to_idispatch_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_annul_status: in std_logic_vector(15 downto 0)); -- 
    -- 
  end component;
  -- 
end package idecode_idispatch_global_package;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity analyze_sc_annul_status_Volatile is -- 
  port ( -- 
    thread_head : in  std_logic_vector(0 downto 0);
    stream_head : in  std_logic_vector(0 downto 0);
    thread_id : in  std_logic_vector(3 downto 0);
    stream_id : in  std_logic_vector(1 downto 0);
    sc_annul_status : in  std_logic_vector(15 downto 0);
    sc_annul_apply : out  std_logic_vector(0 downto 0);
    sc_annul_value : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity analyze_sc_annul_status_Volatile;
architecture analyze_sc_annul_status_Volatile_arch of analyze_sc_annul_status_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(24-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal thread_head_buffer :  std_logic_vector(0 downto 0);
  signal stream_head_buffer :  std_logic_vector(0 downto 0);
  signal thread_id_buffer :  std_logic_vector(3 downto 0);
  signal stream_id_buffer :  std_logic_vector(1 downto 0);
  signal sc_annul_status_buffer :  std_logic_vector(15 downto 0);
  -- output port buffer signals
  signal sc_annul_apply_buffer :  std_logic_vector(0 downto 0);
  signal sc_annul_value_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  thread_head_buffer <= thread_head;
  stream_head_buffer <= stream_head;
  thread_id_buffer <= thread_id;
  stream_id_buffer <= stream_id;
  sc_annul_status_buffer <= sc_annul_status;
  -- output handling  -------------------------------------------------------
  sc_annul_apply <= sc_annul_apply_buffer;
  sc_annul_value <= sc_annul_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u2_u2_1561_wire : std_logic_vector(1 downto 0);
    signal AND_u1_u1_1554_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1557_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1566_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1562_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1565_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1556_wire : std_logic_vector(0 downto 0);
    signal annul_next_1538 : std_logic_vector(0 downto 0);
    signal is_cti_1534 : std_logic_vector(0 downto 0);
    signal konst_1560_wire_constant : std_logic_vector(1 downto 0);
    signal last_was_cti_1530 : std_logic_vector(0 downto 0);
    signal sid_1546 : std_logic_vector(1 downto 0);
    signal slot_id_1550 : std_logic_vector(5 downto 0);
    signal terminates_stream_1526 : std_logic_vector(0 downto 0);
    signal tid_1542 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    konst_1560_wire_constant <= "01";
    -- flow-through slice operator slice_1525_inst
    terminates_stream_1526 <= sc_annul_status_buffer(15 downto 15);
    -- flow-through slice operator slice_1529_inst
    last_was_cti_1530 <= sc_annul_status_buffer(14 downto 14);
    -- flow-through slice operator slice_1533_inst
    is_cti_1534 <= sc_annul_status_buffer(13 downto 13);
    -- flow-through slice operator slice_1537_inst
    annul_next_1538 <= sc_annul_status_buffer(12 downto 12);
    -- flow-through slice operator slice_1541_inst
    tid_1542 <= sc_annul_status_buffer(11 downto 8);
    -- flow-through slice operator slice_1545_inst
    sid_1546 <= sc_annul_status_buffer(7 downto 6);
    -- flow-through slice operator slice_1549_inst
    slot_id_1550 <= sc_annul_status_buffer(5 downto 0);
    -- interlock W_sc_annul_value_1569_inst
    process(annul_next_1538) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := annul_next_1538(0 downto 0);
      sc_annul_value_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator ADD_u2_u2_1561_inst
    ADD_u2_u2_1561_wire <= std_logic_vector(unsigned(sid_1546) + unsigned(konst_1560_wire_constant));
    -- flow through binary operator AND_u1_u1_1554_inst
    AND_u1_u1_1554_wire <= (terminates_stream_1526 and stream_head_buffer);
    -- flow through binary operator AND_u1_u1_1557_inst
    AND_u1_u1_1557_wire <= (AND_u1_u1_1554_wire and NOT_u1_u1_1556_wire);
    -- flow through binary operator AND_u1_u1_1566_inst
    AND_u1_u1_1566_wire <= (EQ_u2_u1_1562_wire and EQ_u4_u1_1565_wire);
    -- flow through binary operator AND_u1_u1_1567_inst
    sc_annul_apply_buffer <= (AND_u1_u1_1557_wire and AND_u1_u1_1566_wire);
    -- flow through binary operator EQ_u2_u1_1562_inst
    process(stream_id_buffer, ADD_u2_u2_1561_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(stream_id_buffer, ADD_u2_u2_1561_wire, tmp_var);
      EQ_u2_u1_1562_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1565_inst
    process(thread_id_buffer, tid_1542) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(thread_id_buffer, tid_1542, tmp_var);
      EQ_u4_u1_1565_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1556_inst
    process(thread_head_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", thread_head_buffer, tmp_var);
      NOT_u1_u1_1556_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end analyze_sc_annul_status_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity debug_calculate_debug_bp_hits_Volatile is -- 
  port ( -- 
    raw_intr_in : in  std_logic_vector(0 downto 0);
    debug_mode_selected : in  std_logic_vector(0 downto 0);
    bp0_in : in  std_logic_vector(31 downto 0);
    bp1_in : in  std_logic_vector(31 downto 0);
    bp2_in : in  std_logic_vector(31 downto 0);
    bp3_in : in  std_logic_vector(31 downto 0);
    pc_from_dispatch : in  std_logic_vector(31 downto 0);
    debug_bp_reg_id : out  std_logic_vector(1 downto 0);
    debug_bp_hit : out  std_logic_vector(0 downto 0);
    intr_out : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity debug_calculate_debug_bp_hits_Volatile;
architecture debug_calculate_debug_bp_hits_Volatile_arch of debug_calculate_debug_bp_hits_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(162-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal raw_intr_in_buffer :  std_logic_vector(0 downto 0);
  signal debug_mode_selected_buffer :  std_logic_vector(0 downto 0);
  signal bp0_in_buffer :  std_logic_vector(31 downto 0);
  signal bp1_in_buffer :  std_logic_vector(31 downto 0);
  signal bp2_in_buffer :  std_logic_vector(31 downto 0);
  signal bp3_in_buffer :  std_logic_vector(31 downto 0);
  signal pc_from_dispatch_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal debug_bp_reg_id_buffer :  std_logic_vector(1 downto 0);
  signal debug_bp_hit_buffer :  std_logic_vector(0 downto 0);
  signal intr_out_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  raw_intr_in_buffer <= raw_intr_in;
  debug_mode_selected_buffer <= debug_mode_selected;
  bp0_in_buffer <= bp0_in;
  bp1_in_buffer <= bp1_in;
  bp2_in_buffer <= bp2_in;
  bp3_in_buffer <= bp3_in;
  pc_from_dispatch_buffer <= pc_from_dispatch;
  -- output handling  -------------------------------------------------------
  debug_bp_reg_id <= debug_bp_reg_id_buffer;
  debug_bp_hit <= debug_bp_hit_buffer;
  intr_out <= intr_out_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1648_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1657_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1666_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1675_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1651_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1660_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1669_wire : std_logic_vector(0 downto 0);
    signal EQ_u30_u1_1678_wire : std_logic_vector(0 downto 0);
    signal MUX_1705_wire : std_logic_vector(1 downto 0);
    signal MUX_1706_wire : std_logic_vector(1 downto 0);
    signal MUX_1707_wire : std_logic_vector(1 downto 0);
    signal OR_u1_u1_1689_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1692_wire : std_logic_vector(0 downto 0);
    signal R_ONE_2_1699_wire_constant : std_logic_vector(1 downto 0);
    signal R_THREE_2_1703_wire_constant : std_logic_vector(1 downto 0);
    signal R_TWO_2_1701_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_2_1697_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_2_1704_wire_constant : std_logic_vector(1 downto 0);
    signal bp0_addr_31_2_1612 : std_logic_vector(29 downto 0);
    signal bp0_hit_1653 : std_logic_vector(0 downto 0);
    signal bp0_valid_1616 : std_logic_vector(0 downto 0);
    signal bp1_addr_31_2_1620 : std_logic_vector(29 downto 0);
    signal bp1_hit_1662 : std_logic_vector(0 downto 0);
    signal bp1_valid_1624 : std_logic_vector(0 downto 0);
    signal bp2_addr_31_2_1628 : std_logic_vector(29 downto 0);
    signal bp2_hit_1671 : std_logic_vector(0 downto 0);
    signal bp2_valid_1632 : std_logic_vector(0 downto 0);
    signal bp3_addr_31_2_1636 : std_logic_vector(29 downto 0);
    signal bp3_hit_1680 : std_logic_vector(0 downto 0);
    signal bp3_valid_1640 : std_logic_vector(0 downto 0);
    signal pc_31_2_1644 : std_logic_vector(29 downto 0);
    -- 
  begin -- 
    R_ONE_2_1699_wire_constant <= "01";
    R_THREE_2_1703_wire_constant <= "11";
    R_TWO_2_1701_wire_constant <= "10";
    R_ZERO_2_1697_wire_constant <= "00";
    R_ZERO_2_1704_wire_constant <= "00";
    -- flow-through select operator MUX_1705_inst
    MUX_1705_wire <= R_THREE_2_1703_wire_constant when (bp3_hit_1680(0) /=  '0') else R_ZERO_2_1704_wire_constant;
    -- flow-through select operator MUX_1706_inst
    MUX_1706_wire <= R_TWO_2_1701_wire_constant when (bp2_hit_1671(0) /=  '0') else MUX_1705_wire;
    -- flow-through select operator MUX_1707_inst
    MUX_1707_wire <= R_ONE_2_1699_wire_constant when (bp1_hit_1662(0) /=  '0') else MUX_1706_wire;
    -- flow-through select operator MUX_1708_inst
    debug_bp_reg_id_buffer <= R_ZERO_2_1697_wire_constant when (bp0_hit_1653(0) /=  '0') else MUX_1707_wire;
    -- flow-through slice operator slice_1611_inst
    bp0_addr_31_2_1612 <= bp0_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1615_inst
    bp0_valid_1616 <= bp0_in_buffer(0 downto 0);
    -- flow-through slice operator slice_1619_inst
    bp1_addr_31_2_1620 <= bp1_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1623_inst
    bp1_valid_1624 <= bp1_in_buffer(0 downto 0);
    -- flow-through slice operator slice_1627_inst
    bp2_addr_31_2_1628 <= bp2_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1631_inst
    bp2_valid_1632 <= bp2_in_buffer(0 downto 0);
    -- flow-through slice operator slice_1635_inst
    bp3_addr_31_2_1636 <= bp3_in_buffer(31 downto 2);
    -- flow-through slice operator slice_1639_inst
    bp3_valid_1640 <= bp3_in_buffer(0 downto 0);
    -- flow-through slice operator slice_1643_inst
    pc_31_2_1644 <= pc_from_dispatch_buffer(31 downto 2);
    -- flow through binary operator AND_u1_u1_1648_inst
    AND_u1_u1_1648_wire <= (debug_mode_selected_buffer and bp0_valid_1616);
    -- flow through binary operator AND_u1_u1_1652_inst
    bp0_hit_1653 <= (AND_u1_u1_1648_wire and EQ_u30_u1_1651_wire);
    -- flow through binary operator AND_u1_u1_1657_inst
    AND_u1_u1_1657_wire <= (debug_mode_selected_buffer and bp1_valid_1624);
    -- flow through binary operator AND_u1_u1_1661_inst
    bp1_hit_1662 <= (AND_u1_u1_1657_wire and EQ_u30_u1_1660_wire);
    -- flow through binary operator AND_u1_u1_1666_inst
    AND_u1_u1_1666_wire <= (debug_mode_selected_buffer and bp2_valid_1632);
    -- flow through binary operator AND_u1_u1_1670_inst
    bp2_hit_1671 <= (AND_u1_u1_1666_wire and EQ_u30_u1_1669_wire);
    -- flow through binary operator AND_u1_u1_1675_inst
    AND_u1_u1_1675_wire <= (debug_mode_selected_buffer and bp3_valid_1640);
    -- flow through binary operator AND_u1_u1_1679_inst
    bp3_hit_1680 <= (AND_u1_u1_1675_wire and EQ_u30_u1_1678_wire);
    -- flow through binary operator AND_u1_u1_1684_inst
    intr_out_buffer <= (raw_intr_in_buffer and debug_mode_selected_buffer);
    -- flow through binary operator EQ_u30_u1_1651_inst
    process(pc_31_2_1644, bp0_addr_31_2_1612) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(pc_31_2_1644, bp0_addr_31_2_1612, tmp_var);
      EQ_u30_u1_1651_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1660_inst
    process(pc_31_2_1644, bp1_addr_31_2_1620) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(pc_31_2_1644, bp1_addr_31_2_1620, tmp_var);
      EQ_u30_u1_1660_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1669_inst
    process(pc_31_2_1644, bp2_addr_31_2_1628) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(pc_31_2_1644, bp2_addr_31_2_1628, tmp_var);
      EQ_u30_u1_1669_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u30_u1_1678_inst
    process(pc_31_2_1644, bp3_addr_31_2_1636) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(pc_31_2_1644, bp3_addr_31_2_1636, tmp_var);
      EQ_u30_u1_1678_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_1689_inst
    OR_u1_u1_1689_wire <= (bp0_hit_1653 or bp1_hit_1662);
    -- flow through binary operator OR_u1_u1_1692_inst
    OR_u1_u1_1692_wire <= (bp2_hit_1671 or bp3_hit_1680);
    -- flow through binary operator OR_u1_u1_1693_inst
    debug_bp_hit_buffer <= (OR_u1_u1_1689_wire or OR_u1_u1_1692_wire);
    -- 
  end Block; -- data_path
  -- 
end debug_calculate_debug_bp_hits_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_alu_ispec_Volatile is -- 
  port ( -- 
    ispec : in  std_logic_vector(23 downto 0);
    is_add : out  std_logic_vector(0 downto 0);
    is_sub : out  std_logic_vector(0 downto 0);
    is_mul : out  std_logic_vector(0 downto 0);
    is_div : out  std_logic_vector(0 downto 0);
    signed_mul_div : out  std_logic_vector(0 downto 0);
    is_and : out  std_logic_vector(0 downto 0);
    is_or : out  std_logic_vector(0 downto 0);
    is_xor : out  std_logic_vector(0 downto 0);
    is_xnor : out  std_logic_vector(0 downto 0);
    is_sll : out  std_logic_vector(0 downto 0);
    is_srl : out  std_logic_vector(0 downto 0);
    is_sra : out  std_logic_vector(0 downto 0);
    negate_second_operand : out  std_logic_vector(0 downto 0);
    with_carry : out  std_logic_vector(0 downto 0);
    set_cc : out  std_logic_vector(0 downto 0);
    tagged_alu_op : out  std_logic_vector(0 downto 0);
    trap_on_overflow : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_alu_ispec_Volatile;
architecture decode_alu_ispec_Volatile_arch of decode_alu_ispec_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(24-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ispec_buffer :  std_logic_vector(23 downto 0);
  -- output port buffer signals
  signal is_add_buffer :  std_logic_vector(0 downto 0);
  signal is_sub_buffer :  std_logic_vector(0 downto 0);
  signal is_mul_buffer :  std_logic_vector(0 downto 0);
  signal is_div_buffer :  std_logic_vector(0 downto 0);
  signal signed_mul_div_buffer :  std_logic_vector(0 downto 0);
  signal is_and_buffer :  std_logic_vector(0 downto 0);
  signal is_or_buffer :  std_logic_vector(0 downto 0);
  signal is_xor_buffer :  std_logic_vector(0 downto 0);
  signal is_xnor_buffer :  std_logic_vector(0 downto 0);
  signal is_sll_buffer :  std_logic_vector(0 downto 0);
  signal is_srl_buffer :  std_logic_vector(0 downto 0);
  signal is_sra_buffer :  std_logic_vector(0 downto 0);
  signal negate_second_operand_buffer :  std_logic_vector(0 downto 0);
  signal with_carry_buffer :  std_logic_vector(0 downto 0);
  signal set_cc_buffer :  std_logic_vector(0 downto 0);
  signal tagged_alu_op_buffer :  std_logic_vector(0 downto 0);
  signal trap_on_overflow_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ispec_buffer <= ispec;
  -- output handling  -------------------------------------------------------
  is_add <= is_add_buffer;
  is_sub <= is_sub_buffer;
  is_mul <= is_mul_buffer;
  is_div <= is_div_buffer;
  signed_mul_div <= signed_mul_div_buffer;
  is_and <= is_and_buffer;
  is_or <= is_or_buffer;
  is_xor <= is_xor_buffer;
  is_xnor <= is_xnor_buffer;
  is_sll <= is_sll_buffer;
  is_srl <= is_srl_buffer;
  is_sra <= is_sra_buffer;
  negate_second_operand <= negate_second_operand_buffer;
  with_carry <= with_carry_buffer;
  set_cc <= set_cc_buffer;
  tagged_alu_op <= tagged_alu_op_buffer;
  trap_on_overflow <= trap_on_overflow_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_2233_inst
    is_add_buffer <= ispec_buffer(16 downto 16);
    -- flow-through slice operator slice_2237_inst
    is_sub_buffer <= ispec_buffer(15 downto 15);
    -- flow-through slice operator slice_2241_inst
    is_mul_buffer <= ispec_buffer(14 downto 14);
    -- flow-through slice operator slice_2245_inst
    is_div_buffer <= ispec_buffer(13 downto 13);
    -- flow-through slice operator slice_2249_inst
    signed_mul_div_buffer <= ispec_buffer(12 downto 12);
    -- flow-through slice operator slice_2253_inst
    is_and_buffer <= ispec_buffer(11 downto 11);
    -- flow-through slice operator slice_2257_inst
    is_or_buffer <= ispec_buffer(10 downto 10);
    -- flow-through slice operator slice_2261_inst
    is_xor_buffer <= ispec_buffer(9 downto 9);
    -- flow-through slice operator slice_2265_inst
    is_xnor_buffer <= ispec_buffer(8 downto 8);
    -- flow-through slice operator slice_2269_inst
    is_sll_buffer <= ispec_buffer(7 downto 7);
    -- flow-through slice operator slice_2273_inst
    is_srl_buffer <= ispec_buffer(6 downto 6);
    -- flow-through slice operator slice_2277_inst
    is_sra_buffer <= ispec_buffer(5 downto 5);
    -- flow-through slice operator slice_2281_inst
    negate_second_operand_buffer <= ispec_buffer(4 downto 4);
    -- flow-through slice operator slice_2285_inst
    with_carry_buffer <= ispec_buffer(3 downto 3);
    -- flow-through slice operator slice_2289_inst
    set_cc_buffer <= ispec_buffer(2 downto 2);
    -- flow-through slice operator slice_2293_inst
    tagged_alu_op_buffer <= ispec_buffer(1 downto 1);
    -- flow-through slice operator slice_2297_inst
    trap_on_overflow_buffer <= ispec_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_alu_ispec_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
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
    signal EQ_u2_u1_2344_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2353_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2362_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2347_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2356_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_2365_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2378_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2387_wire : std_logic_vector(0 downto 0);
    signal MUX_2411_wire : std_logic_vector(31 downto 0);
    signal OR_u1_u1_2375_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2384_wire : std_logic_vector(0 downto 0);
    signal konst_2338_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2343_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2346_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2352_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2355_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2361_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2364_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2377_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2386_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2412_wire_constant : std_logic_vector(31 downto 0);
    signal konst_2417_wire_constant : std_logic_vector(31 downto 0);
    signal op2_2331 : std_logic_vector(2 downto 0);
    signal op3_2335 : std_logic_vector(5 downto 0);
    signal op_2327 : std_logic_vector(1 downto 0);
    signal simm22to32_2406 : std_logic_vector(31 downto 0);
    signal simm30to32_2397 : std_logic_vector(31 downto 0);
    signal slice_2393_wire : std_logic_vector(29 downto 0);
    signal slice_2402_wire : std_logic_vector(21 downto 0);
    signal type_cast_2394_wire : std_logic_vector(29 downto 0);
    signal type_cast_2395_wire : std_logic_vector(31 downto 0);
    signal type_cast_2403_wire : std_logic_vector(21 downto 0);
    signal type_cast_2404_wire : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_2338_wire_constant <= "01";
    konst_2343_wire_constant <= "00";
    konst_2346_wire_constant <= "010";
    konst_2352_wire_constant <= "00";
    konst_2355_wire_constant <= "110";
    konst_2361_wire_constant <= "00";
    konst_2364_wire_constant <= "111";
    konst_2377_wire_constant <= "1000";
    konst_2386_wire_constant <= "0000";
    konst_2412_wire_constant <= "00000000000000000000000000000010";
    konst_2417_wire_constant <= "00000000000000000000000000011101";
    -- flow-through select operator MUX_2411_inst
    MUX_2411_wire <= simm30to32_2397 when (is_call_buffer(0) /=  '0') else simm22to32_2406;
    -- flow-through slice operator slice_2326_inst
    op_2327 <= instr_buffer(31 downto 30);
    -- flow-through slice operator slice_2330_inst
    op2_2331 <= instr_buffer(24 downto 22);
    -- flow-through slice operator slice_2334_inst
    op3_2335 <= instr_buffer(24 downto 19);
    -- flow-through slice operator slice_2370_inst
    cond_buffer <= instr_buffer(28 downto 25);
    -- flow-through slice operator slice_2393_inst
    slice_2393_wire <= instr_buffer(29 downto 0);
    -- flow-through slice operator slice_2402_inst
    slice_2402_wire <= instr_buffer(21 downto 0);
    -- interlock type_cast_2394_inst
    process(slice_2393_wire) -- 
      variable tmp_var : std_logic_vector(29 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 29 downto 0) := slice_2393_wire(29 downto 0);
      type_cast_2394_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_2396_inst
    process(type_cast_2395_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_2395_wire(31 downto 0);
      simm30to32_2397 <= tmp_var; -- 
    end process;
    -- interlock type_cast_2403_inst
    process(slice_2402_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 21 downto 0) := slice_2402_wire(21 downto 0);
      type_cast_2403_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_2405_inst
    process(type_cast_2404_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_2404_wire(31 downto 0);
      simm22to32_2406 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_2348_inst
    is_bicc_buffer <= (EQ_u2_u1_2344_wire and EQ_u3_u1_2347_wire);
    -- flow through binary operator AND_u1_u1_2357_inst
    is_fbfcc_buffer <= (EQ_u2_u1_2353_wire and EQ_u3_u1_2356_wire);
    -- flow through binary operator AND_u1_u1_2366_inst
    is_cbccc_buffer <= (EQ_u2_u1_2362_wire and EQ_u3_u1_2365_wire);
    -- flow through binary operator AND_u1_u1_2379_inst
    is_ba_buffer <= (OR_u1_u1_2375_wire and EQ_u4_u1_2378_wire);
    -- flow through binary operator AND_u1_u1_2388_inst
    is_bn_buffer <= (OR_u1_u1_2384_wire and EQ_u4_u1_2387_wire);
    -- flow through binary operator BITSEL_u32_u1_2418_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_2417_wire_constant, tmp_var);
      cti_annul_flag_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2339_inst
    process(op_2327) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2327, konst_2338_wire_constant, tmp_var);
      is_call_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2344_inst
    process(op_2327) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2327, konst_2343_wire_constant, tmp_var);
      EQ_u2_u1_2344_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2353_inst
    process(op_2327) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2327, konst_2352_wire_constant, tmp_var);
      EQ_u2_u1_2353_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2362_inst
    process(op_2327) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2327, konst_2361_wire_constant, tmp_var);
      EQ_u2_u1_2362_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2347_inst
    process(op2_2331) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2331, konst_2346_wire_constant, tmp_var);
      EQ_u3_u1_2347_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2356_inst
    process(op2_2331) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2331, konst_2355_wire_constant, tmp_var);
      EQ_u3_u1_2356_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_2365_inst
    process(op2_2331) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2331, konst_2364_wire_constant, tmp_var);
      EQ_u3_u1_2365_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2378_inst
    process(cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_buffer, konst_2377_wire_constant, tmp_var);
      EQ_u4_u1_2378_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2387_inst
    process(cond_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_buffer, konst_2386_wire_constant, tmp_var);
      EQ_u4_u1_2387_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_2375_inst
    OR_u1_u1_2375_wire <= (is_bicc_buffer or is_fbfcc_buffer);
    -- flow through binary operator OR_u1_u1_2384_inst
    OR_u1_u1_2384_wire <= (is_bicc_buffer or is_fbfcc_buffer);
    -- flow through binary operator SHL_u32_u32_2413_inst
    process(MUX_2411_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(MUX_2411_wire, konst_2412_wire_constant, tmp_var);
      imm_offset_buffer <= tmp_var; --
    end process;
    -- unary operator type_cast_2395_inst
    process(type_cast_2394_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_2394_wire, tmp_var);
      type_cast_2395_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_2404_inst
    process(type_cast_2403_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_2403_wire, tmp_var);
      type_cast_2404_wire <= tmp_var; -- 
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_cti_ispec_Volatile is -- 
  port ( -- 
    ispec : in  std_logic_vector(23 downto 0);
    cond : out  std_logic_vector(3 downto 0);
    is_call : out  std_logic_vector(0 downto 0);
    is_rett : out  std_logic_vector(0 downto 0);
    is_jmpl : out  std_logic_vector(0 downto 0);
    is_ticc : out  std_logic_vector(0 downto 0);
    is_bicc : out  std_logic_vector(0 downto 0);
    is_fbfcc : out  std_logic_vector(0 downto 0);
    is_cbccc : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_cti_ispec_Volatile;
architecture decode_cti_ispec_Volatile_arch of decode_cti_ispec_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(24-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ispec_buffer :  std_logic_vector(23 downto 0);
  -- output port buffer signals
  signal cond_buffer :  std_logic_vector(3 downto 0);
  signal is_call_buffer :  std_logic_vector(0 downto 0);
  signal is_rett_buffer :  std_logic_vector(0 downto 0);
  signal is_jmpl_buffer :  std_logic_vector(0 downto 0);
  signal is_ticc_buffer :  std_logic_vector(0 downto 0);
  signal is_bicc_buffer :  std_logic_vector(0 downto 0);
  signal is_fbfcc_buffer :  std_logic_vector(0 downto 0);
  signal is_cbccc_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ispec_buffer <= ispec;
  -- output handling  -------------------------------------------------------
  cond <= cond_buffer;
  is_call <= is_call_buffer;
  is_rett <= is_rett_buffer;
  is_jmpl <= is_jmpl_buffer;
  is_ticc <= is_ticc_buffer;
  is_bicc <= is_bicc_buffer;
  is_fbfcc <= is_fbfcc_buffer;
  is_cbccc <= is_cbccc_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_2433_inst
    cond_buffer <= ispec_buffer(10 downto 7);
    -- flow-through slice operator slice_2437_inst
    is_call_buffer <= ispec_buffer(6 downto 6);
    -- flow-through slice operator slice_2441_inst
    is_rett_buffer <= ispec_buffer(5 downto 5);
    -- flow-through slice operator slice_2445_inst
    is_jmpl_buffer <= ispec_buffer(4 downto 4);
    -- flow-through slice operator slice_2449_inst
    is_ticc_buffer <= ispec_buffer(3 downto 3);
    -- flow-through slice operator slice_2453_inst
    is_bicc_buffer <= ispec_buffer(2 downto 2);
    -- flow-through slice operator slice_2457_inst
    is_fbfcc_buffer <= ispec_buffer(1 downto 1);
    -- flow-through slice operator slice_2461_inst
    is_cbccc_buffer <= ispec_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_cti_ispec_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
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
    -- flow-through slice operator slice_2485_inst
    is_load_buffer <= ispec_buffer(23 downto 23);
    -- flow-through slice operator slice_2489_inst
    is_store_buffer <= ispec_buffer(22 downto 22);
    -- flow-through slice operator slice_2493_inst
    is_atomic_ldstub_buffer <= ispec_buffer(21 downto 21);
    -- flow-through slice operator slice_2497_inst
    is_swap_buffer <= ispec_buffer(20 downto 20);
    -- flow-through slice operator slice_2501_inst
    S_buffer <= ispec_buffer(19 downto 19);
    -- flow-through slice operator slice_2505_inst
    U_buffer <= ispec_buffer(18 downto 18);
    -- flow-through slice operator slice_2509_inst
    FP_buffer <= ispec_buffer(17 downto 17);
    -- flow-through slice operator slice_2513_inst
    double_word_buffer <= ispec_buffer(16 downto 16);
    -- flow-through slice operator slice_2517_inst
    word_buffer <= ispec_buffer(15 downto 15);
    -- flow-through slice operator slice_2521_inst
    half_word_buffer <= ispec_buffer(14 downto 14);
    -- flow-through slice operator slice_2525_inst
    byte_buffer <= ispec_buffer(13 downto 13);
    -- flow-through slice operator slice_2529_inst
    is_fp_access_buffer <= ispec_buffer(12 downto 12);
    -- flow-through slice operator slice_2533_inst
    is_cp_access_buffer <= ispec_buffer(11 downto 11);
    -- flow-through slice operator slice_2537_inst
    is_fp_cp_sr_access_buffer <= ispec_buffer(10 downto 10);
    -- flow-through slice operator slice_2541_inst
    is_fp_cp_q_access_buffer <= ispec_buffer(9 downto 9);
    -- flow-through slice operator slice_2545_inst
    asi_bit_buffer <= ispec_buffer(8 downto 8);
    -- flow-through slice operator slice_2549_inst
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_instruction_base_Volatile is -- 
  port ( -- 
    annulled_instr : in  std_logic_vector(0 downto 0);
    thread_head : in  std_logic_vector(0 downto 0);
    stream_head : in  std_logic_vector(0 downto 0);
    debug_mode_selected : in  std_logic_vector(0 downto 0);
    last_was_cti : in  std_logic_vector(0 downto 0);
    instr_raw : in  std_logic_vector(31 downto 0);
    is_data_transfer_instr : out  std_logic_vector(0 downto 0);
    data_transfer_instr_spec : out  std_logic_vector(23 downto 0);
    is_control_transfer_instr : out  std_logic_vector(0 downto 0);
    control_transfer_instr_spec : out  std_logic_vector(10 downto 0);
    is_alu_instr : out  std_logic_vector(0 downto 0);
    alu_instr_spec : out  std_logic_vector(16 downto 0);
    is_misc_instr : out  std_logic_vector(0 downto 0);
    misc_instr_spec : out  std_logic_vector(16 downto 0);
    is_fp_op_instr : out  std_logic_vector(0 downto 0);
    fp_op_instr_spec : out  std_logic_vector(10 downto 0);
    is_cp_op_instr : out  std_logic_vector(0 downto 0);
    cp_op_instr_spec : out  std_logic_vector(1 downto 0);
    is_illegal_instr : out  std_logic_vector(0 downto 0);
    instr_pipeline_usage : out  std_logic_vector(38 downto 0);
    stream_corrector_info : out  std_logic_vector(5 downto 0)-- 
  );
  -- 
end entity decode_instruction_base_Volatile;
architecture decode_instruction_base_Volatile_arch of decode_instruction_base_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(37-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal annulled_instr_buffer :  std_logic_vector(0 downto 0);
  signal thread_head_buffer :  std_logic_vector(0 downto 0);
  signal stream_head_buffer :  std_logic_vector(0 downto 0);
  signal debug_mode_selected_buffer :  std_logic_vector(0 downto 0);
  signal last_was_cti_buffer :  std_logic_vector(0 downto 0);
  signal instr_raw_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal is_data_transfer_instr_buffer :  std_logic_vector(0 downto 0);
  signal data_transfer_instr_spec_buffer :  std_logic_vector(23 downto 0);
  signal is_control_transfer_instr_buffer :  std_logic_vector(0 downto 0);
  signal control_transfer_instr_spec_buffer :  std_logic_vector(10 downto 0);
  signal is_alu_instr_buffer :  std_logic_vector(0 downto 0);
  signal alu_instr_spec_buffer :  std_logic_vector(16 downto 0);
  signal is_misc_instr_buffer :  std_logic_vector(0 downto 0);
  signal misc_instr_spec_buffer :  std_logic_vector(16 downto 0);
  signal is_fp_op_instr_buffer :  std_logic_vector(0 downto 0);
  signal fp_op_instr_spec_buffer :  std_logic_vector(10 downto 0);
  signal is_cp_op_instr_buffer :  std_logic_vector(0 downto 0);
  signal cp_op_instr_spec_buffer :  std_logic_vector(1 downto 0);
  signal is_illegal_instr_buffer :  std_logic_vector(0 downto 0);
  signal instr_pipeline_usage_buffer :  std_logic_vector(38 downto 0);
  signal stream_corrector_info_buffer :  std_logic_vector(5 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  annulled_instr_buffer <= annulled_instr;
  thread_head_buffer <= thread_head;
  stream_head_buffer <= stream_head;
  debug_mode_selected_buffer <= debug_mode_selected;
  last_was_cti_buffer <= last_was_cti;
  instr_raw_buffer <= instr_raw;
  -- output handling  -------------------------------------------------------
  is_data_transfer_instr <= is_data_transfer_instr_buffer;
  data_transfer_instr_spec <= data_transfer_instr_spec_buffer;
  is_control_transfer_instr <= is_control_transfer_instr_buffer;
  control_transfer_instr_spec <= control_transfer_instr_spec_buffer;
  is_alu_instr <= is_alu_instr_buffer;
  alu_instr_spec <= alu_instr_spec_buffer;
  is_misc_instr <= is_misc_instr_buffer;
  misc_instr_spec <= misc_instr_spec_buffer;
  is_fp_op_instr <= is_fp_op_instr_buffer;
  fp_op_instr_spec <= fp_op_instr_spec_buffer;
  is_cp_op_instr <= is_cp_op_instr_buffer;
  cp_op_instr_spec <= cp_op_instr_spec_buffer;
  is_illegal_instr <= is_illegal_instr_buffer;
  instr_pipeline_usage <= instr_pipeline_usage_buffer;
  stream_corrector_info <= stream_corrector_info_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_2687_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2699_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2707_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2719_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2730_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2741_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2778_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2804_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2811_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2819_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2831_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2838_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2846_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_2863_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3067_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3078_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3089_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3141_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3149_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3159_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3175_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3186_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3197_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3201_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3208_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3216_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3230_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3237_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3241_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3248_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3256_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3263_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3274_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3285_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3296_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3304_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3311_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3319_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3326_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3337_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3348_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3359_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3434_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3441_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3448_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3465_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3476_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3485_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3490_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3505_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3516_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3524_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3529_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3544_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3559_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3570_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3581_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3592_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3603_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3614_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3629_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3645_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3652_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3664_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3679_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3767_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3778_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3806_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3817_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3883_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3891_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3901_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3905_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3924_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3961_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3969_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3974_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_3985_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4000_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4008_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4014_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4026_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4038_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4049_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4056_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4080_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4093_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4104_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4113_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4124_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4129_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_4130_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u10_u19_4300_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u10_u20_4263_wire : std_logic_vector(19 downto 0);
    signal CONCAT_u11_u13_2993_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u1_u2_2747_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2750_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2793_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2877_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2880_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2992_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2996_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3098_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3102_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3105_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3370_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3375_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3379_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3382_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3387_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3390_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3394_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3397_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3708_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3713_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3717_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3720_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3725_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3728_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3732_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3735_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3937_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_3944_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4227_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4232_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4236_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4241_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4246_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4251_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4255_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4260_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4266_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4271_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4275_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4280_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4285_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4290_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4294_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_4297_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u9_2999_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u2_u11_3000_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u2_u3_3372_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_3710_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_3939_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_3946_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4229_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4238_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4248_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4257_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4268_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4277_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_4287_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_3106_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3383_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3391_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3398_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3721_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3729_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_3736_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_4298_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u5_3376_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_3714_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4233_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4242_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4252_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4261_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4272_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4281_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_4291_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u5_3095_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u7_2987_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u4_u8_3399_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_3737_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u5_u10_4243_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u10_4262_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u10_4282_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u7_3099_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u5_u9_3384_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u5_u9_3722_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u5_u9_4299_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u7_u11_2989_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u9_u10_3784_wire : std_logic_vector(9 downto 0);
    signal EQ_u13_u1_3988_wire : std_logic_vector(0 downto 0);
    signal EQ_u22_u1_3148_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2774_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2923_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2937_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_2977_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3026_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3044_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3053_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3066_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3077_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3088_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3137_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3155_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3174_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3185_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3196_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3215_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3226_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3240_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3255_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3270_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3281_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3292_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3303_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3318_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3333_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3344_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3355_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3440_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3475_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3591_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3602_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3613_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3644_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3651_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3663_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3678_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3763_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3774_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3802_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_3813_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3029_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3047_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3056_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3140_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_3158_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2683_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2691_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2695_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2703_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2726_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2737_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2761_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2764_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2800_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2807_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2815_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2827_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2834_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2842_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2852_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2855_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2859_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2892_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2904_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2911_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2930_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2944_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_2951_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3035_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3038_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3063_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3074_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3085_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3178_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3189_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3200_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3219_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3229_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3244_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3259_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3273_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3284_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3295_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3307_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3322_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3336_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3347_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3358_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3430_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3437_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3444_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3457_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3460_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3468_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3471_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3484_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3489_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3497_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3500_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3523_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3528_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3536_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3539_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3551_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3554_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3566_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3577_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3588_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3599_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3610_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3621_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3624_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3636_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3639_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3671_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3674_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3766_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3777_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3805_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_3816_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_3144_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_3204_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_3207_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_3262_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_3325_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3927_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_3930_wire : std_logic_vector(0 downto 0);
    signal FP_2783 : std_logic_vector(0 downto 0);
    signal NEQ_u22_u1_3166_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_2777_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_3162_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_3247_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_3310_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3235_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3641_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3859_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3865_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3881_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3890_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3900_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3904_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3960_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_3968_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4007_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4055_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4058_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4103_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4112_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4123_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4126_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_4128_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2688_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2692_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2700_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2708_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2765_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2787_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2812_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2821_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2839_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2856_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2869_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2871_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2962_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2965_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3112_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3115_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3116_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3119_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3121_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3167_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3449_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3450_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3461_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3472_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3477_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3501_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3540_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3555_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3625_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3640_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3653_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3675_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3685_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3687_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3690_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3692_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3693_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3696_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3698_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3701_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3702_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3837_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3839_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3842_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3844_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3845_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3871_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3873_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3876_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3885_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3889_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3897_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3906_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3931_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3943_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3952_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3954_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3959_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3962_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3967_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3971_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3973_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_3975_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4009_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4013_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4025_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4033_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4037_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4039_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4061_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4063_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4066_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4068_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4069_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4072_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4074_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4077_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4078_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4079_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4087_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4089_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4094_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4098_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4101_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4102_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4105_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4106_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4116_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4132_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4187_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4190_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4191_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4194_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_4196_wire : std_logic_vector(0 downto 0);
    signal R_ASI_MMU_FLUSH_PROBE_3926_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_MMU_REGISTER_3929_wire_constant : std_logic_vector(7 downto 0);
    signal R_ZERO_1_4030_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4206_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_4220_wire_constant : std_logic_vector(0 downto 0);
    signal S_2770 : std_logic_vector(0 downto 0);
    signal UGT_u2_u1_2862_wire : std_logic_vector(0 downto 0);
    signal UGT_u4_u1_2715_wire : std_logic_vector(0 downto 0);
    signal UGT_u4_u1_3512_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2686_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2698_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2706_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2729_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2740_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2768_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2803_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2810_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2818_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2830_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2837_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_2845_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3433_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3447_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3464_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3504_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3515_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3543_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3558_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3569_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3580_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_3628_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_2680_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_2718_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_2781_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_3648_wire : std_logic_vector(0 downto 0);
    signal ULT_u4_u1_3660_wire : std_logic_vector(0 downto 0);
    signal U_2789 : std_logic_vector(0 downto 0);
    signal annul_flag_2658 : std_logic_vector(0 downto 0);
    signal asi_bit_2979 : std_logic_vector(0 downto 0);
    signal asi_id_8_2983 : std_logic_vector(7 downto 0);
    signal cond_3017 : std_logic_vector(3 downto 0);
    signal cp_cti_3914 : std_logic_vector(0 downto 0);
    signal cpunit_cti_3995 : std_logic_vector(0 downto 0);
    signal cu1_to_cu2_4171 : std_logic_vector(0 downto 0);
    signal cu1_to_fu2_4183 : std_logic_vector(0 downto 0);
    signal cu1_to_iu2_4180 : std_logic_vector(0 downto 0);
    signal cu1_to_ls_4177 : std_logic_vector(0 downto 0);
    signal cu1_to_sc_4174 : std_logic_vector(0 downto 0);
    signal data_instr_type_2752 : std_logic_vector(3 downto 0);
    signal data_transfer_data_type_2796 : std_logic_vector(2 downto 0);
    signal data_transfer_width_2882 : std_logic_vector(3 downto 0);
    signal fu1_can_trap_4019 : std_logic_vector(0 downto 0);
    signal fu1_to_cu2_4168 : std_logic_vector(0 downto 0);
    signal fu1_to_fu2_4151 : std_logic_vector(0 downto 0);
    signal fu1_to_iu2_4165 : std_logic_vector(0 downto 0);
    signal fu1_to_ls_4162 : std_logic_vector(0 downto 0);
    signal fu1_to_sc_4154 : std_logic_vector(0 downto 0);
    signal fu_cti_3911 : std_logic_vector(0 downto 0);
    signal fu_reg_to_ls_4159 : std_logic_vector(0 downto 0);
    signal imm_13_3981 : std_logic_vector(12 downto 0);
    signal imm_flag_2653 : std_logic_vector(0 downto 0);
    signal instr_2598 : std_logic_vector(31 downto 0);
    signal is_add_3452 : std_logic_vector(0 downto 0);
    signal is_and_3546 : std_logic_vector(0 downto 0);
    signal is_atomic_ldstub_instr_2732 : std_logic_vector(0 downto 0);
    signal is_ba_or_bn_cond_3040 : std_logic_vector(0 downto 0);
    signal is_bicc_3031 : std_logic_vector(0 downto 0);
    signal is_call_3022 : std_logic_vector(0 downto 0);
    signal is_cbccc_3058 : std_logic_vector(0 downto 0);
    signal is_cp_access_2958 : std_logic_vector(0 downto 0);
    signal is_cp_load_2925 : std_logic_vector(0 downto 0);
    signal is_cp_load_to_cpsr_2932 : std_logic_vector(0 downto 0);
    signal is_cp_op_1_3808 : std_logic_vector(0 downto 0);
    signal is_cp_op_2_3819 : std_logic_vector(0 downto 0);
    signal is_cp_store_2939 : std_logic_vector(0 downto 0);
    signal is_cp_store_from_cpq_2953 : std_logic_vector(0 downto 0);
    signal is_cp_store_from_cpsr_2946 : std_logic_vector(0 downto 0);
    signal is_div_3518 : std_logic_vector(0 downto 0);
    signal is_fbfcc_3049 : std_logic_vector(0 downto 0);
    signal is_flush_3191 : std_logic_vector(0 downto 0);
    signal is_fp_access_2918 : std_logic_vector(0 downto 0);
    signal is_fp_cp_q_access_2972 : std_logic_vector(0 downto 0);
    signal is_fp_cp_sr_access_2967 : std_logic_vector(0 downto 0);
    signal is_fp_load_2887 : std_logic_vector(0 downto 0);
    signal is_fp_load_to_fsr_2894 : std_logic_vector(0 downto 0);
    signal is_fp_op_1_3769 : std_logic_vector(0 downto 0);
    signal is_fp_op_2_3780 : std_logic_vector(0 downto 0);
    signal is_fp_store_2899 : std_logic_vector(0 downto 0);
    signal is_fp_store_from_fq_2913 : std_logic_vector(0 downto 0);
    signal is_fp_store_from_fsr_2906 : std_logic_vector(0 downto 0);
    signal is_jmpl_3080 : std_logic_vector(0 downto 0);
    signal is_load_instr_2710 : std_logic_vector(0 downto 0);
    signal is_mul_3507 : std_logic_vector(0 downto 0);
    signal is_mulscc_3180 : std_logic_vector(0 downto 0);
    signal is_nop_3151 : std_logic_vector(0 downto 0);
    signal is_nop_or_stbar_3366 : std_logic_vector(0 downto 0);
    signal is_or_3561 : std_logic_vector(0 downto 0);
    signal is_read_asr_3250 : std_logic_vector(0 downto 0);
    signal is_read_psr_3276 : std_logic_vector(0 downto 0);
    signal is_read_tbr_3298 : std_logic_vector(0 downto 0);
    signal is_read_wim_3287 : std_logic_vector(0 downto 0);
    signal is_read_y_3265 : std_logic_vector(0 downto 0);
    signal is_restore_3232 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_3990 : std_logic_vector(0 downto 0);
    signal is_rett_3091 : std_logic_vector(0 downto 0);
    signal is_save_3221 : std_logic_vector(0 downto 0);
    signal is_sethi_3169 : std_logic_vector(0 downto 0);
    signal is_sll_3594 : std_logic_vector(0 downto 0);
    signal is_sra_3616 : std_logic_vector(0 downto 0);
    signal is_srl_3605 : std_logic_vector(0 downto 0);
    signal is_stbar_3210 : std_logic_vector(0 downto 0);
    signal is_store_instr_2721 : std_logic_vector(0 downto 0);
    signal is_sub_3479 : std_logic_vector(0 downto 0);
    signal is_swap_instr_2743 : std_logic_vector(0 downto 0);
    signal is_ticc_3069 : std_logic_vector(0 downto 0);
    signal is_u16_transfer_2848 : std_logic_vector(0 downto 0);
    signal is_u32_transfer_2873 : std_logic_vector(0 downto 0);
    signal is_u64_transfer_2865 : std_logic_vector(0 downto 0);
    signal is_u8_transfer_2823 : std_logic_vector(0 downto 0);
    signal is_write_asr_3313 : std_logic_vector(0 downto 0);
    signal is_write_psr_3339 : std_logic_vector(0 downto 0);
    signal is_write_tbr_3361 : std_logic_vector(0 downto 0);
    signal is_write_wim_3350 : std_logic_vector(0 downto 0);
    signal is_write_y_3328 : std_logic_vector(0 downto 0);
    signal is_xnor_3583 : std_logic_vector(0 downto 0);
    signal is_xor_3572 : std_logic_vector(0 downto 0);
    signal iu1_can_trap_4108 : std_logic_vector(0 downto 0);
    signal iu1_to_cu2_4148 : std_logic_vector(0 downto 0);
    signal iu1_to_fu2_4145 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_4118 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_fast_4082 : std_logic_vector(0 downto 0);
    signal iu1_to_ls_trap_4142 : std_logic_vector(0 downto 0);
    signal iu1_to_sc_4134 : std_logic_vector(0 downto 0);
    signal iu_cti_3878 : std_logic_vector(0 downto 0);
    signal iu_flush_3917 : std_logic_vector(0 downto 0);
    signal iu_mmu_ctrl_write_3933 : std_logic_vector(0 downto 0);
    signal iu_reg_to_ls_4139 : std_logic_vector(0 downto 0);
    signal iu_write_psr_3920 : std_logic_vector(0 downto 0);
    signal konst_2595_wire_constant : std_logic_vector(31 downto 0);
    signal konst_2629_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2634_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2651_wire_constant : std_logic_vector(31 downto 0);
    signal konst_2656_wire_constant : std_logic_vector(31 downto 0);
    signal konst_2679_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2682_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2685_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2690_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2694_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2697_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2702_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2705_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2714_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2717_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2725_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2728_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2736_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2739_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2755_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2760_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2763_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2767_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2773_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2776_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2780_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2799_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2802_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2806_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2809_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2814_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2817_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2826_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2829_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2833_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2836_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2841_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2844_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2851_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2854_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2858_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2861_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2891_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2903_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2910_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2922_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2929_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2936_wire_constant : std_logic_vector(1 downto 0);
    signal konst_2943_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2950_wire_constant : std_logic_vector(3 downto 0);
    signal konst_2976_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3020_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3025_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3028_wire_constant : std_logic_vector(2 downto 0);
    signal konst_3034_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3037_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3043_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3046_wire_constant : std_logic_vector(2 downto 0);
    signal konst_3052_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3055_wire_constant : std_logic_vector(2 downto 0);
    signal konst_3062_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3065_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3073_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3076_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3084_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3087_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3136_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3139_wire_constant : std_logic_vector(2 downto 0);
    signal konst_3143_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3147_wire_constant : std_logic_vector(21 downto 0);
    signal konst_3154_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3157_wire_constant : std_logic_vector(2 downto 0);
    signal konst_3161_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3165_wire_constant : std_logic_vector(21 downto 0);
    signal konst_3173_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3177_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3184_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3188_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3195_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3199_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3203_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3206_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3214_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3218_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3225_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3228_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3239_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3243_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3246_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3254_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3258_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3261_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3269_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3272_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3280_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3283_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3291_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3294_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3302_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3306_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3309_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3317_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3321_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3324_wire_constant : std_logic_vector(4 downto 0);
    signal konst_3332_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3335_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3343_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3346_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3354_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3357_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3404_wire_constant : std_logic_vector(16 downto 0);
    signal konst_3429_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3432_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3436_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3439_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3443_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3446_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3456_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3459_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3463_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3467_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3470_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3474_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3483_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3488_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3496_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3499_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3503_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3511_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3514_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3522_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3527_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3535_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3538_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3542_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3550_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3553_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3557_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3565_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3568_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3576_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3579_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3587_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3590_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3598_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3601_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3609_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3612_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3620_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3623_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3627_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3635_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3638_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3643_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3647_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3650_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3659_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3662_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3670_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3673_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3677_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3762_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3765_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3773_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3776_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3801_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3804_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3812_wire_constant : std_logic_vector(1 downto 0);
    signal konst_3815_wire_constant : std_logic_vector(3 downto 0);
    signal konst_3987_wire_constant : std_logic_vector(12 downto 0);
    signal ls_to_cu2_4223 : std_logic_vector(0 downto 0);
    signal ls_to_fu2_4218 : std_logic_vector(0 downto 0);
    signal ls_to_iu2_4215 : std_logic_vector(0 downto 0);
    signal negate_second_operand_3631 : std_logic_vector(0 downto 0);
    signal op2_2610 : std_logic_vector(2 downto 0);
    signal op3_2614 : std_logic_vector(5 downto 0);
    signal op3_col_2622 : std_logic_vector(1 downto 0);
    signal op3_row_2626 : std_logic_vector(3 downto 0);
    signal op_2606 : std_logic_vector(1 downto 0);
    signal op_eq_2_2631 : std_logic_vector(0 downto 0);
    signal op_eq_3_2636 : std_logic_vector(0 downto 0);
    signal opf_2618 : std_logic_vector(8 downto 0);
    signal rd_2648 : std_logic_vector(4 downto 0);
    signal reads_fu_rfile_4016 : std_logic_vector(0 downto 0);
    signal reads_iu_rfile_3908 : std_logic_vector(0 downto 0);
    signal rs1_2640 : std_logic_vector(4 downto 0);
    signal rs2_2644 : std_logic_vector(4 downto 0);
    signal sc_to_cu2_4209 : std_logic_vector(0 downto 0);
    signal sc_to_fu2_4204 : std_logic_vector(0 downto 0);
    signal sc_to_iu2_4201 : std_logic_vector(0 downto 0);
    signal sc_to_ls_4212 : std_logic_vector(0 downto 0);
    signal send_from_sc_to_rest_4198 : std_logic_vector(0 downto 0);
    signal set_cc_3655 : std_logic_vector(0 downto 0);
    signal signed_mul_div_3531 : std_logic_vector(0 downto 0);
    signal slice_3146_wire : std_logic_vector(21 downto 0);
    signal slice_3164_wire : std_logic_vector(21 downto 0);
    signal tagged_alu_op_3666 : std_logic_vector(0 downto 0);
    signal trap_on_overflow_3681 : std_logic_vector(0 downto 0);
    signal uses_cu1_4041 : std_logic_vector(0 downto 0);
    signal uses_cu2_4044 : std_logic_vector(0 downto 0);
    signal uses_fp_cc_3867 : std_logic_vector(0 downto 0);
    signal uses_fu1_4002 : std_logic_vector(0 downto 0);
    signal uses_fu2_4028 : std_logic_vector(0 downto 0);
    signal uses_iu1_3893 : std_logic_vector(0 downto 0);
    signal uses_iu2_3977 : std_logic_vector(0 downto 0);
    signal uses_iu_cc_3861 : std_logic_vector(0 downto 0);
    signal uses_ls_4051 : std_logic_vector(0 downto 0);
    signal with_carry_3492 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_4280_wire_constant <= "00";
    CONCAT_u1_u2_4285_wire_constant <= "00";
    R_ASI_MMU_FLUSH_PROBE_3926_wire_constant <= "00000011";
    R_ASI_MMU_REGISTER_3929_wire_constant <= "00000100";
    R_ZERO_1_4030_wire_constant <= "0";
    R_ZERO_1_4206_wire_constant <= "0";
    R_ZERO_1_4220_wire_constant <= "0";
    cu1_to_fu2_4183 <= "0";
    cu1_to_iu2_4180 <= "0";
    cu1_to_ls_4177 <= "0";
    cu1_to_sc_4174 <= "0";
    fu1_to_cu2_4168 <= "0";
    fu1_to_sc_4154 <= "0";
    iu1_to_cu2_4148 <= "0";
    konst_2595_wire_constant <= "00000001000000000000000000000000";
    konst_2629_wire_constant <= "10";
    konst_2634_wire_constant <= "11";
    konst_2651_wire_constant <= "00000000000000000000000000001101";
    konst_2656_wire_constant <= "00000000000000000000000000011101";
    konst_2679_wire_constant <= "0010";
    konst_2682_wire_constant <= "0010";
    konst_2685_wire_constant <= "10";
    konst_2690_wire_constant <= "0011";
    konst_2694_wire_constant <= "1001";
    konst_2697_wire_constant <= "10";
    konst_2702_wire_constant <= "1010";
    konst_2705_wire_constant <= "10";
    konst_2714_wire_constant <= "0011";
    konst_2717_wire_constant <= "1000";
    konst_2725_wire_constant <= "1101";
    konst_2728_wire_constant <= "10";
    konst_2736_wire_constant <= "1111";
    konst_2739_wire_constant <= "10";
    konst_2755_wire_constant <= "0000";
    konst_2760_wire_constant <= "1001";
    konst_2763_wire_constant <= "1010";
    konst_2767_wire_constant <= "10";
    konst_2773_wire_constant <= "10";
    konst_2776_wire_constant <= "0010";
    konst_2780_wire_constant <= "1000";
    konst_2799_wire_constant <= "0001";
    konst_2802_wire_constant <= "10";
    konst_2806_wire_constant <= "0101";
    konst_2809_wire_constant <= "10";
    konst_2814_wire_constant <= "1001";
    konst_2817_wire_constant <= "10";
    konst_2826_wire_constant <= "0010";
    konst_2829_wire_constant <= "10";
    konst_2833_wire_constant <= "1010";
    konst_2836_wire_constant <= "10";
    konst_2841_wire_constant <= "0110";
    konst_2844_wire_constant <= "10";
    konst_2851_wire_constant <= "0011";
    konst_2854_wire_constant <= "0111";
    konst_2858_wire_constant <= "0110";
    konst_2861_wire_constant <= "01";
    konst_2891_wire_constant <= "0001";
    konst_2903_wire_constant <= "0101";
    konst_2910_wire_constant <= "0110";
    konst_2922_wire_constant <= "11";
    konst_2929_wire_constant <= "0001";
    konst_2936_wire_constant <= "11";
    konst_2943_wire_constant <= "0101";
    konst_2950_wire_constant <= "0110";
    konst_2976_wire_constant <= "01";
    konst_3020_wire_constant <= "01";
    konst_3025_wire_constant <= "00";
    konst_3028_wire_constant <= "010";
    konst_3034_wire_constant <= "1000";
    konst_3037_wire_constant <= "0000";
    konst_3043_wire_constant <= "00";
    konst_3046_wire_constant <= "110";
    konst_3052_wire_constant <= "00";
    konst_3055_wire_constant <= "111";
    konst_3062_wire_constant <= "1010";
    konst_3065_wire_constant <= "11";
    konst_3073_wire_constant <= "1000";
    konst_3076_wire_constant <= "11";
    konst_3084_wire_constant <= "1001";
    konst_3087_wire_constant <= "11";
    konst_3136_wire_constant <= "00";
    konst_3139_wire_constant <= "100";
    konst_3143_wire_constant <= "00000";
    konst_3147_wire_constant <= "0000000000000000000000";
    konst_3154_wire_constant <= "00";
    konst_3157_wire_constant <= "100";
    konst_3161_wire_constant <= "00000";
    konst_3165_wire_constant <= "0000000000000000000000";
    konst_3173_wire_constant <= "10";
    konst_3177_wire_constant <= "0100";
    konst_3184_wire_constant <= "11";
    konst_3188_wire_constant <= "1011";
    konst_3195_wire_constant <= "10";
    konst_3199_wire_constant <= "1000";
    konst_3203_wire_constant <= "00000";
    konst_3206_wire_constant <= "01111";
    konst_3214_wire_constant <= "11";
    konst_3218_wire_constant <= "1100";
    konst_3225_wire_constant <= "11";
    konst_3228_wire_constant <= "1101";
    konst_3239_wire_constant <= "10";
    konst_3243_wire_constant <= "1000";
    konst_3246_wire_constant <= "00000";
    konst_3254_wire_constant <= "10";
    konst_3258_wire_constant <= "1000";
    konst_3261_wire_constant <= "00000";
    konst_3269_wire_constant <= "10";
    konst_3272_wire_constant <= "1001";
    konst_3280_wire_constant <= "10";
    konst_3283_wire_constant <= "1010";
    konst_3291_wire_constant <= "10";
    konst_3294_wire_constant <= "1011";
    konst_3302_wire_constant <= "11";
    konst_3306_wire_constant <= "0000";
    konst_3309_wire_constant <= "00000";
    konst_3317_wire_constant <= "11";
    konst_3321_wire_constant <= "0000";
    konst_3324_wire_constant <= "00000";
    konst_3332_wire_constant <= "11";
    konst_3335_wire_constant <= "0001";
    konst_3343_wire_constant <= "11";
    konst_3346_wire_constant <= "0010";
    konst_3354_wire_constant <= "11";
    konst_3357_wire_constant <= "0011";
    konst_3404_wire_constant <= "00000000000000000";
    konst_3429_wire_constant <= "0000";
    konst_3432_wire_constant <= "11";
    konst_3436_wire_constant <= "0010";
    konst_3439_wire_constant <= "10";
    konst_3443_wire_constant <= "1000";
    konst_3446_wire_constant <= "10";
    konst_3456_wire_constant <= "0100";
    konst_3459_wire_constant <= "1100";
    konst_3463_wire_constant <= "10";
    konst_3467_wire_constant <= "0001";
    konst_3470_wire_constant <= "0011";
    konst_3474_wire_constant <= "10";
    konst_3483_wire_constant <= "1000";
    konst_3488_wire_constant <= "1100";
    konst_3496_wire_constant <= "1010";
    konst_3499_wire_constant <= "1011";
    konst_3503_wire_constant <= "10";
    konst_3511_wire_constant <= "1101";
    konst_3514_wire_constant <= "10";
    konst_3522_wire_constant <= "1011";
    konst_3527_wire_constant <= "1111";
    konst_3535_wire_constant <= "0001";
    konst_3538_wire_constant <= "0101";
    konst_3542_wire_constant <= "10";
    konst_3550_wire_constant <= "0010";
    konst_3553_wire_constant <= "0110";
    konst_3557_wire_constant <= "10";
    konst_3565_wire_constant <= "0011";
    konst_3568_wire_constant <= "10";
    konst_3576_wire_constant <= "0111";
    konst_3579_wire_constant <= "10";
    konst_3587_wire_constant <= "0101";
    konst_3590_wire_constant <= "10";
    konst_3598_wire_constant <= "0110";
    konst_3601_wire_constant <= "10";
    konst_3609_wire_constant <= "0111";
    konst_3612_wire_constant <= "10";
    konst_3620_wire_constant <= "0101";
    konst_3623_wire_constant <= "0110";
    konst_3627_wire_constant <= "10";
    konst_3635_wire_constant <= "1001";
    konst_3638_wire_constant <= "1101";
    konst_3643_wire_constant <= "01";
    konst_3647_wire_constant <= "0101";
    konst_3650_wire_constant <= "10";
    konst_3659_wire_constant <= "0100";
    konst_3662_wire_constant <= "10";
    konst_3670_wire_constant <= "0010";
    konst_3673_wire_constant <= "0011";
    konst_3677_wire_constant <= "10";
    konst_3762_wire_constant <= "11";
    konst_3765_wire_constant <= "0100";
    konst_3773_wire_constant <= "11";
    konst_3776_wire_constant <= "0101";
    konst_3801_wire_constant <= "11";
    konst_3804_wire_constant <= "0110";
    konst_3812_wire_constant <= "11";
    konst_3815_wire_constant <= "0111";
    konst_3987_wire_constant <= "0000000001000";
    -- flow-through select operator MUX_2597_inst
    instr_2598 <= konst_2595_wire_constant when (annulled_instr_buffer(0) /=  '0') else instr_raw_buffer;
    -- flow-through slice operator slice_2605_inst
    op_2606 <= instr_2598(31 downto 30);
    -- flow-through slice operator slice_2609_inst
    op2_2610 <= instr_2598(24 downto 22);
    -- flow-through slice operator slice_2613_inst
    op3_2614 <= instr_2598(24 downto 19);
    -- flow-through slice operator slice_2617_inst
    opf_2618 <= instr_2598(13 downto 5);
    -- flow-through slice operator slice_2621_inst
    op3_col_2622 <= op3_2614(5 downto 4);
    -- flow-through slice operator slice_2625_inst
    op3_row_2626 <= op3_2614(3 downto 0);
    -- flow-through slice operator slice_2639_inst
    rs1_2640 <= instr_2598(18 downto 14);
    -- flow-through slice operator slice_2643_inst
    rs2_2644 <= instr_2598(4 downto 0);
    -- flow-through slice operator slice_2647_inst
    rd_2648 <= instr_2598(29 downto 25);
    -- flow-through slice operator slice_2982_inst
    asi_id_8_2983 <= instr_2598(12 downto 5);
    -- flow-through slice operator slice_3016_inst
    cond_3017 <= instr_2598(28 downto 25);
    -- flow-through slice operator slice_3146_inst
    slice_3146_wire <= instr_2598(21 downto 0);
    -- flow-through slice operator slice_3164_inst
    slice_3164_wire <= instr_2598(21 downto 0);
    -- flow-through slice operator slice_3980_inst
    imm_13_3981 <= instr_2598(12 downto 0);
    -- interlock W_cp_cti_3912_inst
    process(is_cbccc_3058) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_cbccc_3058(0 downto 0);
      cp_cti_3914 <= tmp_var; -- 
    end process;
    -- interlock W_cu1_to_cu2_4169_inst
    process(uses_cu1_4041) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := uses_cu1_4041(0 downto 0);
      cu1_to_cu2_4171 <= tmp_var; -- 
    end process;
    -- interlock W_fu1_can_trap_4017_inst
    process(is_fp_op_instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_fp_op_instr_buffer(0 downto 0);
      fu1_can_trap_4019 <= tmp_var; -- 
    end process;
    -- interlock W_fu1_to_fu2_4149_inst
    process(uses_fu1_4002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := uses_fu1_4002(0 downto 0);
      fu1_to_fu2_4151 <= tmp_var; -- 
    end process;
    -- interlock W_fu1_to_iu2_4163_inst
    process(fu1_can_trap_4019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := fu1_can_trap_4019(0 downto 0);
      fu1_to_iu2_4165 <= tmp_var; -- 
    end process;
    -- interlock W_fu1_to_ls_4160_inst
    process(fu1_can_trap_4019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := fu1_can_trap_4019(0 downto 0);
      fu1_to_ls_4162 <= tmp_var; -- 
    end process;
    -- interlock W_fu_cti_3909_inst
    process(is_fbfcc_3049) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_fbfcc_3049(0 downto 0);
      fu_cti_3911 <= tmp_var; -- 
    end process;
    -- interlock W_iu1_to_fu2_4143_inst
    process(iu1_can_trap_4108) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := iu1_can_trap_4108(0 downto 0);
      iu1_to_fu2_4145 <= tmp_var; -- 
    end process;
    -- interlock W_iu1_to_ls_trap_4140_inst
    process(iu1_can_trap_4108) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := iu1_can_trap_4108(0 downto 0);
      iu1_to_ls_trap_4142 <= tmp_var; -- 
    end process;
    -- interlock W_iu_flush_3915_inst
    process(is_flush_3191) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_flush_3191(0 downto 0);
      iu_flush_3917 <= tmp_var; -- 
    end process;
    -- interlock W_iu_write_psr_3918_inst
    process(is_write_psr_3339) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_write_psr_3339(0 downto 0);
      iu_write_psr_3920 <= tmp_var; -- 
    end process;
    -- interlock W_ls_to_fu2_4216_inst
    process(is_data_transfer_instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_data_transfer_instr_buffer(0 downto 0);
      ls_to_fu2_4218 <= tmp_var; -- 
    end process;
    -- interlock W_ls_to_iu2_4213_inst
    process(is_data_transfer_instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_data_transfer_instr_buffer(0 downto 0);
      ls_to_iu2_4215 <= tmp_var; -- 
    end process;
    -- interlock W_sc_to_fu2_4202_inst
    process(send_from_sc_to_rest_4198) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := send_from_sc_to_rest_4198(0 downto 0);
      sc_to_fu2_4204 <= tmp_var; -- 
    end process;
    -- interlock W_sc_to_iu2_4199_inst
    process(send_from_sc_to_rest_4198) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := send_from_sc_to_rest_4198(0 downto 0);
      sc_to_iu2_4201 <= tmp_var; -- 
    end process;
    -- interlock W_sc_to_ls_4210_inst
    process(send_from_sc_to_rest_4198) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := send_from_sc_to_rest_4198(0 downto 0);
      sc_to_ls_4212 <= tmp_var; -- 
    end process;
    -- interlock W_uses_cu2_4042_inst
    process(uses_cu1_4041) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := uses_cu1_4041(0 downto 0);
      uses_cu2_4044 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_2687_inst
    AND_u1_u1_2687_wire <= (EQ_u4_u1_2683_wire and ULT_u2_u1_2686_wire);
    -- flow through binary operator AND_u1_u1_2699_inst
    AND_u1_u1_2699_wire <= (EQ_u4_u1_2695_wire and ULT_u2_u1_2698_wire);
    -- flow through binary operator AND_u1_u1_2707_inst
    AND_u1_u1_2707_wire <= (EQ_u4_u1_2703_wire and ULT_u2_u1_2706_wire);
    -- flow through binary operator AND_u1_u1_2709_inst
    is_load_instr_2710 <= (op_eq_3_2636 and OR_u1_u1_2708_wire);
    -- flow through binary operator AND_u1_u1_2719_inst
    AND_u1_u1_2719_wire <= (UGT_u4_u1_2715_wire and ULT_u4_u1_2718_wire);
    -- flow through binary operator AND_u1_u1_2720_inst
    is_store_instr_2721 <= (op_eq_3_2636 and AND_u1_u1_2719_wire);
    -- flow through binary operator AND_u1_u1_2730_inst
    AND_u1_u1_2730_wire <= (EQ_u4_u1_2726_wire and ULT_u2_u1_2729_wire);
    -- flow through binary operator AND_u1_u1_2731_inst
    is_atomic_ldstub_instr_2732 <= (op_eq_3_2636 and AND_u1_u1_2730_wire);
    -- flow through binary operator AND_u1_u1_2741_inst
    AND_u1_u1_2741_wire <= (EQ_u4_u1_2737_wire and ULT_u2_u1_2740_wire);
    -- flow through binary operator AND_u1_u1_2742_inst
    is_swap_instr_2743 <= (op_eq_3_2636 and AND_u1_u1_2741_wire);
    -- flow through binary operator AND_u1_u1_2769_inst
    S_2770 <= (OR_u1_u1_2765_wire and ULT_u2_u1_2768_wire);
    -- flow through binary operator AND_u1_u1_2778_inst
    AND_u1_u1_2778_wire <= (EQ_u2_u1_2774_wire and NEQ_u4_u1_2777_wire);
    -- flow through binary operator AND_u1_u1_2782_inst
    FP_2783 <= (AND_u1_u1_2778_wire and ULT_u4_u1_2781_wire);
    -- flow through binary operator AND_u1_u1_2804_inst
    AND_u1_u1_2804_wire <= (EQ_u4_u1_2800_wire and ULT_u2_u1_2803_wire);
    -- flow through binary operator AND_u1_u1_2811_inst
    AND_u1_u1_2811_wire <= (EQ_u4_u1_2807_wire and ULT_u2_u1_2810_wire);
    -- flow through binary operator AND_u1_u1_2819_inst
    AND_u1_u1_2819_wire <= (EQ_u4_u1_2815_wire and ULT_u2_u1_2818_wire);
    -- flow through binary operator AND_u1_u1_2831_inst
    AND_u1_u1_2831_wire <= (EQ_u4_u1_2827_wire and ULT_u2_u1_2830_wire);
    -- flow through binary operator AND_u1_u1_2838_inst
    AND_u1_u1_2838_wire <= (EQ_u4_u1_2834_wire and ULT_u2_u1_2837_wire);
    -- flow through binary operator AND_u1_u1_2846_inst
    AND_u1_u1_2846_wire <= (EQ_u4_u1_2842_wire and ULT_u2_u1_2845_wire);
    -- flow through binary operator AND_u1_u1_2863_inst
    AND_u1_u1_2863_wire <= (EQ_u4_u1_2859_wire and UGT_u2_u1_2862_wire);
    -- flow through binary operator AND_u1_u1_2886_inst
    is_fp_load_2887 <= (is_load_instr_2710 and FP_2783);
    -- flow through binary operator AND_u1_u1_2893_inst
    is_fp_load_to_fsr_2894 <= (is_fp_load_2887 and EQ_u4_u1_2892_wire);
    -- flow through binary operator AND_u1_u1_2898_inst
    is_fp_store_2899 <= (is_store_instr_2721 and FP_2783);
    -- flow through binary operator AND_u1_u1_2905_inst
    is_fp_store_from_fsr_2906 <= (is_fp_store_2899 and EQ_u4_u1_2904_wire);
    -- flow through binary operator AND_u1_u1_2912_inst
    is_fp_store_from_fq_2913 <= (is_fp_store_2899 and EQ_u4_u1_2911_wire);
    -- flow through binary operator AND_u1_u1_2924_inst
    is_cp_load_2925 <= (is_load_instr_2710 and EQ_u2_u1_2923_wire);
    -- flow through binary operator AND_u1_u1_2931_inst
    is_cp_load_to_cpsr_2932 <= (is_cp_load_2925 and EQ_u4_u1_2930_wire);
    -- flow through binary operator AND_u1_u1_2938_inst
    is_cp_store_2939 <= (is_store_instr_2721 and EQ_u2_u1_2937_wire);
    -- flow through binary operator AND_u1_u1_2945_inst
    is_cp_store_from_cpsr_2946 <= (is_cp_store_2939 and EQ_u4_u1_2944_wire);
    -- flow through binary operator AND_u1_u1_2952_inst
    is_cp_store_from_cpq_2953 <= (is_cp_store_2939 and EQ_u4_u1_2951_wire);
    -- flow through binary operator AND_u1_u1_2978_inst
    asi_bit_2979 <= (op_eq_3_2636 and EQ_u2_u1_2977_wire);
    -- flow through binary operator AND_u1_u1_3030_inst
    is_bicc_3031 <= (EQ_u2_u1_3026_wire and EQ_u3_u1_3029_wire);
    -- flow through binary operator AND_u1_u1_3048_inst
    is_fbfcc_3049 <= (EQ_u2_u1_3044_wire and EQ_u3_u1_3047_wire);
    -- flow through binary operator AND_u1_u1_3057_inst
    is_cbccc_3058 <= (EQ_u2_u1_3053_wire and EQ_u3_u1_3056_wire);
    -- flow through binary operator AND_u1_u1_3067_inst
    AND_u1_u1_3067_wire <= (EQ_u4_u1_3063_wire and EQ_u2_u1_3066_wire);
    -- flow through binary operator AND_u1_u1_3068_inst
    is_ticc_3069 <= (op_eq_2_2631 and AND_u1_u1_3067_wire);
    -- flow through binary operator AND_u1_u1_3078_inst
    AND_u1_u1_3078_wire <= (EQ_u4_u1_3074_wire and EQ_u2_u1_3077_wire);
    -- flow through binary operator AND_u1_u1_3079_inst
    is_jmpl_3080 <= (op_eq_2_2631 and AND_u1_u1_3078_wire);
    -- flow through binary operator AND_u1_u1_3089_inst
    AND_u1_u1_3089_wire <= (EQ_u4_u1_3085_wire and EQ_u2_u1_3088_wire);
    -- flow through binary operator AND_u1_u1_3090_inst
    is_rett_3091 <= (op_eq_2_2631 and AND_u1_u1_3089_wire);
    -- flow through binary operator AND_u1_u1_3141_inst
    AND_u1_u1_3141_wire <= (EQ_u2_u1_3137_wire and EQ_u3_u1_3140_wire);
    -- flow through binary operator AND_u1_u1_3149_inst
    AND_u1_u1_3149_wire <= (EQ_u5_u1_3144_wire and EQ_u22_u1_3148_wire);
    -- flow through binary operator AND_u1_u1_3150_inst
    is_nop_3151 <= (AND_u1_u1_3141_wire and AND_u1_u1_3149_wire);
    -- flow through binary operator AND_u1_u1_3159_inst
    AND_u1_u1_3159_wire <= (EQ_u2_u1_3155_wire and EQ_u3_u1_3158_wire);
    -- flow through binary operator AND_u1_u1_3168_inst
    is_sethi_3169 <= (AND_u1_u1_3159_wire and OR_u1_u1_3167_wire);
    -- flow through binary operator AND_u1_u1_3175_inst
    AND_u1_u1_3175_wire <= (op_eq_2_2631 and EQ_u2_u1_3174_wire);
    -- flow through binary operator AND_u1_u1_3179_inst
    is_mulscc_3180 <= (AND_u1_u1_3175_wire and EQ_u4_u1_3178_wire);
    -- flow through binary operator AND_u1_u1_3186_inst
    AND_u1_u1_3186_wire <= (op_eq_2_2631 and EQ_u2_u1_3185_wire);
    -- flow through binary operator AND_u1_u1_3190_inst
    is_flush_3191 <= (AND_u1_u1_3186_wire and EQ_u4_u1_3189_wire);
    -- flow through binary operator AND_u1_u1_3197_inst
    AND_u1_u1_3197_wire <= (op_eq_2_2631 and EQ_u2_u1_3196_wire);
    -- flow through binary operator AND_u1_u1_3201_inst
    AND_u1_u1_3201_wire <= (AND_u1_u1_3197_wire and EQ_u4_u1_3200_wire);
    -- flow through binary operator AND_u1_u1_3208_inst
    AND_u1_u1_3208_wire <= (EQ_u5_u1_3204_wire and EQ_u5_u1_3207_wire);
    -- flow through binary operator AND_u1_u1_3209_inst
    is_stbar_3210 <= (AND_u1_u1_3201_wire and AND_u1_u1_3208_wire);
    -- flow through binary operator AND_u1_u1_3216_inst
    AND_u1_u1_3216_wire <= (op_eq_2_2631 and EQ_u2_u1_3215_wire);
    -- flow through binary operator AND_u1_u1_3220_inst
    is_save_3221 <= (AND_u1_u1_3216_wire and EQ_u4_u1_3219_wire);
    -- flow through binary operator AND_u1_u1_3230_inst
    AND_u1_u1_3230_wire <= (EQ_u2_u1_3226_wire and EQ_u4_u1_3229_wire);
    -- flow through binary operator AND_u1_u1_3231_inst
    is_restore_3232 <= (op_eq_2_2631 and AND_u1_u1_3230_wire);
    -- flow through binary operator AND_u1_u1_3237_inst
    AND_u1_u1_3237_wire <= (NOT_u1_u1_3235_wire and op_eq_2_2631);
    -- flow through binary operator AND_u1_u1_3241_inst
    AND_u1_u1_3241_wire <= (AND_u1_u1_3237_wire and EQ_u2_u1_3240_wire);
    -- flow through binary operator AND_u1_u1_3248_inst
    AND_u1_u1_3248_wire <= (EQ_u4_u1_3244_wire and NEQ_u5_u1_3247_wire);
    -- flow through binary operator AND_u1_u1_3249_inst
    is_read_asr_3250 <= (AND_u1_u1_3241_wire and AND_u1_u1_3248_wire);
    -- flow through binary operator AND_u1_u1_3256_inst
    AND_u1_u1_3256_wire <= (op_eq_2_2631 and EQ_u2_u1_3255_wire);
    -- flow through binary operator AND_u1_u1_3263_inst
    AND_u1_u1_3263_wire <= (EQ_u4_u1_3259_wire and EQ_u5_u1_3262_wire);
    -- flow through binary operator AND_u1_u1_3264_inst
    is_read_y_3265 <= (AND_u1_u1_3256_wire and AND_u1_u1_3263_wire);
    -- flow through binary operator AND_u1_u1_3274_inst
    AND_u1_u1_3274_wire <= (EQ_u2_u1_3270_wire and EQ_u4_u1_3273_wire);
    -- flow through binary operator AND_u1_u1_3275_inst
    is_read_psr_3276 <= (op_eq_2_2631 and AND_u1_u1_3274_wire);
    -- flow through binary operator AND_u1_u1_3285_inst
    AND_u1_u1_3285_wire <= (EQ_u2_u1_3281_wire and EQ_u4_u1_3284_wire);
    -- flow through binary operator AND_u1_u1_3286_inst
    is_read_wim_3287 <= (op_eq_2_2631 and AND_u1_u1_3285_wire);
    -- flow through binary operator AND_u1_u1_3296_inst
    AND_u1_u1_3296_wire <= (EQ_u2_u1_3292_wire and EQ_u4_u1_3295_wire);
    -- flow through binary operator AND_u1_u1_3297_inst
    is_read_tbr_3298 <= (op_eq_2_2631 and AND_u1_u1_3296_wire);
    -- flow through binary operator AND_u1_u1_3304_inst
    AND_u1_u1_3304_wire <= (op_eq_2_2631 and EQ_u2_u1_3303_wire);
    -- flow through binary operator AND_u1_u1_3311_inst
    AND_u1_u1_3311_wire <= (EQ_u4_u1_3307_wire and NEQ_u5_u1_3310_wire);
    -- flow through binary operator AND_u1_u1_3312_inst
    is_write_asr_3313 <= (AND_u1_u1_3304_wire and AND_u1_u1_3311_wire);
    -- flow through binary operator AND_u1_u1_3319_inst
    AND_u1_u1_3319_wire <= (op_eq_2_2631 and EQ_u2_u1_3318_wire);
    -- flow through binary operator AND_u1_u1_3326_inst
    AND_u1_u1_3326_wire <= (EQ_u4_u1_3322_wire and EQ_u5_u1_3325_wire);
    -- flow through binary operator AND_u1_u1_3327_inst
    is_write_y_3328 <= (AND_u1_u1_3319_wire and AND_u1_u1_3326_wire);
    -- flow through binary operator AND_u1_u1_3337_inst
    AND_u1_u1_3337_wire <= (EQ_u2_u1_3333_wire and EQ_u4_u1_3336_wire);
    -- flow through binary operator AND_u1_u1_3338_inst
    is_write_psr_3339 <= (op_eq_2_2631 and AND_u1_u1_3337_wire);
    -- flow through binary operator AND_u1_u1_3348_inst
    AND_u1_u1_3348_wire <= (EQ_u2_u1_3344_wire and EQ_u4_u1_3347_wire);
    -- flow through binary operator AND_u1_u1_3349_inst
    is_write_wim_3350 <= (op_eq_2_2631 and AND_u1_u1_3348_wire);
    -- flow through binary operator AND_u1_u1_3359_inst
    AND_u1_u1_3359_wire <= (EQ_u2_u1_3355_wire and EQ_u4_u1_3358_wire);
    -- flow through binary operator AND_u1_u1_3360_inst
    is_write_tbr_3361 <= (op_eq_2_2631 and AND_u1_u1_3359_wire);
    -- flow through binary operator AND_u1_u1_3434_inst
    AND_u1_u1_3434_wire <= (EQ_u4_u1_3430_wire and ULT_u2_u1_3433_wire);
    -- flow through binary operator AND_u1_u1_3441_inst
    AND_u1_u1_3441_wire <= (EQ_u4_u1_3437_wire and EQ_u2_u1_3440_wire);
    -- flow through binary operator AND_u1_u1_3448_inst
    AND_u1_u1_3448_wire <= (EQ_u4_u1_3444_wire and ULT_u2_u1_3447_wire);
    -- flow through binary operator AND_u1_u1_3451_inst
    is_add_3452 <= (op_eq_2_2631 and OR_u1_u1_3450_wire);
    -- flow through binary operator AND_u1_u1_3465_inst
    AND_u1_u1_3465_wire <= (OR_u1_u1_3461_wire and ULT_u2_u1_3464_wire);
    -- flow through binary operator AND_u1_u1_3476_inst
    AND_u1_u1_3476_wire <= (OR_u1_u1_3472_wire and EQ_u2_u1_3475_wire);
    -- flow through binary operator AND_u1_u1_3478_inst
    is_sub_3479 <= (op_eq_2_2631 and OR_u1_u1_3477_wire);
    -- flow through binary operator AND_u1_u1_3485_inst
    AND_u1_u1_3485_wire <= (is_add_3452 and EQ_u4_u1_3484_wire);
    -- flow through binary operator AND_u1_u1_3490_inst
    AND_u1_u1_3490_wire <= (is_sub_3479 and EQ_u4_u1_3489_wire);
    -- flow through binary operator AND_u1_u1_3505_inst
    AND_u1_u1_3505_wire <= (OR_u1_u1_3501_wire and ULT_u2_u1_3504_wire);
    -- flow through binary operator AND_u1_u1_3506_inst
    is_mul_3507 <= (op_eq_2_2631 and AND_u1_u1_3505_wire);
    -- flow through binary operator AND_u1_u1_3516_inst
    AND_u1_u1_3516_wire <= (UGT_u4_u1_3512_wire and ULT_u2_u1_3515_wire);
    -- flow through binary operator AND_u1_u1_3517_inst
    is_div_3518 <= (op_eq_2_2631 and AND_u1_u1_3516_wire);
    -- flow through binary operator AND_u1_u1_3524_inst
    AND_u1_u1_3524_wire <= (is_mul_3507 and EQ_u4_u1_3523_wire);
    -- flow through binary operator AND_u1_u1_3529_inst
    AND_u1_u1_3529_wire <= (is_div_3518 and EQ_u4_u1_3528_wire);
    -- flow through binary operator AND_u1_u1_3544_inst
    AND_u1_u1_3544_wire <= (OR_u1_u1_3540_wire and ULT_u2_u1_3543_wire);
    -- flow through binary operator AND_u1_u1_3545_inst
    is_and_3546 <= (op_eq_2_2631 and AND_u1_u1_3544_wire);
    -- flow through binary operator AND_u1_u1_3559_inst
    AND_u1_u1_3559_wire <= (OR_u1_u1_3555_wire and ULT_u2_u1_3558_wire);
    -- flow through binary operator AND_u1_u1_3560_inst
    is_or_3561 <= (op_eq_2_2631 and AND_u1_u1_3559_wire);
    -- flow through binary operator AND_u1_u1_3570_inst
    AND_u1_u1_3570_wire <= (EQ_u4_u1_3566_wire and ULT_u2_u1_3569_wire);
    -- flow through binary operator AND_u1_u1_3571_inst
    is_xor_3572 <= (op_eq_2_2631 and AND_u1_u1_3570_wire);
    -- flow through binary operator AND_u1_u1_3581_inst
    AND_u1_u1_3581_wire <= (EQ_u4_u1_3577_wire and ULT_u2_u1_3580_wire);
    -- flow through binary operator AND_u1_u1_3582_inst
    is_xnor_3583 <= (op_eq_2_2631 and AND_u1_u1_3581_wire);
    -- flow through binary operator AND_u1_u1_3592_inst
    AND_u1_u1_3592_wire <= (EQ_u4_u1_3588_wire and EQ_u2_u1_3591_wire);
    -- flow through binary operator AND_u1_u1_3593_inst
    is_sll_3594 <= (op_eq_2_2631 and AND_u1_u1_3592_wire);
    -- flow through binary operator AND_u1_u1_3603_inst
    AND_u1_u1_3603_wire <= (EQ_u4_u1_3599_wire and EQ_u2_u1_3602_wire);
    -- flow through binary operator AND_u1_u1_3604_inst
    is_srl_3605 <= (op_eq_2_2631 and AND_u1_u1_3603_wire);
    -- flow through binary operator AND_u1_u1_3614_inst
    AND_u1_u1_3614_wire <= (EQ_u4_u1_3610_wire and EQ_u2_u1_3613_wire);
    -- flow through binary operator AND_u1_u1_3615_inst
    is_sra_3616 <= (op_eq_2_2631 and AND_u1_u1_3614_wire);
    -- flow through binary operator AND_u1_u1_3629_inst
    AND_u1_u1_3629_wire <= (OR_u1_u1_3625_wire and ULT_u2_u1_3628_wire);
    -- flow through binary operator AND_u1_u1_3630_inst
    negate_second_operand_3631 <= (op_eq_2_2631 and AND_u1_u1_3629_wire);
    -- flow through binary operator AND_u1_u1_3645_inst
    AND_u1_u1_3645_wire <= (NOT_u1_u1_3641_wire and EQ_u2_u1_3644_wire);
    -- flow through binary operator AND_u1_u1_3652_inst
    AND_u1_u1_3652_wire <= (ULT_u4_u1_3648_wire and EQ_u2_u1_3651_wire);
    -- flow through binary operator AND_u1_u1_3654_inst
    set_cc_3655 <= (op_eq_2_2631 and OR_u1_u1_3653_wire);
    -- flow through binary operator AND_u1_u1_3664_inst
    AND_u1_u1_3664_wire <= (ULT_u4_u1_3660_wire and EQ_u2_u1_3663_wire);
    -- flow through binary operator AND_u1_u1_3665_inst
    tagged_alu_op_3666 <= (op_eq_2_2631 and AND_u1_u1_3664_wire);
    -- flow through binary operator AND_u1_u1_3679_inst
    AND_u1_u1_3679_wire <= (OR_u1_u1_3675_wire and EQ_u2_u1_3678_wire);
    -- flow through binary operator AND_u1_u1_3680_inst
    trap_on_overflow_3681 <= (op_eq_2_2631 and AND_u1_u1_3679_wire);
    -- flow through binary operator AND_u1_u1_3767_inst
    AND_u1_u1_3767_wire <= (EQ_u2_u1_3763_wire and EQ_u4_u1_3766_wire);
    -- flow through binary operator AND_u1_u1_3768_inst
    is_fp_op_1_3769 <= (op_eq_2_2631 and AND_u1_u1_3767_wire);
    -- flow through binary operator AND_u1_u1_3778_inst
    AND_u1_u1_3778_wire <= (EQ_u2_u1_3774_wire and EQ_u4_u1_3777_wire);
    -- flow through binary operator AND_u1_u1_3779_inst
    is_fp_op_2_3780 <= (op_eq_2_2631 and AND_u1_u1_3778_wire);
    -- flow through binary operator AND_u1_u1_3806_inst
    AND_u1_u1_3806_wire <= (EQ_u2_u1_3802_wire and EQ_u4_u1_3805_wire);
    -- flow through binary operator AND_u1_u1_3807_inst
    is_cp_op_1_3808 <= (op_eq_2_2631 and AND_u1_u1_3806_wire);
    -- flow through binary operator AND_u1_u1_3817_inst
    AND_u1_u1_3817_wire <= (EQ_u2_u1_3813_wire and EQ_u4_u1_3816_wire);
    -- flow through binary operator AND_u1_u1_3818_inst
    is_cp_op_2_3819 <= (op_eq_2_2631 and AND_u1_u1_3817_wire);
    -- flow through binary operator AND_u1_u1_3860_inst
    uses_iu_cc_3861 <= (is_bicc_3031 and NOT_u1_u1_3859_wire);
    -- flow through binary operator AND_u1_u1_3866_inst
    uses_fp_cc_3867 <= (is_fbfcc_3049 and NOT_u1_u1_3865_wire);
    -- flow through binary operator AND_u1_u1_3883_inst
    AND_u1_u1_3883_wire <= (NOT_u1_u1_3881_wire and iu_cti_3878);
    -- flow through binary operator AND_u1_u1_3891_inst
    AND_u1_u1_3891_wire <= (is_misc_instr_buffer and NOT_u1_u1_3890_wire);
    -- flow through binary operator AND_u1_u1_3901_inst
    AND_u1_u1_3901_wire <= (is_bicc_3031 and NOT_u1_u1_3900_wire);
    -- flow through binary operator AND_u1_u1_3905_inst
    AND_u1_u1_3905_wire <= (is_misc_instr_buffer and NOT_u1_u1_3904_wire);
    -- flow through binary operator AND_u1_u1_3924_inst
    AND_u1_u1_3924_wire <= (is_store_instr_2721 and asi_bit_2979);
    -- flow through binary operator AND_u1_u1_3932_inst
    iu_mmu_ctrl_write_3933 <= (AND_u1_u1_3924_wire and OR_u1_u1_3931_wire);
    -- flow through binary operator AND_u1_u1_3961_inst
    AND_u1_u1_3961_wire <= (is_misc_instr_buffer and NOT_u1_u1_3960_wire);
    -- flow through binary operator AND_u1_u1_3969_inst
    AND_u1_u1_3969_wire <= (is_load_instr_2710 and NOT_u1_u1_3968_wire);
    -- flow through binary operator AND_u1_u1_3974_inst
    AND_u1_u1_3974_wire <= (is_data_transfer_instr_buffer and OR_u1_u1_3973_wire);
    -- flow through binary operator AND_u1_u1_3985_inst
    AND_u1_u1_3985_wire <= (is_jmpl_3080 and imm_flag_2653);
    -- flow through binary operator AND_u1_u1_3989_inst
    is_ret_or_retl_3990 <= (AND_u1_u1_3985_wire and EQ_u13_u1_3988_wire);
    -- flow through binary operator AND_u1_u1_3994_inst
    cpunit_cti_3995 <= (is_control_transfer_instr_buffer and is_cbccc_3058);
    -- flow through binary operator AND_u1_u1_4000_inst
    AND_u1_u1_4000_wire <= (is_data_transfer_instr_buffer and is_fp_load_2887);
    -- flow through binary operator AND_u1_u1_4008_inst
    AND_u1_u1_4008_wire <= (is_fbfcc_3049 and NOT_u1_u1_4007_wire);
    -- flow through binary operator AND_u1_u1_4014_inst
    AND_u1_u1_4014_wire <= (is_data_transfer_instr_buffer and OR_u1_u1_4013_wire);
    -- flow through binary operator AND_u1_u1_4026_inst
    AND_u1_u1_4026_wire <= (is_data_transfer_instr_buffer and OR_u1_u1_4025_wire);
    -- flow through binary operator AND_u1_u1_4038_inst
    AND_u1_u1_4038_wire <= (is_data_transfer_instr_buffer and OR_u1_u1_4037_wire);
    -- flow through binary operator AND_u1_u1_4040_inst
    uses_cu1_4041 <= (OR_u1_u1_4039_wire and R_ZERO_1_4030_wire_constant);
    -- flow through binary operator AND_u1_u1_4049_inst
    AND_u1_u1_4049_wire <= (is_misc_instr_buffer and is_flush_3191);
    -- flow through binary operator AND_u1_u1_4056_inst
    AND_u1_u1_4056_wire <= (uses_iu1_3893 and NOT_u1_u1_4055_wire);
    -- flow through binary operator AND_u1_u1_4080_inst
    AND_u1_u1_4080_wire <= (NOT_u1_u1_4058_wire and OR_u1_u1_4079_wire);
    -- flow through binary operator AND_u1_u1_4081_inst
    iu1_to_iu2_fast_4082 <= (AND_u1_u1_4056_wire and AND_u1_u1_4080_wire);
    -- flow through binary operator AND_u1_u1_4093_inst
    AND_u1_u1_4093_wire <= (tagged_alu_op_3666 and trap_on_overflow_3681);
    -- flow through binary operator AND_u1_u1_4104_inst
    AND_u1_u1_4104_wire <= (is_misc_instr_buffer and NOT_u1_u1_4103_wire);
    -- flow through binary operator AND_u1_u1_4107_inst
    iu1_can_trap_4108 <= (uses_iu1_3893 and OR_u1_u1_4106_wire);
    -- flow through binary operator AND_u1_u1_4113_inst
    AND_u1_u1_4113_wire <= (uses_iu1_3893 and NOT_u1_u1_4112_wire);
    -- flow through binary operator AND_u1_u1_4117_inst
    iu1_to_iu2_4118 <= (AND_u1_u1_4113_wire and OR_u1_u1_4116_wire);
    -- flow through binary operator AND_u1_u1_4124_inst
    AND_u1_u1_4124_wire <= (iu_cti_3878 and NOT_u1_u1_4123_wire);
    -- flow through binary operator AND_u1_u1_4129_inst
    AND_u1_u1_4129_wire <= (NOT_u1_u1_4126_wire and NOT_u1_u1_4128_wire);
    -- flow through binary operator AND_u1_u1_4130_inst
    AND_u1_u1_4130_wire <= (AND_u1_u1_4124_wire and AND_u1_u1_4129_wire);
    -- flow through binary operator AND_u1_u1_4133_inst
    iu1_to_sc_4134 <= (uses_iu1_3893 and OR_u1_u1_4132_wire);
    -- flow through binary operator AND_u1_u1_4158_inst
    fu_reg_to_ls_4159 <= (is_data_transfer_instr_buffer and is_fp_store_2899);
    -- flow through binary operator AND_u1_u1_4208_inst
    sc_to_cu2_4209 <= (send_from_sc_to_rest_4198 and R_ZERO_1_4206_wire_constant);
    -- flow through binary operator AND_u1_u1_4222_inst
    ls_to_cu2_4223 <= (uses_ls_4051 and R_ZERO_1_4220_wire_constant);
    -- flow through binary operator BITSEL_u32_u1_2652_inst
    process(instr_2598) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_2598, konst_2651_wire_constant, tmp_var);
      imm_flag_2653 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_2657_inst
    process(instr_2598) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_2598, konst_2656_wire_constant, tmp_var);
      annul_flag_2658 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u11_3786_inst
    process(CONCAT_u9_u10_3784_wire, is_fp_op_1_3769) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u9_u10_3784_wire, is_fp_op_1_3769, tmp_var);
      fp_op_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u19_4300_inst
    process(CONCAT_u5_u10_4282_wire, CONCAT_u5_u9_4299_wire) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_4282_wire, CONCAT_u5_u9_4299_wire, tmp_var);
      CONCAT_u10_u19_4300_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u20_4263_inst
    process(CONCAT_u5_u10_4243_wire, CONCAT_u5_u10_4262_wire) -- 
      variable tmp_var : std_logic_vector(19 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_4243_wire, CONCAT_u5_u10_4262_wire, tmp_var);
      CONCAT_u10_u20_4263_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u11_u13_2993_inst
    process(CONCAT_u7_u11_2989_wire, CONCAT_u1_u2_2992_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u11_2989_wire, CONCAT_u1_u2_2992_wire, tmp_var);
      CONCAT_u11_u13_2993_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u24_3001_inst
    process(CONCAT_u11_u13_2993_wire, CONCAT_u2_u11_3000_wire) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u11_u13_2993_wire, CONCAT_u2_u11_3000_wire, tmp_var);
      data_transfer_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2747_inst
    process(is_load_instr_2710, is_store_instr_2721) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_load_instr_2710, is_store_instr_2721, tmp_var);
      CONCAT_u1_u2_2747_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2750_inst
    process(is_atomic_ldstub_instr_2732, is_swap_instr_2743) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_atomic_ldstub_instr_2732, is_swap_instr_2743, tmp_var);
      CONCAT_u1_u2_2750_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2793_inst
    process(S_2770, U_2789) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(S_2770, U_2789, tmp_var);
      CONCAT_u1_u2_2793_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2877_inst
    process(is_u64_transfer_2865, is_u32_transfer_2873) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_u64_transfer_2865, is_u32_transfer_2873, tmp_var);
      CONCAT_u1_u2_2877_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2880_inst
    process(is_u16_transfer_2848, is_u8_transfer_2823) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_u16_transfer_2848, is_u8_transfer_2823, tmp_var);
      CONCAT_u1_u2_2880_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2992_inst
    process(is_fp_access_2918, is_cp_access_2958) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_fp_access_2918, is_cp_access_2958, tmp_var);
      CONCAT_u1_u2_2992_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2996_inst
    process(is_fp_cp_sr_access_2967, is_fp_cp_q_access_2972) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_fp_cp_sr_access_2967, is_fp_cp_q_access_2972, tmp_var);
      CONCAT_u1_u2_2996_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3098_inst
    process(is_rett_3091, is_jmpl_3080) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_rett_3091, is_jmpl_3080, tmp_var);
      CONCAT_u1_u2_3098_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3102_inst
    process(is_ticc_3069, is_bicc_3031) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_ticc_3069, is_bicc_3031, tmp_var);
      CONCAT_u1_u2_3102_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3105_inst
    process(is_fbfcc_3049, is_cbccc_3058) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_fbfcc_3049, is_cbccc_3058, tmp_var);
      CONCAT_u1_u2_3105_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3370_inst
    process(is_nop_3151, is_sethi_3169) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_nop_3151, is_sethi_3169, tmp_var);
      CONCAT_u1_u2_3370_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3375_inst
    process(is_flush_3191, is_stbar_3210) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_flush_3191, is_stbar_3210, tmp_var);
      CONCAT_u1_u2_3375_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3379_inst
    process(is_save_3221, is_restore_3232) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_save_3221, is_restore_3232, tmp_var);
      CONCAT_u1_u2_3379_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3382_inst
    process(is_read_asr_3250, is_read_y_3265) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_asr_3250, is_read_y_3265, tmp_var);
      CONCAT_u1_u2_3382_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3387_inst
    process(is_read_psr_3276, is_read_wim_3287) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_psr_3276, is_read_wim_3287, tmp_var);
      CONCAT_u1_u2_3387_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3390_inst
    process(is_read_tbr_3298, is_write_asr_3313) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_tbr_3298, is_write_asr_3313, tmp_var);
      CONCAT_u1_u2_3390_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3394_inst
    process(is_write_y_3328, is_write_psr_3339) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_write_y_3328, is_write_psr_3339, tmp_var);
      CONCAT_u1_u2_3394_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3397_inst
    process(is_write_wim_3350, is_write_tbr_3361) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_write_wim_3350, is_write_tbr_3361, tmp_var);
      CONCAT_u1_u2_3397_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3708_inst
    process(is_add_3452, is_sub_3479) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_add_3452, is_sub_3479, tmp_var);
      CONCAT_u1_u2_3708_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3713_inst
    process(is_div_3518, signed_mul_div_3531) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_div_3518, signed_mul_div_3531, tmp_var);
      CONCAT_u1_u2_3713_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3717_inst
    process(is_and_3546, is_or_3561) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_and_3546, is_or_3561, tmp_var);
      CONCAT_u1_u2_3717_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3720_inst
    process(is_xor_3572, is_xnor_3583) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_xor_3572, is_xnor_3583, tmp_var);
      CONCAT_u1_u2_3720_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3725_inst
    process(is_sll_3594, is_srl_3605) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_sll_3594, is_srl_3605, tmp_var);
      CONCAT_u1_u2_3725_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3728_inst
    process(is_sra_3616, negate_second_operand_3631) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_sra_3616, negate_second_operand_3631, tmp_var);
      CONCAT_u1_u2_3728_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3732_inst
    process(with_carry_3492, set_cc_3655) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(with_carry_3492, set_cc_3655, tmp_var);
      CONCAT_u1_u2_3732_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3735_inst
    process(tagged_alu_op_3666, trap_on_overflow_3681) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(tagged_alu_op_3666, trap_on_overflow_3681, tmp_var);
      CONCAT_u1_u2_3735_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3823_inst
    process(is_cp_op_2_3819, is_cp_op_1_3808) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_cp_op_2_3819, is_cp_op_1_3808, tmp_var);
      cp_op_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3937_inst
    process(iu_cti_3878, fu_cti_3911) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_cti_3878, fu_cti_3911, tmp_var);
      CONCAT_u1_u2_3937_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_3944_inst
    process(iu_flush_3917, OR_u1_u1_3943_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_flush_3917, OR_u1_u1_3943_wire, tmp_var);
      CONCAT_u1_u2_3944_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4227_inst
    process(uses_iu_cc_3861, uses_fp_cc_3867) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_iu_cc_3861, uses_fp_cc_3867, tmp_var);
      CONCAT_u1_u2_4227_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4232_inst
    process(uses_iu1_3893, uses_iu2_3977) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_iu1_3893, uses_iu2_3977, tmp_var);
      CONCAT_u1_u2_4232_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4236_inst
    process(uses_ls_4051, uses_fu1_4002) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_ls_4051, uses_fu1_4002, tmp_var);
      CONCAT_u1_u2_4236_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4241_inst
    process(uses_cu1_4041, uses_cu2_4044) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_cu1_4041, uses_cu2_4044, tmp_var);
      CONCAT_u1_u2_4241_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4246_inst
    process(reads_iu_rfile_3908, iu1_can_trap_4108) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(reads_iu_rfile_3908, iu1_can_trap_4108, tmp_var);
      CONCAT_u1_u2_4246_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4251_inst
    process(fu1_can_trap_4019, iu1_to_iu2_fast_4082) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fu1_can_trap_4019, iu1_to_iu2_fast_4082, tmp_var);
      CONCAT_u1_u2_4251_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4255_inst
    process(iu1_to_iu2_4118, iu1_to_sc_4134) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_iu2_4118, iu1_to_sc_4134, tmp_var);
      CONCAT_u1_u2_4255_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4260_inst
    process(iu1_to_ls_trap_4142, iu1_to_fu2_4145) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_ls_trap_4142, iu1_to_fu2_4145, tmp_var);
      CONCAT_u1_u2_4260_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4266_inst
    process(iu1_to_cu2_4148, fu1_to_fu2_4151) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_cu2_4148, fu1_to_fu2_4151, tmp_var);
      CONCAT_u1_u2_4266_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4271_inst
    process(fu_reg_to_ls_4159, fu1_to_ls_4162) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fu_reg_to_ls_4159, fu1_to_ls_4162, tmp_var);
      CONCAT_u1_u2_4271_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4275_inst
    process(fu1_to_iu2_4165) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fu1_to_iu2_4165, fu1_to_cu2_4168, tmp_var);
      CONCAT_u1_u2_4275_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4290_inst
    process(sc_to_fu2_4204, sc_to_cu2_4209) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_to_fu2_4204, sc_to_cu2_4209, tmp_var);
      CONCAT_u1_u2_4290_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4294_inst
    process(sc_to_ls_4212, ls_to_iu2_4215) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_to_ls_4212, ls_to_iu2_4215, tmp_var);
      CONCAT_u1_u2_4294_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_4297_inst
    process(ls_to_fu2_4218, ls_to_cu2_4223) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_fu2_4218, ls_to_cu2_4223, tmp_var);
      CONCAT_u1_u2_4297_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u9_2999_inst
    process(asi_bit_2979, asi_id_8_2983) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(asi_bit_2979, asi_id_8_2983, tmp_var);
      CONCAT_u1_u9_2999_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u20_u39_4301_inst
    process(CONCAT_u10_u20_4263_wire, CONCAT_u10_u19_4300_wire) -- 
      variable tmp_var : std_logic_vector(38 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u10_u20_4263_wire, CONCAT_u10_u19_4300_wire, tmp_var);
      instr_pipeline_usage_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u11_3000_inst
    process(CONCAT_u1_u2_2996_wire, CONCAT_u1_u9_2999_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2996_wire, CONCAT_u1_u9_2999_wire, tmp_var);
      CONCAT_u2_u11_3000_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_2795_inst
    process(CONCAT_u1_u2_2793_wire, FP_2783) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2793_wire, FP_2783, tmp_var);
      data_transfer_data_type_2796 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3372_inst
    process(CONCAT_u1_u2_3370_wire, is_mulscc_3180) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3370_wire, is_mulscc_3180, tmp_var);
      CONCAT_u2_u3_3372_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3710_inst
    process(CONCAT_u1_u2_3708_wire, is_mul_3507) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3708_wire, is_mul_3507, tmp_var);
      CONCAT_u2_u3_3710_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3939_inst
    process(CONCAT_u1_u2_3937_wire, cp_cti_3914) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3937_wire, cp_cti_3914, tmp_var);
      CONCAT_u2_u3_3939_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_3946_inst
    process(CONCAT_u1_u2_3944_wire, iu_mmu_ctrl_write_3933) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3944_wire, iu_mmu_ctrl_write_3933, tmp_var);
      CONCAT_u2_u3_3946_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4229_inst
    process(CONCAT_u1_u2_4227_wire, is_ret_or_retl_3990) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4227_wire, is_ret_or_retl_3990, tmp_var);
      CONCAT_u2_u3_4229_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4238_inst
    process(CONCAT_u1_u2_4236_wire, uses_fu2_4028) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4236_wire, uses_fu2_4028, tmp_var);
      CONCAT_u2_u3_4238_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4248_inst
    process(CONCAT_u1_u2_4246_wire, reads_fu_rfile_4016) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4246_wire, reads_fu_rfile_4016, tmp_var);
      CONCAT_u2_u3_4248_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4257_inst
    process(CONCAT_u1_u2_4255_wire, iu_reg_to_ls_4139) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4255_wire, iu_reg_to_ls_4139, tmp_var);
      CONCAT_u2_u3_4257_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4268_inst
    process(CONCAT_u1_u2_4266_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4266_wire, fu1_to_sc_4154, tmp_var);
      CONCAT_u2_u3_4268_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4277_inst
    process(CONCAT_u1_u2_4275_wire, cu1_to_cu2_4171) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4275_wire, cu1_to_cu2_4171, tmp_var);
      CONCAT_u2_u3_4277_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_4287_inst
    process(CONCAT_u1_u2_4285_wire_constant, sc_to_iu2_4201) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4285_wire_constant, sc_to_iu2_4201, tmp_var);
      CONCAT_u2_u3_4287_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_2751_inst
    process(CONCAT_u1_u2_2747_wire, CONCAT_u1_u2_2750_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2747_wire, CONCAT_u1_u2_2750_wire, tmp_var);
      data_instr_type_2752 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_2881_inst
    process(CONCAT_u1_u2_2877_wire, CONCAT_u1_u2_2880_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2877_wire, CONCAT_u1_u2_2880_wire, tmp_var);
      data_transfer_width_2882 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3106_inst
    process(CONCAT_u1_u2_3102_wire, CONCAT_u1_u2_3105_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3102_wire, CONCAT_u1_u2_3105_wire, tmp_var);
      CONCAT_u2_u4_3106_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3383_inst
    process(CONCAT_u1_u2_3379_wire, CONCAT_u1_u2_3382_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3379_wire, CONCAT_u1_u2_3382_wire, tmp_var);
      CONCAT_u2_u4_3383_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3391_inst
    process(CONCAT_u1_u2_3387_wire, CONCAT_u1_u2_3390_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3387_wire, CONCAT_u1_u2_3390_wire, tmp_var);
      CONCAT_u2_u4_3391_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3398_inst
    process(CONCAT_u1_u2_3394_wire, CONCAT_u1_u2_3397_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3394_wire, CONCAT_u1_u2_3397_wire, tmp_var);
      CONCAT_u2_u4_3398_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3721_inst
    process(CONCAT_u1_u2_3717_wire, CONCAT_u1_u2_3720_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3717_wire, CONCAT_u1_u2_3720_wire, tmp_var);
      CONCAT_u2_u4_3721_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3729_inst
    process(CONCAT_u1_u2_3725_wire, CONCAT_u1_u2_3728_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3725_wire, CONCAT_u1_u2_3728_wire, tmp_var);
      CONCAT_u2_u4_3729_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_3736_inst
    process(CONCAT_u1_u2_3732_wire, CONCAT_u1_u2_3735_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_3732_wire, CONCAT_u1_u2_3735_wire, tmp_var);
      CONCAT_u2_u4_3736_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_4298_inst
    process(CONCAT_u1_u2_4294_wire, CONCAT_u1_u2_4297_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_4294_wire, CONCAT_u1_u2_4297_wire, tmp_var);
      CONCAT_u2_u4_4298_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_3376_inst
    process(CONCAT_u2_u3_3372_wire, CONCAT_u1_u2_3375_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_3372_wire, CONCAT_u1_u2_3375_wire, tmp_var);
      CONCAT_u3_u5_3376_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_3714_inst
    process(CONCAT_u2_u3_3710_wire, CONCAT_u1_u2_3713_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_3710_wire, CONCAT_u1_u2_3713_wire, tmp_var);
      CONCAT_u3_u5_3714_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4233_inst
    process(CONCAT_u2_u3_4229_wire, CONCAT_u1_u2_4232_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4229_wire, CONCAT_u1_u2_4232_wire, tmp_var);
      CONCAT_u3_u5_4233_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4242_inst
    process(CONCAT_u2_u3_4238_wire, CONCAT_u1_u2_4241_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4238_wire, CONCAT_u1_u2_4241_wire, tmp_var);
      CONCAT_u3_u5_4242_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4252_inst
    process(CONCAT_u2_u3_4248_wire, CONCAT_u1_u2_4251_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4248_wire, CONCAT_u1_u2_4251_wire, tmp_var);
      CONCAT_u3_u5_4252_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4261_inst
    process(CONCAT_u2_u3_4257_wire, CONCAT_u1_u2_4260_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4257_wire, CONCAT_u1_u2_4260_wire, tmp_var);
      CONCAT_u3_u5_4261_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4272_inst
    process(CONCAT_u2_u3_4268_wire, CONCAT_u1_u2_4271_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4268_wire, CONCAT_u1_u2_4271_wire, tmp_var);
      CONCAT_u3_u5_4272_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4281_inst
    process(CONCAT_u2_u3_4277_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4277_wire, CONCAT_u1_u2_4280_wire_constant, tmp_var);
      CONCAT_u3_u5_4281_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_4291_inst
    process(CONCAT_u2_u3_4287_wire, CONCAT_u1_u2_4290_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_4287_wire, CONCAT_u1_u2_4290_wire, tmp_var);
      CONCAT_u3_u5_4291_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_3947_inst
    process(CONCAT_u2_u3_3939_wire, CONCAT_u2_u3_3946_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_3939_wire, CONCAT_u2_u3_3946_wire, tmp_var);
      stream_corrector_info_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_3095_inst
    process(cond_3017, is_call_3022) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(cond_3017, is_call_3022, tmp_var);
      CONCAT_u4_u5_3095_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_2987_inst
    process(data_instr_type_2752, data_transfer_data_type_2796) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(data_instr_type_2752, data_transfer_data_type_2796, tmp_var);
      CONCAT_u4_u7_2987_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_3399_inst
    process(CONCAT_u2_u4_3391_wire, CONCAT_u2_u4_3398_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_3391_wire, CONCAT_u2_u4_3398_wire, tmp_var);
      CONCAT_u4_u8_3399_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_3737_inst
    process(CONCAT_u2_u4_3729_wire, CONCAT_u2_u4_3736_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_3729_wire, CONCAT_u2_u4_3736_wire, tmp_var);
      CONCAT_u4_u8_3737_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_4243_inst
    process(CONCAT_u3_u5_4233_wire, CONCAT_u3_u5_4242_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_4233_wire, CONCAT_u3_u5_4242_wire, tmp_var);
      CONCAT_u5_u10_4243_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_4262_inst
    process(CONCAT_u3_u5_4252_wire, CONCAT_u3_u5_4261_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_4252_wire, CONCAT_u3_u5_4261_wire, tmp_var);
      CONCAT_u5_u10_4262_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_4282_inst
    process(CONCAT_u3_u5_4272_wire, CONCAT_u3_u5_4281_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_4272_wire, CONCAT_u3_u5_4281_wire, tmp_var);
      CONCAT_u5_u10_4282_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_3099_inst
    process(CONCAT_u4_u5_3095_wire, CONCAT_u1_u2_3098_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_3095_wire, CONCAT_u1_u2_3098_wire, tmp_var);
      CONCAT_u5_u7_3099_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_3384_inst
    process(CONCAT_u3_u5_3376_wire, CONCAT_u2_u4_3383_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_3376_wire, CONCAT_u2_u4_3383_wire, tmp_var);
      CONCAT_u5_u9_3384_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_3722_inst
    process(CONCAT_u3_u5_3714_wire, CONCAT_u2_u4_3721_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_3714_wire, CONCAT_u2_u4_3721_wire, tmp_var);
      CONCAT_u5_u9_3722_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_4299_inst
    process(CONCAT_u3_u5_4291_wire, CONCAT_u2_u4_4298_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_4291_wire, CONCAT_u2_u4_4298_wire, tmp_var);
      CONCAT_u5_u9_4299_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u11_2989_inst
    process(CONCAT_u4_u7_2987_wire, data_transfer_width_2882) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_2987_wire, data_transfer_width_2882, tmp_var);
      CONCAT_u7_u11_2989_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u11_3107_inst
    process(CONCAT_u5_u7_3099_wire, CONCAT_u2_u4_3106_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_3099_wire, CONCAT_u2_u4_3106_wire, tmp_var);
      control_transfer_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u10_3784_inst
    process(opf_2618, is_fp_op_2_3780) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(opf_2618, is_fp_op_2_3780, tmp_var);
      CONCAT_u9_u10_3784_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u17_3400_inst
    process(CONCAT_u5_u9_3384_wire, CONCAT_u4_u8_3399_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u9_3384_wire, CONCAT_u4_u8_3399_wire, tmp_var);
      misc_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u17_3738_inst
    process(CONCAT_u5_u9_3722_wire, CONCAT_u4_u8_3737_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u9_3722_wire, CONCAT_u4_u8_3737_wire, tmp_var);
      alu_instr_spec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u13_u1_3988_inst
    process(imm_13_3981) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(imm_13_3981, konst_3987_wire_constant, tmp_var);
      EQ_u13_u1_3988_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u22_u1_3148_inst
    process(slice_3146_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(slice_3146_wire, konst_3147_wire_constant, tmp_var);
      EQ_u22_u1_3148_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2630_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_2629_wire_constant, tmp_var);
      op_eq_2_2631 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2635_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_2634_wire_constant, tmp_var);
      op_eq_3_2636 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2774_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_2773_wire_constant, tmp_var);
      EQ_u2_u1_2774_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2923_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_2922_wire_constant, tmp_var);
      EQ_u2_u1_2923_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2937_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_2936_wire_constant, tmp_var);
      EQ_u2_u1_2937_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_2977_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_2976_wire_constant, tmp_var);
      EQ_u2_u1_2977_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3021_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3020_wire_constant, tmp_var);
      is_call_3022 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3026_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3025_wire_constant, tmp_var);
      EQ_u2_u1_3026_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3044_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3043_wire_constant, tmp_var);
      EQ_u2_u1_3044_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3053_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3052_wire_constant, tmp_var);
      EQ_u2_u1_3053_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3066_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3065_wire_constant, tmp_var);
      EQ_u2_u1_3066_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3077_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3076_wire_constant, tmp_var);
      EQ_u2_u1_3077_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3088_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3087_wire_constant, tmp_var);
      EQ_u2_u1_3088_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3137_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3136_wire_constant, tmp_var);
      EQ_u2_u1_3137_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3155_inst
    process(op_2606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op_2606, konst_3154_wire_constant, tmp_var);
      EQ_u2_u1_3155_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3174_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3173_wire_constant, tmp_var);
      EQ_u2_u1_3174_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3185_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3184_wire_constant, tmp_var);
      EQ_u2_u1_3185_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3196_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3195_wire_constant, tmp_var);
      EQ_u2_u1_3196_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3215_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3214_wire_constant, tmp_var);
      EQ_u2_u1_3215_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3226_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3225_wire_constant, tmp_var);
      EQ_u2_u1_3226_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3240_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3239_wire_constant, tmp_var);
      EQ_u2_u1_3240_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3255_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3254_wire_constant, tmp_var);
      EQ_u2_u1_3255_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3270_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3269_wire_constant, tmp_var);
      EQ_u2_u1_3270_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3281_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3280_wire_constant, tmp_var);
      EQ_u2_u1_3281_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3292_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3291_wire_constant, tmp_var);
      EQ_u2_u1_3292_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3303_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3302_wire_constant, tmp_var);
      EQ_u2_u1_3303_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3318_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3317_wire_constant, tmp_var);
      EQ_u2_u1_3318_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3333_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3332_wire_constant, tmp_var);
      EQ_u2_u1_3333_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3344_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3343_wire_constant, tmp_var);
      EQ_u2_u1_3344_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3355_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3354_wire_constant, tmp_var);
      EQ_u2_u1_3355_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3440_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3439_wire_constant, tmp_var);
      EQ_u2_u1_3440_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3475_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3474_wire_constant, tmp_var);
      EQ_u2_u1_3475_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3591_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3590_wire_constant, tmp_var);
      EQ_u2_u1_3591_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3602_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3601_wire_constant, tmp_var);
      EQ_u2_u1_3602_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3613_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3612_wire_constant, tmp_var);
      EQ_u2_u1_3613_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3644_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3643_wire_constant, tmp_var);
      EQ_u2_u1_3644_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3651_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3650_wire_constant, tmp_var);
      EQ_u2_u1_3651_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3663_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3662_wire_constant, tmp_var);
      EQ_u2_u1_3663_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3678_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3677_wire_constant, tmp_var);
      EQ_u2_u1_3678_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3763_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3762_wire_constant, tmp_var);
      EQ_u2_u1_3763_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3774_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3773_wire_constant, tmp_var);
      EQ_u2_u1_3774_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3802_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3801_wire_constant, tmp_var);
      EQ_u2_u1_3802_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_3813_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_col_2622, konst_3812_wire_constant, tmp_var);
      EQ_u2_u1_3813_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_3029_inst
    process(op2_2610) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2610, konst_3028_wire_constant, tmp_var);
      EQ_u3_u1_3029_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_3047_inst
    process(op2_2610) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2610, konst_3046_wire_constant, tmp_var);
      EQ_u3_u1_3047_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_3056_inst
    process(op2_2610) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2610, konst_3055_wire_constant, tmp_var);
      EQ_u3_u1_3056_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_3140_inst
    process(op2_2610) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2610, konst_3139_wire_constant, tmp_var);
      EQ_u3_u1_3140_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_3158_inst
    process(op2_2610) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op2_2610, konst_3157_wire_constant, tmp_var);
      EQ_u3_u1_3158_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2683_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2682_wire_constant, tmp_var);
      EQ_u4_u1_2683_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2691_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2690_wire_constant, tmp_var);
      EQ_u4_u1_2691_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2695_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2694_wire_constant, tmp_var);
      EQ_u4_u1_2695_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2703_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2702_wire_constant, tmp_var);
      EQ_u4_u1_2703_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2726_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2725_wire_constant, tmp_var);
      EQ_u4_u1_2726_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2737_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2736_wire_constant, tmp_var);
      EQ_u4_u1_2737_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2761_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2760_wire_constant, tmp_var);
      EQ_u4_u1_2761_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2764_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2763_wire_constant, tmp_var);
      EQ_u4_u1_2764_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2800_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2799_wire_constant, tmp_var);
      EQ_u4_u1_2800_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2807_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2806_wire_constant, tmp_var);
      EQ_u4_u1_2807_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2815_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2814_wire_constant, tmp_var);
      EQ_u4_u1_2815_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2827_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2826_wire_constant, tmp_var);
      EQ_u4_u1_2827_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2834_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2833_wire_constant, tmp_var);
      EQ_u4_u1_2834_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2842_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2841_wire_constant, tmp_var);
      EQ_u4_u1_2842_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2852_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2851_wire_constant, tmp_var);
      EQ_u4_u1_2852_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2855_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2854_wire_constant, tmp_var);
      EQ_u4_u1_2855_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2859_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2858_wire_constant, tmp_var);
      EQ_u4_u1_2859_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2892_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2891_wire_constant, tmp_var);
      EQ_u4_u1_2892_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2904_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2903_wire_constant, tmp_var);
      EQ_u4_u1_2904_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2911_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2910_wire_constant, tmp_var);
      EQ_u4_u1_2911_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2930_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2929_wire_constant, tmp_var);
      EQ_u4_u1_2930_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2944_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2943_wire_constant, tmp_var);
      EQ_u4_u1_2944_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_2951_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_2950_wire_constant, tmp_var);
      EQ_u4_u1_2951_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3035_inst
    process(cond_3017) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_3017, konst_3034_wire_constant, tmp_var);
      EQ_u4_u1_3035_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3038_inst
    process(cond_3017) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cond_3017, konst_3037_wire_constant, tmp_var);
      EQ_u4_u1_3038_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3063_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3062_wire_constant, tmp_var);
      EQ_u4_u1_3063_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3074_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3073_wire_constant, tmp_var);
      EQ_u4_u1_3074_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3085_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3084_wire_constant, tmp_var);
      EQ_u4_u1_3085_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3178_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3177_wire_constant, tmp_var);
      EQ_u4_u1_3178_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3189_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3188_wire_constant, tmp_var);
      EQ_u4_u1_3189_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3200_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3199_wire_constant, tmp_var);
      EQ_u4_u1_3200_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3219_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3218_wire_constant, tmp_var);
      EQ_u4_u1_3219_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3229_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3228_wire_constant, tmp_var);
      EQ_u4_u1_3229_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3244_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3243_wire_constant, tmp_var);
      EQ_u4_u1_3244_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3259_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3258_wire_constant, tmp_var);
      EQ_u4_u1_3259_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3273_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3272_wire_constant, tmp_var);
      EQ_u4_u1_3273_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3284_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3283_wire_constant, tmp_var);
      EQ_u4_u1_3284_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3295_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3294_wire_constant, tmp_var);
      EQ_u4_u1_3295_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3307_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3306_wire_constant, tmp_var);
      EQ_u4_u1_3307_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3322_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3321_wire_constant, tmp_var);
      EQ_u4_u1_3322_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3336_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3335_wire_constant, tmp_var);
      EQ_u4_u1_3336_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3347_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3346_wire_constant, tmp_var);
      EQ_u4_u1_3347_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3358_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3357_wire_constant, tmp_var);
      EQ_u4_u1_3358_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3430_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3429_wire_constant, tmp_var);
      EQ_u4_u1_3430_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3437_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3436_wire_constant, tmp_var);
      EQ_u4_u1_3437_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3444_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3443_wire_constant, tmp_var);
      EQ_u4_u1_3444_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3457_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3456_wire_constant, tmp_var);
      EQ_u4_u1_3457_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3460_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3459_wire_constant, tmp_var);
      EQ_u4_u1_3460_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3468_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3467_wire_constant, tmp_var);
      EQ_u4_u1_3468_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3471_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3470_wire_constant, tmp_var);
      EQ_u4_u1_3471_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3484_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3483_wire_constant, tmp_var);
      EQ_u4_u1_3484_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3489_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3488_wire_constant, tmp_var);
      EQ_u4_u1_3489_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3497_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3496_wire_constant, tmp_var);
      EQ_u4_u1_3497_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3500_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3499_wire_constant, tmp_var);
      EQ_u4_u1_3500_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3523_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3522_wire_constant, tmp_var);
      EQ_u4_u1_3523_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3528_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3527_wire_constant, tmp_var);
      EQ_u4_u1_3528_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3536_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3535_wire_constant, tmp_var);
      EQ_u4_u1_3536_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3539_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3538_wire_constant, tmp_var);
      EQ_u4_u1_3539_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3551_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3550_wire_constant, tmp_var);
      EQ_u4_u1_3551_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3554_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3553_wire_constant, tmp_var);
      EQ_u4_u1_3554_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3566_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3565_wire_constant, tmp_var);
      EQ_u4_u1_3566_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3577_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3576_wire_constant, tmp_var);
      EQ_u4_u1_3577_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3588_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3587_wire_constant, tmp_var);
      EQ_u4_u1_3588_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3599_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3598_wire_constant, tmp_var);
      EQ_u4_u1_3599_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3610_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3609_wire_constant, tmp_var);
      EQ_u4_u1_3610_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3621_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3620_wire_constant, tmp_var);
      EQ_u4_u1_3621_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3624_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3623_wire_constant, tmp_var);
      EQ_u4_u1_3624_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3636_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3635_wire_constant, tmp_var);
      EQ_u4_u1_3636_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3639_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3638_wire_constant, tmp_var);
      EQ_u4_u1_3639_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3671_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3670_wire_constant, tmp_var);
      EQ_u4_u1_3671_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3674_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3673_wire_constant, tmp_var);
      EQ_u4_u1_3674_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3766_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3765_wire_constant, tmp_var);
      EQ_u4_u1_3766_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3777_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3776_wire_constant, tmp_var);
      EQ_u4_u1_3777_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3805_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3804_wire_constant, tmp_var);
      EQ_u4_u1_3805_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_3816_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(op3_row_2626, konst_3815_wire_constant, tmp_var);
      EQ_u4_u1_3816_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_3144_inst
    process(rd_2648) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rd_2648, konst_3143_wire_constant, tmp_var);
      EQ_u5_u1_3144_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_3204_inst
    process(rd_2648) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rd_2648, konst_3203_wire_constant, tmp_var);
      EQ_u5_u1_3204_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_3207_inst
    process(rs1_2640) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_2640, konst_3206_wire_constant, tmp_var);
      EQ_u5_u1_3207_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_3262_inst
    process(rs1_2640) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_2640, konst_3261_wire_constant, tmp_var);
      EQ_u5_u1_3262_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_3325_inst
    process(rd_2648) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rd_2648, konst_3324_wire_constant, tmp_var);
      EQ_u5_u1_3325_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3927_inst
    process(asi_id_8_2983) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_2983, R_ASI_MMU_FLUSH_PROBE_3926_wire_constant, tmp_var);
      EQ_u8_u1_3927_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_3930_inst
    process(asi_id_8_2983) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_2983, R_ASI_MMU_REGISTER_3929_wire_constant, tmp_var);
      EQ_u8_u1_3930_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u17_u1_3405_inst
    process(misc_instr_spec_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(misc_instr_spec_buffer, konst_3404_wire_constant, tmp_var);
      is_misc_instr_buffer <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u22_u1_3166_inst
    process(slice_3164_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_3164_wire, konst_3165_wire_constant, tmp_var);
      NEQ_u22_u1_3166_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_2756_inst
    process(data_instr_type_2752) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(data_instr_type_2752, konst_2755_wire_constant, tmp_var);
      is_data_transfer_instr_buffer <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_2777_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(op3_row_2626, konst_2776_wire_constant, tmp_var);
      NEQ_u4_u1_2777_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_3162_inst
    process(rd_2648) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(rd_2648, konst_3161_wire_constant, tmp_var);
      NEQ_u5_u1_3162_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_3247_inst
    process(rs1_2640) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(rs1_2640, konst_3246_wire_constant, tmp_var);
      NEQ_u5_u1_3247_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_3310_inst
    process(rd_2648) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(rd_2648, konst_3309_wire_constant, tmp_var);
      NEQ_u5_u1_3310_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_2788_inst
    process(OR_u1_u1_2787_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_2787_wire, tmp_var);
      U_2789 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_2872_inst
    process(OR_u1_u1_2871_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_2871_wire, tmp_var);
      is_u32_transfer_2873 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3235_inst
    process(is_stbar_3210) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_stbar_3210, tmp_var);
      NOT_u1_u1_3235_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3641_inst
    process(OR_u1_u1_3640_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3640_wire, tmp_var);
      NOT_u1_u1_3641_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3846_inst
    process(OR_u1_u1_3845_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3845_wire, tmp_var);
      is_illegal_instr_buffer <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3859_inst
    process(is_ba_or_bn_cond_3040) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ba_or_bn_cond_3040, tmp_var);
      NOT_u1_u1_3859_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3865_inst
    process(is_ba_or_bn_cond_3040) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ba_or_bn_cond_3040, tmp_var);
      NOT_u1_u1_3865_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3881_inst
    process(is_bicc_3031) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_bicc_3031, tmp_var);
      NOT_u1_u1_3881_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3890_inst
    process(OR_u1_u1_3889_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3889_wire, tmp_var);
      NOT_u1_u1_3890_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3900_inst
    process(is_ba_or_bn_cond_3040) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ba_or_bn_cond_3040, tmp_var);
      NOT_u1_u1_3900_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3904_inst
    process(is_nop_or_stbar_3366) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_nop_or_stbar_3366, tmp_var);
      NOT_u1_u1_3904_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3960_inst
    process(OR_u1_u1_3959_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3959_wire, tmp_var);
      NOT_u1_u1_3960_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_3968_inst
    process(OR_u1_u1_3967_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_3967_wire, tmp_var);
      NOT_u1_u1_3968_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4007_inst
    process(is_ba_or_bn_cond_3040) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ba_or_bn_cond_3040, tmp_var);
      NOT_u1_u1_4007_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4055_inst
    process(tagged_alu_op_3666) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", tagged_alu_op_3666, tmp_var);
      NOT_u1_u1_4055_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4058_inst
    process(trap_on_overflow_3681) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", trap_on_overflow_3681, tmp_var);
      NOT_u1_u1_4058_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4103_inst
    process(OR_u1_u1_4102_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_4102_wire, tmp_var);
      NOT_u1_u1_4103_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4112_inst
    process(iu1_to_iu2_fast_4082) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu1_to_iu2_fast_4082, tmp_var);
      NOT_u1_u1_4112_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4123_inst
    process(is_call_3022) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_call_3022, tmp_var);
      NOT_u1_u1_4123_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4126_inst
    process(is_bicc_3031) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_bicc_3031, tmp_var);
      NOT_u1_u1_4126_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_4128_inst
    process(is_ret_or_retl_3990) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_ret_or_retl_3990, tmp_var);
      NOT_u1_u1_4128_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_2688_inst
    OR_u1_u1_2688_wire <= (ULT_u4_u1_2680_wire or AND_u1_u1_2687_wire);
    -- flow through binary operator OR_u1_u1_2692_inst
    OR_u1_u1_2692_wire <= (OR_u1_u1_2688_wire or EQ_u4_u1_2691_wire);
    -- flow through binary operator OR_u1_u1_2700_inst
    OR_u1_u1_2700_wire <= (OR_u1_u1_2692_wire or AND_u1_u1_2699_wire);
    -- flow through binary operator OR_u1_u1_2708_inst
    OR_u1_u1_2708_wire <= (OR_u1_u1_2700_wire or AND_u1_u1_2707_wire);
    -- flow through binary operator OR_u1_u1_2765_inst
    OR_u1_u1_2765_wire <= (EQ_u4_u1_2761_wire or EQ_u4_u1_2764_wire);
    -- flow through binary operator OR_u1_u1_2787_inst
    OR_u1_u1_2787_wire <= (S_2770 or FP_2783);
    -- flow through binary operator OR_u1_u1_2812_inst
    OR_u1_u1_2812_wire <= (AND_u1_u1_2804_wire or AND_u1_u1_2811_wire);
    -- flow through binary operator OR_u1_u1_2821_inst
    OR_u1_u1_2821_wire <= (AND_u1_u1_2819_wire or is_atomic_ldstub_instr_2732);
    -- flow through binary operator OR_u1_u1_2822_inst
    is_u8_transfer_2823 <= (OR_u1_u1_2812_wire or OR_u1_u1_2821_wire);
    -- flow through binary operator OR_u1_u1_2839_inst
    OR_u1_u1_2839_wire <= (AND_u1_u1_2831_wire or AND_u1_u1_2838_wire);
    -- flow through binary operator OR_u1_u1_2847_inst
    is_u16_transfer_2848 <= (OR_u1_u1_2839_wire or AND_u1_u1_2846_wire);
    -- flow through binary operator OR_u1_u1_2856_inst
    OR_u1_u1_2856_wire <= (EQ_u4_u1_2852_wire or EQ_u4_u1_2855_wire);
    -- flow through binary operator OR_u1_u1_2864_inst
    is_u64_transfer_2865 <= (OR_u1_u1_2856_wire or AND_u1_u1_2863_wire);
    -- flow through binary operator OR_u1_u1_2869_inst
    OR_u1_u1_2869_wire <= (is_u8_transfer_2823 or is_u16_transfer_2848);
    -- flow through binary operator OR_u1_u1_2871_inst
    OR_u1_u1_2871_wire <= (OR_u1_u1_2869_wire or is_u64_transfer_2865);
    -- flow through binary operator OR_u1_u1_2917_inst
    is_fp_access_2918 <= (is_fp_load_2887 or is_fp_store_2899);
    -- flow through binary operator OR_u1_u1_2957_inst
    is_cp_access_2958 <= (is_cp_load_2925 or is_cp_store_2939);
    -- flow through binary operator OR_u1_u1_2962_inst
    OR_u1_u1_2962_wire <= (is_fp_load_to_fsr_2894 or is_fp_store_from_fsr_2906);
    -- flow through binary operator OR_u1_u1_2965_inst
    OR_u1_u1_2965_wire <= (is_cp_load_to_cpsr_2932 or is_cp_store_from_cpsr_2946);
    -- flow through binary operator OR_u1_u1_2966_inst
    is_fp_cp_sr_access_2967 <= (OR_u1_u1_2962_wire or OR_u1_u1_2965_wire);
    -- flow through binary operator OR_u1_u1_2971_inst
    is_fp_cp_q_access_2972 <= (is_fp_store_from_fq_2913 or is_cp_store_from_cpq_2953);
    -- flow through binary operator OR_u1_u1_3039_inst
    is_ba_or_bn_cond_3040 <= (EQ_u4_u1_3035_wire or EQ_u4_u1_3038_wire);
    -- flow through binary operator OR_u1_u1_3112_inst
    OR_u1_u1_3112_wire <= (is_call_3022 or is_rett_3091);
    -- flow through binary operator OR_u1_u1_3115_inst
    OR_u1_u1_3115_wire <= (is_jmpl_3080 or is_ticc_3069);
    -- flow through binary operator OR_u1_u1_3116_inst
    OR_u1_u1_3116_wire <= (OR_u1_u1_3112_wire or OR_u1_u1_3115_wire);
    -- flow through binary operator OR_u1_u1_3119_inst
    OR_u1_u1_3119_wire <= (is_bicc_3031 or is_fbfcc_3049);
    -- flow through binary operator OR_u1_u1_3121_inst
    OR_u1_u1_3121_wire <= (OR_u1_u1_3119_wire or is_cbccc_3058);
    -- flow through binary operator OR_u1_u1_3122_inst
    is_control_transfer_instr_buffer <= (OR_u1_u1_3116_wire or OR_u1_u1_3121_wire);
    -- flow through binary operator OR_u1_u1_3167_inst
    OR_u1_u1_3167_wire <= (NEQ_u5_u1_3162_wire or NEQ_u22_u1_3166_wire);
    -- flow through binary operator OR_u1_u1_3365_inst
    is_nop_or_stbar_3366 <= (is_nop_3151 or is_stbar_3210);
    -- flow through binary operator OR_u1_u1_3449_inst
    OR_u1_u1_3449_wire <= (AND_u1_u1_3441_wire or AND_u1_u1_3448_wire);
    -- flow through binary operator OR_u1_u1_3450_inst
    OR_u1_u1_3450_wire <= (AND_u1_u1_3434_wire or OR_u1_u1_3449_wire);
    -- flow through binary operator OR_u1_u1_3461_inst
    OR_u1_u1_3461_wire <= (EQ_u4_u1_3457_wire or EQ_u4_u1_3460_wire);
    -- flow through binary operator OR_u1_u1_3472_inst
    OR_u1_u1_3472_wire <= (EQ_u4_u1_3468_wire or EQ_u4_u1_3471_wire);
    -- flow through binary operator OR_u1_u1_3477_inst
    OR_u1_u1_3477_wire <= (AND_u1_u1_3465_wire or AND_u1_u1_3476_wire);
    -- flow through binary operator OR_u1_u1_3491_inst
    with_carry_3492 <= (AND_u1_u1_3485_wire or AND_u1_u1_3490_wire);
    -- flow through binary operator OR_u1_u1_3501_inst
    OR_u1_u1_3501_wire <= (EQ_u4_u1_3497_wire or EQ_u4_u1_3500_wire);
    -- flow through binary operator OR_u1_u1_3530_inst
    signed_mul_div_3531 <= (AND_u1_u1_3524_wire or AND_u1_u1_3529_wire);
    -- flow through binary operator OR_u1_u1_3540_inst
    OR_u1_u1_3540_wire <= (EQ_u4_u1_3536_wire or EQ_u4_u1_3539_wire);
    -- flow through binary operator OR_u1_u1_3555_inst
    OR_u1_u1_3555_wire <= (EQ_u4_u1_3551_wire or EQ_u4_u1_3554_wire);
    -- flow through binary operator OR_u1_u1_3625_inst
    OR_u1_u1_3625_wire <= (EQ_u4_u1_3621_wire or EQ_u4_u1_3624_wire);
    -- flow through binary operator OR_u1_u1_3640_inst
    OR_u1_u1_3640_wire <= (EQ_u4_u1_3636_wire or EQ_u4_u1_3639_wire);
    -- flow through binary operator OR_u1_u1_3653_inst
    OR_u1_u1_3653_wire <= (AND_u1_u1_3645_wire or AND_u1_u1_3652_wire);
    -- flow through binary operator OR_u1_u1_3675_inst
    OR_u1_u1_3675_wire <= (EQ_u4_u1_3671_wire or EQ_u4_u1_3674_wire);
    -- flow through binary operator OR_u1_u1_3685_inst
    OR_u1_u1_3685_wire <= (is_add_3452 or is_sub_3479);
    -- flow through binary operator OR_u1_u1_3687_inst
    OR_u1_u1_3687_wire <= (OR_u1_u1_3685_wire or is_mul_3507);
    -- flow through binary operator OR_u1_u1_3690_inst
    OR_u1_u1_3690_wire <= (is_div_3518 or is_and_3546);
    -- flow through binary operator OR_u1_u1_3692_inst
    OR_u1_u1_3692_wire <= (OR_u1_u1_3690_wire or is_or_3561);
    -- flow through binary operator OR_u1_u1_3693_inst
    OR_u1_u1_3693_wire <= (OR_u1_u1_3687_wire or OR_u1_u1_3692_wire);
    -- flow through binary operator OR_u1_u1_3696_inst
    OR_u1_u1_3696_wire <= (is_xor_3572 or is_xnor_3583);
    -- flow through binary operator OR_u1_u1_3698_inst
    OR_u1_u1_3698_wire <= (OR_u1_u1_3696_wire or is_sll_3594);
    -- flow through binary operator OR_u1_u1_3701_inst
    OR_u1_u1_3701_wire <= (is_srl_3605 or is_sra_3616);
    -- flow through binary operator OR_u1_u1_3702_inst
    OR_u1_u1_3702_wire <= (OR_u1_u1_3698_wire or OR_u1_u1_3701_wire);
    -- flow through binary operator OR_u1_u1_3703_inst
    is_alu_instr_buffer <= (OR_u1_u1_3693_wire or OR_u1_u1_3702_wire);
    -- flow through binary operator OR_u1_u1_3791_inst
    is_fp_op_instr_buffer <= (is_fp_op_2_3780 or is_fp_op_1_3769);
    -- flow through binary operator OR_u1_u1_3828_inst
    is_cp_op_instr_buffer <= (is_cp_op_2_3819 or is_cp_op_1_3808);
    -- flow through binary operator OR_u1_u1_3837_inst
    OR_u1_u1_3837_wire <= (is_cp_op_instr_buffer or is_fp_op_instr_buffer);
    -- flow through binary operator OR_u1_u1_3839_inst
    OR_u1_u1_3839_wire <= (OR_u1_u1_3837_wire or is_alu_instr_buffer);
    -- flow through binary operator OR_u1_u1_3842_inst
    OR_u1_u1_3842_wire <= (is_control_transfer_instr_buffer or is_data_transfer_instr_buffer);
    -- flow through binary operator OR_u1_u1_3844_inst
    OR_u1_u1_3844_wire <= (OR_u1_u1_3842_wire or is_misc_instr_buffer);
    -- flow through binary operator OR_u1_u1_3845_inst
    OR_u1_u1_3845_wire <= (OR_u1_u1_3839_wire or OR_u1_u1_3844_wire);
    -- flow through binary operator OR_u1_u1_3871_inst
    OR_u1_u1_3871_wire <= (is_call_3022 or is_rett_3091);
    -- flow through binary operator OR_u1_u1_3873_inst
    OR_u1_u1_3873_wire <= (OR_u1_u1_3871_wire or is_jmpl_3080);
    -- flow through binary operator OR_u1_u1_3876_inst
    OR_u1_u1_3876_wire <= (is_ticc_3069 or is_bicc_3031);
    -- flow through binary operator OR_u1_u1_3877_inst
    iu_cti_3878 <= (OR_u1_u1_3873_wire or OR_u1_u1_3876_wire);
    -- flow through binary operator OR_u1_u1_3885_inst
    OR_u1_u1_3885_wire <= (AND_u1_u1_3883_wire or is_alu_instr_buffer);
    -- flow through binary operator OR_u1_u1_3889_inst
    OR_u1_u1_3889_wire <= (is_flush_3191 or is_nop_or_stbar_3366);
    -- flow through binary operator OR_u1_u1_3892_inst
    uses_iu1_3893 <= (OR_u1_u1_3885_wire or AND_u1_u1_3891_wire);
    -- flow through binary operator OR_u1_u1_3897_inst
    OR_u1_u1_3897_wire <= (uses_iu1_3893 or is_data_transfer_instr_buffer);
    -- flow through binary operator OR_u1_u1_3906_inst
    OR_u1_u1_3906_wire <= (AND_u1_u1_3901_wire or AND_u1_u1_3905_wire);
    -- flow through binary operator OR_u1_u1_3907_inst
    reads_iu_rfile_3908 <= (OR_u1_u1_3897_wire or OR_u1_u1_3906_wire);
    -- flow through binary operator OR_u1_u1_3931_inst
    OR_u1_u1_3931_wire <= (EQ_u8_u1_3927_wire or EQ_u8_u1_3930_wire);
    -- flow through binary operator OR_u1_u1_3943_inst
    OR_u1_u1_3943_wire <= (iu_write_psr_3920 or is_rett_3091);
    -- flow through binary operator OR_u1_u1_3952_inst
    OR_u1_u1_3952_wire <= (is_alu_instr_buffer or is_rett_3091);
    -- flow through binary operator OR_u1_u1_3954_inst
    OR_u1_u1_3954_wire <= (OR_u1_u1_3952_wire or is_call_3022);
    -- flow through binary operator OR_u1_u1_3959_inst
    OR_u1_u1_3959_wire <= (is_nop_or_stbar_3366 or is_flush_3191);
    -- flow through binary operator OR_u1_u1_3962_inst
    OR_u1_u1_3962_wire <= (is_jmpl_3080 or AND_u1_u1_3961_wire);
    -- flow through binary operator OR_u1_u1_3967_inst
    OR_u1_u1_3967_wire <= (is_fp_access_2918 or is_cp_access_2958);
    -- flow through binary operator OR_u1_u1_3971_inst
    OR_u1_u1_3971_wire <= (AND_u1_u1_3969_wire or is_atomic_ldstub_instr_2732);
    -- flow through binary operator OR_u1_u1_3973_inst
    OR_u1_u1_3973_wire <= (OR_u1_u1_3971_wire or is_swap_instr_2743);
    -- flow through binary operator OR_u1_u1_3975_inst
    OR_u1_u1_3975_wire <= (OR_u1_u1_3962_wire or AND_u1_u1_3974_wire);
    -- flow through binary operator OR_u1_u1_3976_inst
    uses_iu2_3977 <= (OR_u1_u1_3954_wire or OR_u1_u1_3975_wire);
    -- flow through binary operator OR_u1_u1_4001_inst
    uses_fu1_4002 <= (is_fp_op_instr_buffer or AND_u1_u1_4000_wire);
    -- flow through binary operator OR_u1_u1_4009_inst
    OR_u1_u1_4009_wire <= (is_fp_op_instr_buffer or AND_u1_u1_4008_wire);
    -- flow through binary operator OR_u1_u1_4013_inst
    OR_u1_u1_4013_wire <= (is_fp_load_2887 or is_fp_store_2899);
    -- flow through binary operator OR_u1_u1_4015_inst
    reads_fu_rfile_4016 <= (OR_u1_u1_4009_wire or AND_u1_u1_4014_wire);
    -- flow through binary operator OR_u1_u1_4025_inst
    OR_u1_u1_4025_wire <= (is_fp_load_2887 or is_fp_store_2899);
    -- flow through binary operator OR_u1_u1_4027_inst
    uses_fu2_4028 <= (is_fp_op_instr_buffer or AND_u1_u1_4026_wire);
    -- flow through binary operator OR_u1_u1_4033_inst
    OR_u1_u1_4033_wire <= (is_cp_op_instr_buffer or cpunit_cti_3995);
    -- flow through binary operator OR_u1_u1_4037_inst
    OR_u1_u1_4037_wire <= (is_cp_store_2939 or is_cp_load_2925);
    -- flow through binary operator OR_u1_u1_4039_inst
    OR_u1_u1_4039_wire <= (OR_u1_u1_4033_wire or AND_u1_u1_4038_wire);
    -- flow through binary operator OR_u1_u1_4050_inst
    uses_ls_4051 <= (is_data_transfer_instr_buffer or AND_u1_u1_4049_wire);
    -- flow through binary operator OR_u1_u1_4061_inst
    OR_u1_u1_4061_wire <= (is_and_3546 or is_or_3561);
    -- flow through binary operator OR_u1_u1_4063_inst
    OR_u1_u1_4063_wire <= (OR_u1_u1_4061_wire or is_xor_3572);
    -- flow through binary operator OR_u1_u1_4066_inst
    OR_u1_u1_4066_wire <= (is_xnor_3583 or is_add_3452);
    -- flow through binary operator OR_u1_u1_4068_inst
    OR_u1_u1_4068_wire <= (OR_u1_u1_4066_wire or is_sub_3479);
    -- flow through binary operator OR_u1_u1_4069_inst
    OR_u1_u1_4069_wire <= (OR_u1_u1_4063_wire or OR_u1_u1_4068_wire);
    -- flow through binary operator OR_u1_u1_4072_inst
    OR_u1_u1_4072_wire <= (is_sethi_3169 or is_sll_3594);
    -- flow through binary operator OR_u1_u1_4074_inst
    OR_u1_u1_4074_wire <= (OR_u1_u1_4072_wire or is_srl_3605);
    -- flow through binary operator OR_u1_u1_4077_inst
    OR_u1_u1_4077_wire <= (is_sra_3616 or is_mul_3507);
    -- flow through binary operator OR_u1_u1_4078_inst
    OR_u1_u1_4078_wire <= (OR_u1_u1_4074_wire or OR_u1_u1_4077_wire);
    -- flow through binary operator OR_u1_u1_4079_inst
    OR_u1_u1_4079_wire <= (OR_u1_u1_4069_wire or OR_u1_u1_4078_wire);
    -- flow through binary operator OR_u1_u1_4087_inst
    OR_u1_u1_4087_wire <= (is_ticc_3069 or is_jmpl_3080);
    -- flow through binary operator OR_u1_u1_4089_inst
    OR_u1_u1_4089_wire <= (OR_u1_u1_4087_wire or is_rett_3091);
    -- flow through binary operator OR_u1_u1_4094_inst
    OR_u1_u1_4094_wire <= (is_div_3518 or AND_u1_u1_4093_wire);
    -- flow through binary operator OR_u1_u1_4098_inst
    OR_u1_u1_4098_wire <= (is_nop_or_stbar_3366 or is_sethi_3169);
    -- flow through binary operator OR_u1_u1_4101_inst
    OR_u1_u1_4101_wire <= (is_mulscc_3180 or is_flush_3191);
    -- flow through binary operator OR_u1_u1_4102_inst
    OR_u1_u1_4102_wire <= (OR_u1_u1_4098_wire or OR_u1_u1_4101_wire);
    -- flow through binary operator OR_u1_u1_4105_inst
    OR_u1_u1_4105_wire <= (OR_u1_u1_4094_wire or AND_u1_u1_4104_wire);
    -- flow through binary operator OR_u1_u1_4106_inst
    OR_u1_u1_4106_wire <= (OR_u1_u1_4089_wire or OR_u1_u1_4105_wire);
    -- flow through binary operator OR_u1_u1_4116_inst
    OR_u1_u1_4116_wire <= (uses_iu2_3977 or iu1_can_trap_4108);
    -- flow through binary operator OR_u1_u1_4132_inst
    OR_u1_u1_4132_wire <= (AND_u1_u1_4130_wire or iu_write_psr_3920);
    -- flow through binary operator OR_u1_u1_4138_inst
    iu_reg_to_ls_4139 <= (is_data_transfer_instr_buffer or is_flush_3191);
    -- flow through binary operator OR_u1_u1_4187_inst
    OR_u1_u1_4187_wire <= (thread_head_buffer or stream_head_buffer);
    -- flow through binary operator OR_u1_u1_4190_inst
    OR_u1_u1_4190_wire <= (last_was_cti_buffer or is_rett_3091);
    -- flow through binary operator OR_u1_u1_4191_inst
    OR_u1_u1_4191_wire <= (OR_u1_u1_4187_wire or OR_u1_u1_4190_wire);
    -- flow through binary operator OR_u1_u1_4194_inst
    OR_u1_u1_4194_wire <= (is_write_psr_3339 or is_flush_3191);
    -- flow through binary operator OR_u1_u1_4196_inst
    OR_u1_u1_4196_wire <= (OR_u1_u1_4194_wire or iu_mmu_ctrl_write_3933);
    -- flow through binary operator OR_u1_u1_4197_inst
    send_from_sc_to_rest_4198 <= (OR_u1_u1_4191_wire or OR_u1_u1_4196_wire);
    -- flow through binary operator UGT_u2_u1_2862_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(op3_col_2622, konst_2861_wire_constant, tmp_var);
      UGT_u2_u1_2862_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u4_u1_2715_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(op3_row_2626, konst_2714_wire_constant, tmp_var);
      UGT_u4_u1_2715_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u4_u1_3512_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(op3_row_2626, konst_3511_wire_constant, tmp_var);
      UGT_u4_u1_3512_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2686_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2685_wire_constant, tmp_var);
      ULT_u2_u1_2686_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2698_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2697_wire_constant, tmp_var);
      ULT_u2_u1_2698_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2706_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2705_wire_constant, tmp_var);
      ULT_u2_u1_2706_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2729_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2728_wire_constant, tmp_var);
      ULT_u2_u1_2729_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2740_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2739_wire_constant, tmp_var);
      ULT_u2_u1_2740_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2768_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2767_wire_constant, tmp_var);
      ULT_u2_u1_2768_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2803_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2802_wire_constant, tmp_var);
      ULT_u2_u1_2803_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2810_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2809_wire_constant, tmp_var);
      ULT_u2_u1_2810_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2818_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2817_wire_constant, tmp_var);
      ULT_u2_u1_2818_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2830_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2829_wire_constant, tmp_var);
      ULT_u2_u1_2830_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2837_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2836_wire_constant, tmp_var);
      ULT_u2_u1_2837_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_2845_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_2844_wire_constant, tmp_var);
      ULT_u2_u1_2845_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3433_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3432_wire_constant, tmp_var);
      ULT_u2_u1_3433_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3447_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3446_wire_constant, tmp_var);
      ULT_u2_u1_3447_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3464_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3463_wire_constant, tmp_var);
      ULT_u2_u1_3464_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3504_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3503_wire_constant, tmp_var);
      ULT_u2_u1_3504_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3515_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3514_wire_constant, tmp_var);
      ULT_u2_u1_3515_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3543_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3542_wire_constant, tmp_var);
      ULT_u2_u1_3543_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3558_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3557_wire_constant, tmp_var);
      ULT_u2_u1_3558_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3569_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3568_wire_constant, tmp_var);
      ULT_u2_u1_3569_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3580_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3579_wire_constant, tmp_var);
      ULT_u2_u1_3580_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_3628_inst
    process(op3_col_2622) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_col_2622, konst_3627_wire_constant, tmp_var);
      ULT_u2_u1_3628_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_2680_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_2626, konst_2679_wire_constant, tmp_var);
      ULT_u4_u1_2680_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_2718_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_2626, konst_2717_wire_constant, tmp_var);
      ULT_u4_u1_2718_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_2781_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_2626, konst_2780_wire_constant, tmp_var);
      ULT_u4_u1_2781_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_3648_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_2626, konst_3647_wire_constant, tmp_var);
      ULT_u4_u1_3648_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u4_u1_3660_inst
    process(op3_row_2626) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(op3_row_2626, konst_3659_wire_constant, tmp_var);
      ULT_u4_u1_3660_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end decode_instruction_base_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_instruction_for_iunit_Volatile is -- 
  port ( -- 
    iclass : in  std_logic_vector(2 downto 0);
    ispec : in  std_logic_vector(23 downto 0);
    instr : in  std_logic_vector(31 downto 0);
    op_fetch_control_word : out  std_logic_vector(39 downto 0);
    alu_exec_control_word : out  std_logic_vector(54 downto 0);
    iunit_writeback_control_word : out  std_logic_vector(24 downto 0);
    imm_flag : out  std_logic_vector(0 downto 0);
    imm_operand : out  std_logic_vector(31 downto 0);
    priv_instr_trap_if_not_supervisor : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_instruction_for_iunit_Volatile;
architecture decode_instruction_for_iunit_Volatile_arch of decode_instruction_for_iunit_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(59-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal iclass_buffer :  std_logic_vector(2 downto 0);
  signal ispec_buffer :  std_logic_vector(23 downto 0);
  signal instr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal op_fetch_control_word_buffer :  std_logic_vector(39 downto 0);
  signal alu_exec_control_word_buffer :  std_logic_vector(54 downto 0);
  signal iunit_writeback_control_word_buffer :  std_logic_vector(24 downto 0);
  signal imm_flag_buffer :  std_logic_vector(0 downto 0);
  signal imm_operand_buffer :  std_logic_vector(31 downto 0);
  signal priv_instr_trap_if_not_supervisor_buffer :  std_logic_vector(0 downto 0);
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
  component decode_misc_ispec_Volatile is -- 
    port ( -- 
      ispec : in  std_logic_vector(23 downto 0);
      is_nop : out  std_logic_vector(0 downto 0);
      is_sethi : out  std_logic_vector(0 downto 0);
      is_mulscc : out  std_logic_vector(0 downto 0);
      is_flush : out  std_logic_vector(0 downto 0);
      is_stbar : out  std_logic_vector(0 downto 0);
      is_save : out  std_logic_vector(0 downto 0);
      is_restore : out  std_logic_vector(0 downto 0);
      is_read_asr : out  std_logic_vector(0 downto 0);
      is_read_y : out  std_logic_vector(0 downto 0);
      is_read_psr : out  std_logic_vector(0 downto 0);
      is_read_wim : out  std_logic_vector(0 downto 0);
      is_read_tbr : out  std_logic_vector(0 downto 0);
      is_write_asr : out  std_logic_vector(0 downto 0);
      is_write_y : out  std_logic_vector(0 downto 0);
      is_write_psr : out  std_logic_vector(0 downto 0);
      is_write_wim : out  std_logic_vector(0 downto 0);
      is_write_tbr : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decode_alu_ispec_Volatile is -- 
    port ( -- 
      ispec : in  std_logic_vector(23 downto 0);
      is_add : out  std_logic_vector(0 downto 0);
      is_sub : out  std_logic_vector(0 downto 0);
      is_mul : out  std_logic_vector(0 downto 0);
      is_div : out  std_logic_vector(0 downto 0);
      signed_mul_div : out  std_logic_vector(0 downto 0);
      is_and : out  std_logic_vector(0 downto 0);
      is_or : out  std_logic_vector(0 downto 0);
      is_xor : out  std_logic_vector(0 downto 0);
      is_xnor : out  std_logic_vector(0 downto 0);
      is_sll : out  std_logic_vector(0 downto 0);
      is_srl : out  std_logic_vector(0 downto 0);
      is_sra : out  std_logic_vector(0 downto 0);
      negate_second_operand : out  std_logic_vector(0 downto 0);
      with_carry : out  std_logic_vector(0 downto 0);
      set_cc : out  std_logic_vector(0 downto 0);
      tagged_alu_op : out  std_logic_vector(0 downto 0);
      trap_on_overflow : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decode_cti_ispec_Volatile is -- 
    port ( -- 
      ispec : in  std_logic_vector(23 downto 0);
      cond : out  std_logic_vector(3 downto 0);
      is_call : out  std_logic_vector(0 downto 0);
      is_rett : out  std_logic_vector(0 downto 0);
      is_jmpl : out  std_logic_vector(0 downto 0);
      is_ticc : out  std_logic_vector(0 downto 0);
      is_bicc : out  std_logic_vector(0 downto 0);
      is_fbfcc : out  std_logic_vector(0 downto 0);
      is_cbccc : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  iclass_buffer <= iclass;
  ispec_buffer <= ispec;
  instr_buffer <= instr;
  -- output handling  -------------------------------------------------------
  op_fetch_control_word <= op_fetch_control_word_buffer;
  alu_exec_control_word <= alu_exec_control_word_buffer;
  iunit_writeback_control_word <= iunit_writeback_control_word_buffer;
  imm_flag <= imm_flag_buffer;
  imm_operand <= imm_operand_buffer;
  priv_instr_trap_if_not_supervisor <= priv_instr_trap_if_not_supervisor_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_5307_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5326_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5342_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5361_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5389_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5392_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5405_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5462_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5467_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5503_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5508_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_5563_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_5092_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u10_u16_5858_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u12_u28_5859_wire : std_logic_vector(27 downto 0);
    signal CONCAT_u13_u26_5700_wire : std_logic_vector(25 downto 0);
    signal CONCAT_u15_u27_5805_wire : std_logic_vector(26 downto 0);
    signal CONCAT_u1_u2_5582_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5658_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5693_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5703_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5708_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5712_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5761_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5766_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5772_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5784_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5789_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5795_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5800_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5808_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5813_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5819_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5824_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5831_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5836_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5842_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5854_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5865_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5868_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5872_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5880_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_5883_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u6_5684_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u1_u6_5717_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u22_u32_5137_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u2_u10_5876_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u2_u3_5705_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5714_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5763_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5768_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5774_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5786_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5791_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5797_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5802_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5810_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5815_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5821_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5826_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5833_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5844_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_5856_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_5869_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_5884_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u7_5695_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u2_u7_5838_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u3_u10_5839_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u3_u5_5709_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u6_5698_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5769_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5792_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5803_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5816_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5827_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u6_5857_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u9_5718_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u3_u9_5780_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u4_u11_5890_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u4_u14_5877_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u4_u5_5777_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u5_u14_5719_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u5_u6_5689_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u6_5779_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u6_5887_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u8_5875_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u6_u12_5804_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u12_5828_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u15_5781_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u6_u7_5686_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_5889_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u7_u13_5690_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u7_u13_5699_wire : std_logic_vector(12 downto 0);
    signal EQ_u8_u1_5399_wire : std_logic_vector(0 downto 0);
    signal EQ_u8_u1_5402_wire : std_logic_vector(0 downto 0);
    signal FP_5384 : std_logic_vector(0 downto 0);
    signal MUX_5168_wire : std_logic_vector(31 downto 0);
    signal MUX_5178_wire : std_logic_vector(31 downto 0);
    signal MUX_5185_wire : std_logic_vector(31 downto 0);
    signal MUX_5190_wire : std_logic_vector(31 downto 0);
    signal MUX_5194_wire : std_logic_vector(31 downto 0);
    signal NOT_u1_u1_5332_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5388_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5391_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5394_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5396_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5464_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5466_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5505_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5507_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_5852_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5094_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5096_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5099_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5101_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5143_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5146_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5147_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5150_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5152_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5153_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5156_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5158_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5161_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5163_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5164_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5165_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5171_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5173_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5300_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5304_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5306_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5311_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5313_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5316_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5317_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5320_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5323_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5324_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5325_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5327_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5335_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5339_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5341_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5346_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5348_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5351_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5352_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5355_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5358_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5359_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5360_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5362_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5363_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5403_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5404_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5411_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5413_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5420_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5422_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5439_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5441_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5444_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5445_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5448_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5450_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5453_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5454_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5461_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5473_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5475_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5478_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5479_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5482_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5484_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5487_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5488_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5500_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5502_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5514_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5516_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5519_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5525_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5528_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5540_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5542_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5558_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5560_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5565_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5567_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5573_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5576_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5589_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5592_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5598_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5611_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5614_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5620_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5623_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5630_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5633_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5634_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5637_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5639_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5640_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5646_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5665_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5725_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5727_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5730_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5732_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5739_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5745_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5747_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5750_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5847_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5850_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_5851_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_5179_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_5186_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_5195_wire : std_logic_vector(31 downto 0);
    signal R_ALU_INSTR_4925_wire_constant : std_logic_vector(2 downto 0);
    signal R_ASI_SUPERVISOR_DATA_5401_wire_constant : std_logic_vector(7 downto 0);
    signal R_ASI_USER_DATA_5398_wire_constant : std_logic_vector(7 downto 0);
    signal R_CONTROL_TRANSFER_INSTR_4910_wire_constant : std_logic_vector(2 downto 0);
    signal R_DATA_TRANSFER_INSTR_4915_wire_constant : std_logic_vector(2 downto 0);
    signal R_MISC_INSTR_4920_wire_constant : std_logic_vector(2 downto 0);
    signal R_ZERO_10_5136_wire_constant : std_logic_vector(9 downto 0);
    signal SHL_u32_u32_5176_wire : std_logic_vector(31 downto 0);
    signal SHL_u32_u32_5183_wire : std_logic_vector(31 downto 0);
    signal S_5384 : std_logic_vector(0 downto 0);
    signal U_5384 : std_logic_vector(0 downto 0);
    signal alu_4927 : std_logic_vector(0 downto 0);
    signal annul_flag_4977 : std_logic_vector(0 downto 0);
    signal asi_bit_5384 : std_logic_vector(0 downto 0);
    signal asi_id_8_5384 : std_logic_vector(7 downto 0);
    signal asr_id_5536 : std_logic_vector(4 downto 0);
    signal br_cond_4937 : std_logic_vector(3 downto 0);
    signal cti_4912 : std_logic_vector(0 downto 0);
    signal double_word_5435 : std_logic_vector(0 downto 0);
    signal dti_4917 : std_logic_vector(0 downto 0);
    signal dti_to_debug_5407 : std_logic_vector(0 downto 0);
    signal fetch_asr_5607 : std_logic_vector(0 downto 0);
    signal fetch_psr_5585 : std_logic_vector(2 downto 0);
    signal fetch_psr_cc_5569 : std_logic_vector(0 downto 0);
    signal fetch_psr_cwp_5544 : std_logic_vector(0 downto 0);
    signal fetch_psr_rest_5578 : std_logic_vector(0 downto 0);
    signal fetch_tbr_5604 : std_logic_vector(0 downto 0);
    signal fetch_wim_5594 : std_logic_vector(0 downto 0);
    signal fetch_y_5601 : std_logic_vector(0 downto 0);
    signal is_a_tagged_alu_op_5549 : std_logic_vector(0 downto 0);
    signal is_alu_add_5221 : std_logic_vector(0 downto 0);
    signal is_alu_and_5241 : std_logic_vector(0 downto 0);
    signal is_alu_div_5236 : std_logic_vector(0 downto 0);
    signal is_alu_logical_5625 : std_logic_vector(0 downto 0);
    signal is_alu_mul_5231 : std_logic_vector(0 downto 0);
    signal is_alu_or_5246 : std_logic_vector(0 downto 0);
    signal is_alu_sll_5261 : std_logic_vector(0 downto 0);
    signal is_alu_sra_5271 : std_logic_vector(0 downto 0);
    signal is_alu_srl_5266 : std_logic_vector(0 downto 0);
    signal is_alu_sub_5226 : std_logic_vector(0 downto 0);
    signal is_alu_xnor_5256 : std_logic_vector(0 downto 0);
    signal is_alu_xor_5251 : std_logic_vector(0 downto 0);
    signal is_atomic_ldstub_5384 : std_logic_vector(0 downto 0);
    signal is_bicc_4962 : std_logic_vector(0 downto 0);
    signal is_call_4942 : std_logic_vector(0 downto 0);
    signal is_cbccc_4972 : std_logic_vector(0 downto 0);
    signal is_cp_access_5384 : std_logic_vector(0 downto 0);
    signal is_fbfcc_4967 : std_logic_vector(0 downto 0);
    signal is_flush_5023 : std_logic_vector(0 downto 0);
    signal is_fp_access_5384 : std_logic_vector(0 downto 0);
    signal is_fp_cp_q_access_5384 : std_logic_vector(0 downto 0);
    signal is_fp_cp_sr_access_5384 : std_logic_vector(0 downto 0);
    signal is_jmpl_4952 : std_logic_vector(0 downto 0);
    signal is_load_5384 : std_logic_vector(0 downto 0);
    signal is_load_to_debug_5416 : std_logic_vector(0 downto 0);
    signal is_mulscc_5018 : std_logic_vector(0 downto 0);
    signal is_nop_5008 : std_logic_vector(0 downto 0);
    signal is_read_asr_5043 : std_logic_vector(0 downto 0);
    signal is_read_psr_5053 : std_logic_vector(0 downto 0);
    signal is_read_tbr_5063 : std_logic_vector(0 downto 0);
    signal is_read_wim_5058 : std_logic_vector(0 downto 0);
    signal is_read_y_5048 : std_logic_vector(0 downto 0);
    signal is_restore_5038 : std_logic_vector(0 downto 0);
    signal is_rett_4947 : std_logic_vector(0 downto 0);
    signal is_save_5033 : std_logic_vector(0 downto 0);
    signal is_sethi_5013 : std_logic_vector(0 downto 0);
    signal is_stbar_5028 : std_logic_vector(0 downto 0);
    signal is_store_5384 : std_logic_vector(0 downto 0);
    signal is_store_to_debug_5425 : std_logic_vector(0 downto 0);
    signal is_swap_5384 : std_logic_vector(0 downto 0);
    signal is_ticc_4957 : std_logic_vector(0 downto 0);
    signal is_write_asr_5068 : std_logic_vector(0 downto 0);
    signal is_write_psr_5078 : std_logic_vector(0 downto 0);
    signal is_write_tbr_5088 : std_logic_vector(0 downto 0);
    signal is_write_wim_5083 : std_logic_vector(0 downto 0);
    signal is_write_y_5073 : std_logic_vector(0 downto 0);
    signal konst_4975_wire_constant : std_logic_vector(31 downto 0);
    signal konst_4980_wire_constant : std_logic_vector(4 downto 0);
    signal konst_5091_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5167_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5175_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5177_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5182_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5184_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5189_wire_constant : std_logic_vector(31 downto 0);
    signal konst_5193_wire_constant : std_logic_vector(31 downto 0);
    signal ld_st_alternate_5430 : std_logic_vector(0 downto 0);
    signal misc_4922 : std_logic_vector(0 downto 0);
    signal negate_second_operand_5276 : std_logic_vector(0 downto 0);
    signal r_add_5216 : std_logic_vector(0 downto 0);
    signal r_and_5216 : std_logic_vector(0 downto 0);
    signal r_bicc_4937 : std_logic_vector(0 downto 0);
    signal r_byte_5384 : std_logic_vector(0 downto 0);
    signal r_call_4937 : std_logic_vector(0 downto 0);
    signal r_cbccc_4937 : std_logic_vector(0 downto 0);
    signal r_div_5216 : std_logic_vector(0 downto 0);
    signal r_double_word_5384 : std_logic_vector(0 downto 0);
    signal r_fbfcc_4937 : std_logic_vector(0 downto 0);
    signal r_flush_5003 : std_logic_vector(0 downto 0);
    signal r_half_word_5384 : std_logic_vector(0 downto 0);
    signal r_jmpl_4937 : std_logic_vector(0 downto 0);
    signal r_mul_5216 : std_logic_vector(0 downto 0);
    signal r_mulscc_5003 : std_logic_vector(0 downto 0);
    signal r_nop_5003 : std_logic_vector(0 downto 0);
    signal r_or_5216 : std_logic_vector(0 downto 0);
    signal r_read_asr_5003 : std_logic_vector(0 downto 0);
    signal r_read_psr_5003 : std_logic_vector(0 downto 0);
    signal r_read_tbr_5003 : std_logic_vector(0 downto 0);
    signal r_read_wim_5003 : std_logic_vector(0 downto 0);
    signal r_read_y_5003 : std_logic_vector(0 downto 0);
    signal r_restore_5003 : std_logic_vector(0 downto 0);
    signal r_rett_4937 : std_logic_vector(0 downto 0);
    signal r_save_5003 : std_logic_vector(0 downto 0);
    signal r_sethi_5003 : std_logic_vector(0 downto 0);
    signal r_sll_5216 : std_logic_vector(0 downto 0);
    signal r_sra_5216 : std_logic_vector(0 downto 0);
    signal r_srl_5216 : std_logic_vector(0 downto 0);
    signal r_stbar_5003 : std_logic_vector(0 downto 0);
    signal r_sub_5216 : std_logic_vector(0 downto 0);
    signal r_ticc_4937 : std_logic_vector(0 downto 0);
    signal r_word_5384 : std_logic_vector(0 downto 0);
    signal r_write_asr_5003 : std_logic_vector(0 downto 0);
    signal r_write_psr_5003 : std_logic_vector(0 downto 0);
    signal r_write_tbr_5003 : std_logic_vector(0 downto 0);
    signal r_write_wim_5003 : std_logic_vector(0 downto 0);
    signal r_write_y_5003 : std_logic_vector(0 downto 0);
    signal r_xnor_5216 : std_logic_vector(0 downto 0);
    signal r_xor_5216 : std_logic_vector(0 downto 0);
    signal rd_4984 : std_logic_vector(4 downto 0);
    signal read_rd_low_5469 : std_logic_vector(0 downto 0);
    signal read_rs1_5329 : std_logic_vector(0 downto 0);
    signal read_rs2_5365 : std_logic_vector(0 downto 0);
    signal rnegate_second_operand_5216 : std_logic_vector(0 downto 0);
    signal rs1_4903 : std_logic_vector(4 downto 0);
    signal rs2_4907 : std_logic_vector(4 downto 0);
    signal rset_cc_5216 : std_logic_vector(0 downto 0);
    signal rtagged_alu_op_5216 : std_logic_vector(0 downto 0);
    signal rtrap_on_overflow_5216 : std_logic_vector(0 downto 0);
    signal rwith_carry_5216 : std_logic_vector(0 downto 0);
    signal set_cc_5286 : std_logic_vector(0 downto 0);
    signal sethi_imm_5139 : std_logic_vector(31 downto 0);
    signal signed_mul_div_5216 : std_logic_vector(0 downto 0);
    signal simm13to32_5124 : std_logic_vector(31 downto 0);
    signal simm22to32_5117 : std_logic_vector(31 downto 0);
    signal simm30to32_5110 : std_logic_vector(31 downto 0);
    signal simm7to32_5132 : std_logic_vector(31 downto 0);
    signal slice_4982_wire : std_logic_vector(4 downto 0);
    signal slice_5106_wire : std_logic_vector(29 downto 0);
    signal slice_5113_wire : std_logic_vector(21 downto 0);
    signal slice_5120_wire : std_logic_vector(12 downto 0);
    signal slice_5128_wire : std_logic_vector(6 downto 0);
    signal slice_5135_wire : std_logic_vector(21 downto 0);
    signal tagged_alu_op_5291 : std_logic_vector(0 downto 0);
    signal trap_on_overflow_5296 : std_logic_vector(0 downto 0);
    signal type_cast_5107_wire : std_logic_vector(29 downto 0);
    signal type_cast_5108_wire : std_logic_vector(31 downto 0);
    signal type_cast_5114_wire : std_logic_vector(21 downto 0);
    signal type_cast_5115_wire : std_logic_vector(31 downto 0);
    signal type_cast_5121_wire : std_logic_vector(12 downto 0);
    signal type_cast_5122_wire : std_logic_vector(31 downto 0);
    signal type_cast_5129_wire : std_logic_vector(6 downto 0);
    signal type_cast_5130_wire : std_logic_vector(31 downto 0);
    signal update_asr_5677 : std_logic_vector(0 downto 0);
    signal update_psr_5661 : std_logic_vector(2 downto 0);
    signal update_psr_cc_5649 : std_logic_vector(0 downto 0);
    signal update_psr_cwp_5616 : std_logic_vector(0 downto 0);
    signal update_psr_rest_5654 : std_logic_vector(0 downto 0);
    signal update_tbr_5671 : std_logic_vector(0 downto 0);
    signal update_wim_5674 : std_logic_vector(0 downto 0);
    signal update_y_5668 : std_logic_vector(0 downto 0);
    signal use_alu_add_5734 : std_logic_vector(0 downto 0);
    signal use_alu_xor_5757 : std_logic_vector(0 downto 0);
    signal will_set_cc_5642 : std_logic_vector(0 downto 0);
    signal will_trap_on_overflow_5554 : std_logic_vector(0 downto 0);
    signal will_use_carry_5741 : std_logic_vector(0 downto 0);
    signal window_modifying_instruction_5680 : std_logic_vector(0 downto 0);
    signal with_carry_5281 : std_logic_vector(0 downto 0);
    signal write_rd_from_iunit_5490 : std_logic_vector(0 downto 0);
    signal write_rd_from_load_store_5510 : std_logic_vector(0 downto 0);
    signal write_rd_from_pc_5495 : std_logic_vector(0 downto 0);
    signal write_rd_from_sreg_5521 : std_logic_vector(0 downto 0);
    signal write_rd_low_5530 : std_logic_vector(0 downto 0);
    signal write_sreg_instr_5752 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ALU_INSTR_4925_wire_constant <= "010";
    R_ASI_SUPERVISOR_DATA_5401_wire_constant <= "00001011";
    R_ASI_USER_DATA_5398_wire_constant <= "00001010";
    R_CONTROL_TRANSFER_INSTR_4910_wire_constant <= "011";
    R_DATA_TRANSFER_INSTR_4915_wire_constant <= "001";
    R_MISC_INSTR_4920_wire_constant <= "100";
    R_ZERO_10_5136_wire_constant <= "0000000000";
    konst_4975_wire_constant <= "00000000000000000000000000011101";
    konst_4980_wire_constant <= "01111";
    konst_5091_wire_constant <= "00000000000000000000000000001101";
    konst_5167_wire_constant <= "00000000000000000000000000000000";
    konst_5175_wire_constant <= "00000000000000000000000000000010";
    konst_5177_wire_constant <= "00000000000000000000000000000000";
    konst_5182_wire_constant <= "00000000000000000000000000000010";
    konst_5184_wire_constant <= "00000000000000000000000000000000";
    konst_5189_wire_constant <= "00000000000000000000000000000000";
    konst_5193_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_4983_inst
    rd_4984 <= konst_4980_wire_constant when (is_call_4942(0) /=  '0') else slice_4982_wire;
    -- flow-through select operator MUX_5168_inst
    MUX_5168_wire <= simm13to32_5124 when (OR_u1_u1_5165_wire(0) /=  '0') else konst_5167_wire_constant;
    -- flow-through select operator MUX_5178_inst
    MUX_5178_wire <= SHL_u32_u32_5176_wire when (OR_u1_u1_5173_wire(0) /=  '0') else konst_5177_wire_constant;
    -- flow-through select operator MUX_5185_inst
    MUX_5185_wire <= SHL_u32_u32_5183_wire when (is_call_4942(0) /=  '0') else konst_5184_wire_constant;
    -- flow-through select operator MUX_5190_inst
    MUX_5190_wire <= sethi_imm_5139 when (is_sethi_5013(0) /=  '0') else konst_5189_wire_constant;
    -- flow-through select operator MUX_5194_inst
    MUX_5194_wire <= simm7to32_5132 when (is_ticc_4957(0) /=  '0') else konst_5193_wire_constant;
    -- flow-through select operator MUX_5535_inst
    asr_id_5536 <= rs1_4903 when (is_read_asr_5043(0) /=  '0') else rd_4984;
    -- flow-through slice operator slice_4902_inst
    rs1_4903 <= instr_buffer(18 downto 14);
    -- flow-through slice operator slice_4906_inst
    rs2_4907 <= instr_buffer(4 downto 0);
    -- flow-through slice operator slice_4982_inst
    slice_4982_wire <= instr_buffer(29 downto 25);
    -- flow-through slice operator slice_5106_inst
    slice_5106_wire <= instr_buffer(29 downto 0);
    -- flow-through slice operator slice_5113_inst
    slice_5113_wire <= instr_buffer(21 downto 0);
    -- flow-through slice operator slice_5120_inst
    slice_5120_wire <= instr_buffer(12 downto 0);
    -- flow-through slice operator slice_5128_inst
    slice_5128_wire <= instr_buffer(6 downto 0);
    -- flow-through slice operator slice_5135_inst
    slice_5135_wire <= instr_buffer(21 downto 0);
    -- interlock W_fetch_asr_5605_inst
    process(is_read_asr_5043) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_read_asr_5043(0 downto 0);
      fetch_asr_5607 <= tmp_var; -- 
    end process;
    -- interlock W_fetch_tbr_5602_inst
    process(is_read_tbr_5063) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_read_tbr_5063(0 downto 0);
      fetch_tbr_5604 <= tmp_var; -- 
    end process;
    -- interlock W_update_asr_5675_inst
    process(is_write_asr_5068) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_write_asr_5068(0 downto 0);
      update_asr_5677 <= tmp_var; -- 
    end process;
    -- interlock W_update_tbr_5669_inst
    process(is_write_tbr_5088) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_write_tbr_5088(0 downto 0);
      update_tbr_5671 <= tmp_var; -- 
    end process;
    -- interlock W_update_wim_5672_inst
    process(is_write_wim_5083) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_write_wim_5083(0 downto 0);
      update_wim_5674 <= tmp_var; -- 
    end process;
    -- interlock W_window_modifying_instruction_5678_inst
    process(update_psr_cwp_5616) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_psr_cwp_5616(0 downto 0);
      window_modifying_instruction_5680 <= tmp_var; -- 
    end process;
    -- interlock type_cast_5107_inst
    process(slice_5106_wire) -- 
      variable tmp_var : std_logic_vector(29 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 29 downto 0) := slice_5106_wire(29 downto 0);
      type_cast_5107_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5109_inst
    process(type_cast_5108_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_5108_wire(31 downto 0);
      simm30to32_5110 <= tmp_var; -- 
    end process;
    -- interlock type_cast_5114_inst
    process(slice_5113_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 21 downto 0) := slice_5113_wire(21 downto 0);
      type_cast_5114_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5116_inst
    process(type_cast_5115_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_5115_wire(31 downto 0);
      simm22to32_5117 <= tmp_var; -- 
    end process;
    -- interlock type_cast_5121_inst
    process(slice_5120_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 12 downto 0) := slice_5120_wire(12 downto 0);
      type_cast_5121_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5123_inst
    process(type_cast_5122_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_5122_wire(31 downto 0);
      simm13to32_5124 <= tmp_var; -- 
    end process;
    -- interlock type_cast_5129_inst
    process(slice_5128_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 6 downto 0) := slice_5128_wire(6 downto 0);
      type_cast_5129_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5131_inst
    process(type_cast_5130_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := type_cast_5130_wire(31 downto 0);
      simm7to32_5132 <= tmp_var; -- 
    end process;
    -- interlock type_cast_5138_inst
    process(CONCAT_u22_u32_5137_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := CONCAT_u22_u32_5137_wire(31 downto 0);
      sethi_imm_5139 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_4941_inst
    is_call_4942 <= (cti_4912 and r_call_4937);
    -- flow through binary operator AND_u1_u1_4946_inst
    is_rett_4947 <= (cti_4912 and r_rett_4937);
    -- flow through binary operator AND_u1_u1_4951_inst
    is_jmpl_4952 <= (cti_4912 and r_jmpl_4937);
    -- flow through binary operator AND_u1_u1_4956_inst
    is_ticc_4957 <= (cti_4912 and r_ticc_4937);
    -- flow through binary operator AND_u1_u1_4961_inst
    is_bicc_4962 <= (cti_4912 and r_bicc_4937);
    -- flow through binary operator AND_u1_u1_4966_inst
    is_fbfcc_4967 <= (cti_4912 and r_fbfcc_4937);
    -- flow through binary operator AND_u1_u1_4971_inst
    is_cbccc_4972 <= (cti_4912 and r_cbccc_4937);
    -- flow through binary operator AND_u1_u1_5007_inst
    is_nop_5008 <= (misc_4922 and r_nop_5003);
    -- flow through binary operator AND_u1_u1_5012_inst
    is_sethi_5013 <= (misc_4922 and r_sethi_5003);
    -- flow through binary operator AND_u1_u1_5017_inst
    is_mulscc_5018 <= (misc_4922 and r_mulscc_5003);
    -- flow through binary operator AND_u1_u1_5022_inst
    is_flush_5023 <= (misc_4922 and r_flush_5003);
    -- flow through binary operator AND_u1_u1_5027_inst
    is_stbar_5028 <= (misc_4922 and r_stbar_5003);
    -- flow through binary operator AND_u1_u1_5032_inst
    is_save_5033 <= (misc_4922 and r_save_5003);
    -- flow through binary operator AND_u1_u1_5037_inst
    is_restore_5038 <= (misc_4922 and r_restore_5003);
    -- flow through binary operator AND_u1_u1_5042_inst
    is_read_asr_5043 <= (misc_4922 and r_read_asr_5003);
    -- flow through binary operator AND_u1_u1_5047_inst
    is_read_y_5048 <= (misc_4922 and r_read_y_5003);
    -- flow through binary operator AND_u1_u1_5052_inst
    is_read_psr_5053 <= (misc_4922 and r_read_psr_5003);
    -- flow through binary operator AND_u1_u1_5057_inst
    is_read_wim_5058 <= (misc_4922 and r_read_wim_5003);
    -- flow through binary operator AND_u1_u1_5062_inst
    is_read_tbr_5063 <= (misc_4922 and r_read_tbr_5003);
    -- flow through binary operator AND_u1_u1_5067_inst
    is_write_asr_5068 <= (misc_4922 and r_write_asr_5003);
    -- flow through binary operator AND_u1_u1_5072_inst
    is_write_y_5073 <= (misc_4922 and r_write_y_5003);
    -- flow through binary operator AND_u1_u1_5077_inst
    is_write_psr_5078 <= (misc_4922 and r_write_psr_5003);
    -- flow through binary operator AND_u1_u1_5082_inst
    is_write_wim_5083 <= (misc_4922 and r_write_wim_5003);
    -- flow through binary operator AND_u1_u1_5087_inst
    is_write_tbr_5088 <= (misc_4922 and r_write_tbr_5003);
    -- flow through binary operator AND_u1_u1_5220_inst
    is_alu_add_5221 <= (alu_4927 and r_add_5216);
    -- flow through binary operator AND_u1_u1_5225_inst
    is_alu_sub_5226 <= (alu_4927 and r_sub_5216);
    -- flow through binary operator AND_u1_u1_5230_inst
    is_alu_mul_5231 <= (alu_4927 and r_mul_5216);
    -- flow through binary operator AND_u1_u1_5235_inst
    is_alu_div_5236 <= (alu_4927 and r_div_5216);
    -- flow through binary operator AND_u1_u1_5240_inst
    is_alu_and_5241 <= (alu_4927 and r_and_5216);
    -- flow through binary operator AND_u1_u1_5245_inst
    is_alu_or_5246 <= (alu_4927 and r_or_5216);
    -- flow through binary operator AND_u1_u1_5250_inst
    is_alu_xor_5251 <= (alu_4927 and r_xor_5216);
    -- flow through binary operator AND_u1_u1_5255_inst
    is_alu_xnor_5256 <= (alu_4927 and r_xnor_5216);
    -- flow through binary operator AND_u1_u1_5260_inst
    is_alu_sll_5261 <= (alu_4927 and r_sll_5216);
    -- flow through binary operator AND_u1_u1_5265_inst
    is_alu_srl_5266 <= (alu_4927 and r_srl_5216);
    -- flow through binary operator AND_u1_u1_5270_inst
    is_alu_sra_5271 <= (alu_4927 and r_sra_5216);
    -- flow through binary operator AND_u1_u1_5275_inst
    negate_second_operand_5276 <= (alu_4927 and rnegate_second_operand_5216);
    -- flow through binary operator AND_u1_u1_5280_inst
    with_carry_5281 <= (alu_4927 and rwith_carry_5216);
    -- flow through binary operator AND_u1_u1_5285_inst
    set_cc_5286 <= (alu_4927 and rset_cc_5216);
    -- flow through binary operator AND_u1_u1_5290_inst
    tagged_alu_op_5291 <= (alu_4927 and rtagged_alu_op_5216);
    -- flow through binary operator AND_u1_u1_5295_inst
    trap_on_overflow_5296 <= (alu_4927 and rtrap_on_overflow_5216);
    -- flow through binary operator AND_u1_u1_5307_inst
    AND_u1_u1_5307_wire <= (cti_4912 and OR_u1_u1_5306_wire);
    -- flow through binary operator AND_u1_u1_5326_inst
    AND_u1_u1_5326_wire <= (misc_4922 and OR_u1_u1_5325_wire);
    -- flow through binary operator AND_u1_u1_5342_inst
    AND_u1_u1_5342_wire <= (cti_4912 and OR_u1_u1_5341_wire);
    -- flow through binary operator AND_u1_u1_5361_inst
    AND_u1_u1_5361_wire <= (misc_4922 and OR_u1_u1_5360_wire);
    -- flow through binary operator AND_u1_u1_5364_inst
    read_rs2_5365 <= (NOT_u1_u1_5332_wire and OR_u1_u1_5363_wire);
    -- flow through binary operator AND_u1_u1_5389_inst
    AND_u1_u1_5389_wire <= (dti_4917 and NOT_u1_u1_5388_wire);
    -- flow through binary operator AND_u1_u1_5392_inst
    AND_u1_u1_5392_wire <= (AND_u1_u1_5389_wire and NOT_u1_u1_5391_wire);
    -- flow through binary operator AND_u1_u1_5405_inst
    AND_u1_u1_5405_wire <= (NOT_u1_u1_5394_wire and OR_u1_u1_5404_wire);
    -- flow through binary operator AND_u1_u1_5406_inst
    dti_to_debug_5407 <= (AND_u1_u1_5392_wire and AND_u1_u1_5405_wire);
    -- flow through binary operator AND_u1_u1_5415_inst
    is_load_to_debug_5416 <= (OR_u1_u1_5413_wire and dti_to_debug_5407);
    -- flow through binary operator AND_u1_u1_5424_inst
    is_store_to_debug_5425 <= (OR_u1_u1_5422_wire and dti_to_debug_5407);
    -- flow through binary operator AND_u1_u1_5429_inst
    ld_st_alternate_5430 <= (dti_4917 and asi_bit_5384);
    -- flow through binary operator AND_u1_u1_5434_inst
    double_word_5435 <= (dti_4917 and r_double_word_5384);
    -- flow through binary operator AND_u1_u1_5462_inst
    AND_u1_u1_5462_wire <= (dti_4917 and OR_u1_u1_5461_wire);
    -- flow through binary operator AND_u1_u1_5467_inst
    AND_u1_u1_5467_wire <= (NOT_u1_u1_5464_wire and NOT_u1_u1_5466_wire);
    -- flow through binary operator AND_u1_u1_5468_inst
    read_rd_low_5469 <= (AND_u1_u1_5462_wire and AND_u1_u1_5467_wire);
    -- flow through binary operator AND_u1_u1_5503_inst
    AND_u1_u1_5503_wire <= (dti_4917 and OR_u1_u1_5502_wire);
    -- flow through binary operator AND_u1_u1_5508_inst
    AND_u1_u1_5508_wire <= (NOT_u1_u1_5505_wire and NOT_u1_u1_5507_wire);
    -- flow through binary operator AND_u1_u1_5509_inst
    write_rd_from_load_store_5510 <= (AND_u1_u1_5503_wire and AND_u1_u1_5508_wire);
    -- flow through binary operator AND_u1_u1_5548_inst
    is_a_tagged_alu_op_5549 <= (alu_4927 and tagged_alu_op_5291);
    -- flow through binary operator AND_u1_u1_5553_inst
    will_trap_on_overflow_5554 <= (alu_4927 and trap_on_overflow_5296);
    -- flow through binary operator AND_u1_u1_5563_inst
    AND_u1_u1_5563_wire <= (alu_4927 and with_carry_5281);
    -- flow through binary operator AND_u1_u1_5641_inst
    will_set_cc_5642 <= (set_cc_5286 and OR_u1_u1_5640_wire);
    -- flow through binary operator AND_u1_u1_5740_inst
    will_use_carry_5741 <= (with_carry_5281 and OR_u1_u1_5739_wire);
    -- flow through binary operator BITSEL_u32_u1_4976_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_4975_wire_constant, tmp_var);
      annul_flag_4977 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_5092_inst
    process(instr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_buffer, konst_5091_wire_constant, tmp_var);
      BITSEL_u32_u1_5092_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u16_5858_inst
    process(CONCAT_u3_u10_5839_wire, CONCAT_u3_u6_5857_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u10_5839_wire, CONCAT_u3_u6_5857_wire, tmp_var);
      CONCAT_u10_u16_5858_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u12_u28_5859_inst
    process(CONCAT_u6_u12_5828_wire, CONCAT_u10_u16_5858_wire) -- 
      variable tmp_var : std_logic_vector(27 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_5828_wire, CONCAT_u10_u16_5858_wire, tmp_var);
      CONCAT_u12_u28_5859_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u26_5700_inst
    process(CONCAT_u7_u13_5690_wire, CONCAT_u7_u13_5699_wire) -- 
      variable tmp_var : std_logic_vector(25 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u13_5690_wire, CONCAT_u7_u13_5699_wire, tmp_var);
      CONCAT_u13_u26_5700_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u25_5891_inst
    process(CONCAT_u4_u14_5877_wire, CONCAT_u4_u11_5890_wire) -- 
      variable tmp_var : std_logic_vector(24 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u14_5877_wire, CONCAT_u4_u11_5890_wire, tmp_var);
      iunit_writeback_control_word_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u27_5805_inst
    process(CONCAT_u6_u15_5781_wire, CONCAT_u6_u12_5804_wire) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u15_5781_wire, CONCAT_u6_u12_5804_wire, tmp_var);
      CONCAT_u15_u27_5805_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5582_inst
    process(fetch_psr_rest_5578, fetch_psr_cc_5569) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fetch_psr_rest_5578, fetch_psr_cc_5569, tmp_var);
      CONCAT_u1_u2_5582_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5658_inst
    process(update_psr_rest_5654, update_psr_cc_5649) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(update_psr_rest_5654, update_psr_cc_5649, tmp_var);
      CONCAT_u1_u2_5658_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5693_inst
    process(write_rd_low_5530, double_word_5435) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_low_5530, double_word_5435, tmp_var);
      CONCAT_u1_u2_5693_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5703_inst
    process(fetch_wim_5594, update_wim_5674) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fetch_wim_5594, update_wim_5674, tmp_var);
      CONCAT_u1_u2_5703_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5708_inst
    process(update_tbr_5671, fetch_y_5601) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(update_tbr_5671, fetch_y_5601, tmp_var);
      CONCAT_u1_u2_5708_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5712_inst
    process(update_y_5668, fetch_asr_5607) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(update_y_5668, fetch_asr_5607, tmp_var);
      CONCAT_u1_u2_5712_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5761_inst
    process(cti_4912, is_call_4942) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(cti_4912, is_call_4942, tmp_var);
      CONCAT_u1_u2_5761_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5766_inst
    process(is_rett_4947, is_bicc_4962) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_rett_4947, is_bicc_4962, tmp_var);
      CONCAT_u1_u2_5766_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5772_inst
    process(is_cbccc_4972, is_ticc_4957) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_cbccc_4972, is_ticc_4957, tmp_var);
      CONCAT_u1_u2_5772_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5784_inst
    process(is_alu_sub_5226, is_alu_mul_5231) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_alu_sub_5226, is_alu_mul_5231, tmp_var);
      CONCAT_u1_u2_5784_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5789_inst
    process(is_alu_div_5236, is_alu_sll_5261) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_alu_div_5236, is_alu_sll_5261, tmp_var);
      CONCAT_u1_u2_5789_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5795_inst
    process(is_alu_sra_5271, is_alu_and_5241) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_alu_sra_5271, is_alu_and_5241, tmp_var);
      CONCAT_u1_u2_5795_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5800_inst
    process(use_alu_xor_5757, is_alu_xnor_5256) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(use_alu_xor_5757, is_alu_xnor_5256, tmp_var);
      CONCAT_u1_u2_5800_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5808_inst
    process(negate_second_operand_5276, will_use_carry_5741) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(negate_second_operand_5276, will_use_carry_5741, tmp_var);
      CONCAT_u1_u2_5808_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5813_inst
    process(is_a_tagged_alu_op_5549, will_trap_on_overflow_5554) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_a_tagged_alu_op_5549, will_trap_on_overflow_5554, tmp_var);
      CONCAT_u1_u2_5813_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5819_inst
    process(is_sethi_5013, is_write_psr_5078) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_sethi_5013, is_write_psr_5078, tmp_var);
      CONCAT_u1_u2_5819_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5824_inst
    process(is_write_wim_5083, is_write_y_5073) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_write_wim_5083, is_write_y_5073, tmp_var);
      CONCAT_u1_u2_5824_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5831_inst
    process(is_read_psr_5053, is_read_wim_5058) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_psr_5053, is_read_wim_5058, tmp_var);
      CONCAT_u1_u2_5831_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5836_inst
    process(is_read_y_5048, is_read_asr_5043) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_read_y_5048, is_read_asr_5043, tmp_var);
      CONCAT_u1_u2_5836_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5842_inst
    process(is_save_5033, is_restore_5038) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_save_5033, is_restore_5038, tmp_var);
      CONCAT_u1_u2_5842_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5854_inst
    process(NOT_u1_u1_5852_wire, is_load_to_debug_5416) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(NOT_u1_u1_5852_wire, is_load_to_debug_5416, tmp_var);
      CONCAT_u1_u2_5854_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5865_inst
    process(write_rd_low_5530, double_word_5435) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_low_5530, double_word_5435, tmp_var);
      CONCAT_u1_u2_5865_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5868_inst
    process(write_rd_from_load_store_5510, write_rd_from_iunit_5490) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_from_load_store_5510, write_rd_from_iunit_5490, tmp_var);
      CONCAT_u1_u2_5868_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5872_inst
    process(write_rd_from_pc_5495, write_rd_from_sreg_5521) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_from_pc_5495, write_rd_from_sreg_5521, tmp_var);
      CONCAT_u1_u2_5872_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5880_inst
    process(update_wim_5674, update_tbr_5671) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(update_wim_5674, update_tbr_5671, tmp_var);
      CONCAT_u1_u2_5880_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_5883_inst
    process(update_y_5668, update_asr_5677) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(update_y_5668, update_asr_5677, tmp_var);
      CONCAT_u1_u2_5883_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_5684_inst
    process(read_rs1_5329, rs1_4903) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(read_rs1_5329, rs1_4903, tmp_var);
      CONCAT_u1_u6_5684_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_5717_inst
    process(window_modifying_instruction_5680, asr_id_5536) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(window_modifying_instruction_5680, asr_id_5536, tmp_var);
      CONCAT_u1_u6_5717_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u22_u32_5137_inst
    process(slice_5135_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_5135_wire, R_ZERO_10_5136_wire_constant, tmp_var);
      CONCAT_u22_u32_5137_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u26_u40_5720_inst
    process(CONCAT_u13_u26_5700_wire, CONCAT_u5_u14_5719_wire) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u26_5700_wire, CONCAT_u5_u14_5719_wire, tmp_var);
      op_fetch_control_word_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u27_u55_5860_inst
    process(CONCAT_u15_u27_5805_wire, CONCAT_u12_u28_5859_wire) -- 
      variable tmp_var : std_logic_vector(54 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u15_u27_5805_wire, CONCAT_u12_u28_5859_wire, tmp_var);
      alu_exec_control_word_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u10_5876_inst
    process(CONCAT_u1_u2_5872_wire, CONCAT_u5_u8_5875_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5872_wire, CONCAT_u5_u8_5875_wire, tmp_var);
      CONCAT_u2_u10_5876_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5584_inst
    process(CONCAT_u1_u2_5582_wire, fetch_psr_cwp_5544) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5582_wire, fetch_psr_cwp_5544, tmp_var);
      fetch_psr_5585 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5660_inst
    process(CONCAT_u1_u2_5658_wire, update_psr_cwp_5616) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5658_wire, update_psr_cwp_5616, tmp_var);
      update_psr_5661 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5705_inst
    process(CONCAT_u1_u2_5703_wire, fetch_tbr_5604) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5703_wire, fetch_tbr_5604, tmp_var);
      CONCAT_u2_u3_5705_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5714_inst
    process(CONCAT_u1_u2_5712_wire, update_asr_5677) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5712_wire, update_asr_5677, tmp_var);
      CONCAT_u2_u3_5714_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5763_inst
    process(CONCAT_u1_u2_5761_wire, is_jmpl_4952) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5761_wire, is_jmpl_4952, tmp_var);
      CONCAT_u2_u3_5763_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5768_inst
    process(CONCAT_u1_u2_5766_wire, is_fbfcc_4967) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5766_wire, is_fbfcc_4967, tmp_var);
      CONCAT_u2_u3_5768_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5774_inst
    process(CONCAT_u1_u2_5772_wire, annul_flag_4977) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5772_wire, annul_flag_4977, tmp_var);
      CONCAT_u2_u3_5774_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5786_inst
    process(CONCAT_u1_u2_5784_wire, is_mulscc_5018) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5784_wire, is_mulscc_5018, tmp_var);
      CONCAT_u2_u3_5786_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5791_inst
    process(CONCAT_u1_u2_5789_wire, is_alu_srl_5266) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5789_wire, is_alu_srl_5266, tmp_var);
      CONCAT_u2_u3_5791_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5797_inst
    process(CONCAT_u1_u2_5795_wire, is_alu_or_5246) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5795_wire, is_alu_or_5246, tmp_var);
      CONCAT_u2_u3_5797_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5802_inst
    process(CONCAT_u1_u2_5800_wire, signed_mul_div_5216) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5800_wire, signed_mul_div_5216, tmp_var);
      CONCAT_u2_u3_5802_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5810_inst
    process(CONCAT_u1_u2_5808_wire, will_set_cc_5642) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5808_wire, will_set_cc_5642, tmp_var);
      CONCAT_u2_u3_5810_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5815_inst
    process(CONCAT_u1_u2_5813_wire, misc_4922) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5813_wire, misc_4922, tmp_var);
      CONCAT_u2_u3_5815_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5821_inst
    process(CONCAT_u1_u2_5819_wire, is_write_tbr_5088) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5819_wire, is_write_tbr_5088, tmp_var);
      CONCAT_u2_u3_5821_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5826_inst
    process(CONCAT_u1_u2_5824_wire, is_write_asr_5068) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5824_wire, is_write_asr_5068, tmp_var);
      CONCAT_u2_u3_5826_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5833_inst
    process(CONCAT_u1_u2_5831_wire, is_read_tbr_5063) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5831_wire, is_read_tbr_5063, tmp_var);
      CONCAT_u2_u3_5833_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5844_inst
    process(CONCAT_u1_u2_5842_wire, dti_4917) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5842_wire, dti_4917, tmp_var);
      CONCAT_u2_u3_5844_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_5856_inst
    process(CONCAT_u1_u2_5854_wire, is_store_to_debug_5425) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5854_wire, is_store_to_debug_5425, tmp_var);
      CONCAT_u2_u3_5856_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_5869_inst
    process(CONCAT_u1_u2_5865_wire, CONCAT_u1_u2_5868_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5865_wire, CONCAT_u1_u2_5868_wire, tmp_var);
      CONCAT_u2_u4_5869_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_5884_inst
    process(CONCAT_u1_u2_5880_wire, CONCAT_u1_u2_5883_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5880_wire, CONCAT_u1_u2_5883_wire, tmp_var);
      CONCAT_u2_u4_5884_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u7_5695_inst
    process(CONCAT_u1_u2_5693_wire, rd_4984) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5693_wire, rd_4984, tmp_var);
      CONCAT_u2_u7_5695_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u7_5838_inst
    process(CONCAT_u1_u2_5836_wire, asr_id_5536) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_5836_wire, asr_id_5536, tmp_var);
      CONCAT_u2_u7_5838_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u10_5839_inst
    process(CONCAT_u2_u3_5833_wire, CONCAT_u2_u7_5838_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5833_wire, CONCAT_u2_u7_5838_wire, tmp_var);
      CONCAT_u3_u10_5839_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_5709_inst
    process(CONCAT_u2_u3_5705_wire, CONCAT_u1_u2_5708_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5705_wire, CONCAT_u1_u2_5708_wire, tmp_var);
      CONCAT_u3_u5_5709_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5698_inst
    process(fetch_psr_5585, update_psr_5661) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(fetch_psr_5585, update_psr_5661, tmp_var);
      CONCAT_u3_u6_5698_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5769_inst
    process(CONCAT_u2_u3_5763_wire, CONCAT_u2_u3_5768_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5763_wire, CONCAT_u2_u3_5768_wire, tmp_var);
      CONCAT_u3_u6_5769_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5792_inst
    process(CONCAT_u2_u3_5786_wire, CONCAT_u2_u3_5791_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5786_wire, CONCAT_u2_u3_5791_wire, tmp_var);
      CONCAT_u3_u6_5792_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5803_inst
    process(CONCAT_u2_u3_5797_wire, CONCAT_u2_u3_5802_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5797_wire, CONCAT_u2_u3_5802_wire, tmp_var);
      CONCAT_u3_u6_5803_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5816_inst
    process(CONCAT_u2_u3_5810_wire, CONCAT_u2_u3_5815_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5810_wire, CONCAT_u2_u3_5815_wire, tmp_var);
      CONCAT_u3_u6_5816_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5827_inst
    process(CONCAT_u2_u3_5821_wire, CONCAT_u2_u3_5826_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5821_wire, CONCAT_u2_u3_5826_wire, tmp_var);
      CONCAT_u3_u6_5827_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_5857_inst
    process(CONCAT_u2_u3_5844_wire, CONCAT_u2_u3_5856_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5844_wire, CONCAT_u2_u3_5856_wire, tmp_var);
      CONCAT_u3_u6_5857_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u9_5718_inst
    process(CONCAT_u2_u3_5714_wire, CONCAT_u1_u6_5717_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5714_wire, CONCAT_u1_u6_5717_wire, tmp_var);
      CONCAT_u3_u9_5718_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u9_5780_inst
    process(CONCAT_u2_u3_5774_wire, CONCAT_u5_u6_5779_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_5774_wire, CONCAT_u5_u6_5779_wire, tmp_var);
      CONCAT_u3_u9_5780_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u11_5890_inst
    process(CONCAT_u2_u4_5884_wire, CONCAT_u6_u7_5889_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_5884_wire, CONCAT_u6_u7_5889_wire, tmp_var);
      CONCAT_u4_u11_5890_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u14_5877_inst
    process(CONCAT_u2_u4_5869_wire, CONCAT_u2_u10_5876_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_5869_wire, CONCAT_u2_u10_5876_wire, tmp_var);
      CONCAT_u4_u14_5877_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_5777_inst
    process(br_cond_4937, alu_4927) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(br_cond_4937, alu_4927, tmp_var);
      CONCAT_u4_u5_5777_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u14_5719_inst
    process(CONCAT_u3_u5_5709_wire, CONCAT_u3_u9_5718_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_5709_wire, CONCAT_u3_u9_5718_wire, tmp_var);
      CONCAT_u5_u14_5719_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_5689_inst
    process(rs2_4907, read_rd_low_5469) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(rs2_4907, read_rd_low_5469, tmp_var);
      CONCAT_u5_u6_5689_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_5779_inst
    process(CONCAT_u4_u5_5777_wire, use_alu_add_5734) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_5777_wire, use_alu_add_5734, tmp_var);
      CONCAT_u5_u6_5779_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_5887_inst
    process(asr_id_5536, is_save_5033) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(asr_id_5536, is_save_5033, tmp_var);
      CONCAT_u5_u6_5887_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u8_5875_inst
    process(rd_4984, update_psr_5661) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_4984, update_psr_5661, tmp_var);
      CONCAT_u5_u8_5875_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_5804_inst
    process(CONCAT_u3_u6_5792_wire, CONCAT_u3_u6_5803_wire) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u6_5792_wire, CONCAT_u3_u6_5803_wire, tmp_var);
      CONCAT_u6_u12_5804_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_5828_inst
    process(CONCAT_u3_u6_5816_wire, CONCAT_u3_u6_5827_wire) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u6_5816_wire, CONCAT_u3_u6_5827_wire, tmp_var);
      CONCAT_u6_u12_5828_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u15_5781_inst
    process(CONCAT_u3_u6_5769_wire, CONCAT_u3_u9_5780_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u6_5769_wire, CONCAT_u3_u9_5780_wire, tmp_var);
      CONCAT_u6_u15_5781_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_5686_inst
    process(CONCAT_u1_u6_5684_wire, read_rs2_5365) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u6_5684_wire, read_rs2_5365, tmp_var);
      CONCAT_u6_u7_5686_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_5889_inst
    process(CONCAT_u5_u6_5887_wire, is_restore_5038) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u6_5887_wire, is_restore_5038, tmp_var);
      CONCAT_u6_u7_5889_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u13_5690_inst
    process(CONCAT_u6_u7_5686_wire, CONCAT_u5_u6_5689_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u7_5686_wire, CONCAT_u5_u6_5689_wire, tmp_var);
      CONCAT_u7_u13_5690_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u13_5699_inst
    process(CONCAT_u2_u7_5695_wire, CONCAT_u3_u6_5698_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u7_5695_wire, CONCAT_u3_u6_5698_wire, tmp_var);
      CONCAT_u7_u13_5699_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4911_inst
    process(iclass_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_buffer, R_CONTROL_TRANSFER_INSTR_4910_wire_constant, tmp_var);
      cti_4912 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4916_inst
    process(iclass_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_buffer, R_DATA_TRANSFER_INSTR_4915_wire_constant, tmp_var);
      dti_4917 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4921_inst
    process(iclass_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_buffer, R_MISC_INSTR_4920_wire_constant, tmp_var);
      misc_4922 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_4926_inst
    process(iclass_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_buffer, R_ALU_INSTR_4925_wire_constant, tmp_var);
      alu_4927 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_5399_inst
    process(asi_id_8_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_5384, R_ASI_USER_DATA_5398_wire_constant, tmp_var);
      EQ_u8_u1_5399_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_5402_inst
    process(asi_id_8_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(asi_id_8_5384, R_ASI_SUPERVISOR_DATA_5401_wire_constant, tmp_var);
      EQ_u8_u1_5402_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_5332_inst
    process(imm_flag_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", imm_flag_buffer, tmp_var);
      NOT_u1_u1_5332_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5388_inst
    process(is_cp_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_cp_access_5384, tmp_var);
      NOT_u1_u1_5388_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5391_inst
    process(is_fp_cp_sr_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_fp_cp_sr_access_5384, tmp_var);
      NOT_u1_u1_5391_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5394_inst
    process(is_fp_cp_q_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_fp_cp_q_access_5384, tmp_var);
      NOT_u1_u1_5394_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5396_inst
    process(asi_bit_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", asi_bit_5384, tmp_var);
      NOT_u1_u1_5396_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5464_inst
    process(is_fp_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_fp_access_5384, tmp_var);
      NOT_u1_u1_5464_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5466_inst
    process(is_cp_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_cp_access_5384, tmp_var);
      NOT_u1_u1_5466_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5505_inst
    process(is_fp_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_fp_access_5384, tmp_var);
      NOT_u1_u1_5505_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5507_inst
    process(is_cp_access_5384) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_cp_access_5384, tmp_var);
      NOT_u1_u1_5507_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5543_inst
    process(OR_u1_u1_5542_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_5542_wire, tmp_var);
      fetch_psr_cwp_5544 <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_5852_inst
    process(OR_u1_u1_5851_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", OR_u1_u1_5851_wire, tmp_var);
      NOT_u1_u1_5852_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_5094_inst
    OR_u1_u1_5094_wire <= (BITSEL_u32_u1_5092_wire or is_sethi_5013);
    -- flow through binary operator OR_u1_u1_5096_inst
    OR_u1_u1_5096_wire <= (OR_u1_u1_5094_wire or is_bicc_4962);
    -- flow through binary operator OR_u1_u1_5099_inst
    OR_u1_u1_5099_wire <= (is_call_4942 or is_fbfcc_4967);
    -- flow through binary operator OR_u1_u1_5101_inst
    OR_u1_u1_5101_wire <= (OR_u1_u1_5099_wire or is_cbccc_4972);
    -- flow through binary operator OR_u1_u1_5102_inst
    imm_flag_buffer <= (OR_u1_u1_5096_wire or OR_u1_u1_5101_wire);
    -- flow through binary operator OR_u1_u1_5143_inst
    OR_u1_u1_5143_wire <= (is_jmpl_4952 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5146_inst
    OR_u1_u1_5146_wire <= (dti_4917 or alu_4927);
    -- flow through binary operator OR_u1_u1_5147_inst
    OR_u1_u1_5147_wire <= (OR_u1_u1_5143_wire or OR_u1_u1_5146_wire);
    -- flow through binary operator OR_u1_u1_5150_inst
    OR_u1_u1_5150_wire <= (is_mulscc_5018 or is_save_5033);
    -- flow through binary operator OR_u1_u1_5152_inst
    OR_u1_u1_5152_wire <= (OR_u1_u1_5150_wire or is_restore_5038);
    -- flow through binary operator OR_u1_u1_5153_inst
    OR_u1_u1_5153_wire <= (OR_u1_u1_5147_wire or OR_u1_u1_5152_wire);
    -- flow through binary operator OR_u1_u1_5156_inst
    OR_u1_u1_5156_wire <= (is_write_asr_5068 or is_write_y_5073);
    -- flow through binary operator OR_u1_u1_5158_inst
    OR_u1_u1_5158_wire <= (OR_u1_u1_5156_wire or is_write_psr_5078);
    -- flow through binary operator OR_u1_u1_5161_inst
    OR_u1_u1_5161_wire <= (is_write_wim_5083 or is_write_tbr_5088);
    -- flow through binary operator OR_u1_u1_5163_inst
    OR_u1_u1_5163_wire <= (OR_u1_u1_5161_wire or is_flush_5023);
    -- flow through binary operator OR_u1_u1_5164_inst
    OR_u1_u1_5164_wire <= (OR_u1_u1_5158_wire or OR_u1_u1_5163_wire);
    -- flow through binary operator OR_u1_u1_5165_inst
    OR_u1_u1_5165_wire <= (OR_u1_u1_5153_wire or OR_u1_u1_5164_wire);
    -- flow through binary operator OR_u1_u1_5171_inst
    OR_u1_u1_5171_wire <= (is_bicc_4962 or is_fbfcc_4967);
    -- flow through binary operator OR_u1_u1_5173_inst
    OR_u1_u1_5173_wire <= (OR_u1_u1_5171_wire or is_cbccc_4972);
    -- flow through binary operator OR_u1_u1_5300_inst
    OR_u1_u1_5300_wire <= (alu_4927 or dti_4917);
    -- flow through binary operator OR_u1_u1_5304_inst
    OR_u1_u1_5304_wire <= (is_rett_4947 or is_jmpl_4952);
    -- flow through binary operator OR_u1_u1_5306_inst
    OR_u1_u1_5306_wire <= (OR_u1_u1_5304_wire or is_ticc_4957);
    -- flow through binary operator OR_u1_u1_5311_inst
    OR_u1_u1_5311_wire <= (is_mulscc_5018 or is_flush_5023);
    -- flow through binary operator OR_u1_u1_5313_inst
    OR_u1_u1_5313_wire <= (OR_u1_u1_5311_wire or is_save_5033);
    -- flow through binary operator OR_u1_u1_5316_inst
    OR_u1_u1_5316_wire <= (is_restore_5038 or is_write_asr_5068);
    -- flow through binary operator OR_u1_u1_5317_inst
    OR_u1_u1_5317_wire <= (OR_u1_u1_5313_wire or OR_u1_u1_5316_wire);
    -- flow through binary operator OR_u1_u1_5320_inst
    OR_u1_u1_5320_wire <= (is_write_y_5073 or is_write_psr_5078);
    -- flow through binary operator OR_u1_u1_5323_inst
    OR_u1_u1_5323_wire <= (is_write_wim_5083 or is_write_tbr_5088);
    -- flow through binary operator OR_u1_u1_5324_inst
    OR_u1_u1_5324_wire <= (OR_u1_u1_5320_wire or OR_u1_u1_5323_wire);
    -- flow through binary operator OR_u1_u1_5325_inst
    OR_u1_u1_5325_wire <= (OR_u1_u1_5317_wire or OR_u1_u1_5324_wire);
    -- flow through binary operator OR_u1_u1_5327_inst
    OR_u1_u1_5327_wire <= (AND_u1_u1_5307_wire or AND_u1_u1_5326_wire);
    -- flow through binary operator OR_u1_u1_5328_inst
    read_rs1_5329 <= (OR_u1_u1_5300_wire or OR_u1_u1_5327_wire);
    -- flow through binary operator OR_u1_u1_5335_inst
    OR_u1_u1_5335_wire <= (alu_4927 or dti_4917);
    -- flow through binary operator OR_u1_u1_5339_inst
    OR_u1_u1_5339_wire <= (is_rett_4947 or is_jmpl_4952);
    -- flow through binary operator OR_u1_u1_5341_inst
    OR_u1_u1_5341_wire <= (OR_u1_u1_5339_wire or is_ticc_4957);
    -- flow through binary operator OR_u1_u1_5346_inst
    OR_u1_u1_5346_wire <= (is_flush_5023 or is_save_5033);
    -- flow through binary operator OR_u1_u1_5348_inst
    OR_u1_u1_5348_wire <= (OR_u1_u1_5346_wire or is_restore_5038);
    -- flow through binary operator OR_u1_u1_5351_inst
    OR_u1_u1_5351_wire <= (is_write_asr_5068 or is_write_y_5073);
    -- flow through binary operator OR_u1_u1_5352_inst
    OR_u1_u1_5352_wire <= (OR_u1_u1_5348_wire or OR_u1_u1_5351_wire);
    -- flow through binary operator OR_u1_u1_5355_inst
    OR_u1_u1_5355_wire <= (is_write_psr_5078 or is_write_wim_5083);
    -- flow through binary operator OR_u1_u1_5358_inst
    OR_u1_u1_5358_wire <= (is_write_tbr_5088 or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5359_inst
    OR_u1_u1_5359_wire <= (OR_u1_u1_5355_wire or OR_u1_u1_5358_wire);
    -- flow through binary operator OR_u1_u1_5360_inst
    OR_u1_u1_5360_wire <= (OR_u1_u1_5352_wire or OR_u1_u1_5359_wire);
    -- flow through binary operator OR_u1_u1_5362_inst
    OR_u1_u1_5362_wire <= (AND_u1_u1_5342_wire or AND_u1_u1_5361_wire);
    -- flow through binary operator OR_u1_u1_5363_inst
    OR_u1_u1_5363_wire <= (OR_u1_u1_5335_wire or OR_u1_u1_5362_wire);
    -- flow through binary operator OR_u1_u1_5403_inst
    OR_u1_u1_5403_wire <= (EQ_u8_u1_5399_wire or EQ_u8_u1_5402_wire);
    -- flow through binary operator OR_u1_u1_5404_inst
    OR_u1_u1_5404_wire <= (NOT_u1_u1_5396_wire or OR_u1_u1_5403_wire);
    -- flow through binary operator OR_u1_u1_5411_inst
    OR_u1_u1_5411_wire <= (is_load_5384 or is_atomic_ldstub_5384);
    -- flow through binary operator OR_u1_u1_5413_inst
    OR_u1_u1_5413_wire <= (OR_u1_u1_5411_wire or is_swap_5384);
    -- flow through binary operator OR_u1_u1_5420_inst
    OR_u1_u1_5420_wire <= (is_store_5384 or is_atomic_ldstub_5384);
    -- flow through binary operator OR_u1_u1_5422_inst
    OR_u1_u1_5422_wire <= (OR_u1_u1_5420_wire or is_swap_5384);
    -- flow through binary operator OR_u1_u1_5439_inst
    OR_u1_u1_5439_wire <= (ld_st_alternate_5430 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5441_inst
    OR_u1_u1_5441_wire <= (OR_u1_u1_5439_wire or is_write_psr_5078);
    -- flow through binary operator OR_u1_u1_5444_inst
    OR_u1_u1_5444_wire <= (is_read_psr_5053 or is_write_tbr_5088);
    -- flow through binary operator OR_u1_u1_5445_inst
    OR_u1_u1_5445_wire <= (OR_u1_u1_5441_wire or OR_u1_u1_5444_wire);
    -- flow through binary operator OR_u1_u1_5448_inst
    OR_u1_u1_5448_wire <= (is_read_tbr_5063 or is_write_wim_5083);
    -- flow through binary operator OR_u1_u1_5450_inst
    OR_u1_u1_5450_wire <= (OR_u1_u1_5448_wire or is_read_wim_5058);
    -- flow through binary operator OR_u1_u1_5453_inst
    OR_u1_u1_5453_wire <= (is_write_asr_5068 or is_read_asr_5043);
    -- flow through binary operator OR_u1_u1_5454_inst
    OR_u1_u1_5454_wire <= (OR_u1_u1_5450_wire or OR_u1_u1_5453_wire);
    -- flow through binary operator OR_u1_u1_5455_inst
    priv_instr_trap_if_not_supervisor_buffer <= (OR_u1_u1_5445_wire or OR_u1_u1_5454_wire);
    -- flow through binary operator OR_u1_u1_5461_inst
    OR_u1_u1_5461_wire <= (is_store_5384 or is_swap_5384);
    -- flow through binary operator OR_u1_u1_5473_inst
    OR_u1_u1_5473_wire <= (alu_4927 or is_read_psr_5053);
    -- flow through binary operator OR_u1_u1_5475_inst
    OR_u1_u1_5475_wire <= (OR_u1_u1_5473_wire or is_read_wim_5058);
    -- flow through binary operator OR_u1_u1_5478_inst
    OR_u1_u1_5478_wire <= (is_read_tbr_5063 or is_read_y_5048);
    -- flow through binary operator OR_u1_u1_5479_inst
    OR_u1_u1_5479_wire <= (OR_u1_u1_5475_wire or OR_u1_u1_5478_wire);
    -- flow through binary operator OR_u1_u1_5482_inst
    OR_u1_u1_5482_wire <= (is_read_asr_5043 or is_sethi_5013);
    -- flow through binary operator OR_u1_u1_5484_inst
    OR_u1_u1_5484_wire <= (OR_u1_u1_5482_wire or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5487_inst
    OR_u1_u1_5487_wire <= (is_save_5033 or is_restore_5038);
    -- flow through binary operator OR_u1_u1_5488_inst
    OR_u1_u1_5488_wire <= (OR_u1_u1_5484_wire or OR_u1_u1_5487_wire);
    -- flow through binary operator OR_u1_u1_5489_inst
    write_rd_from_iunit_5490 <= (OR_u1_u1_5479_wire or OR_u1_u1_5488_wire);
    -- flow through binary operator OR_u1_u1_5494_inst
    write_rd_from_pc_5495 <= (is_call_4942 or is_jmpl_4952);
    -- flow through binary operator OR_u1_u1_5500_inst
    OR_u1_u1_5500_wire <= (is_load_5384 or is_atomic_ldstub_5384);
    -- flow through binary operator OR_u1_u1_5502_inst
    OR_u1_u1_5502_wire <= (OR_u1_u1_5500_wire or is_swap_5384);
    -- flow through binary operator OR_u1_u1_5514_inst
    OR_u1_u1_5514_wire <= (is_read_psr_5053 or is_read_wim_5058);
    -- flow through binary operator OR_u1_u1_5516_inst
    OR_u1_u1_5516_wire <= (OR_u1_u1_5514_wire or is_read_y_5048);
    -- flow through binary operator OR_u1_u1_5519_inst
    OR_u1_u1_5519_wire <= (is_read_tbr_5063 or is_read_asr_5043);
    -- flow through binary operator OR_u1_u1_5520_inst
    write_rd_from_sreg_5521 <= (OR_u1_u1_5516_wire or OR_u1_u1_5519_wire);
    -- flow through binary operator OR_u1_u1_5525_inst
    OR_u1_u1_5525_wire <= (write_rd_from_pc_5495 or write_rd_from_load_store_5510);
    -- flow through binary operator OR_u1_u1_5528_inst
    OR_u1_u1_5528_wire <= (write_rd_from_iunit_5490 or write_rd_from_sreg_5521);
    -- flow through binary operator OR_u1_u1_5529_inst
    write_rd_low_5530 <= (OR_u1_u1_5525_wire or OR_u1_u1_5528_wire);
    -- flow through binary operator OR_u1_u1_5540_inst
    OR_u1_u1_5540_wire <= (is_nop_5008 or is_stbar_5028);
    -- flow through binary operator OR_u1_u1_5542_inst
    OR_u1_u1_5542_wire <= (OR_u1_u1_5540_wire or is_bicc_4962);
    -- flow through binary operator OR_u1_u1_5558_inst
    OR_u1_u1_5558_wire <= (is_read_psr_5053 or is_bicc_4962);
    -- flow through binary operator OR_u1_u1_5560_inst
    OR_u1_u1_5560_wire <= (OR_u1_u1_5558_wire or is_ticc_4957);
    -- flow through binary operator OR_u1_u1_5565_inst
    OR_u1_u1_5565_wire <= (AND_u1_u1_5563_wire or is_a_tagged_alu_op_5549);
    -- flow through binary operator OR_u1_u1_5567_inst
    OR_u1_u1_5567_wire <= (OR_u1_u1_5565_wire or will_trap_on_overflow_5554);
    -- flow through binary operator OR_u1_u1_5568_inst
    fetch_psr_cc_5569 <= (OR_u1_u1_5560_wire or OR_u1_u1_5567_wire);
    -- flow through binary operator OR_u1_u1_5573_inst
    OR_u1_u1_5573_wire <= (is_read_psr_5053 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5576_inst
    OR_u1_u1_5576_wire <= (priv_instr_trap_if_not_supervisor_buffer or dti_4917);
    -- flow through binary operator OR_u1_u1_5577_inst
    fetch_psr_rest_5578 <= (OR_u1_u1_5573_wire or OR_u1_u1_5576_wire);
    -- flow through binary operator OR_u1_u1_5589_inst
    OR_u1_u1_5589_wire <= (is_read_wim_5058 or is_save_5033);
    -- flow through binary operator OR_u1_u1_5592_inst
    OR_u1_u1_5592_wire <= (is_restore_5038 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5593_inst
    fetch_wim_5594 <= (OR_u1_u1_5589_wire or OR_u1_u1_5592_wire);
    -- flow through binary operator OR_u1_u1_5598_inst
    OR_u1_u1_5598_wire <= (is_read_y_5048 or is_alu_div_5236);
    -- flow through binary operator OR_u1_u1_5600_inst
    fetch_y_5601 <= (OR_u1_u1_5598_wire or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5611_inst
    OR_u1_u1_5611_wire <= (is_write_psr_5078 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5614_inst
    OR_u1_u1_5614_wire <= (is_save_5033 or is_restore_5038);
    -- flow through binary operator OR_u1_u1_5615_inst
    update_psr_cwp_5616 <= (OR_u1_u1_5611_wire or OR_u1_u1_5614_wire);
    -- flow through binary operator OR_u1_u1_5620_inst
    OR_u1_u1_5620_wire <= (is_alu_and_5241 or is_alu_or_5246);
    -- flow through binary operator OR_u1_u1_5623_inst
    OR_u1_u1_5623_wire <= (is_alu_xor_5251 or is_alu_xnor_5256);
    -- flow through binary operator OR_u1_u1_5624_inst
    is_alu_logical_5625 <= (OR_u1_u1_5620_wire or OR_u1_u1_5623_wire);
    -- flow through binary operator OR_u1_u1_5630_inst
    OR_u1_u1_5630_wire <= (is_alu_add_5221 or is_alu_sub_5226);
    -- flow through binary operator OR_u1_u1_5633_inst
    OR_u1_u1_5633_wire <= (is_mulscc_5018 or is_alu_mul_5231);
    -- flow through binary operator OR_u1_u1_5634_inst
    OR_u1_u1_5634_wire <= (OR_u1_u1_5630_wire or OR_u1_u1_5633_wire);
    -- flow through binary operator OR_u1_u1_5637_inst
    OR_u1_u1_5637_wire <= (is_alu_div_5236 or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5639_inst
    OR_u1_u1_5639_wire <= (OR_u1_u1_5637_wire or is_alu_logical_5625);
    -- flow through binary operator OR_u1_u1_5640_inst
    OR_u1_u1_5640_wire <= (OR_u1_u1_5634_wire or OR_u1_u1_5639_wire);
    -- flow through binary operator OR_u1_u1_5646_inst
    OR_u1_u1_5646_wire <= (is_write_psr_5078 or will_set_cc_5642);
    -- flow through binary operator OR_u1_u1_5648_inst
    update_psr_cc_5649 <= (OR_u1_u1_5646_wire or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5653_inst
    update_psr_rest_5654 <= (is_write_psr_5078 or is_rett_4947);
    -- flow through binary operator OR_u1_u1_5665_inst
    OR_u1_u1_5665_wire <= (is_write_y_5073 or is_mulscc_5018);
    -- flow through binary operator OR_u1_u1_5667_inst
    update_y_5668 <= (OR_u1_u1_5665_wire or is_alu_mul_5231);
    -- flow through binary operator OR_u1_u1_5725_inst
    OR_u1_u1_5725_wire <= (is_alu_add_5221 or cti_4912);
    -- flow through binary operator OR_u1_u1_5727_inst
    OR_u1_u1_5727_wire <= (OR_u1_u1_5725_wire or dti_4917);
    -- flow through binary operator OR_u1_u1_5730_inst
    OR_u1_u1_5730_wire <= (is_flush_5023 or is_save_5033);
    -- flow through binary operator OR_u1_u1_5732_inst
    OR_u1_u1_5732_wire <= (OR_u1_u1_5730_wire or is_restore_5038);
    -- flow through binary operator OR_u1_u1_5733_inst
    use_alu_add_5734 <= (OR_u1_u1_5727_wire or OR_u1_u1_5732_wire);
    -- flow through binary operator OR_u1_u1_5739_inst
    OR_u1_u1_5739_wire <= (is_alu_add_5221 or is_alu_sub_5226);
    -- flow through binary operator OR_u1_u1_5745_inst
    OR_u1_u1_5745_wire <= (is_write_psr_5078 or is_write_wim_5083);
    -- flow through binary operator OR_u1_u1_5747_inst
    OR_u1_u1_5747_wire <= (OR_u1_u1_5745_wire or is_write_tbr_5088);
    -- flow through binary operator OR_u1_u1_5750_inst
    OR_u1_u1_5750_wire <= (is_write_y_5073 or is_write_asr_5068);
    -- flow through binary operator OR_u1_u1_5751_inst
    write_sreg_instr_5752 <= (OR_u1_u1_5747_wire or OR_u1_u1_5750_wire);
    -- flow through binary operator OR_u1_u1_5756_inst
    use_alu_xor_5757 <= (is_alu_xor_5251 or write_sreg_instr_5752);
    -- flow through binary operator OR_u1_u1_5847_inst
    OR_u1_u1_5847_wire <= (is_fp_access_5384 or is_cp_access_5384);
    -- flow through binary operator OR_u1_u1_5850_inst
    OR_u1_u1_5850_wire <= (is_fp_cp_sr_access_5384 or is_fp_cp_q_access_5384);
    -- flow through binary operator OR_u1_u1_5851_inst
    OR_u1_u1_5851_wire <= (OR_u1_u1_5847_wire or OR_u1_u1_5850_wire);
    -- flow through binary operator OR_u32_u32_5179_inst
    OR_u32_u32_5179_wire <= (MUX_5168_wire or MUX_5178_wire);
    -- flow through binary operator OR_u32_u32_5186_inst
    OR_u32_u32_5186_wire <= (OR_u32_u32_5179_wire or MUX_5185_wire);
    -- flow through binary operator OR_u32_u32_5195_inst
    OR_u32_u32_5195_wire <= (MUX_5190_wire or MUX_5194_wire);
    -- flow through binary operator OR_u32_u32_5196_inst
    imm_operand_buffer <= (OR_u32_u32_5186_wire or OR_u32_u32_5195_wire);
    -- flow through binary operator SHL_u32_u32_5176_inst
    process(simm22to32_5117) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(simm22to32_5117, konst_5175_wire_constant, tmp_var);
      SHL_u32_u32_5176_wire <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_5183_inst
    process(simm30to32_5110) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(simm30to32_5110, konst_5182_wire_constant, tmp_var);
      SHL_u32_u32_5183_wire <= tmp_var; --
    end process;
    -- unary operator type_cast_5108_inst
    process(type_cast_5107_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_5107_wire, tmp_var);
      type_cast_5108_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_5115_inst
    process(type_cast_5114_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_5114_wire, tmp_var);
      type_cast_5115_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_5122_inst
    process(type_cast_5121_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_5121_wire, tmp_var);
      type_cast_5122_wire <= tmp_var; -- 
    end process;
    -- unary operator type_cast_5130_inst
    process(type_cast_5129_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntToApIntSigned", type_cast_5129_wire, tmp_var);
      type_cast_5130_wire <= tmp_var; -- 
    end process;
    volatile_operator_decode_cti_ispec_4300: decode_cti_ispec_Volatile port map(ispec => ispec_buffer, cond => br_cond_4937, is_call => r_call_4937, is_rett => r_rett_4937, is_jmpl => r_jmpl_4937, is_ticc => r_ticc_4937, is_bicc => r_bicc_4937, is_fbfcc => r_fbfcc_4937, is_cbccc => r_cbccc_4937); 
    volatile_operator_decode_misc_ispec_4311: decode_misc_ispec_Volatile port map(ispec => ispec_buffer, is_nop => r_nop_5003, is_sethi => r_sethi_5003, is_mulscc => r_mulscc_5003, is_flush => r_flush_5003, is_stbar => r_stbar_5003, is_save => r_save_5003, is_restore => r_restore_5003, is_read_asr => r_read_asr_5003, is_read_y => r_read_y_5003, is_read_psr => r_read_psr_5003, is_read_wim => r_read_wim_5003, is_read_tbr => r_read_tbr_5003, is_write_asr => r_write_asr_5003, is_write_y => r_write_y_5003, is_write_psr => r_write_psr_5003, is_write_wim => r_write_wim_5003, is_write_tbr => r_write_tbr_5003); 
    volatile_operator_decode_alu_ispec_4379: decode_alu_ispec_Volatile port map(ispec => ispec_buffer, is_add => r_add_5216, is_sub => r_sub_5216, is_mul => r_mul_5216, is_div => r_div_5216, signed_mul_div => signed_mul_div_5216, is_and => r_and_5216, is_or => r_or_5216, is_xor => r_xor_5216, is_xnor => r_xnor_5216, is_sll => r_sll_5216, is_srl => r_srl_5216, is_sra => r_sra_5216, negate_second_operand => rnegate_second_operand_5216, with_carry => rwith_carry_5216, set_cc => rset_cc_5216, tagged_alu_op => rtagged_alu_op_5216, trap_on_overflow => rtrap_on_overflow_5216); 
    volatile_operator_decode_dti_ispec_4428: decode_dti_ispec_Volatile port map(ispec => ispec_buffer, is_load => is_load_5384, is_store => is_store_5384, is_atomic_ldstub => is_atomic_ldstub_5384, is_swap => is_swap_5384, S => S_5384, U => U_5384, FP => FP_5384, byte => r_byte_5384, half_word => r_half_word_5384, word => r_word_5384, double_word => r_double_word_5384, is_fp_access => is_fp_access_5384, is_cp_access => is_cp_access_5384, is_fp_cp_sr_access => is_fp_cp_sr_access_5384, is_fp_cp_q_access => is_fp_cp_q_access_5384, asi_bit => asi_bit_5384, asi_id_8 => asi_id_8_5384); 
    -- 
  end Block; -- data_path
  -- 
end decode_instruction_for_iunit_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_instruction_stage_1_Volatile is -- 
  port ( -- 
    annulled_instr : in  std_logic_vector(0 downto 0);
    thread_head : in  std_logic_vector(0 downto 0);
    stream_head : in  std_logic_vector(0 downto 0);
    debug_mode_selected : in  std_logic_vector(0 downto 0);
    last_was_cti : in  std_logic_vector(0 downto 0);
    instr_raw : in  std_logic_vector(31 downto 0);
    instr_class : out  std_logic_vector(2 downto 0);
    instr_spec : out  std_logic_vector(23 downto 0);
    instr_pipeline_usage : out  std_logic_vector(38 downto 0);
    stream_corrector_info : out  std_logic_vector(5 downto 0)-- 
  );
  -- 
end entity decode_instruction_stage_1_Volatile;
architecture decode_instruction_stage_1_Volatile_arch of decode_instruction_stage_1_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(37-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal annulled_instr_buffer :  std_logic_vector(0 downto 0);
  signal thread_head_buffer :  std_logic_vector(0 downto 0);
  signal stream_head_buffer :  std_logic_vector(0 downto 0);
  signal debug_mode_selected_buffer :  std_logic_vector(0 downto 0);
  signal last_was_cti_buffer :  std_logic_vector(0 downto 0);
  signal instr_raw_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal instr_class_buffer :  std_logic_vector(2 downto 0);
  signal instr_spec_buffer :  std_logic_vector(23 downto 0);
  signal instr_pipeline_usage_buffer :  std_logic_vector(38 downto 0);
  signal stream_corrector_info_buffer :  std_logic_vector(5 downto 0);
  -- volatile/operator module components. 
  component decode_instruction_base_Volatile is -- 
    port ( -- 
      annulled_instr : in  std_logic_vector(0 downto 0);
      thread_head : in  std_logic_vector(0 downto 0);
      stream_head : in  std_logic_vector(0 downto 0);
      debug_mode_selected : in  std_logic_vector(0 downto 0);
      last_was_cti : in  std_logic_vector(0 downto 0);
      instr_raw : in  std_logic_vector(31 downto 0);
      is_data_transfer_instr : out  std_logic_vector(0 downto 0);
      data_transfer_instr_spec : out  std_logic_vector(23 downto 0);
      is_control_transfer_instr : out  std_logic_vector(0 downto 0);
      control_transfer_instr_spec : out  std_logic_vector(10 downto 0);
      is_alu_instr : out  std_logic_vector(0 downto 0);
      alu_instr_spec : out  std_logic_vector(16 downto 0);
      is_misc_instr : out  std_logic_vector(0 downto 0);
      misc_instr_spec : out  std_logic_vector(16 downto 0);
      is_fp_op_instr : out  std_logic_vector(0 downto 0);
      fp_op_instr_spec : out  std_logic_vector(10 downto 0);
      is_cp_op_instr : out  std_logic_vector(0 downto 0);
      cp_op_instr_spec : out  std_logic_vector(1 downto 0);
      is_illegal_instr : out  std_logic_vector(0 downto 0);
      instr_pipeline_usage : out  std_logic_vector(38 downto 0);
      stream_corrector_info : out  std_logic_vector(5 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  annulled_instr_buffer <= annulled_instr;
  thread_head_buffer <= thread_head;
  stream_head_buffer <= stream_head;
  debug_mode_selected_buffer <= debug_mode_selected;
  last_was_cti_buffer <= last_was_cti;
  instr_raw_buffer <= instr_raw;
  -- output handling  -------------------------------------------------------
  instr_class <= instr_class_buffer;
  instr_spec <= instr_spec_buffer;
  instr_pipeline_usage <= instr_pipeline_usage_buffer;
  stream_corrector_info <= stream_corrector_info_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal MUX_5932_wire : std_logic_vector(23 downto 0);
    signal MUX_5937_wire : std_logic_vector(23 downto 0);
    signal MUX_5943_wire : std_logic_vector(23 downto 0);
    signal MUX_5948_wire : std_logic_vector(23 downto 0);
    signal MUX_5955_wire : std_logic_vector(23 downto 0);
    signal MUX_5960_wire : std_logic_vector(23 downto 0);
    signal MUX_5965_wire : std_logic_vector(23 downto 0);
    signal MUX_5973_wire : std_logic_vector(2 downto 0);
    signal MUX_5977_wire : std_logic_vector(2 downto 0);
    signal MUX_5982_wire : std_logic_vector(2 downto 0);
    signal MUX_5986_wire : std_logic_vector(2 downto 0);
    signal MUX_5992_wire : std_logic_vector(2 downto 0);
    signal MUX_5996_wire : std_logic_vector(2 downto 0);
    signal MUX_6001_wire : std_logic_vector(2 downto 0);
    signal OR_u24_u24_5938_wire : std_logic_vector(23 downto 0);
    signal OR_u24_u24_5949_wire : std_logic_vector(23 downto 0);
    signal OR_u24_u24_5950_wire : std_logic_vector(23 downto 0);
    signal OR_u24_u24_5961_wire : std_logic_vector(23 downto 0);
    signal OR_u24_u24_5966_wire : std_logic_vector(23 downto 0);
    signal OR_u3_u3_5978_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_5987_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_5988_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_5997_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_6002_wire : std_logic_vector(2 downto 0);
    signal R_ALU_INSTR_5980_wire_constant : std_logic_vector(2 downto 0);
    signal R_CONTROL_TRANSFER_INSTR_5975_wire_constant : std_logic_vector(2 downto 0);
    signal R_CP_INSTR_5994_wire_constant : std_logic_vector(2 downto 0);
    signal R_DATA_TRANSFER_INSTR_5971_wire_constant : std_logic_vector(2 downto 0);
    signal R_FP_INSTR_5990_wire_constant : std_logic_vector(2 downto 0);
    signal R_ILLEGAL_INSTR_5999_wire_constant : std_logic_vector(2 downto 0);
    signal R_MISC_INSTR_5984_wire_constant : std_logic_vector(2 downto 0);
    signal alu_instr_spec_5926 : std_logic_vector(16 downto 0);
    signal control_transfer_instr_spec_5926 : std_logic_vector(10 downto 0);
    signal cp_op_instr_spec_5926 : std_logic_vector(1 downto 0);
    signal data_transfer_instr_spec_5926 : std_logic_vector(23 downto 0);
    signal fp_op_instr_spec_5926 : std_logic_vector(10 downto 0);
    signal is_alu_instr_5926 : std_logic_vector(0 downto 0);
    signal is_control_transfer_instr_5926 : std_logic_vector(0 downto 0);
    signal is_cp_op_instr_5926 : std_logic_vector(0 downto 0);
    signal is_data_transfer_instr_5926 : std_logic_vector(0 downto 0);
    signal is_fp_op_instr_5926 : std_logic_vector(0 downto 0);
    signal is_illegal_instr_5926 : std_logic_vector(0 downto 0);
    signal is_misc_instr_5926 : std_logic_vector(0 downto 0);
    signal konst_5931_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5936_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5942_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5947_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5954_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5959_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5963_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5964_wire_constant : std_logic_vector(23 downto 0);
    signal konst_5972_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5976_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5981_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5985_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5991_wire_constant : std_logic_vector(2 downto 0);
    signal konst_5995_wire_constant : std_logic_vector(2 downto 0);
    signal konst_6000_wire_constant : std_logic_vector(2 downto 0);
    signal misc_instr_spec_5926 : std_logic_vector(16 downto 0);
    signal type_cast_5930_wire : std_logic_vector(23 downto 0);
    signal type_cast_5935_wire : std_logic_vector(23 downto 0);
    signal type_cast_5941_wire : std_logic_vector(23 downto 0);
    signal type_cast_5946_wire : std_logic_vector(23 downto 0);
    signal type_cast_5953_wire : std_logic_vector(23 downto 0);
    signal type_cast_5958_wire : std_logic_vector(23 downto 0);
    -- 
  begin -- 
    R_ALU_INSTR_5980_wire_constant <= "010";
    R_CONTROL_TRANSFER_INSTR_5975_wire_constant <= "011";
    R_CP_INSTR_5994_wire_constant <= "110";
    R_DATA_TRANSFER_INSTR_5971_wire_constant <= "001";
    R_FP_INSTR_5990_wire_constant <= "101";
    R_ILLEGAL_INSTR_5999_wire_constant <= "111";
    R_MISC_INSTR_5984_wire_constant <= "100";
    konst_5931_wire_constant <= "000000000000000000000000";
    konst_5936_wire_constant <= "000000000000000000000000";
    konst_5942_wire_constant <= "000000000000000000000000";
    konst_5947_wire_constant <= "000000000000000000000000";
    konst_5954_wire_constant <= "000000000000000000000000";
    konst_5959_wire_constant <= "000000000000000000000000";
    konst_5963_wire_constant <= "000000000000000000000000";
    konst_5964_wire_constant <= "000000000000000000000000";
    konst_5972_wire_constant <= "000";
    konst_5976_wire_constant <= "000";
    konst_5981_wire_constant <= "000";
    konst_5985_wire_constant <= "000";
    konst_5991_wire_constant <= "000";
    konst_5995_wire_constant <= "000";
    konst_6000_wire_constant <= "000";
    -- flow-through select operator MUX_5932_inst
    MUX_5932_wire <= type_cast_5930_wire when (is_data_transfer_instr_5926(0) /=  '0') else konst_5931_wire_constant;
    -- flow-through select operator MUX_5937_inst
    MUX_5937_wire <= type_cast_5935_wire when (is_control_transfer_instr_5926(0) /=  '0') else konst_5936_wire_constant;
    -- flow-through select operator MUX_5943_inst
    MUX_5943_wire <= type_cast_5941_wire when (is_alu_instr_5926(0) /=  '0') else konst_5942_wire_constant;
    -- flow-through select operator MUX_5948_inst
    MUX_5948_wire <= type_cast_5946_wire when (is_misc_instr_5926(0) /=  '0') else konst_5947_wire_constant;
    -- flow-through select operator MUX_5955_inst
    MUX_5955_wire <= type_cast_5953_wire when (is_fp_op_instr_5926(0) /=  '0') else konst_5954_wire_constant;
    -- flow-through select operator MUX_5960_inst
    MUX_5960_wire <= type_cast_5958_wire when (is_cp_op_instr_5926(0) /=  '0') else konst_5959_wire_constant;
    -- flow-through select operator MUX_5965_inst
    MUX_5965_wire <= konst_5963_wire_constant when (is_illegal_instr_5926(0) /=  '0') else konst_5964_wire_constant;
    -- flow-through select operator MUX_5973_inst
    MUX_5973_wire <= R_DATA_TRANSFER_INSTR_5971_wire_constant when (is_data_transfer_instr_5926(0) /=  '0') else konst_5972_wire_constant;
    -- flow-through select operator MUX_5977_inst
    MUX_5977_wire <= R_CONTROL_TRANSFER_INSTR_5975_wire_constant when (is_control_transfer_instr_5926(0) /=  '0') else konst_5976_wire_constant;
    -- flow-through select operator MUX_5982_inst
    MUX_5982_wire <= R_ALU_INSTR_5980_wire_constant when (is_alu_instr_5926(0) /=  '0') else konst_5981_wire_constant;
    -- flow-through select operator MUX_5986_inst
    MUX_5986_wire <= R_MISC_INSTR_5984_wire_constant when (is_misc_instr_5926(0) /=  '0') else konst_5985_wire_constant;
    -- flow-through select operator MUX_5992_inst
    MUX_5992_wire <= R_FP_INSTR_5990_wire_constant when (is_fp_op_instr_5926(0) /=  '0') else konst_5991_wire_constant;
    -- flow-through select operator MUX_5996_inst
    MUX_5996_wire <= R_CP_INSTR_5994_wire_constant when (is_cp_op_instr_5926(0) /=  '0') else konst_5995_wire_constant;
    -- flow-through select operator MUX_6001_inst
    MUX_6001_wire <= R_ILLEGAL_INSTR_5999_wire_constant when (is_illegal_instr_5926(0) /=  '0') else konst_6000_wire_constant;
    -- interlock type_cast_5930_inst
    process(data_transfer_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 23 downto 0) := data_transfer_instr_spec_5926(23 downto 0);
      type_cast_5930_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5935_inst
    process(control_transfer_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 10 downto 0) := control_transfer_instr_spec_5926(10 downto 0);
      type_cast_5935_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5941_inst
    process(alu_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 16 downto 0) := alu_instr_spec_5926(16 downto 0);
      type_cast_5941_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5946_inst
    process(misc_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 16 downto 0) := misc_instr_spec_5926(16 downto 0);
      type_cast_5946_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5953_inst
    process(fp_op_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 10 downto 0) := fp_op_instr_spec_5926(10 downto 0);
      type_cast_5953_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_5958_inst
    process(cp_op_instr_spec_5926) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 1 downto 0) := cp_op_instr_spec_5926(1 downto 0);
      type_cast_5958_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u24_u24_5938_inst
    OR_u24_u24_5938_wire <= (MUX_5932_wire or MUX_5937_wire);
    -- flow through binary operator OR_u24_u24_5949_inst
    OR_u24_u24_5949_wire <= (MUX_5943_wire or MUX_5948_wire);
    -- flow through binary operator OR_u24_u24_5950_inst
    OR_u24_u24_5950_wire <= (OR_u24_u24_5938_wire or OR_u24_u24_5949_wire);
    -- flow through binary operator OR_u24_u24_5961_inst
    OR_u24_u24_5961_wire <= (MUX_5955_wire or MUX_5960_wire);
    -- flow through binary operator OR_u24_u24_5966_inst
    OR_u24_u24_5966_wire <= (OR_u24_u24_5961_wire or MUX_5965_wire);
    -- flow through binary operator OR_u24_u24_5967_inst
    instr_spec_buffer <= (OR_u24_u24_5950_wire or OR_u24_u24_5966_wire);
    -- flow through binary operator OR_u3_u3_5978_inst
    OR_u3_u3_5978_wire <= (MUX_5973_wire or MUX_5977_wire);
    -- flow through binary operator OR_u3_u3_5987_inst
    OR_u3_u3_5987_wire <= (MUX_5982_wire or MUX_5986_wire);
    -- flow through binary operator OR_u3_u3_5988_inst
    OR_u3_u3_5988_wire <= (OR_u3_u3_5978_wire or OR_u3_u3_5987_wire);
    -- flow through binary operator OR_u3_u3_5997_inst
    OR_u3_u3_5997_wire <= (MUX_5992_wire or MUX_5996_wire);
    -- flow through binary operator OR_u3_u3_6002_inst
    OR_u3_u3_6002_wire <= (OR_u3_u3_5997_wire or MUX_6001_wire);
    -- flow through binary operator OR_u3_u3_6003_inst
    instr_class_buffer <= (OR_u3_u3_5988_wire or OR_u3_u3_6002_wire);
    volatile_operator_decode_instruction_base_4734: decode_instruction_base_Volatile port map(annulled_instr => annulled_instr_buffer, thread_head => thread_head_buffer, stream_head => stream_head_buffer, debug_mode_selected => debug_mode_selected_buffer, last_was_cti => last_was_cti_buffer, instr_raw => instr_raw_buffer, is_data_transfer_instr => is_data_transfer_instr_5926, data_transfer_instr_spec => data_transfer_instr_spec_5926, is_control_transfer_instr => is_control_transfer_instr_5926, control_transfer_instr_spec => control_transfer_instr_spec_5926, is_alu_instr => is_alu_instr_5926, alu_instr_spec => alu_instr_spec_5926, is_misc_instr => is_misc_instr_5926, misc_instr_spec => misc_instr_spec_5926, is_fp_op_instr => is_fp_op_instr_5926, fp_op_instr_spec => fp_op_instr_spec_5926, is_cp_op_instr => is_cp_op_instr_5926, cp_op_instr_spec => cp_op_instr_spec_5926, is_illegal_instr => is_illegal_instr_5926, instr_pipeline_usage => instr_pipeline_usage_buffer, stream_corrector_info => stream_corrector_info_buffer); 
    -- 
  end Block; -- data_path
  -- 
end decode_instruction_stage_1_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_misc_ispec_Volatile is -- 
  port ( -- 
    ispec : in  std_logic_vector(23 downto 0);
    is_nop : out  std_logic_vector(0 downto 0);
    is_sethi : out  std_logic_vector(0 downto 0);
    is_mulscc : out  std_logic_vector(0 downto 0);
    is_flush : out  std_logic_vector(0 downto 0);
    is_stbar : out  std_logic_vector(0 downto 0);
    is_save : out  std_logic_vector(0 downto 0);
    is_restore : out  std_logic_vector(0 downto 0);
    is_read_asr : out  std_logic_vector(0 downto 0);
    is_read_y : out  std_logic_vector(0 downto 0);
    is_read_psr : out  std_logic_vector(0 downto 0);
    is_read_wim : out  std_logic_vector(0 downto 0);
    is_read_tbr : out  std_logic_vector(0 downto 0);
    is_write_asr : out  std_logic_vector(0 downto 0);
    is_write_y : out  std_logic_vector(0 downto 0);
    is_write_psr : out  std_logic_vector(0 downto 0);
    is_write_wim : out  std_logic_vector(0 downto 0);
    is_write_tbr : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_misc_ispec_Volatile;
architecture decode_misc_ispec_Volatile_arch of decode_misc_ispec_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(24-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ispec_buffer :  std_logic_vector(23 downto 0);
  -- output port buffer signals
  signal is_nop_buffer :  std_logic_vector(0 downto 0);
  signal is_sethi_buffer :  std_logic_vector(0 downto 0);
  signal is_mulscc_buffer :  std_logic_vector(0 downto 0);
  signal is_flush_buffer :  std_logic_vector(0 downto 0);
  signal is_stbar_buffer :  std_logic_vector(0 downto 0);
  signal is_save_buffer :  std_logic_vector(0 downto 0);
  signal is_restore_buffer :  std_logic_vector(0 downto 0);
  signal is_read_asr_buffer :  std_logic_vector(0 downto 0);
  signal is_read_y_buffer :  std_logic_vector(0 downto 0);
  signal is_read_psr_buffer :  std_logic_vector(0 downto 0);
  signal is_read_wim_buffer :  std_logic_vector(0 downto 0);
  signal is_read_tbr_buffer :  std_logic_vector(0 downto 0);
  signal is_write_asr_buffer :  std_logic_vector(0 downto 0);
  signal is_write_y_buffer :  std_logic_vector(0 downto 0);
  signal is_write_psr_buffer :  std_logic_vector(0 downto 0);
  signal is_write_wim_buffer :  std_logic_vector(0 downto 0);
  signal is_write_tbr_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ispec_buffer <= ispec;
  -- output handling  -------------------------------------------------------
  is_nop <= is_nop_buffer;
  is_sethi <= is_sethi_buffer;
  is_mulscc <= is_mulscc_buffer;
  is_flush <= is_flush_buffer;
  is_stbar <= is_stbar_buffer;
  is_save <= is_save_buffer;
  is_restore <= is_restore_buffer;
  is_read_asr <= is_read_asr_buffer;
  is_read_y <= is_read_y_buffer;
  is_read_psr <= is_read_psr_buffer;
  is_read_wim <= is_read_wim_buffer;
  is_read_tbr <= is_read_tbr_buffer;
  is_write_asr <= is_write_asr_buffer;
  is_write_y <= is_write_y_buffer;
  is_write_psr <= is_write_psr_buffer;
  is_write_wim <= is_write_wim_buffer;
  is_write_tbr <= is_write_tbr_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_4823_inst
    is_nop_buffer <= ispec_buffer(16 downto 16);
    -- flow-through slice operator slice_4827_inst
    is_sethi_buffer <= ispec_buffer(15 downto 15);
    -- flow-through slice operator slice_4831_inst
    is_mulscc_buffer <= ispec_buffer(14 downto 14);
    -- flow-through slice operator slice_4835_inst
    is_flush_buffer <= ispec_buffer(13 downto 13);
    -- flow-through slice operator slice_4839_inst
    is_stbar_buffer <= ispec_buffer(12 downto 12);
    -- flow-through slice operator slice_4843_inst
    is_save_buffer <= ispec_buffer(11 downto 11);
    -- flow-through slice operator slice_4847_inst
    is_restore_buffer <= ispec_buffer(10 downto 10);
    -- flow-through slice operator slice_4851_inst
    is_read_asr_buffer <= ispec_buffer(9 downto 9);
    -- flow-through slice operator slice_4855_inst
    is_read_y_buffer <= ispec_buffer(8 downto 8);
    -- flow-through slice operator slice_4859_inst
    is_read_psr_buffer <= ispec_buffer(7 downto 7);
    -- flow-through slice operator slice_4863_inst
    is_read_wim_buffer <= ispec_buffer(6 downto 6);
    -- flow-through slice operator slice_4867_inst
    is_read_tbr_buffer <= ispec_buffer(5 downto 5);
    -- flow-through slice operator slice_4871_inst
    is_write_asr_buffer <= ispec_buffer(4 downto 4);
    -- flow-through slice operator slice_4875_inst
    is_write_y_buffer <= ispec_buffer(3 downto 3);
    -- flow-through slice operator slice_4879_inst
    is_write_psr_buffer <= ispec_buffer(2 downto 2);
    -- flow-through slice operator slice_4883_inst
    is_write_wim_buffer <= ispec_buffer(1 downto 1);
    -- flow-through slice operator slice_4887_inst
    is_write_tbr_buffer <= ispec_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_misc_ispec_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity decode_op_fetch_control_word_Volatile is -- 
  port ( -- 
    cw : in  std_logic_vector(39 downto 0);
    read_rs1 : out  std_logic_vector(0 downto 0);
    rs1 : out  std_logic_vector(4 downto 0);
    read_rs2 : out  std_logic_vector(0 downto 0);
    rs2 : out  std_logic_vector(4 downto 0);
    read_rd : out  std_logic_vector(0 downto 0);
    write_rd : out  std_logic_vector(0 downto 0);
    double_word : out  std_logic_vector(0 downto 0);
    rd : out  std_logic_vector(4 downto 0);
    fetch_psr : out  std_logic_vector(2 downto 0);
    update_psr : out  std_logic_vector(2 downto 0);
    fetch_wim : out  std_logic_vector(0 downto 0);
    update_wim : out  std_logic_vector(0 downto 0);
    fetch_tbr : out  std_logic_vector(0 downto 0);
    update_tbr : out  std_logic_vector(0 downto 0);
    fetch_y : out  std_logic_vector(0 downto 0);
    update_y : out  std_logic_vector(0 downto 0);
    fetch_asr : out  std_logic_vector(0 downto 0);
    update_asr : out  std_logic_vector(0 downto 0);
    save_restore_lock : out  std_logic_vector(0 downto 0);
    asr_id : out  std_logic_vector(4 downto 0)-- 
  );
  -- 
end entity decode_op_fetch_control_word_Volatile;
architecture decode_op_fetch_control_word_Volatile_arch of decode_op_fetch_control_word_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(40-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal cw_buffer :  std_logic_vector(39 downto 0);
  -- output port buffer signals
  signal read_rs1_buffer :  std_logic_vector(0 downto 0);
  signal rs1_buffer :  std_logic_vector(4 downto 0);
  signal read_rs2_buffer :  std_logic_vector(0 downto 0);
  signal rs2_buffer :  std_logic_vector(4 downto 0);
  signal read_rd_buffer :  std_logic_vector(0 downto 0);
  signal write_rd_buffer :  std_logic_vector(0 downto 0);
  signal double_word_buffer :  std_logic_vector(0 downto 0);
  signal rd_buffer :  std_logic_vector(4 downto 0);
  signal fetch_psr_buffer :  std_logic_vector(2 downto 0);
  signal update_psr_buffer :  std_logic_vector(2 downto 0);
  signal fetch_wim_buffer :  std_logic_vector(0 downto 0);
  signal update_wim_buffer :  std_logic_vector(0 downto 0);
  signal fetch_tbr_buffer :  std_logic_vector(0 downto 0);
  signal update_tbr_buffer :  std_logic_vector(0 downto 0);
  signal fetch_y_buffer :  std_logic_vector(0 downto 0);
  signal update_y_buffer :  std_logic_vector(0 downto 0);
  signal fetch_asr_buffer :  std_logic_vector(0 downto 0);
  signal update_asr_buffer :  std_logic_vector(0 downto 0);
  signal save_restore_lock_buffer :  std_logic_vector(0 downto 0);
  signal asr_id_buffer :  std_logic_vector(4 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  cw_buffer <= cw;
  -- output handling  -------------------------------------------------------
  read_rs1 <= read_rs1_buffer;
  rs1 <= rs1_buffer;
  read_rs2 <= read_rs2_buffer;
  rs2 <= rs2_buffer;
  read_rd <= read_rd_buffer;
  write_rd <= write_rd_buffer;
  double_word <= double_word_buffer;
  rd <= rd_buffer;
  fetch_psr <= fetch_psr_buffer;
  update_psr <= update_psr_buffer;
  fetch_wim <= fetch_wim_buffer;
  update_wim <= update_wim_buffer;
  fetch_tbr <= fetch_tbr_buffer;
  update_tbr <= update_tbr_buffer;
  fetch_y <= fetch_y_buffer;
  update_y <= update_y_buffer;
  fetch_asr <= fetch_asr_buffer;
  update_asr <= update_asr_buffer;
  save_restore_lock <= save_restore_lock_buffer;
  asr_id <= asr_id_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_6156_inst
    read_rs1_buffer <= cw_buffer(39 downto 39);
    -- flow-through slice operator slice_6160_inst
    rs1_buffer <= cw_buffer(38 downto 34);
    -- flow-through slice operator slice_6164_inst
    read_rs2_buffer <= cw_buffer(33 downto 33);
    -- flow-through slice operator slice_6168_inst
    rs2_buffer <= cw_buffer(32 downto 28);
    -- flow-through slice operator slice_6172_inst
    read_rd_buffer <= cw_buffer(27 downto 27);
    -- flow-through slice operator slice_6176_inst
    write_rd_buffer <= cw_buffer(26 downto 26);
    -- flow-through slice operator slice_6180_inst
    double_word_buffer <= cw_buffer(25 downto 25);
    -- flow-through slice operator slice_6184_inst
    rd_buffer <= cw_buffer(24 downto 20);
    -- flow-through slice operator slice_6188_inst
    fetch_psr_buffer <= cw_buffer(19 downto 17);
    -- flow-through slice operator slice_6192_inst
    update_psr_buffer <= cw_buffer(16 downto 14);
    -- flow-through slice operator slice_6196_inst
    fetch_wim_buffer <= cw_buffer(13 downto 13);
    -- flow-through slice operator slice_6200_inst
    update_wim_buffer <= cw_buffer(12 downto 12);
    -- flow-through slice operator slice_6204_inst
    fetch_tbr_buffer <= cw_buffer(11 downto 11);
    -- flow-through slice operator slice_6208_inst
    update_tbr_buffer <= cw_buffer(10 downto 10);
    -- flow-through slice operator slice_6212_inst
    fetch_y_buffer <= cw_buffer(9 downto 9);
    -- flow-through slice operator slice_6216_inst
    update_y_buffer <= cw_buffer(8 downto 8);
    -- flow-through slice operator slice_6220_inst
    fetch_asr_buffer <= cw_buffer(7 downto 7);
    -- flow-through slice operator slice_6224_inst
    update_asr_buffer <= cw_buffer(6 downto 6);
    -- flow-through slice operator slice_6228_inst
    save_restore_lock_buffer <= cw_buffer(5 downto 5);
    -- flow-through slice operator slice_6232_inst
    asr_id_buffer <= cw_buffer(4 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_op_fetch_control_word_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
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
    -- flow-through slice operator slice_6289_inst
    sc_instr_class_buffer <= ctrl_word_buffer(21 downto 19);
    -- flow-through slice operator slice_6293_inst
    debug_mode_buffer <= ctrl_word_buffer(18 downto 18);
    -- flow-through slice operator slice_6297_inst
    logger_active_buffer <= ctrl_word_buffer(17 downto 17);
    -- flow-through slice operator slice_6301_inst
    proc_ilvl_buffer <= ctrl_word_buffer(16 downto 13);
    -- flow-through slice operator slice_6305_inst
    enable_traps_buffer <= ctrl_word_buffer(12 downto 12);
    -- flow-through slice operator slice_6309_inst
    single_step_mode_buffer <= ctrl_word_buffer(11 downto 11);
    -- flow-through slice operator slice_6313_inst
    ignore_break_points_buffer <= ctrl_word_buffer(10 downto 10);
    -- flow-through slice operator slice_6317_inst
    S_buffer <= ctrl_word_buffer(9 downto 9);
    -- flow-through slice operator slice_6321_inst
    imm_bit_buffer <= ctrl_word_buffer(8 downto 8);
    -- flow-through slice operator slice_6325_inst
    is_write_psr_buffer <= ctrl_word_buffer(7 downto 7);
    -- flow-through slice operator slice_6329_inst
    is_mmu_ctrl_write_buffer <= ctrl_word_buffer(6 downto 6);
    -- flow-through slice operator slice_6333_inst
    is_flush_buffer <= ctrl_word_buffer(5 downto 5);
    -- flow-through slice operator slice_6337_inst
    is_cti_buffer <= ctrl_word_buffer(4 downto 4);
    -- flow-through slice operator slice_6341_inst
    mis_predict_buffer <= ctrl_word_buffer(3 downto 3);
    -- flow-through slice operator slice_6345_inst
    trap_bit_buffer <= ctrl_word_buffer(2 downto 2);
    -- flow-through slice operator slice_6349_inst
    stream_head_buffer <= ctrl_word_buffer(1 downto 1);
    -- flow-through slice operator slice_6353_inst
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity extract_save_restore_from_exec_control_word_Volatile is -- 
  port ( -- 
    cw : in  std_logic_vector(54 downto 0);
    save : out  std_logic_vector(0 downto 0);
    restore : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity extract_save_restore_from_exec_control_word_Volatile;
architecture extract_save_restore_from_exec_control_word_Volatile_arch of extract_save_restore_from_exec_control_word_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(55-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal cw_buffer :  std_logic_vector(54 downto 0);
  -- output port buffer signals
  signal save_buffer :  std_logic_vector(0 downto 0);
  signal restore_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  cw_buffer <= cw;
  -- output handling  -------------------------------------------------------
  save <= save_buffer;
  restore <= restore_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal konst_6965_wire_constant : std_logic_vector(54 downto 0);
    signal konst_6970_wire_constant : std_logic_vector(54 downto 0);
    -- 
  begin -- 
    konst_6965_wire_constant <= "0000000000000000000000000000000000000000000000000000101";
    konst_6970_wire_constant <= "0000000000000000000000000000000000000000000000000000100";
    -- flow through binary operator BITSEL_u55_u1_6966_inst
    process(cw_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(cw_buffer, konst_6965_wire_constant, tmp_var);
      save_buffer <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u55_u1_6971_inst
    process(cw_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(cw_buffer, konst_6970_wire_constant, tmp_var);
      restore_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end extract_save_restore_from_exec_control_word_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
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
    signal ADD_u30_u30_7167_wire : std_logic_vector(29 downto 0);
    signal slice_7164_wire : std_logic_vector(29 downto 0);
    signal slice_7166_wire : std_logic_vector(29 downto 0);
    signal type_cast_7169_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    type_cast_7169_wire_constant <= "00";
    -- flow-through slice operator slice_7164_inst
    slice_7164_wire <= pc_buffer(31 downto 2);
    -- flow-through slice operator slice_7166_inst
    slice_7166_wire <= offset_buffer(31 downto 2);
    -- flow through binary operator ADD_u30_u30_7167_inst
    ADD_u30_u30_7167_wire <= std_logic_vector(unsigned(slice_7164_wire) + unsigned(slice_7166_wire));
    -- flow through binary operator CONCAT_u30_u32_7170_inst
    process(ADD_u30_u30_7167_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(ADD_u30_u30_7167_wire, type_cast_7169_wire_constant, tmp_var);
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity get_destination_register_Volatile is -- 
  port ( -- 
    instr : in  std_logic_vector(31 downto 0);
    rd : out  std_logic_vector(4 downto 0)-- 
  );
  -- 
end entity get_destination_register_Volatile;
architecture get_destination_register_Volatile_arch of get_destination_register_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal rd_buffer :  std_logic_vector(4 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_buffer <= instr;
  -- output handling  -------------------------------------------------------
  rd <= rd_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_7178_inst
    rd_buffer <= instr_buffer(29 downto 25);
    -- 
  end Block; -- data_path
  -- 
end get_destination_register_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity idecode_idispatch_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    noblock_joined_iretire_sc_to_idispatch_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_joined_iretire_sc_to_idispatch_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_joined_iretire_sc_to_idispatch_pipe_read_data : in   std_logic_vector(147 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_req : out  std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_ack : in   std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_read_data : in   std_logic_vector(223 downto 0);
    debug_bp_0 : in std_logic_vector(31 downto 0);
    debug_bp_1 : in std_logic_vector(31 downto 0);
    debug_bp_2 : in std_logic_vector(31 downto 0);
    debug_bp_3 : in std_logic_vector(31 downto 0);
    debug_dbg_interrupt : in std_logic_vector(0 downto 0);
    teu_stream_corrector_annul_status : in std_logic_vector(15 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_write_data : out  std_logic_vector(147 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data : out  std_logic_vector(58 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_data : out  std_logic_vector(83 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_write_data : out  std_logic_vector(125 downto 0);
    teu_idispatch_to_iunit_exec_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_idispatch_to_iunit_exec_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_idispatch_to_iunit_exec_pipe_write_data : out  std_logic_vector(149 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_write_data : out  std_logic_vector(204 downto 0);
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
end entity idecode_idispatch_daemon;
architecture idecode_idispatch_daemon_arch of idecode_idispatch_daemon is -- 
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
  signal idecode_idispatch_daemon_CP_234_start: Boolean;
  signal idecode_idispatch_daemon_CP_234_symbol: Boolean;
  -- volatile/operator module components. 
  component analyze_sc_annul_status_Volatile is -- 
    port ( -- 
      thread_head : in  std_logic_vector(0 downto 0);
      stream_head : in  std_logic_vector(0 downto 0);
      thread_id : in  std_logic_vector(3 downto 0);
      stream_id : in  std_logic_vector(1 downto 0);
      sc_annul_status : in  std_logic_vector(15 downto 0);
      sc_annul_apply : out  std_logic_vector(0 downto 0);
      sc_annul_value : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component debug_calculate_debug_bp_hits_Volatile is -- 
    port ( -- 
      raw_intr_in : in  std_logic_vector(0 downto 0);
      debug_mode_selected : in  std_logic_vector(0 downto 0);
      bp0_in : in  std_logic_vector(31 downto 0);
      bp1_in : in  std_logic_vector(31 downto 0);
      bp2_in : in  std_logic_vector(31 downto 0);
      bp3_in : in  std_logic_vector(31 downto 0);
      pc_from_dispatch : in  std_logic_vector(31 downto 0);
      debug_bp_reg_id : out  std_logic_vector(1 downto 0);
      debug_bp_hit : out  std_logic_vector(0 downto 0);
      intr_out : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
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
  component decode_instruction_stage_1_Volatile is -- 
    port ( -- 
      annulled_instr : in  std_logic_vector(0 downto 0);
      thread_head : in  std_logic_vector(0 downto 0);
      stream_head : in  std_logic_vector(0 downto 0);
      debug_mode_selected : in  std_logic_vector(0 downto 0);
      last_was_cti : in  std_logic_vector(0 downto 0);
      instr_raw : in  std_logic_vector(31 downto 0);
      instr_class : out  std_logic_vector(2 downto 0);
      instr_spec : out  std_logic_vector(23 downto 0);
      instr_pipeline_usage : out  std_logic_vector(38 downto 0);
      stream_corrector_info : out  std_logic_vector(5 downto 0)-- 
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
  component generic_pc_adder_Volatile is -- 
    port ( -- 
      pc : in  std_logic_vector(31 downto 0);
      offset : in  std_logic_vector(31 downto 0);
      npc : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component idispatch_logic_Volatile is -- 
    port ( -- 
      machine_state_in : in  std_logic_vector(299 downto 0);
      do_not_bypass : in  std_logic_vector(0 downto 0);
      debug_bp_reg_id : in  std_logic_vector(1 downto 0);
      debug_bp_hit : in  std_logic_vector(0 downto 0);
      debug_intr : in  std_logic_vector(0 downto 0);
      irl_4 : in  std_logic_vector(3 downto 0);
      to_loadstore : out  std_logic_vector(125 downto 0);
      to_iunit : out  std_logic_vector(126 downto 0);
      to_fpunit : out  std_logic_vector(94 downto 0);
      to_stream_corrector : out  std_logic_vector(204 downto 0)-- 
    );
    -- 
  end component; 
  component idispatch_to_fpunit_logic_Volatile is -- 
    port ( -- 
      instr_descr : in  std_logic_vector(94 downto 0);
      send_to_rfile : out  std_logic_vector(0 downto 0);
      to_rfile : out  std_logic_vector(46 downto 0);
      to_exec : out  std_logic_vector(67 downto 0);
      to_writeback : out  std_logic_vector(42 downto 0)-- 
    );
    -- 
  end component; 
  component idispatch_to_iunit_logic_Volatile is -- 
    port ( -- 
      instr_descr : in  std_logic_vector(126 downto 0);
      send_to_rfile : out  std_logic_vector(0 downto 0);
      to_rfile : out  std_logic_vector(58 downto 0);
      to_exec : out  std_logic_vector(149 downto 0);
      to_writeback : out  std_logic_vector(83 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal do_while_stmt_8480_branch_req_0 : boolean;
  signal phi_stmt_8482_req_1 : boolean;
  signal phi_stmt_8482_req_0 : boolean;
  signal phi_stmt_8482_ack_0 : boolean;
  signal RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_0 : boolean;
  signal RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_0 : boolean;
  signal RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_1 : boolean;
  signal RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_1 : boolean;
  signal phi_stmt_8486_req_1 : boolean;
  signal phi_stmt_8486_req_0 : boolean;
  signal phi_stmt_8486_ack_0 : boolean;
  signal next_CIRCULANT_9164_8493_buf_req_0 : boolean;
  signal next_CIRCULANT_9164_8493_buf_ack_0 : boolean;
  signal next_CIRCULANT_9164_8493_buf_req_1 : boolean;
  signal next_CIRCULANT_9164_8493_buf_ack_1 : boolean;
  signal phi_stmt_8494_req_1 : boolean;
  signal phi_stmt_8494_req_0 : boolean;
  signal phi_stmt_8494_ack_0 : boolean;
  signal RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_0 : boolean;
  signal RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_0 : boolean;
  signal RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_1 : boolean;
  signal RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_1 : boolean;
  signal RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_0 : boolean;
  signal RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_0 : boolean;
  signal RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_1 : boolean;
  signal RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_1 : boolean;
  signal WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_0 : boolean;
  signal WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_0 : boolean;
  signal WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_1 : boolean;
  signal WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_0 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_1 : boolean;
  signal WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_1 : boolean;
  signal WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_0 : boolean;
  signal WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_0 : boolean;
  signal WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_1 : boolean;
  signal WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_1 : boolean;
  signal do_while_stmt_8480_branch_ack_0 : boolean;
  signal do_while_stmt_8480_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "idecode_idispatch_daemon_input_buffer", -- 
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
  idecode_idispatch_daemon_CP_234_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "idecode_idispatch_daemon_out_buffer", -- 
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
    preds <= idecode_idispatch_daemon_CP_234_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= idecode_idispatch_daemon_CP_234_start & tag_ilock_write_ack_symbol;
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
    preds <= idecode_idispatch_daemon_CP_234_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  idecode_idispatch_daemon_CP_234: Block -- control-path 
    signal idecode_idispatch_daemon_CP_234_elements: BooleanArray(102 downto 0);
    -- 
  begin -- 
    idecode_idispatch_daemon_CP_234_elements(0) <= idecode_idispatch_daemon_CP_234_start;
    idecode_idispatch_daemon_CP_234_symbol <= idecode_idispatch_daemon_CP_234_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 branch_block_stmt_8479/do_while_stmt_8480__entry__
      -- CP-element group 0: 	 branch_block_stmt_8479/$entry
      -- CP-element group 0: 	 branch_block_stmt_8479/branch_block_stmt_8479__entry__
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	102 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 branch_block_stmt_8479/do_while_stmt_8480__exit__
      -- CP-element group 1: 	 branch_block_stmt_8479/branch_block_stmt_8479__exit__
      -- CP-element group 1: 	 branch_block_stmt_8479/$exit
      -- CP-element group 1: 	 $exit
      -- 
    idecode_idispatch_daemon_CP_234_elements(1) <= idecode_idispatch_daemon_CP_234_elements(102);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480__entry__
      -- CP-element group 2: 	 branch_block_stmt_8479/do_while_stmt_8480/$entry
      -- 
    idecode_idispatch_daemon_CP_234_elements(2) <= idecode_idispatch_daemon_CP_234_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	102 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480__exit__
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_back
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	101 
    -- CP-element group 5: 	100 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_8479/do_while_stmt_8480/condition_done
      -- CP-element group 5: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_taken/$entry
      -- 
    idecode_idispatch_daemon_CP_234_elements(5) <= idecode_idispatch_daemon_CP_234_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	99 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_body_done
      -- 
    idecode_idispatch_daemon_CP_234_elements(6) <= idecode_idispatch_daemon_CP_234_elements(99);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	20 
    -- CP-element group 7: 	41 
    -- CP-element group 7: 	60 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/back_edge_to_loop_body
      -- 
    idecode_idispatch_daemon_CP_234_elements(7) <= idecode_idispatch_daemon_CP_234_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	22 
    -- CP-element group 8: 	43 
    -- CP-element group 8: 	62 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/first_time_through_loop_body
      -- 
    idecode_idispatch_daemon_CP_234_elements(8) <= idecode_idispatch_daemon_CP_234_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	11 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	17 
    -- CP-element group 9: 	98 
    -- CP-element group 9: 	35 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	54 
    -- CP-element group 9: 	55 
    -- CP-element group 9: 	75 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8498_sample_start_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	98 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/condition_evaluated
      -- 
    condition_evaluated_258_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_258_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(10), ack => do_while_stmt_8480_branch_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(13) & idecode_idispatch_daemon_CP_234_elements(15) & idecode_idispatch_daemon_CP_234_elements(98);
      gj_idecode_idispatch_daemon_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	9 
    -- CP-element group 11: 	16 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	54 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	37 
    -- CP-element group 11: 	56 
    -- CP-element group 11: 	76 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_sample_start__ps
      -- 
    idecode_idispatch_daemon_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(16) & idecode_idispatch_daemon_CP_234_elements(35) & idecode_idispatch_daemon_CP_234_elements(54) & idecode_idispatch_daemon_CP_234_elements(15);
      gj_idecode_idispatch_daemon_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	18 
    -- CP-element group 12: 	38 
    -- CP-element group 12: 	57 
    -- CP-element group 12: 	78 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12: 	99 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	16 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	54 
    -- CP-element group 12:  members (5) 
      -- CP-element group 12: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8498_sample_completed_
      -- 
    idecode_idispatch_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(18) & idecode_idispatch_daemon_CP_234_elements(38) & idecode_idispatch_daemon_CP_234_elements(57) & idecode_idispatch_daemon_CP_234_elements(78);
      gj_idecode_idispatch_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(13) is a control-delay.
    cp_element_13_delay: control_delay_element  generic map(name => " 13_delay", delay_value => 1)  port map(req => idecode_idispatch_daemon_CP_234_elements(12), ack => idecode_idispatch_daemon_CP_234_elements(13), clk => clk, reset =>reset);
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	17 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	55 
    -- CP-element group 14: 	75 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	39 
    -- CP-element group 14: 	58 
    -- CP-element group 14: 	77 
    -- CP-element group 14:  members (2) 
      -- CP-element group 14: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/aggregated_phi_update_req
      -- CP-element group 14: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_update_start__ps
      -- 
    idecode_idispatch_daemon_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(17) & idecode_idispatch_daemon_CP_234_elements(36) & idecode_idispatch_daemon_CP_234_elements(55) & idecode_idispatch_daemon_CP_234_elements(75);
      gj_idecode_idispatch_daemon_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	19 
    -- CP-element group 15: 	40 
    -- CP-element group 15: 	59 
    -- CP-element group 15: 	79 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/aggregated_phi_update_ack
      -- 
    idecode_idispatch_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79);
      gj_idecode_idispatch_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	12 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	11 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_sample_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(12);
      gj_idecode_idispatch_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	9 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	96 
    -- CP-element group 17: 	93 
    -- CP-element group 17: 	81 
    -- CP-element group 17: 	84 
    -- CP-element group 17: 	87 
    -- CP-element group 17: 	90 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	14 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_update_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(96) & idecode_idispatch_daemon_CP_234_elements(93) & idecode_idispatch_daemon_CP_234_elements(81) & idecode_idispatch_daemon_CP_234_elements(84) & idecode_idispatch_daemon_CP_234_elements(87) & idecode_idispatch_daemon_CP_234_elements(90);
      gj_idecode_idispatch_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	12 
    -- CP-element group 18: 	39 
    -- CP-element group 18: 	58 
    -- CP-element group 18: 	77 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_sample_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	15 
    -- CP-element group 19: 	92 
    -- CP-element group 19: 	95 
    -- CP-element group 19: 	80 
    -- CP-element group 19: 	83 
    -- CP-element group 19: 	86 
    -- CP-element group 19: 	89 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_update_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(19) is bound as output of CP function.
    -- CP-element group 20:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	7 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_loopback_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(20) <= idecode_idispatch_daemon_CP_234_elements(7);
    -- CP-element group 21:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_loopback_sample_req
      -- CP-element group 21: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_loopback_sample_req_ps
      -- 
    phi_stmt_8482_loopback_sample_req_274_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8482_loopback_sample_req_274_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(21), ack => phi_stmt_8482_req_1); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(21) is bound as output of CP function.
    -- CP-element group 22:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	8 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (1) 
      -- CP-element group 22: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_entry_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(22) <= idecode_idispatch_daemon_CP_234_elements(8);
    -- CP-element group 23:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_entry_sample_req
      -- CP-element group 23: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_entry_sample_req_ps
      -- 
    phi_stmt_8482_entry_sample_req_277_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8482_entry_sample_req_277_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(23), ack => phi_stmt_8482_req_0); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(23) is bound as output of CP function.
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (2) 
      -- CP-element group 24: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_phi_mux_ack
      -- CP-element group 24: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8482_phi_mux_ack_ps
      -- 
    phi_stmt_8482_phi_mux_ack_280_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8482_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_sample_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_update_start_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_update_completed__ps
      -- 
    idecode_idispatch_daemon_CP_234_elements(27) <= idecode_idispatch_daemon_CP_234_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8484_update_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => idecode_idispatch_daemon_CP_234_elements(26), ack => idecode_idispatch_daemon_CP_234_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_sample_start__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_update_start__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(30) is bound as output of CP function.
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	34 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_sample_start_
      -- CP-element group 31: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Sample/$entry
      -- CP-element group 31: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Sample/rr
      -- 
    rr_301_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_301_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(31), ack => RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(29) & idecode_idispatch_daemon_CP_234_elements(34);
      gj_idecode_idispatch_daemon_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: 	33 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_update_start_
      -- CP-element group 32: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Update/$entry
      -- CP-element group 32: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Update/cr
      -- 
    cr_306_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_306_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(32), ack => RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_1); -- 
    idecode_idispatch_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(30) & idecode_idispatch_daemon_CP_234_elements(33);
      gj_idecode_idispatch_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	32 
    -- CP-element group 33:  members (4) 
      -- CP-element group 33: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_sample_completed__ps
      -- CP-element group 33: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_sample_completed_
      -- CP-element group 33: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Sample/$exit
      -- CP-element group 33: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Sample/ra
      -- 
    ra_302_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(33)); -- 
    -- CP-element group 34:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	31 
    -- CP-element group 34:  members (4) 
      -- CP-element group 34: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_update_completed__ps
      -- CP-element group 34: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_update_completed_
      -- CP-element group 34: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Update/$exit
      -- CP-element group 34: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_ifetch_to_idecode_extended_8485_Update/ca
      -- 
    ca_307_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(34)); -- 
    -- CP-element group 35:  join  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	9 
    -- CP-element group 35: marked-predecessors 
    -- CP-element group 35: 	12 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	11 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_sample_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_35: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_35"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(12);
      gj_idecode_idispatch_daemon_cp_element_group_35 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(35), clk => clk, reset => reset); --
    end block;
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	96 
    -- CP-element group 36: 	93 
    -- CP-element group 36: 	84 
    -- CP-element group 36: 	87 
    -- CP-element group 36: 	90 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	14 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_update_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(96) & idecode_idispatch_daemon_CP_234_elements(93) & idecode_idispatch_daemon_CP_234_elements(84) & idecode_idispatch_daemon_CP_234_elements(87) & idecode_idispatch_daemon_CP_234_elements(90);
      gj_idecode_idispatch_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	11 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_sample_start__ps
      -- 
    idecode_idispatch_daemon_CP_234_elements(37) <= idecode_idispatch_daemon_CP_234_elements(11);
    -- CP-element group 38:  join  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	12 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_sample_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(38) is bound as output of CP function.
    -- CP-element group 39:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	14 
    -- CP-element group 39: 	18 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_update_start__ps
      -- 
    idecode_idispatch_daemon_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(14) & idecode_idispatch_daemon_CP_234_elements(18);
      gj_idecode_idispatch_daemon_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	15 
    -- CP-element group 40: 	92 
    -- CP-element group 40: 	95 
    -- CP-element group 40: 	83 
    -- CP-element group 40: 	86 
    -- CP-element group 40: 	89 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_update_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(40) is bound as output of CP function.
    -- CP-element group 41:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	7 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_loopback_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(41) <= idecode_idispatch_daemon_CP_234_elements(7);
    -- CP-element group 42:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_loopback_sample_req
      -- CP-element group 42: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_loopback_sample_req_ps
      -- 
    phi_stmt_8486_loopback_sample_req_318_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8486_loopback_sample_req_318_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(42), ack => phi_stmt_8486_req_1); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(42) is bound as output of CP function.
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	8 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_entry_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(43) <= idecode_idispatch_daemon_CP_234_elements(8);
    -- CP-element group 44:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_entry_sample_req
      -- CP-element group 44: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_entry_sample_req_ps
      -- 
    phi_stmt_8486_entry_sample_req_321_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8486_entry_sample_req_321_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(44), ack => phi_stmt_8486_req_0); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_phi_mux_ack
      -- CP-element group 45: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8486_phi_mux_ack_ps
      -- 
    phi_stmt_8486_phi_mux_ack_324_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8486_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(45)); -- 
    -- CP-element group 46:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (4) 
      -- CP-element group 46: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_sample_start__ps
      -- CP-element group 46: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_sample_completed__ps
      -- CP-element group 46: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_sample_start_
      -- CP-element group 46: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_sample_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(46) is bound as output of CP function.
    -- CP-element group 47:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (2) 
      -- CP-element group 47: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_update_start__ps
      -- CP-element group 47: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_update_start_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	49 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (1) 
      -- CP-element group 48: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_update_completed__ps
      -- 
    idecode_idispatch_daemon_CP_234_elements(48) <= idecode_idispatch_daemon_CP_234_elements(49);
    -- CP-element group 49:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	48 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/CONCAT_u3_u5_8492_update_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(49) is a control-delay.
    cp_element_49_delay: control_delay_element  generic map(name => " 49_delay", delay_value => 1)  port map(req => idecode_idispatch_daemon_CP_234_elements(47), ack => idecode_idispatch_daemon_CP_234_elements(49), clk => clk, reset =>reset);
    -- CP-element group 50:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (4) 
      -- CP-element group 50: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_sample_start__ps
      -- CP-element group 50: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Sample/$entry
      -- CP-element group 50: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Sample/req
      -- 
    req_345_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_345_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(50), ack => next_CIRCULANT_9164_8493_buf_req_0); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (4) 
      -- CP-element group 51: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_update_start__ps
      -- CP-element group 51: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_update_start_
      -- CP-element group 51: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Update/req
      -- 
    req_350_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_350_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(51), ack => next_CIRCULANT_9164_8493_buf_req_1); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(51) is bound as output of CP function.
    -- CP-element group 52:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Sample/ack
      -- 
    ack_346_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_9164_8493_buf_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(52)); -- 
    -- CP-element group 53:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53:  members (4) 
      -- CP-element group 53: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_update_completed__ps
      -- CP-element group 53: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/R_next_CIRCULANT_8493_Update/ack
      -- 
    ack_351_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_CIRCULANT_9164_8493_buf_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(53)); -- 
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	9 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	12 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	11 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_sample_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(12);
      gj_idecode_idispatch_daemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  join  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	9 
    -- CP-element group 55: marked-predecessors 
    -- CP-element group 55: 	96 
    -- CP-element group 55: 	93 
    -- CP-element group 55: 	81 
    -- CP-element group 55: 	84 
    -- CP-element group 55: 	87 
    -- CP-element group 55: 	90 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	14 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_update_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_55: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_55"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(96) & idecode_idispatch_daemon_CP_234_elements(93) & idecode_idispatch_daemon_CP_234_elements(81) & idecode_idispatch_daemon_CP_234_elements(84) & idecode_idispatch_daemon_CP_234_elements(87) & idecode_idispatch_daemon_CP_234_elements(90);
      gj_idecode_idispatch_daemon_cp_element_group_55 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(55), clk => clk, reset => reset); --
    end block;
    -- CP-element group 56:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	11 
    -- CP-element group 56: successors 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_sample_start__ps
      -- 
    idecode_idispatch_daemon_CP_234_elements(56) <= idecode_idispatch_daemon_CP_234_elements(11);
    -- CP-element group 57:  join  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	12 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_sample_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(57) is bound as output of CP function.
    -- CP-element group 58:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	14 
    -- CP-element group 58: 	18 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (1) 
      -- CP-element group 58: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_update_start__ps
      -- 
    idecode_idispatch_daemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(14) & idecode_idispatch_daemon_CP_234_elements(18);
      gj_idecode_idispatch_daemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	15 
    -- CP-element group 59: 	92 
    -- CP-element group 59: 	95 
    -- CP-element group 59: 	80 
    -- CP-element group 59: 	83 
    -- CP-element group 59: 	86 
    -- CP-element group 59: 	89 
    -- CP-element group 59:  members (2) 
      -- CP-element group 59: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_update_completed__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(59) is bound as output of CP function.
    -- CP-element group 60:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	7 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (1) 
      -- CP-element group 60: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_loopback_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(60) <= idecode_idispatch_daemon_CP_234_elements(7);
    -- CP-element group 61:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_loopback_sample_req
      -- CP-element group 61: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_loopback_sample_req_ps
      -- 
    phi_stmt_8494_loopback_sample_req_362_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8494_loopback_sample_req_362_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(61), ack => phi_stmt_8494_req_1); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(61) is bound as output of CP function.
    -- CP-element group 62:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	8 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_entry_trigger
      -- 
    idecode_idispatch_daemon_CP_234_elements(62) <= idecode_idispatch_daemon_CP_234_elements(8);
    -- CP-element group 63:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_entry_sample_req
      -- CP-element group 63: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_entry_sample_req_ps
      -- 
    phi_stmt_8494_entry_sample_req_365_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_8494_entry_sample_req_365_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(63), ack => phi_stmt_8494_req_0); -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(63) is bound as output of CP function.
    -- CP-element group 64:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (2) 
      -- CP-element group 64: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_phi_mux_ack
      -- CP-element group 64: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8494_phi_mux_ack_ps
      -- 
    phi_stmt_8494_phi_mux_ack_368_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_8494_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(64)); -- 
    -- CP-element group 65:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65:  members (4) 
      -- CP-element group 65: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_sample_start__ps
      -- CP-element group 65: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_sample_completed__ps
      -- CP-element group 65: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_sample_start_
      -- CP-element group 65: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_sample_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(65) is bound as output of CP function.
    -- CP-element group 66:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (2) 
      -- CP-element group 66: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_update_start__ps
      -- CP-element group 66: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_update_start_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(66) is bound as output of CP function.
    -- CP-element group 67:  join  transition  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	68 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (1) 
      -- CP-element group 67: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_update_completed__ps
      -- 
    idecode_idispatch_daemon_CP_234_elements(67) <= idecode_idispatch_daemon_CP_234_elements(68);
    -- CP-element group 68:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	67 
    -- CP-element group 68:  members (1) 
      -- CP-element group 68: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/konst_8496_update_completed_
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(68) is a control-delay.
    cp_element_68_delay: control_delay_element  generic map(name => " 68_delay", delay_value => 1)  port map(req => idecode_idispatch_daemon_CP_234_elements(66), ack => idecode_idispatch_daemon_CP_234_elements(68), clk => clk, reset =>reset);
    -- CP-element group 69:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	71 
    -- CP-element group 69:  members (1) 
      -- CP-element group 69: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_sample_start__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	72 
    -- CP-element group 70:  members (1) 
      -- CP-element group 70: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_update_start__ps
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(70) is bound as output of CP function.
    -- CP-element group 71:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	69 
    -- CP-element group 71: marked-predecessors 
    -- CP-element group 71: 	74 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	73 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_sample_start_
      -- CP-element group 71: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Sample/$entry
      -- CP-element group 71: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Sample/rr
      -- 
    rr_389_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_389_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(71), ack => RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_71: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_71"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(69) & idecode_idispatch_daemon_CP_234_elements(74);
      gj_idecode_idispatch_daemon_cp_element_group_71 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(71), clk => clk, reset => reset); --
    end block;
    -- CP-element group 72:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	70 
    -- CP-element group 72: 	73 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_update_start_
      -- CP-element group 72: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Update/$entry
      -- CP-element group 72: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Update/cr
      -- 
    cr_394_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_394_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(72), ack => RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_1); -- 
    idecode_idispatch_daemon_cp_element_group_72: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_72"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(70) & idecode_idispatch_daemon_CP_234_elements(73);
      gj_idecode_idispatch_daemon_cp_element_group_72 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(72), clk => clk, reset => reset); --
    end block;
    -- CP-element group 73:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	71 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	72 
    -- CP-element group 73:  members (4) 
      -- CP-element group 73: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_sample_completed__ps
      -- CP-element group 73: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_sample_completed_
      -- CP-element group 73: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Sample/$exit
      -- CP-element group 73: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Sample/ra
      -- 
    ra_390_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 73_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(73)); -- 
    -- CP-element group 74:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: successors 
    -- CP-element group 74: marked-successors 
    -- CP-element group 74: 	71 
    -- CP-element group 74:  members (4) 
      -- CP-element group 74: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_update_completed__ps
      -- CP-element group 74: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_update_completed_
      -- CP-element group 74: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Update/$exit
      -- CP-element group 74: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_Update/ca
      -- 
    ca_395_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(74)); -- 
    -- CP-element group 75:  join  transition  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	9 
    -- CP-element group 75: marked-predecessors 
    -- CP-element group 75: 	96 
    -- CP-element group 75: 	93 
    -- CP-element group 75: 	84 
    -- CP-element group 75: 	87 
    -- CP-element group 75: 	90 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	14 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8498_update_start_
      -- 
    idecode_idispatch_daemon_cp_element_group_75: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_75"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(9) & idecode_idispatch_daemon_CP_234_elements(96) & idecode_idispatch_daemon_CP_234_elements(93) & idecode_idispatch_daemon_CP_234_elements(84) & idecode_idispatch_daemon_CP_234_elements(87) & idecode_idispatch_daemon_CP_234_elements(90);
      gj_idecode_idispatch_daemon_cp_element_group_75 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(75), clk => clk, reset => reset); --
    end block;
    -- CP-element group 76:  transition  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	11 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (3) 
      -- CP-element group 76: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_sample_start_
      -- CP-element group 76: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Sample/$entry
      -- CP-element group 76: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Sample/req
      -- 
    req_408_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_408_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(76), ack => RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_0); -- 
    idecode_idispatch_daemon_CP_234_elements(76) <= idecode_idispatch_daemon_CP_234_elements(11);
    -- CP-element group 77:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	14 
    -- CP-element group 77: 	18 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	79 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_update_start_
      -- CP-element group 77: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Update/$entry
      -- CP-element group 77: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Update/req
      -- 
    req_413_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_413_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(77), ack => RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_1); -- 
    idecode_idispatch_daemon_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(14) & idecode_idispatch_daemon_CP_234_elements(18);
      gj_idecode_idispatch_daemon_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  transition  input  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	12 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_sample_completed_
      -- CP-element group 78: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Sample/$exit
      -- CP-element group 78: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Sample/ack
      -- 
    ack_409_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 78_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(78)); -- 
    -- CP-element group 79:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	77 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	15 
    -- CP-element group 79: 	92 
    -- CP-element group 79: 	95 
    -- CP-element group 79: 	83 
    -- CP-element group 79: 	86 
    -- CP-element group 79: 	89 
    -- CP-element group 79:  members (4) 
      -- CP-element group 79: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/phi_stmt_8498_update_completed_
      -- CP-element group 79: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_update_completed_
      -- CP-element group 79: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Update/$exit
      -- CP-element group 79: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/RPIPE_teu_stream_corrector_annul_status_8500_Update/ack
      -- 
    ack_414_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(79)); -- 
    -- CP-element group 80:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	19 
    -- CP-element group 80: 	59 
    -- CP-element group 80: marked-predecessors 
    -- CP-element group 80: 	82 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	81 
    -- CP-element group 80:  members (3) 
      -- CP-element group 80: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_sample_start_
      -- CP-element group 80: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Sample/$entry
      -- CP-element group 80: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Sample/req
      -- 
    req_422_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_422_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(80), ack => WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_80: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_80"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(82);
      gj_idecode_idispatch_daemon_cp_element_group_80 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(80), clk => clk, reset => reset); --
    end block;
    -- CP-element group 81:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	80 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	82 
    -- CP-element group 81: marked-successors 
    -- CP-element group 81: 	17 
    -- CP-element group 81: 	55 
    -- CP-element group 81:  members (6) 
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_sample_completed_
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_update_start_
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Sample/$exit
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Sample/ack
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Update/$entry
      -- CP-element group 81: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Update/req
      -- 
    ack_423_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 81_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(81)); -- 
    req_427_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_427_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(81), ack => WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_1); -- 
    -- CP-element group 82:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	81 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	99 
    -- CP-element group 82: marked-successors 
    -- CP-element group 82: 	80 
    -- CP-element group 82:  members (3) 
      -- CP-element group 82: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_update_completed_
      -- CP-element group 82: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Update/$exit
      -- CP-element group 82: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_ifetch_9104_Update/ack
      -- 
    ack_428_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(82)); -- 
    -- CP-element group 83:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	19 
    -- CP-element group 83: 	40 
    -- CP-element group 83: 	59 
    -- CP-element group 83: 	79 
    -- CP-element group 83: marked-predecessors 
    -- CP-element group 83: 	85 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	84 
    -- CP-element group 83:  members (3) 
      -- CP-element group 83: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_sample_start_
      -- CP-element group 83: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Sample/$entry
      -- CP-element group 83: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Sample/req
      -- 
    req_436_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_436_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(83), ack => WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79) & idecode_idispatch_daemon_CP_234_elements(85);
      gj_idecode_idispatch_daemon_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	83 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	85 
    -- CP-element group 84: marked-successors 
    -- CP-element group 84: 	17 
    -- CP-element group 84: 	36 
    -- CP-element group 84: 	55 
    -- CP-element group 84: 	75 
    -- CP-element group 84:  members (6) 
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_sample_completed_
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_update_start_
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Sample/$exit
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Sample/ack
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Update/$entry
      -- CP-element group 84: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Update/req
      -- 
    ack_437_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 84_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(84)); -- 
    req_441_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_441_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(84), ack => WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_1); -- 
    -- CP-element group 85:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	84 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	99 
    -- CP-element group 85: marked-successors 
    -- CP-element group 85: 	83 
    -- CP-element group 85:  members (3) 
      -- CP-element group 85: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_update_completed_
      -- CP-element group 85: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Update/$exit
      -- CP-element group 85: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_Update/ack
      -- 
    ack_442_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(85)); -- 
    -- CP-element group 86:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	19 
    -- CP-element group 86: 	40 
    -- CP-element group 86: 	59 
    -- CP-element group 86: 	79 
    -- CP-element group 86: marked-predecessors 
    -- CP-element group 86: 	88 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	87 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_sample_start_
      -- CP-element group 86: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Sample/$entry
      -- CP-element group 86: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Sample/req
      -- 
    req_450_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_450_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(86), ack => WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_86: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_86"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79) & idecode_idispatch_daemon_CP_234_elements(88);
      gj_idecode_idispatch_daemon_cp_element_group_86 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(86), clk => clk, reset => reset); --
    end block;
    -- CP-element group 87:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	86 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	88 
    -- CP-element group 87: marked-successors 
    -- CP-element group 87: 	17 
    -- CP-element group 87: 	36 
    -- CP-element group 87: 	55 
    -- CP-element group 87: 	75 
    -- CP-element group 87:  members (6) 
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_sample_completed_
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_update_start_
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Sample/$exit
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Sample/ack
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Update/$entry
      -- CP-element group 87: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Update/req
      -- 
    ack_451_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 87_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(87)); -- 
    req_455_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_455_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(87), ack => WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_1); -- 
    -- CP-element group 88:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	87 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	99 
    -- CP-element group 88: marked-successors 
    -- CP-element group 88: 	86 
    -- CP-element group 88:  members (3) 
      -- CP-element group 88: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_update_completed_
      -- CP-element group 88: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Update/$exit
      -- CP-element group 88: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_iunit_exec_9120_Update/ack
      -- 
    ack_456_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 88_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(88)); -- 
    -- CP-element group 89:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	19 
    -- CP-element group 89: 	40 
    -- CP-element group 89: 	59 
    -- CP-element group 89: 	79 
    -- CP-element group 89: marked-predecessors 
    -- CP-element group 89: 	91 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	90 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_sample_start_
      -- CP-element group 89: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Sample/$entry
      -- CP-element group 89: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Sample/req
      -- 
    req_464_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_464_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(89), ack => WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_89: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_89"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79) & idecode_idispatch_daemon_CP_234_elements(91);
      gj_idecode_idispatch_daemon_cp_element_group_89 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(89), clk => clk, reset => reset); --
    end block;
    -- CP-element group 90:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	89 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	91 
    -- CP-element group 90: marked-successors 
    -- CP-element group 90: 	17 
    -- CP-element group 90: 	36 
    -- CP-element group 90: 	55 
    -- CP-element group 90: 	75 
    -- CP-element group 90:  members (6) 
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_sample_completed_
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_update_start_
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Sample/$exit
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Sample/ack
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Update/$entry
      -- CP-element group 90: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Update/req
      -- 
    ack_465_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 90_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(90)); -- 
    req_469_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_469_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(90), ack => WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_1); -- 
    -- CP-element group 91:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	90 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	99 
    -- CP-element group 91: marked-successors 
    -- CP-element group 91: 	89 
    -- CP-element group 91:  members (3) 
      -- CP-element group 91: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_update_completed_
      -- CP-element group 91: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Update/$exit
      -- CP-element group 91: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_loadstore_9124_Update/ack
      -- 
    ack_470_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(91)); -- 
    -- CP-element group 92:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	19 
    -- CP-element group 92: 	40 
    -- CP-element group 92: 	59 
    -- CP-element group 92: 	79 
    -- CP-element group 92: marked-predecessors 
    -- CP-element group 92: 	94 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	93 
    -- CP-element group 92:  members (3) 
      -- CP-element group 92: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_sample_start_
      -- CP-element group 92: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Sample/$entry
      -- CP-element group 92: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Sample/req
      -- 
    req_478_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_478_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(92), ack => WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_92: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_92"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79) & idecode_idispatch_daemon_CP_234_elements(94);
      gj_idecode_idispatch_daemon_cp_element_group_92 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(92), clk => clk, reset => reset); --
    end block;
    -- CP-element group 93:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	92 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	94 
    -- CP-element group 93: marked-successors 
    -- CP-element group 93: 	17 
    -- CP-element group 93: 	36 
    -- CP-element group 93: 	55 
    -- CP-element group 93: 	75 
    -- CP-element group 93:  members (6) 
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_sample_completed_
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_update_start_
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Sample/$exit
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Sample/ack
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Update/$entry
      -- CP-element group 93: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Update/req
      -- 
    ack_479_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 93_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(93)); -- 
    req_483_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_483_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(93), ack => WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_1); -- 
    -- CP-element group 94:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	93 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	99 
    -- CP-element group 94: marked-successors 
    -- CP-element group 94: 	92 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_update_completed_
      -- CP-element group 94: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Update/$exit
      -- CP-element group 94: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_Update/ack
      -- 
    ack_484_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 94_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(94)); -- 
    -- CP-element group 95:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	19 
    -- CP-element group 95: 	40 
    -- CP-element group 95: 	59 
    -- CP-element group 95: 	79 
    -- CP-element group 95: marked-predecessors 
    -- CP-element group 95: 	97 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	96 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_sample_start_
      -- CP-element group 95: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Sample/$entry
      -- CP-element group 95: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Sample/req
      -- 
    req_492_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_492_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(95), ack => WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_0); -- 
    idecode_idispatch_daemon_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(19) & idecode_idispatch_daemon_CP_234_elements(40) & idecode_idispatch_daemon_CP_234_elements(59) & idecode_idispatch_daemon_CP_234_elements(79) & idecode_idispatch_daemon_CP_234_elements(97);
      gj_idecode_idispatch_daemon_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	95 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	97 
    -- CP-element group 96: marked-successors 
    -- CP-element group 96: 	17 
    -- CP-element group 96: 	36 
    -- CP-element group 96: 	55 
    -- CP-element group 96: 	75 
    -- CP-element group 96:  members (6) 
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_sample_completed_
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_update_start_
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Sample/$exit
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Sample/ack
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Update/$entry
      -- CP-element group 96: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Update/req
      -- 
    ack_493_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(96)); -- 
    req_497_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_497_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => idecode_idispatch_daemon_CP_234_elements(96), ack => WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_1); -- 
    -- CP-element group 97:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	96 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	99 
    -- CP-element group 97: marked-successors 
    -- CP-element group 97: 	95 
    -- CP-element group 97:  members (3) 
      -- CP-element group 97: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_update_completed_
      -- CP-element group 97: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Update/$exit
      -- CP-element group 97: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/WPIPE_teu_idispatch_to_stream_corrector_9132_Update/ack
      -- 
    ack_498_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(97)); -- 
    -- CP-element group 98:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	9 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	10 
    -- CP-element group 98:  members (1) 
      -- CP-element group 98: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group idecode_idispatch_daemon_CP_234_elements(98) is a control-delay.
    cp_element_98_delay: control_delay_element  generic map(name => " 98_delay", delay_value => 1)  port map(req => idecode_idispatch_daemon_CP_234_elements(9), ack => idecode_idispatch_daemon_CP_234_elements(98), clk => clk, reset =>reset);
    -- CP-element group 99:  join  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	12 
    -- CP-element group 99: 	91 
    -- CP-element group 99: 	97 
    -- CP-element group 99: 	94 
    -- CP-element group 99: 	82 
    -- CP-element group 99: 	85 
    -- CP-element group 99: 	88 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	6 
    -- CP-element group 99:  members (1) 
      -- CP-element group 99: 	 branch_block_stmt_8479/do_while_stmt_8480/do_while_stmt_8480_loop_body/$exit
      -- 
    idecode_idispatch_daemon_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 7,1 => 7,2 => 7,3 => 7,4 => 7,5 => 7,6 => 7);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 44) := "idecode_idispatch_daemon_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= idecode_idispatch_daemon_CP_234_elements(12) & idecode_idispatch_daemon_CP_234_elements(91) & idecode_idispatch_daemon_CP_234_elements(97) & idecode_idispatch_daemon_CP_234_elements(94) & idecode_idispatch_daemon_CP_234_elements(82) & idecode_idispatch_daemon_CP_234_elements(85) & idecode_idispatch_daemon_CP_234_elements(88);
      gj_idecode_idispatch_daemon_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  transition  input  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	5 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (2) 
      -- CP-element group 100: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_exit/$exit
      -- CP-element group 100: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_exit/ack
      -- 
    ack_503_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 100_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_8480_branch_ack_0, ack => idecode_idispatch_daemon_CP_234_elements(100)); -- 
    -- CP-element group 101:  transition  input  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	5 
    -- CP-element group 101: successors 
    -- CP-element group 101:  members (2) 
      -- CP-element group 101: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_taken/$exit
      -- CP-element group 101: 	 branch_block_stmt_8479/do_while_stmt_8480/loop_taken/ack
      -- 
    ack_507_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_8480_branch_ack_1, ack => idecode_idispatch_daemon_CP_234_elements(101)); -- 
    -- CP-element group 102:  transition  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	3 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	1 
    -- CP-element group 102:  members (1) 
      -- CP-element group 102: 	 branch_block_stmt_8479/do_while_stmt_8480/$exit
      -- 
    idecode_idispatch_daemon_CP_234_elements(102) <= idecode_idispatch_daemon_CP_234_elements(3);
    idecode_idispatch_daemon_do_while_stmt_8480_terminator_508: loop_terminator -- 
      generic map (name => " idecode_idispatch_daemon_do_while_stmt_8480_terminator_508", max_iterations_in_flight =>7) 
      port map(loop_body_exit => idecode_idispatch_daemon_CP_234_elements(6),loop_continue => idecode_idispatch_daemon_CP_234_elements(101),loop_terminate => idecode_idispatch_daemon_CP_234_elements(100),loop_back => idecode_idispatch_daemon_CP_234_elements(4),loop_exit => idecode_idispatch_daemon_CP_234_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_8482_phi_seq_308_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= idecode_idispatch_daemon_CP_234_elements(22);
      idecode_idispatch_daemon_CP_234_elements(25)<= src_sample_reqs(0);
      src_sample_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(25);
      idecode_idispatch_daemon_CP_234_elements(26)<= src_update_reqs(0);
      src_update_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(27);
      idecode_idispatch_daemon_CP_234_elements(23) <= phi_mux_reqs(0);
      triggers(1)  <= idecode_idispatch_daemon_CP_234_elements(20);
      idecode_idispatch_daemon_CP_234_elements(29)<= src_sample_reqs(1);
      src_sample_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(33);
      idecode_idispatch_daemon_CP_234_elements(30)<= src_update_reqs(1);
      src_update_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(34);
      idecode_idispatch_daemon_CP_234_elements(21) <= phi_mux_reqs(1);
      phi_stmt_8482_phi_seq_308 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_8482_phi_seq_308") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => idecode_idispatch_daemon_CP_234_elements(11), 
          phi_sample_ack => idecode_idispatch_daemon_CP_234_elements(18), 
          phi_update_req => idecode_idispatch_daemon_CP_234_elements(14), 
          phi_update_ack => idecode_idispatch_daemon_CP_234_elements(19), 
          phi_mux_ack => idecode_idispatch_daemon_CP_234_elements(24), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8486_phi_seq_352_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= idecode_idispatch_daemon_CP_234_elements(43);
      idecode_idispatch_daemon_CP_234_elements(46)<= src_sample_reqs(0);
      src_sample_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(46);
      idecode_idispatch_daemon_CP_234_elements(47)<= src_update_reqs(0);
      src_update_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(48);
      idecode_idispatch_daemon_CP_234_elements(44) <= phi_mux_reqs(0);
      triggers(1)  <= idecode_idispatch_daemon_CP_234_elements(41);
      idecode_idispatch_daemon_CP_234_elements(50)<= src_sample_reqs(1);
      src_sample_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(52);
      idecode_idispatch_daemon_CP_234_elements(51)<= src_update_reqs(1);
      src_update_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(53);
      idecode_idispatch_daemon_CP_234_elements(42) <= phi_mux_reqs(1);
      phi_stmt_8486_phi_seq_352 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_8486_phi_seq_352") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => idecode_idispatch_daemon_CP_234_elements(37), 
          phi_sample_ack => idecode_idispatch_daemon_CP_234_elements(38), 
          phi_update_req => idecode_idispatch_daemon_CP_234_elements(39), 
          phi_update_ack => idecode_idispatch_daemon_CP_234_elements(40), 
          phi_mux_ack => idecode_idispatch_daemon_CP_234_elements(45), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_8494_phi_seq_396_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= idecode_idispatch_daemon_CP_234_elements(62);
      idecode_idispatch_daemon_CP_234_elements(65)<= src_sample_reqs(0);
      src_sample_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(65);
      idecode_idispatch_daemon_CP_234_elements(66)<= src_update_reqs(0);
      src_update_acks(0)  <= idecode_idispatch_daemon_CP_234_elements(67);
      idecode_idispatch_daemon_CP_234_elements(63) <= phi_mux_reqs(0);
      triggers(1)  <= idecode_idispatch_daemon_CP_234_elements(60);
      idecode_idispatch_daemon_CP_234_elements(69)<= src_sample_reqs(1);
      src_sample_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(73);
      idecode_idispatch_daemon_CP_234_elements(70)<= src_update_reqs(1);
      src_update_acks(1)  <= idecode_idispatch_daemon_CP_234_elements(74);
      idecode_idispatch_daemon_CP_234_elements(61) <= phi_mux_reqs(1);
      phi_stmt_8494_phi_seq_396 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_8494_phi_seq_396") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => idecode_idispatch_daemon_CP_234_elements(56), 
          phi_sample_ack => idecode_idispatch_daemon_CP_234_elements(57), 
          phi_update_req => idecode_idispatch_daemon_CP_234_elements(58), 
          phi_update_ack => idecode_idispatch_daemon_CP_234_elements(59), 
          phi_mux_ack => idecode_idispatch_daemon_CP_234_elements(64), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_259_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= idecode_idispatch_daemon_CP_234_elements(7);
        preds(1)  <= idecode_idispatch_daemon_CP_234_elements(8);
        entry_tmerge_259 : transition_merge -- 
          generic map(name => " entry_tmerge_259")
          port map (preds => preds, symbol_out => idecode_idispatch_daemon_CP_234_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_8662_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8665_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8670_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8671_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8675_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8713_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8737_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8747_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8755_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8764_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8774_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8782_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8791_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8953_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8960_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u24_u1_8746_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u24_u1_8754_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u24_u1_8773_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u24_u1_8781_wire : std_logic_vector(0 downto 0);
    signal CIRCULANT_8486 : std_logic_vector(4 downto 0);
    signal CONCAT_u12_u43_8991_wire : std_logic_vector(42 downto 0);
    signal CONCAT_u1_u2_8818_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8821_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8829_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8834_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8843_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8848_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8853_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8859_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8862_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8999_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_9006_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u3_9161_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u1_u5_9011_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u22_u54_9017_wire : std_logic_vector(53 downto 0);
    signal CONCAT_u26_u208_9026_wire : std_logic_vector(207 downto 0);
    signal CONCAT_u2_u3_8831_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8850_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9001_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_9008_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_8822_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_8863_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u32_u64_9022_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u39_u45_8994_wire : std_logic_vector(44 downto 0);
    signal CONCAT_u3_u26_9014_wire : std_logic_vector(25 downto 0);
    signal CONCAT_u3_u5_8492_wire_constant : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_8835_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_8854_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u43_u92_9003_wire : std_logic_vector(91 downto 0);
    signal CONCAT_u45_u46_8996_wire : std_logic_vector(45 downto 0);
    signal CONCAT_u46_u49_9002_wire : std_logic_vector(48 downto 0);
    signal CONCAT_u4_u5_8838_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u4_u6_8983_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u7_8988_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u54_u86_9019_wire : std_logic_vector(85 downto 0);
    signal CONCAT_u5_u13_8845_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u5_u23_9013_wire : std_logic_vector(22 downto 0);
    signal CONCAT_u5_u6_8840_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u9_8864_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u64_u96_9024_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u6_u12_8985_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u8_8844_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u7_u31_8990_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u86_u182_9025_wire : std_logic_vector(181 downto 0);
    signal EQ_u2_u1_8919_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8925_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8935_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8952_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8956_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8959_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8740_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8743_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8751_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8767_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8770_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8778_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8794_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_8883_wire : std_logic_vector(0 downto 0);
    signal MUX_8922_wire : std_logic_vector(1 downto 0);
    signal MUX_8929_wire : std_logic_vector(1 downto 0);
    signal MUX_8931_wire : std_logic_vector(1 downto 0);
    signal MUX_8941_wire : std_logic_vector(1 downto 0);
    signal MUX_8943_wire : std_logic_vector(1 downto 0);
    signal NEQ_u2_u1_8949_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8661_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8667_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8669_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8734_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8736_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8761_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8763_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8788_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8790_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8913_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9051_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8609_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8672_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8748_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8756_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8775_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8783_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8800_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8803_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8858_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8902_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8938_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_8932_wire : std_logic_vector(1 downto 0);
    signal RPIPE_debug_bp_0_9056_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_bp_1_9057_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_bp_2_9058_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_bp_3_9059_wire : std_logic_vector(31 downto 0);
    signal RPIPE_debug_dbg_interrupt_9054_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_wire : std_logic_vector(147 downto 0);
    signal RPIPE_teu_ifetch_to_idecode_extended_8485_wire : std_logic_vector(223 downto 0);
    signal RPIPE_teu_stream_corrector_annul_status_8500_wire : std_logic_vector(15 downto 0);
    signal RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buffered : std_logic_vector(15 downto 0);
    signal R_CONTROL_TRANSFER_INSTR_8750_wire_constant : std_logic_vector(2 downto 0);
    signal R_CONTROL_TRANSFER_INSTR_8777_wire_constant : std_logic_vector(2 downto 0);
    signal R_CP_INSTR_8739_wire_constant : std_logic_vector(2 downto 0);
    signal R_DATA_TRANSFER_INSTR_8742_wire_constant : std_logic_vector(2 downto 0);
    signal R_DATA_TRANSFER_INSTR_8769_wire_constant : std_logic_vector(2 downto 0);
    signal R_FP_INSTR_8766_wire_constant : std_logic_vector(2 downto 0);
    signal R_IID_RESET_8918_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RESET_8948_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8920_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8924_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8928_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8939_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8951_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_RUN_8955_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_WAIT_NEW_STREAM_8927_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_WAIT_NEW_STREAM_8934_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_WAIT_NEW_STREAM_8940_wire_constant : std_logic_vector(1 downto 0);
    signal R_IID_WAIT_NEW_STREAM_8958_wire_constant : std_logic_vector(1 downto 0);
    signal R_ILLEGAL_INSTR_8793_wire_constant : std_logic_vector(2 downto 0);
    signal R_ZERO_1_9159_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_4_8823_wire_constant : std_logic_vector(3 downto 0);
    signal S_8637 : std_logic_vector(0 downto 0);
    signal annul_instr_8715 : std_logic_vector(0 downto 0);
    signal annul_instr_from_dispatch_8561 : std_logic_vector(0 downto 0);
    signal bicc_fbfcc_cond_8898 : std_logic_vector(3 downto 0);
    signal branch_target_nnpc_8605 : std_logic_vector(31 downto 0);
    signal call_generic_pc_adder_expr_8603_wire : std_logic_vector(31 downto 0);
    signal check_bp_flag_9053 : std_logic_vector(0 downto 0);
    signal cp_disabled_trap_8758 : std_logic_vector(0 downto 0);
    signal cti_annul_flag_8898 : std_logic_vector(0 downto 0);
    signal cti_mispredict_8529 : std_logic_vector(0 downto 0);
    signal ctrl_word_to_dispatch_8866 : std_logic_vector(21 downto 0);
    signal debug_bp_hit_9064 : std_logic_vector(0 downto 0);
    signal debug_bp_reg_id_9064 : std_logic_vector(1 downto 0);
    signal debug_intr_9064 : std_logic_vector(0 downto 0);
    signal debug_mode_selected_8637 : std_logic_vector(0 downto 0);
    signal dispatch_nnpc_8979 : std_logic_vector(31 downto 0);
    signal dispatch_npc_8976 : std_logic_vector(31 downto 0);
    signal dispatch_pc_8973 : std_logic_vector(31 downto 0);
    signal do_not_bypass_8677 : std_logic_vector(0 downto 0);
    signal enable_cp_8569 : std_logic_vector(0 downto 0);
    signal enable_fp_8565 : std_logic_vector(0 downto 0);
    signal enable_traps_8637 : std_logic_vector(0 downto 0);
    signal fetch_error_8557 : std_logic_vector(0 downto 0);
    signal fetch_mae_trap_8553 : std_logic_vector(0 downto 0);
    signal fetch_trap_bit_8637 : std_logic_vector(0 downto 0);
    signal forward_this_instruction_8962 : std_logic_vector(0 downto 0);
    signal fp_disabled_trap_8785 : std_logic_vector(0 downto 0);
    signal from_sc_8494 : std_logic_vector(147 downto 0);
    signal from_sc_valid_8885 : std_logic_vector(0 downto 0);
    signal from_sc_valid_raw_8870 : std_logic_vector(0 downto 0);
    signal icache_accessed_flag_8649 : std_logic_vector(0 downto 0);
    signal icache_hit_flag_8637 : std_logic_vector(0 downto 0);
    signal ignore_break_points_8637 : std_logic_vector(0 downto 0);
    signal iid_state_8505 : std_logic_vector(1 downto 0);
    signal illegal_instr_8796 : std_logic_vector(0 downto 0);
    signal imm_bit_8637 : std_logic_vector(0 downto 0);
    signal imm_offset_8898 : std_logic_vector(31 downto 0);
    signal instr_8597 : std_logic_vector(31 downto 0);
    signal instr_annul_flag_8618 : std_logic_vector(0 downto 0);
    signal instr_class_8726 : std_logic_vector(2 downto 0);
    signal instr_pipe_sched_8726 : std_logic_vector(38 downto 0);
    signal instr_spec_8726 : std_logic_vector(23 downto 0);
    signal irl_4_8573 : std_logic_vector(3 downto 0);
    signal is_ba_8898 : std_logic_vector(0 downto 0);
    signal is_bicc_8898 : std_logic_vector(0 downto 0);
    signal is_bn_8898 : std_logic_vector(0 downto 0);
    signal is_call_8898 : std_logic_vector(0 downto 0);
    signal is_cbccc_8898 : std_logic_vector(0 downto 0);
    signal is_cti_8637 : std_logic_vector(0 downto 0);
    signal is_fbfcc_8898 : std_logic_vector(0 downto 0);
    signal is_flush_8637 : std_logic_vector(0 downto 0);
    signal is_jmpl_8641 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_write_8637 : std_logic_vector(0 downto 0);
    signal is_rett_8645 : std_logic_vector(0 downto 0);
    signal is_unconditional_cti_8905 : std_logic_vector(0 downto 0);
    signal is_write_psr_8637 : std_logic_vector(0 downto 0);
    signal jmpl_rett_icache_8637 : std_logic_vector(2 downto 0);
    signal konst_8484_wire_constant : std_logic_vector(223 downto 0);
    signal konst_8496_wire_constant : std_logic_vector(147 downto 0);
    signal konst_8616_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8745_wire_constant : std_logic_vector(23 downto 0);
    signal konst_8753_wire_constant : std_logic_vector(23 downto 0);
    signal konst_8772_wire_constant : std_logic_vector(23 downto 0);
    signal konst_8780_wire_constant : std_logic_vector(23 downto 0);
    signal konst_8921_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8930_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8942_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9166_wire_constant : std_logic_vector(0 downto 0);
    signal last_issued_annul_flag_8517 : std_logic_vector(0 downto 0);
    signal last_issued_cti_status_8509 : std_logic_vector(1 downto 0);
    signal last_issued_was_cti_8513 : std_logic_vector(0 downto 0);
    signal logging_active_8637 : std_logic_vector(0 downto 0);
    signal machine_state_in_8482 : std_logic_vector(223 downto 0);
    signal mmu_fsr_8577 : std_logic_vector(17 downto 0);
    signal next_CIRCULANT_9164 : std_logic_vector(4 downto 0);
    signal next_CIRCULANT_9164_8493_buffered : std_logic_vector(4 downto 0);
    signal next_iid_state_8945 : std_logic_vector(1 downto 0);
    signal next_last_issued_annul_flag_9146 : std_logic_vector(0 downto 0);
    signal next_last_issued_cti_status_9151 : std_logic_vector(1 downto 0);
    signal next_last_issued_was_cti_9140 : std_logic_vector(0 downto 0);
    signal nnpc_8613 : std_logic_vector(31 downto 0);
    signal npc_8593 : std_logic_vector(31 downto 0);
    signal only_update_psr_8878 : std_logic_vector(0 downto 0);
    signal pc_8589 : std_logic_vector(31 downto 0);
    signal predicted_nnpc_8585 : std_logic_vector(31 downto 0);
    signal proc_ilvl_8637 : std_logic_vector(3 downto 0);
    signal ras_mispredict_8525 : std_logic_vector(0 downto 0);
    signal ras_nnpc_or_br_offset_8533 : std_logic_vector(31 downto 0);
    signal sc_annul_apply_8657 : std_logic_vector(0 downto 0);
    signal sc_annul_status_8498 : std_logic_vector(15 downto 0);
    signal sc_annul_value_8657 : std_logic_vector(0 downto 0);
    signal sc_thread_id_8874 : std_logic_vector(3 downto 0);
    signal send_to_fp_rfile_9096 : std_logic_vector(0 downto 0);
    signal send_to_ifetch_9099 : std_logic_vector(0 downto 0);
    signal send_to_rfile_9090 : std_logic_vector(0 downto 0);
    signal send_to_rfile_q_9114 : std_logic_vector(0 downto 0);
    signal single_step_mode_8637 : std_logic_vector(0 downto 0);
    signal slot_id_8545 : std_logic_vector(5 downto 0);
    signal start_new_thread_or_stream_8915 : std_logic_vector(0 downto 0);
    signal stream_corrector_info_8726 : std_logic_vector(5 downto 0);
    signal stream_head_8637 : std_logic_vector(0 downto 0);
    signal stream_id_8541 : std_logic_vector(1 downto 0);
    signal substream_head_8549 : std_logic_vector(0 downto 0);
    signal thread_control_word_8581 : std_logic_vector(21 downto 0);
    signal thread_head_8637 : std_logic_vector(0 downto 0);
    signal thread_id_8537 : std_logic_vector(3 downto 0);
    signal to_fpunit_9084 : std_logic_vector(94 downto 0);
    signal to_fpunit_exec_9096 : std_logic_vector(67 downto 0);
    signal to_fpunit_rfile_9096 : std_logic_vector(46 downto 0);
    signal to_fpunit_wb_9096 : std_logic_vector(42 downto 0);
    signal to_idispatch_9028 : std_logic_vector(299 downto 0);
    signal to_ifetch_9102 : std_logic_vector(147 downto 0);
    signal to_iunit_9084 : std_logic_vector(126 downto 0);
    signal to_iunit_exec_9090 : std_logic_vector(149 downto 0);
    signal to_iunit_rfile_9090 : std_logic_vector(58 downto 0);
    signal to_iunit_wb_9090 : std_logic_vector(83 downto 0);
    signal to_loadstore_9084 : std_logic_vector(125 downto 0);
    signal to_stream_corrector_9084 : std_logic_vector(204 downto 0);
    signal trap_flag_8805 : std_logic_vector(0 downto 0);
    signal trap_info_to_dispatch_8825 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    CONCAT_u3_u5_8492_wire_constant <= "00000";
    R_CONTROL_TRANSFER_INSTR_8750_wire_constant <= "011";
    R_CONTROL_TRANSFER_INSTR_8777_wire_constant <= "011";
    R_CP_INSTR_8739_wire_constant <= "110";
    R_DATA_TRANSFER_INSTR_8742_wire_constant <= "001";
    R_DATA_TRANSFER_INSTR_8769_wire_constant <= "001";
    R_FP_INSTR_8766_wire_constant <= "101";
    R_IID_RESET_8918_wire_constant <= "00";
    R_IID_RESET_8948_wire_constant <= "00";
    R_IID_RUN_8920_wire_constant <= "01";
    R_IID_RUN_8924_wire_constant <= "01";
    R_IID_RUN_8928_wire_constant <= "01";
    R_IID_RUN_8939_wire_constant <= "01";
    R_IID_RUN_8951_wire_constant <= "01";
    R_IID_RUN_8955_wire_constant <= "01";
    R_IID_WAIT_NEW_STREAM_8927_wire_constant <= "10";
    R_IID_WAIT_NEW_STREAM_8934_wire_constant <= "10";
    R_IID_WAIT_NEW_STREAM_8940_wire_constant <= "10";
    R_IID_WAIT_NEW_STREAM_8958_wire_constant <= "10";
    R_ILLEGAL_INSTR_8793_wire_constant <= "111";
    R_ZERO_1_9159_wire_constant <= "0";
    R_ZERO_4_8823_wire_constant <= "0000";
    konst_8484_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8496_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_8616_wire_constant <= "00000000000000000000000000011101";
    konst_8745_wire_constant <= "000000000000000000001011";
    konst_8753_wire_constant <= "000000000000000000000000";
    konst_8772_wire_constant <= "000000000000000000001100";
    konst_8780_wire_constant <= "000000000000000000000001";
    konst_8921_wire_constant <= "00";
    konst_8930_wire_constant <= "00";
    konst_8942_wire_constant <= "00";
    konst_9166_wire_constant <= "1";
    phi_stmt_8482: Block -- phi operator 
      signal idata: std_logic_vector(447 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8484_wire_constant & RPIPE_teu_ifetch_to_idecode_extended_8485_wire;
      req <= phi_stmt_8482_req_0 & phi_stmt_8482_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8482",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 224) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8482_ack_0,
          idata => idata,
          odata => machine_state_in_8482,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8482
    phi_stmt_8486: Block -- phi operator 
      signal idata: std_logic_vector(9 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= CONCAT_u3_u5_8492_wire_constant & next_CIRCULANT_9164_8493_buffered;
      req <= phi_stmt_8486_req_0 & phi_stmt_8486_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8486",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 5) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8486_ack_0,
          idata => idata,
          odata => CIRCULANT_8486,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8486
    phi_stmt_8494: Block -- phi operator 
      signal idata: std_logic_vector(295 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_8496_wire_constant & RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_wire;
      req <= phi_stmt_8494_req_0 & phi_stmt_8494_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_8494",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 148) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_8494_ack_0,
          idata => idata,
          odata => from_sc_8494,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_8494
    -- flow-through select operator MUX_8604_inst
    branch_target_nnpc_8605 <= ras_nnpc_or_br_offset_8533 when (ras_mispredict_8525(0) /=  '0') else call_generic_pc_adder_expr_8603_wire;
    -- flow-through select operator MUX_8612_inst
    nnpc_8613 <= branch_target_nnpc_8605 when (OR_u1_u1_8609_wire(0) /=  '0') else predicted_nnpc_8585;
    -- flow-through select operator MUX_8824_inst
    trap_info_to_dispatch_8825 <= CONCAT_u2_u4_8822_wire when (trap_flag_8805(0) /=  '0') else R_ZERO_4_8823_wire_constant;
    -- flow-through select operator MUX_8922_inst
    MUX_8922_wire <= R_IID_RUN_8920_wire_constant when (EQ_u2_u1_8919_wire(0) /=  '0') else konst_8921_wire_constant;
    -- flow-through select operator MUX_8929_inst
    MUX_8929_wire <= R_IID_WAIT_NEW_STREAM_8927_wire_constant when (start_new_thread_or_stream_8915(0) /=  '0') else R_IID_RUN_8928_wire_constant;
    -- flow-through select operator MUX_8931_inst
    MUX_8931_wire <= MUX_8929_wire when (EQ_u2_u1_8925_wire(0) /=  '0') else konst_8930_wire_constant;
    -- flow-through select operator MUX_8941_inst
    MUX_8941_wire <= R_IID_RUN_8939_wire_constant when (OR_u1_u1_8938_wire(0) /=  '0') else R_IID_WAIT_NEW_STREAM_8940_wire_constant;
    -- flow-through select operator MUX_8943_inst
    MUX_8943_wire <= MUX_8941_wire when (EQ_u2_u1_8935_wire(0) /=  '0') else konst_8942_wire_constant;
    -- flow-through select operator MUX_9139_inst
    next_last_issued_was_cti_9140 <= is_cti_8637 when (forward_this_instruction_8962(0) /=  '0') else last_issued_was_cti_8513;
    -- flow-through select operator MUX_9145_inst
    next_last_issued_annul_flag_9146 <= instr_annul_flag_8618 when (forward_this_instruction_8962(0) /=  '0') else last_issued_annul_flag_8517;
    -- flow-through slice operator slice_8504_inst
    iid_state_8505 <= CIRCULANT_8486(3 downto 2);
    -- flow-through slice operator slice_8508_inst
    last_issued_cti_status_8509 <= CIRCULANT_8486(1 downto 0);
    -- flow-through slice operator slice_8512_inst
    last_issued_was_cti_8513 <= last_issued_cti_status_8509(1 downto 1);
    -- flow-through slice operator slice_8516_inst
    last_issued_annul_flag_8517 <= last_issued_cti_status_8509(0 downto 0);
    -- flow-through slice operator slice_8524_inst
    ras_mispredict_8525 <= machine_state_in_8482(223 downto 223);
    -- flow-through slice operator slice_8528_inst
    cti_mispredict_8529 <= machine_state_in_8482(222 downto 222);
    -- flow-through slice operator slice_8532_inst
    ras_nnpc_or_br_offset_8533 <= machine_state_in_8482(221 downto 190);
    -- flow-through slice operator slice_8536_inst
    thread_id_8537 <= machine_state_in_8482(189 downto 186);
    -- flow-through slice operator slice_8540_inst
    stream_id_8541 <= machine_state_in_8482(185 downto 184);
    -- flow-through slice operator slice_8544_inst
    slot_id_8545 <= machine_state_in_8482(183 downto 178);
    -- flow-through slice operator slice_8548_inst
    substream_head_8549 <= machine_state_in_8482(177 downto 177);
    -- flow-through slice operator slice_8552_inst
    fetch_mae_trap_8553 <= machine_state_in_8482(176 downto 176);
    -- flow-through slice operator slice_8556_inst
    fetch_error_8557 <= machine_state_in_8482(175 downto 175);
    -- flow-through slice operator slice_8560_inst
    annul_instr_from_dispatch_8561 <= machine_state_in_8482(174 downto 174);
    -- flow-through slice operator slice_8564_inst
    enable_fp_8565 <= machine_state_in_8482(173 downto 173);
    -- flow-through slice operator slice_8568_inst
    enable_cp_8569 <= machine_state_in_8482(172 downto 172);
    -- flow-through slice operator slice_8572_inst
    irl_4_8573 <= machine_state_in_8482(171 downto 168);
    -- flow-through slice operator slice_8576_inst
    mmu_fsr_8577 <= machine_state_in_8482(167 downto 150);
    -- flow-through slice operator slice_8580_inst
    thread_control_word_8581 <= machine_state_in_8482(149 downto 128);
    -- flow-through slice operator slice_8584_inst
    predicted_nnpc_8585 <= machine_state_in_8482(127 downto 96);
    -- flow-through slice operator slice_8588_inst
    pc_8589 <= machine_state_in_8482(95 downto 64);
    -- flow-through slice operator slice_8592_inst
    npc_8593 <= machine_state_in_8482(63 downto 32);
    -- flow-through slice operator slice_8596_inst
    instr_8597 <= machine_state_in_8482(31 downto 0);
    -- flow-through slice operator slice_8640_inst
    is_jmpl_8641 <= jmpl_rett_icache_8637(2 downto 2);
    -- flow-through slice operator slice_8644_inst
    is_rett_8645 <= jmpl_rett_icache_8637(1 downto 1);
    -- flow-through slice operator slice_8648_inst
    icache_accessed_flag_8649 <= jmpl_rett_icache_8637(0 downto 0);
    -- flow-through slice operator slice_8869_inst
    from_sc_valid_raw_8870 <= from_sc_8494(147 downto 147);
    -- flow-through slice operator slice_8873_inst
    sc_thread_id_8874 <= from_sc_8494(146 downto 143);
    -- flow-through slice operator slice_8877_inst
    only_update_psr_8878 <= from_sc_8494(133 downto 133);
    RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_0;
      RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_0<= wack(0);
      rreq(0) <= RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_req_1;
      RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf_ack_1<= rack(0);
      RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf : InterlockBuffer generic map ( -- 
        name => "RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buf",
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
        write_data => RPIPE_teu_stream_corrector_annul_status_8500_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_dispatch_nnpc_8977_inst
    process(nnpc_8613) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := nnpc_8613(31 downto 0);
      dispatch_nnpc_8979 <= tmp_var; -- 
    end process;
    -- interlock W_dispatch_npc_8974_inst
    process(npc_8593) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := npc_8593(31 downto 0);
      dispatch_npc_8976 <= tmp_var; -- 
    end process;
    -- interlock W_dispatch_pc_8971_inst
    process(pc_8589) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := pc_8589(31 downto 0);
      dispatch_pc_8973 <= tmp_var; -- 
    end process;
    -- interlock W_send_to_ifetch_9097_inst
    process(from_sc_valid_8885) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := from_sc_valid_8885(0 downto 0);
      send_to_ifetch_9099 <= tmp_var; -- 
    end process;
    -- interlock W_to_ifetch_9100_inst
    process(from_sc_8494) -- 
      variable tmp_var : std_logic_vector(147 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 147 downto 0) := from_sc_8494(147 downto 0);
      to_ifetch_9102 <= tmp_var; -- 
    end process;
    next_CIRCULANT_9164_8493_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_CIRCULANT_9164_8493_buf_req_0;
      next_CIRCULANT_9164_8493_buf_ack_0<= wack(0);
      rreq(0) <= next_CIRCULANT_9164_8493_buf_req_1;
      next_CIRCULANT_9164_8493_buf_ack_1<= rack(0);
      next_CIRCULANT_9164_8493_buf : InterlockBuffer generic map ( -- 
        name => "next_CIRCULANT_9164_8493_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 5,
        out_data_width => 5,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_CIRCULANT_9164,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_CIRCULANT_9164_8493_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_8498
    process(RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buffered) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 15 downto 0) := RPIPE_teu_stream_corrector_annul_status_8500_wire_8500_buffered(15 downto 0);
      sc_annul_status_8498 <= tmp_var; -- 
    end process;
    do_while_stmt_8480_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_9166_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_8480_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_8480_branch_req_0,
          ack0 => do_while_stmt_8480_branch_ack_0,
          ack1 => do_while_stmt_8480_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_8662_inst
    AND_u1_u1_8662_wire <= (stream_head_8637 and NOT_u1_u1_8661_wire);
    -- flow through binary operator AND_u1_u1_8665_inst
    AND_u1_u1_8665_wire <= (last_issued_was_cti_8513 and last_issued_annul_flag_8517);
    -- flow through binary operator AND_u1_u1_8670_inst
    AND_u1_u1_8670_wire <= (NOT_u1_u1_8667_wire and NOT_u1_u1_8669_wire);
    -- flow through binary operator AND_u1_u1_8671_inst
    AND_u1_u1_8671_wire <= (AND_u1_u1_8665_wire and AND_u1_u1_8670_wire);
    -- flow through binary operator AND_u1_u1_8675_inst
    AND_u1_u1_8675_wire <= (sc_annul_apply_8657 and sc_annul_value_8657);
    -- flow through binary operator AND_u1_u1_8713_inst
    AND_u1_u1_8713_wire <= (sc_annul_apply_8657 and sc_annul_value_8657);
    -- flow through binary operator AND_u1_u1_8737_inst
    AND_u1_u1_8737_wire <= (NOT_u1_u1_8734_wire and NOT_u1_u1_8736_wire);
    -- flow through binary operator AND_u1_u1_8747_inst
    AND_u1_u1_8747_wire <= (EQ_u3_u1_8743_wire and BITSEL_u24_u1_8746_wire);
    -- flow through binary operator AND_u1_u1_8755_inst
    AND_u1_u1_8755_wire <= (EQ_u3_u1_8751_wire and BITSEL_u24_u1_8754_wire);
    -- flow through binary operator AND_u1_u1_8757_inst
    cp_disabled_trap_8758 <= (AND_u1_u1_8737_wire and OR_u1_u1_8756_wire);
    -- flow through binary operator AND_u1_u1_8764_inst
    AND_u1_u1_8764_wire <= (NOT_u1_u1_8761_wire and NOT_u1_u1_8763_wire);
    -- flow through binary operator AND_u1_u1_8774_inst
    AND_u1_u1_8774_wire <= (EQ_u3_u1_8770_wire and BITSEL_u24_u1_8773_wire);
    -- flow through binary operator AND_u1_u1_8782_inst
    AND_u1_u1_8782_wire <= (EQ_u3_u1_8778_wire and BITSEL_u24_u1_8781_wire);
    -- flow through binary operator AND_u1_u1_8784_inst
    fp_disabled_trap_8785 <= (AND_u1_u1_8764_wire and OR_u1_u1_8783_wire);
    -- flow through binary operator AND_u1_u1_8791_inst
    AND_u1_u1_8791_wire <= (NOT_u1_u1_8788_wire and NOT_u1_u1_8790_wire);
    -- flow through binary operator AND_u1_u1_8795_inst
    illegal_instr_8796 <= (AND_u1_u1_8791_wire and EQ_u3_u1_8794_wire);
    -- flow through binary operator AND_u1_u1_8884_inst
    from_sc_valid_8885 <= (from_sc_valid_raw_8870 and EQ_u4_u1_8883_wire);
    -- flow through binary operator AND_u1_u1_8914_inst
    start_new_thread_or_stream_8915 <= (from_sc_valid_8885 and NOT_u1_u1_8913_wire);
    -- flow through binary operator AND_u1_u1_8953_inst
    AND_u1_u1_8953_wire <= (NEQ_u2_u1_8949_wire and EQ_u2_u1_8952_wire);
    -- flow through binary operator AND_u1_u1_8960_inst
    AND_u1_u1_8960_wire <= (EQ_u2_u1_8956_wire and EQ_u2_u1_8959_wire);
    -- flow through binary operator AND_u1_u1_9052_inst
    check_bp_flag_9053 <= (debug_mode_selected_8637 and NOT_u1_u1_9051_wire);
    -- flow through binary operator AND_u1_u1_9113_inst
    send_to_rfile_q_9114 <= (forward_this_instruction_8962 and send_to_rfile_9090);
    -- flow through binary operator BITSEL_u24_u1_8746_inst
    process(instr_spec_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_spec_8726, konst_8745_wire_constant, tmp_var);
      BITSEL_u24_u1_8746_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u24_u1_8754_inst
    process(instr_spec_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_spec_8726, konst_8753_wire_constant, tmp_var);
      BITSEL_u24_u1_8754_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u24_u1_8773_inst
    process(instr_spec_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_spec_8726, konst_8772_wire_constant, tmp_var);
      BITSEL_u24_u1_8773_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u24_u1_8781_inst
    process(instr_spec_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_spec_8726, konst_8780_wire_constant, tmp_var);
      BITSEL_u24_u1_8781_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_8617_inst
    process(instr_8597) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(instr_8597, konst_8616_wire_constant, tmp_var);
      instr_annul_flag_8618 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u12_u43_8991_inst
    process(CONCAT_u6_u12_8985_wire, CONCAT_u7_u31_8990_wire) -- 
      variable tmp_var : std_logic_vector(42 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_8985_wire, CONCAT_u7_u31_8990_wire, tmp_var);
      CONCAT_u12_u43_8991_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u22_8865_inst
    process(CONCAT_u5_u13_8845_wire, CONCAT_u5_u9_8864_wire) -- 
      variable tmp_var : std_logic_vector(21 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u13_8845_wire, CONCAT_u5_u9_8864_wire, tmp_var);
      ctrl_word_to_dispatch_8866 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8818_inst
    process(fetch_mae_trap_8553, cp_disabled_trap_8758) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fetch_mae_trap_8553, cp_disabled_trap_8758, tmp_var);
      CONCAT_u1_u2_8818_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8821_inst
    process(fp_disabled_trap_8785, illegal_instr_8796) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fp_disabled_trap_8785, illegal_instr_8796, tmp_var);
      CONCAT_u1_u2_8821_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8829_inst
    process(is_jmpl_8641, is_rett_8645) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_jmpl_8641, is_rett_8645, tmp_var);
      CONCAT_u1_u2_8829_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8834_inst
    process(debug_mode_selected_8637, logging_active_8637) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(debug_mode_selected_8637, logging_active_8637, tmp_var);
      CONCAT_u1_u2_8834_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8843_inst
    process(ignore_break_points_8637, S_8637) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ignore_break_points_8637, S_8637, tmp_var);
      CONCAT_u1_u2_8843_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8848_inst
    process(imm_bit_8637, is_write_psr_8637) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(imm_bit_8637, is_write_psr_8637, tmp_var);
      CONCAT_u1_u2_8848_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8853_inst
    process(is_flush_8637, is_cti_8637) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_flush_8637, is_cti_8637, tmp_var);
      CONCAT_u1_u2_8853_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8859_inst
    process(icache_hit_flag_8637, OR_u1_u1_8858_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(icache_hit_flag_8637, OR_u1_u1_8858_wire, tmp_var);
      CONCAT_u1_u2_8859_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8862_inst
    process(stream_head_8637, thread_head_8637) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_8637, thread_head_8637, tmp_var);
      CONCAT_u1_u2_8862_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8999_inst
    process(annul_instr_8715, is_unconditional_cti_8905) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_instr_8715, is_unconditional_cti_8905, tmp_var);
      CONCAT_u1_u2_8999_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9006_inst
    process(is_bicc_8898, is_fbfcc_8898) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_bicc_8898, is_fbfcc_8898, tmp_var);
      CONCAT_u1_u2_9006_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_9150_inst
    process(next_last_issued_was_cti_9140, next_last_issued_annul_flag_9146) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_last_issued_was_cti_9140, next_last_issued_annul_flag_9146, tmp_var);
      next_last_issued_cti_status_9151 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u3_9161_inst
    process(R_ZERO_1_9159_wire_constant, next_iid_state_8945) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_9159_wire_constant, next_iid_state_8945, tmp_var);
      CONCAT_u1_u3_9161_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_9011_inst
    process(cti_annul_flag_8898, bicc_fbfcc_cond_8898) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(cti_annul_flag_8898, bicc_fbfcc_cond_8898, tmp_var);
      CONCAT_u1_u5_9011_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u22_u54_9017_inst
    process(ctrl_word_to_dispatch_8866, instr_8597) -- 
      variable tmp_var : std_logic_vector(53 downto 0); -- 
    begin -- 
      ApConcat_proc(ctrl_word_to_dispatch_8866, instr_8597, tmp_var);
      CONCAT_u22_u54_9017_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u26_u208_9026_inst
    process(CONCAT_u3_u26_9014_wire, CONCAT_u86_u182_9025_wire) -- 
      variable tmp_var : std_logic_vector(207 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u26_9014_wire, CONCAT_u86_u182_9025_wire, tmp_var);
      CONCAT_u26_u208_9026_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8831_inst
    process(CONCAT_u1_u2_8829_wire, icache_accessed_flag_8649) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8829_wire, icache_accessed_flag_8649, tmp_var);
      CONCAT_u2_u3_8831_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8850_inst
    process(CONCAT_u1_u2_8848_wire, is_mmu_ctrl_write_8637) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8848_wire, is_mmu_ctrl_write_8637, tmp_var);
      CONCAT_u2_u3_8850_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9001_inst
    process(CONCAT_u1_u2_8999_wire, is_call_8898) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8999_wire, is_call_8898, tmp_var);
      CONCAT_u2_u3_9001_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_9008_inst
    process(CONCAT_u1_u2_9006_wire, fetch_error_8557) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_9006_wire, fetch_error_8557, tmp_var);
      CONCAT_u2_u3_9008_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_8822_inst
    process(CONCAT_u1_u2_8818_wire, CONCAT_u1_u2_8821_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8818_wire, CONCAT_u1_u2_8821_wire, tmp_var);
      CONCAT_u2_u4_8822_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_8863_inst
    process(CONCAT_u1_u2_8859_wire, CONCAT_u1_u2_8862_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8859_wire, CONCAT_u1_u2_8862_wire, tmp_var);
      CONCAT_u2_u4_8863_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_9022_inst
    process(dispatch_npc_8976, dispatch_nnpc_8979) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(dispatch_npc_8976, dispatch_nnpc_8979, tmp_var);
      CONCAT_u32_u64_9022_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u39_u45_8994_inst
    process(instr_pipe_sched_8726, stream_corrector_info_8726) -- 
      variable tmp_var : std_logic_vector(44 downto 0); -- 
    begin -- 
      ApConcat_proc(instr_pipe_sched_8726, stream_corrector_info_8726, tmp_var);
      CONCAT_u39_u45_8994_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u26_9014_inst
    process(CONCAT_u2_u3_9008_wire, CONCAT_u5_u23_9013_wire) -- 
      variable tmp_var : std_logic_vector(25 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_9008_wire, CONCAT_u5_u23_9013_wire, tmp_var);
      CONCAT_u3_u26_9014_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_8835_inst
    process(CONCAT_u2_u3_8831_wire, CONCAT_u1_u2_8834_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8831_wire, CONCAT_u1_u2_8834_wire, tmp_var);
      CONCAT_u3_u5_8835_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_8854_inst
    process(CONCAT_u2_u3_8850_wire, CONCAT_u1_u2_8853_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8850_wire, CONCAT_u1_u2_8853_wire, tmp_var);
      CONCAT_u3_u5_8854_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_9163_inst
    process(CONCAT_u1_u3_9161_wire, next_last_issued_cti_status_9151) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u3_9161_wire, next_last_issued_cti_status_9151, tmp_var);
      next_CIRCULANT_9164 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u43_u92_9003_inst
    process(CONCAT_u12_u43_8991_wire, CONCAT_u46_u49_9002_wire) -- 
      variable tmp_var : std_logic_vector(91 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u12_u43_8991_wire, CONCAT_u46_u49_9002_wire, tmp_var);
      CONCAT_u43_u92_9003_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u45_u46_8996_inst
    process(CONCAT_u39_u45_8994_wire, last_issued_was_cti_8513) -- 
      variable tmp_var : std_logic_vector(45 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u39_u45_8994_wire, last_issued_was_cti_8513, tmp_var);
      CONCAT_u45_u46_8996_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u46_u49_9002_inst
    process(CONCAT_u45_u46_8996_wire, CONCAT_u2_u3_9001_wire) -- 
      variable tmp_var : std_logic_vector(48 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u45_u46_8996_wire, CONCAT_u2_u3_9001_wire, tmp_var);
      CONCAT_u46_u49_9002_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u5_8838_inst
    process(proc_ilvl_8637, enable_traps_8637) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(proc_ilvl_8637, enable_traps_8637, tmp_var);
      CONCAT_u4_u5_8838_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_8983_inst
    process(thread_id_8537, stream_id_8541) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_8537, stream_id_8541, tmp_var);
      CONCAT_u4_u6_8983_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_8988_inst
    process(trap_info_to_dispatch_8825, instr_class_8726) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(trap_info_to_dispatch_8825, instr_class_8726, tmp_var);
      CONCAT_u4_u7_8988_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u54_u86_9019_inst
    process(CONCAT_u22_u54_9017_wire, dispatch_pc_8973) -- 
      variable tmp_var : std_logic_vector(85 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u22_u54_9017_wire, dispatch_pc_8973, tmp_var);
      CONCAT_u54_u86_9019_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_8845_inst
    process(CONCAT_u3_u5_8835_wire, CONCAT_u6_u8_8844_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_8835_wire, CONCAT_u6_u8_8844_wire, tmp_var);
      CONCAT_u5_u13_8845_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u23_9013_inst
    process(CONCAT_u1_u5_9011_wire, mmu_fsr_8577) -- 
      variable tmp_var : std_logic_vector(22 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_9011_wire, mmu_fsr_8577, tmp_var);
      CONCAT_u5_u23_9013_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_8840_inst
    process(CONCAT_u4_u5_8838_wire, single_step_mode_8637) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u5_8838_wire, single_step_mode_8637, tmp_var);
      CONCAT_u5_u6_8840_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_8864_inst
    process(CONCAT_u3_u5_8854_wire, CONCAT_u2_u4_8863_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_8854_wire, CONCAT_u2_u4_8863_wire, tmp_var);
      CONCAT_u5_u9_8864_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_9024_inst
    process(CONCAT_u32_u64_9022_wire, branch_target_nnpc_8605) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_9022_wire, branch_target_nnpc_8605, tmp_var);
      CONCAT_u64_u96_9024_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_8985_inst
    process(CONCAT_u4_u6_8983_wire, slot_id_8545) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_8983_wire, slot_id_8545, tmp_var);
      CONCAT_u6_u12_8985_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u8_8844_inst
    process(CONCAT_u5_u6_8840_wire, CONCAT_u1_u2_8843_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u6_8840_wire, CONCAT_u1_u2_8843_wire, tmp_var);
      CONCAT_u6_u8_8844_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u31_8990_inst
    process(CONCAT_u4_u7_8988_wire, instr_spec_8726) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_8988_wire, instr_spec_8726, tmp_var);
      CONCAT_u7_u31_8990_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u86_u182_9025_inst
    process(CONCAT_u54_u86_9019_wire, CONCAT_u64_u96_9024_wire) -- 
      variable tmp_var : std_logic_vector(181 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u54_u86_9019_wire, CONCAT_u64_u96_9024_wire, tmp_var);
      CONCAT_u86_u182_9025_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u92_u300_9027_inst
    process(CONCAT_u43_u92_9003_wire, CONCAT_u26_u208_9026_wire) -- 
      variable tmp_var : std_logic_vector(299 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u43_u92_9003_wire, CONCAT_u26_u208_9026_wire, tmp_var);
      to_idispatch_9028 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8919_inst
    process(iid_state_8505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iid_state_8505, R_IID_RESET_8918_wire_constant, tmp_var);
      EQ_u2_u1_8919_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8925_inst
    process(iid_state_8505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iid_state_8505, R_IID_RUN_8924_wire_constant, tmp_var);
      EQ_u2_u1_8925_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8935_inst
    process(iid_state_8505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iid_state_8505, R_IID_WAIT_NEW_STREAM_8934_wire_constant, tmp_var);
      EQ_u2_u1_8935_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8952_inst
    process(next_iid_state_8945) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_iid_state_8945, R_IID_RUN_8951_wire_constant, tmp_var);
      EQ_u2_u1_8952_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8956_inst
    process(iid_state_8505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iid_state_8505, R_IID_RUN_8955_wire_constant, tmp_var);
      EQ_u2_u1_8956_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8959_inst
    process(next_iid_state_8945) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(next_iid_state_8945, R_IID_WAIT_NEW_STREAM_8958_wire_constant, tmp_var);
      EQ_u2_u1_8959_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8740_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_CP_INSTR_8739_wire_constant, tmp_var);
      EQ_u3_u1_8740_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8743_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_DATA_TRANSFER_INSTR_8742_wire_constant, tmp_var);
      EQ_u3_u1_8743_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8751_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_CONTROL_TRANSFER_INSTR_8750_wire_constant, tmp_var);
      EQ_u3_u1_8751_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8767_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_FP_INSTR_8766_wire_constant, tmp_var);
      EQ_u3_u1_8767_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8770_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_DATA_TRANSFER_INSTR_8769_wire_constant, tmp_var);
      EQ_u3_u1_8770_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8778_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_CONTROL_TRANSFER_INSTR_8777_wire_constant, tmp_var);
      EQ_u3_u1_8778_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8794_inst
    process(instr_class_8726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(instr_class_8726, R_ILLEGAL_INSTR_8793_wire_constant, tmp_var);
      EQ_u3_u1_8794_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_8883_inst
    process(sc_thread_id_8874, thread_id_8537) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_thread_id_8874, thread_id_8537, tmp_var);
      EQ_u4_u1_8883_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u2_u1_8949_inst
    process(iid_state_8505) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(iid_state_8505, R_IID_RESET_8948_wire_constant, tmp_var);
      NEQ_u2_u1_8949_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_8661_inst
    process(sc_annul_apply_8657) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", sc_annul_apply_8657, tmp_var);
      NOT_u1_u1_8661_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8667_inst
    process(sc_annul_apply_8657) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", sc_annul_apply_8657, tmp_var);
      NOT_u1_u1_8667_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8669_inst
    process(stream_head_8637) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", stream_head_8637, tmp_var);
      NOT_u1_u1_8669_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8734_inst
    process(annul_instr_8715) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_8715, tmp_var);
      NOT_u1_u1_8734_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8736_inst
    process(fetch_mae_trap_8553) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fetch_mae_trap_8553, tmp_var);
      NOT_u1_u1_8736_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8761_inst
    process(annul_instr_8715) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_8715, tmp_var);
      NOT_u1_u1_8761_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8763_inst
    process(fetch_mae_trap_8553) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fetch_mae_trap_8553, tmp_var);
      NOT_u1_u1_8763_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8788_inst
    process(annul_instr_8715) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", annul_instr_8715, tmp_var);
      NOT_u1_u1_8788_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8790_inst
    process(fetch_mae_trap_8553) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", fetch_mae_trap_8553, tmp_var);
      NOT_u1_u1_8790_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8913_inst
    process(only_update_psr_8878) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", only_update_psr_8878, tmp_var);
      NOT_u1_u1_8913_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9051_inst
    process(ignore_break_points_8637) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_break_points_8637, tmp_var);
      NOT_u1_u1_9051_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8609_inst
    OR_u1_u1_8609_wire <= (ras_mispredict_8525 or cti_mispredict_8529);
    -- flow through binary operator OR_u1_u1_8672_inst
    OR_u1_u1_8672_wire <= (AND_u1_u1_8662_wire or AND_u1_u1_8671_wire);
    -- flow through binary operator OR_u1_u1_8676_inst
    do_not_bypass_8677 <= (OR_u1_u1_8672_wire or AND_u1_u1_8675_wire);
    -- flow through binary operator OR_u1_u1_8714_inst
    annul_instr_8715 <= (annul_instr_from_dispatch_8561 or AND_u1_u1_8713_wire);
    -- flow through binary operator OR_u1_u1_8748_inst
    OR_u1_u1_8748_wire <= (EQ_u3_u1_8740_wire or AND_u1_u1_8747_wire);
    -- flow through binary operator OR_u1_u1_8756_inst
    OR_u1_u1_8756_wire <= (OR_u1_u1_8748_wire or AND_u1_u1_8755_wire);
    -- flow through binary operator OR_u1_u1_8775_inst
    OR_u1_u1_8775_wire <= (EQ_u3_u1_8767_wire or AND_u1_u1_8774_wire);
    -- flow through binary operator OR_u1_u1_8783_inst
    OR_u1_u1_8783_wire <= (OR_u1_u1_8775_wire or AND_u1_u1_8782_wire);
    -- flow through binary operator OR_u1_u1_8800_inst
    OR_u1_u1_8800_wire <= (fetch_mae_trap_8553 or cp_disabled_trap_8758);
    -- flow through binary operator OR_u1_u1_8803_inst
    OR_u1_u1_8803_wire <= (fp_disabled_trap_8785 or illegal_instr_8796);
    -- flow through binary operator OR_u1_u1_8804_inst
    trap_flag_8805 <= (OR_u1_u1_8800_wire or OR_u1_u1_8803_wire);
    -- flow through binary operator OR_u1_u1_8858_inst
    OR_u1_u1_8858_wire <= (fetch_trap_bit_8637 or trap_flag_8805);
    -- flow through binary operator OR_u1_u1_8902_inst
    OR_u1_u1_8902_wire <= (is_ba_8898 or is_bn_8898);
    -- flow through binary operator OR_u1_u1_8904_inst
    is_unconditional_cti_8905 <= (OR_u1_u1_8902_wire or is_call_8898);
    -- flow through binary operator OR_u1_u1_8938_inst
    OR_u1_u1_8938_wire <= (stream_head_8637 or thread_head_8637);
    -- flow through binary operator OR_u1_u1_8961_inst
    forward_this_instruction_8962 <= (AND_u1_u1_8953_wire or AND_u1_u1_8960_wire);
    -- flow through binary operator OR_u2_u2_8932_inst
    OR_u2_u2_8932_wire <= (MUX_8922_wire or MUX_8931_wire);
    -- flow through binary operator OR_u2_u2_8944_inst
    next_iid_state_8945 <= (OR_u2_u2_8932_wire or MUX_8943_wire);
    -- read from input-signal debug_bp_0
    RPIPE_debug_bp_0_9056_wire <= debug_bp_0;
    -- read from input-signal debug_bp_1
    RPIPE_debug_bp_1_9057_wire <= debug_bp_1;
    -- read from input-signal debug_bp_2
    RPIPE_debug_bp_2_9058_wire <= debug_bp_2;
    -- read from input-signal debug_bp_3
    RPIPE_debug_bp_3_9059_wire <= debug_bp_3;
    -- read from input-signal debug_dbg_interrupt
    RPIPE_debug_dbg_interrupt_9054_wire <= debug_dbg_interrupt;
    -- shared inport operator group (5) : RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst 
    InportGroup_5: Block -- 
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
      reqL_unguarded(0) <= RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_0;
      RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_req_1;
      RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_joined_iretire_sc_to_idispatch_8497_wire <= data_out(147 downto 0);
      noblock_joined_iretire_sc_to_idispatch_read_5_gI: SplitGuardInterface generic map(name => "noblock_joined_iretire_sc_to_idispatch_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_joined_iretire_sc_to_idispatch_read_5: InputPort_P2P -- 
        generic map ( name => "noblock_joined_iretire_sc_to_idispatch_read_5", data_width => 148,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_joined_iretire_sc_to_idispatch_pipe_read_req(0),
          oack => noblock_joined_iretire_sc_to_idispatch_pipe_read_ack(0),
          odata => noblock_joined_iretire_sc_to_idispatch_pipe_read_data(147 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- shared inport operator group (6) : RPIPE_teu_ifetch_to_idecode_extended_8485_inst 
    InportGroup_6: Block -- 
      signal data_out: std_logic_vector(223 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_0;
      RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_teu_ifetch_to_idecode_extended_8485_inst_req_1;
      RPIPE_teu_ifetch_to_idecode_extended_8485_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_teu_ifetch_to_idecode_extended_8485_wire <= data_out(223 downto 0);
      teu_ifetch_to_idecode_extended_read_6_gI: SplitGuardInterface generic map(name => "teu_ifetch_to_idecode_extended_read_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      teu_ifetch_to_idecode_extended_read_6: InputPort_P2P -- 
        generic map ( name => "teu_ifetch_to_idecode_extended_read_6", data_width => 224,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => true,   queue_depth =>  1)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => teu_ifetch_to_idecode_extended_pipe_read_req(0),
          oack => teu_ifetch_to_idecode_extended_pipe_read_ack(0),
          odata => teu_ifetch_to_idecode_extended_pipe_read_data(223 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 6
    -- read from input-signal teu_stream_corrector_annul_status
    RPIPE_teu_stream_corrector_annul_status_8500_wire <= teu_stream_corrector_annul_status;
    -- shared outport operator group (0) : WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst 
    OutportGroup_0: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_0;
      WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_req_1;
      WPIPE_noblock_teu_idispatch_to_ifetch_9104_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_ifetch_9099(0);
      data_in <= to_ifetch_9102;
      noblock_teu_idispatch_to_ifetch_write_0_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_ifetch_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_idispatch_to_ifetch_write_0: OutputPortRevised -- 
        generic map ( name => "noblock_teu_idispatch_to_ifetch", data_width => 148, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_idispatch_to_ifetch_pipe_write_req(0),
          oack => noblock_teu_idispatch_to_ifetch_pipe_write_ack(0),
          odata => noblock_teu_idispatch_to_ifetch_pipe_write_data(147 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(58 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_0;
      WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_req_1;
      WPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9116_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_rfile_q_9114(0);
      data_in <= to_iunit_rfile_9090;
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_write_1_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_iunit_register_file_read_access_command_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_write_1: OutputPortRevised -- 
        generic map ( name => "noblock_teu_idispatch_to_iunit_register_file_read_access_command", data_width => 59, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req(0),
          oack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack(0),
          odata => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data(58 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(83 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_0;
      WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_req_1;
      WPIPE_noblock_teu_idispatch_to_iunit_writeback_9128_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= forward_this_instruction_8962(0);
      data_in <= to_iunit_wb_9090;
      noblock_teu_idispatch_to_iunit_writeback_write_2_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_iunit_writeback_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_idispatch_to_iunit_writeback_write_2: OutputPortRevised -- 
        generic map ( name => "noblock_teu_idispatch_to_iunit_writeback", data_width => 84, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req(0),
          oack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack(0),
          odata => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data(83 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(125 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_0;
      WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_req_1;
      WPIPE_noblock_teu_idispatch_to_loadstore_9124_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= forward_this_instruction_8962(0);
      data_in <= to_loadstore_9084;
      noblock_teu_idispatch_to_loadstore_write_3_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_loadstore_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      noblock_teu_idispatch_to_loadstore_write_3: OutputPortRevised -- 
        generic map ( name => "noblock_teu_idispatch_to_loadstore", data_width => 126, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => noblock_teu_idispatch_to_loadstore_pipe_write_req(0),
          oack => noblock_teu_idispatch_to_loadstore_pipe_write_ack(0),
          odata => noblock_teu_idispatch_to_loadstore_pipe_write_data(125 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_teu_idispatch_to_iunit_exec_9120_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(149 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_0;
      WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_idispatch_to_iunit_exec_9120_inst_req_1;
      WPIPE_teu_idispatch_to_iunit_exec_9120_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= forward_this_instruction_8962(0);
      data_in <= to_iunit_exec_9090;
      teu_idispatch_to_iunit_exec_write_4_gI: SplitGuardInterface generic map(name => "teu_idispatch_to_iunit_exec_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_idispatch_to_iunit_exec_write_4: OutputPortRevised -- 
        generic map ( name => "teu_idispatch_to_iunit_exec", data_width => 150, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_idispatch_to_iunit_exec_pipe_write_req(0),
          oack => teu_idispatch_to_iunit_exec_pipe_write_ack(0),
          odata => teu_idispatch_to_iunit_exec_pipe_write_data(149 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_teu_idispatch_to_stream_corrector_9132_inst 
    OutportGroup_5: Block -- 
      signal data_in: std_logic_vector(204 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_0;
      WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_idispatch_to_stream_corrector_9132_inst_req_1;
      WPIPE_teu_idispatch_to_stream_corrector_9132_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= forward_this_instruction_8962(0);
      data_in <= to_stream_corrector_9084;
      teu_idispatch_to_stream_corrector_write_5_gI: SplitGuardInterface generic map(name => "teu_idispatch_to_stream_corrector_write_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_idispatch_to_stream_corrector_write_5: OutputPortRevised -- 
        generic map ( name => "teu_idispatch_to_stream_corrector", data_width => 205, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_idispatch_to_stream_corrector_pipe_write_req(0),
          oack => teu_idispatch_to_stream_corrector_pipe_write_ack(0),
          odata => teu_idispatch_to_stream_corrector_pipe_write_data(204 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    volatile_operator_generic_pc_adder_7291: generic_pc_adder_Volatile port map(pc => pc_8589, offset => ras_nnpc_or_br_offset_8533, npc => call_generic_pc_adder_expr_8603_wire); 
    volatile_operator_decode_thread_control_word_7296: decode_thread_control_word_Volatile port map(ctrl_word => thread_control_word_8581, sc_instr_class => jmpl_rett_icache_8637, debug_mode => debug_mode_selected_8637, logger_active => logging_active_8637, proc_ilvl => proc_ilvl_8637, enable_traps => enable_traps_8637, single_step_mode => single_step_mode_8637, ignore_break_points => ignore_break_points_8637, S => S_8637, imm_bit => imm_bit_8637, is_write_psr => is_write_psr_8637, is_mmu_ctrl_write => is_mmu_ctrl_write_8637, is_flush => is_flush_8637, is_cti => is_cti_8637, mis_predict => icache_hit_flag_8637, trap_bit => fetch_trap_bit_8637, stream_head => stream_head_8637, thread_head => thread_head_8637); 
    volatile_operator_analyze_sc_annul_status_7300: analyze_sc_annul_status_Volatile port map(thread_head => thread_head_8637, stream_head => stream_head_8637, thread_id => thread_id_8537, stream_id => stream_id_8541, sc_annul_status => sc_annul_status_8498, sc_annul_apply => sc_annul_apply_8657, sc_annul_value => sc_annul_value_8657); 
    volatile_operator_decode_instruction_stage_1_7313: decode_instruction_stage_1_Volatile port map(annulled_instr => annul_instr_8715, thread_head => thread_head_8637, stream_head => stream_head_8637, debug_mode_selected => debug_mode_selected_8637, last_was_cti => last_issued_was_cti_8513, instr_raw => instr_8597, instr_class => instr_class_8726, instr_spec => instr_spec_8726, instr_pipeline_usage => instr_pipe_sched_8726, stream_corrector_info => stream_corrector_info_8726); 
    volatile_operator_decode_cti_for_offset_calculation_7376: decode_cti_for_offset_calculation_Volatile port map(instr => instr_8597, cti_annul_flag => cti_annul_flag_8898, is_call => is_call_8898, is_ba => is_ba_8898, is_bn => is_bn_8898, is_bicc => is_bicc_8898, is_fbfcc => is_fbfcc_8898, is_cbccc => is_cbccc_8898, cond => bicc_fbfcc_cond_8898, imm_offset => imm_offset_8898); 
    volatile_operator_debug_calculate_debug_bp_hits_7432: debug_calculate_debug_bp_hits_Volatile port map(raw_intr_in => RPIPE_debug_dbg_interrupt_9054_wire, debug_mode_selected => check_bp_flag_9053, bp0_in => RPIPE_debug_bp_0_9056_wire, bp1_in => RPIPE_debug_bp_1_9057_wire, bp2_in => RPIPE_debug_bp_2_9058_wire, bp3_in => RPIPE_debug_bp_3_9059_wire, pc_from_dispatch => pc_8589, debug_bp_reg_id => debug_bp_reg_id_9064, debug_bp_hit => debug_bp_hit_9064, intr_out => debug_intr_9064); 
    volatile_operator_idispatch_logic_7433: idispatch_logic_Volatile port map(machine_state_in => to_idispatch_9028, do_not_bypass => do_not_bypass_8677, debug_bp_reg_id => debug_bp_reg_id_9064, debug_bp_hit => debug_bp_hit_9064, debug_intr => debug_intr_9064, irl_4 => irl_4_8573, to_loadstore => to_loadstore_9084, to_iunit => to_iunit_9084, to_fpunit => to_fpunit_9084, to_stream_corrector => to_stream_corrector_9084); 
    volatile_operator_idispatch_to_iunit_logic_7434: idispatch_to_iunit_logic_Volatile port map(instr_descr => to_iunit_9084, send_to_rfile => send_to_rfile_9090, to_rfile => to_iunit_rfile_9090, to_exec => to_iunit_exec_9090, to_writeback => to_iunit_wb_9090); 
    volatile_operator_idispatch_to_fpunit_logic_7435: idispatch_to_fpunit_logic_Volatile port map(instr_descr => to_fpunit_9084, send_to_rfile => send_to_fp_rfile_9096, to_rfile => to_fpunit_rfile_9096, to_exec => to_fpunit_exec_9096, to_writeback => to_fpunit_wb_9096); 
    -- 
  end Block; -- data_path
  -- 
end idecode_idispatch_daemon_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity idispatch_logic_Volatile is -- 
  port ( -- 
    machine_state_in : in  std_logic_vector(299 downto 0);
    do_not_bypass : in  std_logic_vector(0 downto 0);
    debug_bp_reg_id : in  std_logic_vector(1 downto 0);
    debug_bp_hit : in  std_logic_vector(0 downto 0);
    debug_intr : in  std_logic_vector(0 downto 0);
    irl_4 : in  std_logic_vector(3 downto 0);
    to_loadstore : out  std_logic_vector(125 downto 0);
    to_iunit : out  std_logic_vector(126 downto 0);
    to_fpunit : out  std_logic_vector(94 downto 0);
    to_stream_corrector : out  std_logic_vector(204 downto 0)-- 
  );
  -- 
end entity idispatch_logic_Volatile;
architecture idispatch_logic_Volatile_arch of idispatch_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(309-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal machine_state_in_buffer :  std_logic_vector(299 downto 0);
  signal do_not_bypass_buffer :  std_logic_vector(0 downto 0);
  signal debug_bp_reg_id_buffer :  std_logic_vector(1 downto 0);
  signal debug_bp_hit_buffer :  std_logic_vector(0 downto 0);
  signal debug_intr_buffer :  std_logic_vector(0 downto 0);
  signal irl_4_buffer :  std_logic_vector(3 downto 0);
  -- output port buffer signals
  signal to_loadstore_buffer :  std_logic_vector(125 downto 0);
  signal to_iunit_buffer :  std_logic_vector(126 downto 0);
  signal to_fpunit_buffer :  std_logic_vector(94 downto 0);
  signal to_stream_corrector_buffer :  std_logic_vector(204 downto 0);
  -- volatile/operator module components. 
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
  component get_destination_register_Volatile is -- 
    port ( -- 
      instr : in  std_logic_vector(31 downto 0);
      rd : out  std_logic_vector(4 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  machine_state_in_buffer <= machine_state_in;
  do_not_bypass_buffer <= do_not_bypass;
  debug_bp_reg_id_buffer <= debug_bp_reg_id;
  debug_bp_hit_buffer <= debug_bp_hit;
  debug_intr_buffer <= debug_intr;
  irl_4_buffer <= irl_4;
  -- output handling  -------------------------------------------------------
  to_loadstore <= to_loadstore_buffer;
  to_iunit <= to_iunit_buffer;
  to_fpunit <= to_fpunit_buffer;
  to_stream_corrector <= to_stream_corrector_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u11_u20_7820_wire : std_logic_vector(19 downto 0);
    signal CONCAT_u12_u19_7912_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u13_u42_7669_wire : std_logic_vector(41 downto 0);
    signal CONCAT_u13_u42_7734_wire : std_logic_vector(41 downto 0);
    signal CONCAT_u19_u32_7832_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u19_u48_7920_wire : std_logic_vector(47 downto 0);
    signal CONCAT_u1_u19_7830_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u1_u2_7313_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7316_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7664_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7675_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7679_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7682_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7688_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7691_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7695_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7700_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7705_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7708_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7712_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7729_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7740_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7766_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7769_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7773_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7810_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7837_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7840_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7844_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7850_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7853_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7857_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7923_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7928_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7932_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7941_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7946_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7950_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7953_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7960_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7965_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u4_7823_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u5_7915_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u5_7935_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u20_u81_7834_wire : std_logic_vector(80 downto 0);
    signal CONCAT_u22_u24_7918_wire : std_logic_vector(23 downto 0);
    signal CONCAT_u24_u25_7826_wire : std_logic_vector(24 downto 0);
    signal CONCAT_u29_u61_7833_wire : std_logic_vector(60 downto 0);
    signal CONCAT_u2_u11_7814_wire : std_logic_vector(10 downto 0);
    signal CONCAT_u2_u29_7668_wire : std_logic_vector(28 downto 0);
    signal CONCAT_u2_u29_7733_wire : std_logic_vector(28 downto 0);
    signal CONCAT_u2_u34_7859_wire : std_logic_vector(33 downto 0);
    signal CONCAT_u2_u3_7714_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_7746_wire_constant : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_7775_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_7846_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_7943_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_7962_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u4_7683_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7692_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7701_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7709_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7770_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7841_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7854_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_7954_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u6_7925_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u7_7936_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u2_u8_7817_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u33_7737_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u32_u64_7672_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_7969_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_7972_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u33_u35_7741_wire : std_logic_vector(34 downto 0);
    signal CONCAT_u35_u38_7747_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u3_u27_7667_wire : std_logic_vector(26 downto 0);
    signal CONCAT_u3_u27_7732_wire : std_logic_vector(26 downto 0);
    signal CONCAT_u3_u5_7947_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_7966_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u42_u112_7685_wire : std_logic_vector(111 downto 0);
    signal CONCAT_u42_u80_7748_wire : std_logic_vector(79 downto 0);
    signal CONCAT_u48_u63_7938_wire : std_logic_vector(62 downto 0);
    signal CONCAT_u4_u29_7827_wire : std_logic_vector(28 downto 0);
    signal CONCAT_u4_u38_7860_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u4_u6_7657_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_7722_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u6_7906_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u7_7715_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u4_u7_7776_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u4_u7_7847_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u4_u8_7702_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_7763_wire_constant : std_logic_vector(7 downto 0);
    signal CONCAT_u5_u133_7974_wire : std_logic_vector(132 downto 0);
    signal CONCAT_u5_u29_7919_wire : std_logic_vector(28 downto 0);
    signal CONCAT_u5_u9_7813_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u5_u9_7955_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u64_u128_7973_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u64_u66_7676_wire : std_logic_vector(65 downto 0);
    signal CONCAT_u66_u70_7684_wire : std_logic_vector(69 downto 0);
    signal CONCAT_u6_u12_7908_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u13_7661_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u13_7726_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u7_7660_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_7725_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_7911_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u8_7929_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u7_u45_7861_wire : std_logic_vector(44 downto 0);
    signal CONCAT_u8_u15_7716_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u8_u15_7777_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u8_u15_7937_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u8_u9_7819_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u9_u142_7975_wire : std_logic_vector(141 downto 0);
    signal EQ_u3_u1_7799_wire : std_logic_vector(0 downto 0);
    signal NEQ_u18_u1_7500_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_7573_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7341_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7497_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7502_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7568_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7570_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7575_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7590_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7698_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7790_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7793_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_7959_wire : std_logic_vector(0 downto 0);
    signal R_DATA_TRANSFER_INSTR_7798_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_1_7808_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_7963_wire_constant : std_logic_vector(0 downto 0);
    signal S_7337 : std_logic_vector(0 downto 0);
    signal annul_instr_7249 : std_logic_vector(0 downto 0);
    signal bicc_fbfcc_annul_flag_7273 : std_logic_vector(0 downto 0);
    signal bicc_fbfcc_cond_7277 : std_logic_vector(3 downto 0);
    signal branch_target_npc_7305 : std_logic_vector(31 downto 0);
    signal cp_disabled_trap_7217 : std_logic_vector(0 downto 0);
    signal cu1_to_cu2_7449 : std_logic_vector(0 downto 0);
    signal cu1_to_fu2_7465 : std_logic_vector(0 downto 0);
    signal cu1_to_fu2_q_7637 : std_logic_vector(0 downto 0);
    signal cu1_to_iu2_7461 : std_logic_vector(0 downto 0);
    signal cu1_to_ls_7457 : std_logic_vector(0 downto 0);
    signal cu1_to_sc_7453 : std_logic_vector(0 downto 0);
    signal debug_mode_7337 : std_logic_vector(0 downto 0);
    signal decode_trap_bit_7337 : std_logic_vector(0 downto 0);
    signal dispatch_traps_7318 : std_logic_vector(3 downto 0);
    signal enable_traps_7337 : std_logic_vector(0 downto 0);
    signal fetch_error_7269 : std_logic_vector(0 downto 0);
    signal fp_disabled_trap_7221 : std_logic_vector(0 downto 0);
    signal fu1_to_cu2_7445 : std_logic_vector(0 downto 0);
    signal fu1_to_cu2_q_7633 : std_logic_vector(0 downto 0);
    signal fu1_to_fu2_7425 : std_logic_vector(0 downto 0);
    signal fu1_to_fu2_q_7613 : std_logic_vector(0 downto 0);
    signal fu1_to_iu2_7441 : std_logic_vector(0 downto 0);
    signal fu1_to_iu2_q_7629 : std_logic_vector(0 downto 0);
    signal fu1_to_sc_7429 : std_logic_vector(0 downto 0);
    signal fu1_to_sc_q_7617 : std_logic_vector(0 downto 0);
    signal fu1_trap_to_ls_7437 : std_logic_vector(0 downto 0);
    signal fu1_trap_to_ls_q_7625 : std_logic_vector(0 downto 0);
    signal fu2_to_iretire_q_7653 : std_logic_vector(0 downto 0);
    signal fu_reg_to_ls_7433 : std_logic_vector(0 downto 0);
    signal fu_reg_to_ls_q_7621 : std_logic_vector(0 downto 0);
    signal icache_hit_7337 : std_logic_vector(0 downto 0);
    signal iclass_7229 : std_logic_vector(2 downto 0);
    signal ignore_break_points_7337 : std_logic_vector(0 downto 0);
    signal illegal_instr_trap_7225 : std_logic_vector(0 downto 0);
    signal imm_bit_7337 : std_logic_vector(0 downto 0);
    signal instr_7289 : std_logic_vector(31 downto 0);
    signal is_bicc_7261 : std_logic_vector(0 downto 0);
    signal is_call_7257 : std_logic_vector(0 downto 0);
    signal is_cti_7337 : std_logic_vector(0 downto 0);
    signal is_fbfcc_7265 : std_logic_vector(0 downto 0);
    signal is_flush_7337 : std_logic_vector(0 downto 0);
    signal is_mmu_ctrl_write_7337 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_7357 : std_logic_vector(0 downto 0);
    signal is_unconditional_cti_7253 : std_logic_vector(0 downto 0);
    signal is_write_psr_7337 : std_logic_vector(0 downto 0);
    signal isched_7237 : std_logic_vector(38 downto 0);
    signal isched_corrected_7345 : std_logic_vector(38 downto 0);
    signal ispec_7233 : std_logic_vector(23 downto 0);
    signal ispec_to_ls_7803 : std_logic_vector(23 downto 0);
    signal iu1_to_cu2_7421 : std_logic_vector(0 downto 0);
    signal iu1_to_fu2_7417 : std_logic_vector(0 downto 0);
    signal iu1_to_fu2_q_7609 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_7401 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_fast_7397 : std_logic_vector(0 downto 0);
    signal iu1_to_ls_trap_7413 : std_logic_vector(0 downto 0);
    signal iu1_to_sc_7405 : std_logic_vector(0 downto 0);
    signal iu2_to_iretire_7593 : std_logic_vector(0 downto 0);
    signal iu_reg_to_ls_7409 : std_logic_vector(0 downto 0);
    signal jmpl_rett_icache_7337 : std_logic_vector(2 downto 0);
    signal konst_7342_wire_constant : std_logic_vector(38 downto 0);
    signal konst_7499_wire_constant : std_logic_vector(17 downto 0);
    signal konst_7572_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7782_wire_constant : std_logic_vector(17 downto 0);
    signal konst_7801_wire_constant : std_logic_vector(23 downto 0);
    signal last_issued_was_cti_7245 : std_logic_vector(0 downto 0);
    signal logger_active_7337 : std_logic_vector(0 downto 0);
    signal ls_to_cu2_7493 : std_logic_vector(0 downto 0);
    signal ls_to_fu2_7489 : std_logic_vector(0 downto 0);
    signal ls_to_fu2_q_7645 : std_logic_vector(0 downto 0);
    signal ls_to_iu2_7485 : std_logic_vector(0 downto 0);
    signal mae_trap_7213 : std_logic_vector(0 downto 0);
    signal mmu_fsr_7281 : std_logic_vector(17 downto 0);
    signal mmu_fsr_modified_7784 : std_logic_vector(0 downto 0);
    signal nnpc_7301 : std_logic_vector(31 downto 0);
    signal npc_7297 : std_logic_vector(31 downto 0);
    signal pc_7293 : std_logic_vector(31 downto 0);
    signal proc_ilvl_7337 : std_logic_vector(3 downto 0);
    signal rd_7806 : std_logic_vector(4 downto 0);
    signal reads_fu_rfile_7393 : std_logic_vector(0 downto 0);
    signal reads_fu_rfile_q_7597 : std_logic_vector(0 downto 0);
    signal reads_iu_rfile_7389 : std_logic_vector(0 downto 0);
    signal sc_info_7241 : std_logic_vector(5 downto 0);
    signal sc_to_all_7577 : std_logic_vector(0 downto 0);
    signal sc_to_cu2_7477 : std_logic_vector(0 downto 0);
    signal sc_to_fu2_7473 : std_logic_vector(0 downto 0);
    signal sc_to_fu2_q_7641 : std_logic_vector(0 downto 0);
    signal sc_to_iu2_7469 : std_logic_vector(0 downto 0);
    signal sc_to_ls_7481 : std_logic_vector(0 downto 0);
    signal sc_to_ls_corrected_7795 : std_logic_vector(0 downto 0);
    signal simm_13_7309 : std_logic_vector(12 downto 0);
    signal single_step_mode_7337 : std_logic_vector(0 downto 0);
    signal slot_id_7209 : std_logic_vector(5 downto 0);
    signal stream_head_7337 : std_logic_vector(0 downto 0);
    signal stream_id_7205 : std_logic_vector(1 downto 0);
    signal thread_control_word_7285 : std_logic_vector(21 downto 0);
    signal thread_head_7337 : std_logic_vector(0 downto 0);
    signal thread_id_7201 : std_logic_vector(3 downto 0);
    signal uses_cu1_7381 : std_logic_vector(0 downto 0);
    signal uses_cu2_7385 : std_logic_vector(0 downto 0);
    signal uses_fp_cc_for_branching_7353 : std_logic_vector(0 downto 0);
    signal uses_fp_cc_for_branching_q_7649 : std_logic_vector(0 downto 0);
    signal uses_fu1_7373 : std_logic_vector(0 downto 0);
    signal uses_fu1_q_7601 : std_logic_vector(0 downto 0);
    signal uses_fu2_7377 : std_logic_vector(0 downto 0);
    signal uses_fu2_q_7605 : std_logic_vector(0 downto 0);
    signal uses_iu1_7361 : std_logic_vector(0 downto 0);
    signal uses_iu2_7365 : std_logic_vector(0 downto 0);
    signal uses_iu_cc_for_branching_7349 : std_logic_vector(0 downto 0);
    signal uses_ls_7369 : std_logic_vector(0 downto 0);
    signal uses_ls_corrected_7504 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_7766_wire_constant <= "00";
    CONCAT_u1_u2_7844_wire_constant <= "00";
    CONCAT_u2_u3_7746_wire_constant <= "000";
    CONCAT_u4_u8_7763_wire_constant <= "00000000";
    R_DATA_TRANSFER_INSTR_7798_wire_constant <= "001";
    R_ONE_1_7808_wire_constant <= "1";
    R_ZERO_1_7963_wire_constant <= "0";
    cu1_to_fu2_q_7637 <= "0";
    fu1_to_cu2_q_7633 <= "0";
    fu1_to_fu2_q_7613 <= "0";
    fu1_to_iu2_q_7629 <= "0";
    fu1_to_sc_q_7617 <= "0";
    fu1_trap_to_ls_q_7625 <= "0";
    fu2_to_iretire_q_7653 <= "0";
    fu_reg_to_ls_q_7621 <= "0";
    iu1_to_fu2_q_7609 <= "0";
    konst_7342_wire_constant <= "000000000000000000000000000000000000000";
    konst_7499_wire_constant <= "000000000000000000";
    konst_7572_wire_constant <= "0000";
    konst_7782_wire_constant <= "000000000000000000";
    konst_7801_wire_constant <= "000000000000000000000000";
    ls_to_fu2_q_7645 <= "0";
    reads_fu_rfile_q_7597 <= "0";
    sc_to_fu2_q_7641 <= "0";
    uses_fp_cc_for_branching_q_7649 <= "0";
    uses_fu1_q_7601 <= "0";
    uses_fu2_q_7605 <= "0";
    -- flow-through select operator MUX_7344_inst
    isched_corrected_7345 <= konst_7342_wire_constant when (OR_u1_u1_7341_wire(0) /=  '0') else isched_7237;
    -- flow-through select operator MUX_7802_inst
    ispec_to_ls_7803 <= ispec_7233 when (EQ_u3_u1_7799_wire(0) /=  '0') else konst_7801_wire_constant;
    -- flow-through slice operator slice_7200_inst
    thread_id_7201 <= machine_state_in_buffer(299 downto 296);
    -- flow-through slice operator slice_7204_inst
    stream_id_7205 <= machine_state_in_buffer(295 downto 294);
    -- flow-through slice operator slice_7208_inst
    slot_id_7209 <= machine_state_in_buffer(293 downto 288);
    -- flow-through slice operator slice_7212_inst
    mae_trap_7213 <= machine_state_in_buffer(287 downto 287);
    -- flow-through slice operator slice_7216_inst
    cp_disabled_trap_7217 <= machine_state_in_buffer(286 downto 286);
    -- flow-through slice operator slice_7220_inst
    fp_disabled_trap_7221 <= machine_state_in_buffer(285 downto 285);
    -- flow-through slice operator slice_7224_inst
    illegal_instr_trap_7225 <= machine_state_in_buffer(284 downto 284);
    -- flow-through slice operator slice_7228_inst
    iclass_7229 <= machine_state_in_buffer(283 downto 281);
    -- flow-through slice operator slice_7232_inst
    ispec_7233 <= machine_state_in_buffer(280 downto 257);
    -- flow-through slice operator slice_7236_inst
    isched_7237 <= machine_state_in_buffer(256 downto 218);
    -- flow-through slice operator slice_7240_inst
    sc_info_7241 <= machine_state_in_buffer(217 downto 212);
    -- flow-through slice operator slice_7244_inst
    last_issued_was_cti_7245 <= machine_state_in_buffer(211 downto 211);
    -- flow-through slice operator slice_7248_inst
    annul_instr_7249 <= machine_state_in_buffer(210 downto 210);
    -- flow-through slice operator slice_7252_inst
    is_unconditional_cti_7253 <= machine_state_in_buffer(209 downto 209);
    -- flow-through slice operator slice_7256_inst
    is_call_7257 <= machine_state_in_buffer(208 downto 208);
    -- flow-through slice operator slice_7260_inst
    is_bicc_7261 <= machine_state_in_buffer(207 downto 207);
    -- flow-through slice operator slice_7264_inst
    is_fbfcc_7265 <= machine_state_in_buffer(206 downto 206);
    -- flow-through slice operator slice_7268_inst
    fetch_error_7269 <= machine_state_in_buffer(205 downto 205);
    -- flow-through slice operator slice_7272_inst
    bicc_fbfcc_annul_flag_7273 <= machine_state_in_buffer(204 downto 204);
    -- flow-through slice operator slice_7276_inst
    bicc_fbfcc_cond_7277 <= machine_state_in_buffer(203 downto 200);
    -- flow-through slice operator slice_7280_inst
    mmu_fsr_7281 <= machine_state_in_buffer(199 downto 182);
    -- flow-through slice operator slice_7284_inst
    thread_control_word_7285 <= machine_state_in_buffer(181 downto 160);
    -- flow-through slice operator slice_7288_inst
    instr_7289 <= machine_state_in_buffer(159 downto 128);
    -- flow-through slice operator slice_7292_inst
    pc_7293 <= machine_state_in_buffer(127 downto 96);
    -- flow-through slice operator slice_7296_inst
    npc_7297 <= machine_state_in_buffer(95 downto 64);
    -- flow-through slice operator slice_7300_inst
    nnpc_7301 <= machine_state_in_buffer(63 downto 32);
    -- flow-through slice operator slice_7304_inst
    branch_target_npc_7305 <= machine_state_in_buffer(31 downto 0);
    -- flow-through slice operator slice_7308_inst
    simm_13_7309 <= instr_7289(12 downto 0);
    -- flow-through slice operator slice_7348_inst
    uses_iu_cc_for_branching_7349 <= isched_corrected_7345(38 downto 38);
    -- flow-through slice operator slice_7352_inst
    uses_fp_cc_for_branching_7353 <= isched_corrected_7345(37 downto 37);
    -- flow-through slice operator slice_7356_inst
    is_ret_or_retl_7357 <= isched_corrected_7345(36 downto 36);
    -- flow-through slice operator slice_7360_inst
    uses_iu1_7361 <= isched_corrected_7345(35 downto 35);
    -- flow-through slice operator slice_7364_inst
    uses_iu2_7365 <= isched_corrected_7345(34 downto 34);
    -- flow-through slice operator slice_7368_inst
    uses_ls_7369 <= isched_corrected_7345(33 downto 33);
    -- flow-through slice operator slice_7372_inst
    uses_fu1_7373 <= isched_corrected_7345(32 downto 32);
    -- flow-through slice operator slice_7376_inst
    uses_fu2_7377 <= isched_corrected_7345(31 downto 31);
    -- flow-through slice operator slice_7380_inst
    uses_cu1_7381 <= isched_corrected_7345(30 downto 30);
    -- flow-through slice operator slice_7384_inst
    uses_cu2_7385 <= isched_corrected_7345(29 downto 29);
    -- flow-through slice operator slice_7388_inst
    reads_iu_rfile_7389 <= isched_corrected_7345(28 downto 28);
    -- flow-through slice operator slice_7392_inst
    reads_fu_rfile_7393 <= isched_corrected_7345(26 downto 26);
    -- flow-through slice operator slice_7396_inst
    iu1_to_iu2_fast_7397 <= isched_corrected_7345(24 downto 24);
    -- flow-through slice operator slice_7400_inst
    iu1_to_iu2_7401 <= isched_corrected_7345(23 downto 23);
    -- flow-through slice operator slice_7404_inst
    iu1_to_sc_7405 <= isched_corrected_7345(22 downto 22);
    -- flow-through slice operator slice_7408_inst
    iu_reg_to_ls_7409 <= isched_corrected_7345(21 downto 21);
    -- flow-through slice operator slice_7412_inst
    iu1_to_ls_trap_7413 <= isched_corrected_7345(20 downto 20);
    -- flow-through slice operator slice_7416_inst
    iu1_to_fu2_7417 <= isched_corrected_7345(19 downto 19);
    -- flow-through slice operator slice_7420_inst
    iu1_to_cu2_7421 <= isched_corrected_7345(18 downto 18);
    -- flow-through slice operator slice_7424_inst
    fu1_to_fu2_7425 <= isched_corrected_7345(17 downto 17);
    -- flow-through slice operator slice_7428_inst
    fu1_to_sc_7429 <= isched_corrected_7345(16 downto 16);
    -- flow-through slice operator slice_7432_inst
    fu_reg_to_ls_7433 <= isched_corrected_7345(15 downto 15);
    -- flow-through slice operator slice_7436_inst
    fu1_trap_to_ls_7437 <= isched_corrected_7345(14 downto 14);
    -- flow-through slice operator slice_7440_inst
    fu1_to_iu2_7441 <= isched_corrected_7345(13 downto 13);
    -- flow-through slice operator slice_7444_inst
    fu1_to_cu2_7445 <= isched_corrected_7345(12 downto 12);
    -- flow-through slice operator slice_7448_inst
    cu1_to_cu2_7449 <= isched_corrected_7345(11 downto 11);
    -- flow-through slice operator slice_7452_inst
    cu1_to_sc_7453 <= isched_corrected_7345(10 downto 10);
    -- flow-through slice operator slice_7456_inst
    cu1_to_ls_7457 <= isched_corrected_7345(9 downto 9);
    -- flow-through slice operator slice_7460_inst
    cu1_to_iu2_7461 <= isched_corrected_7345(8 downto 8);
    -- flow-through slice operator slice_7464_inst
    cu1_to_fu2_7465 <= isched_corrected_7345(7 downto 7);
    -- flow-through slice operator slice_7468_inst
    sc_to_iu2_7469 <= isched_corrected_7345(6 downto 6);
    -- flow-through slice operator slice_7472_inst
    sc_to_fu2_7473 <= isched_corrected_7345(5 downto 5);
    -- flow-through slice operator slice_7476_inst
    sc_to_cu2_7477 <= isched_corrected_7345(4 downto 4);
    -- flow-through slice operator slice_7480_inst
    sc_to_ls_7481 <= isched_corrected_7345(3 downto 3);
    -- flow-through slice operator slice_7484_inst
    ls_to_iu2_7485 <= isched_corrected_7345(2 downto 2);
    -- flow-through slice operator slice_7488_inst
    ls_to_fu2_7489 <= isched_corrected_7345(1 downto 1);
    -- flow-through slice operator slice_7492_inst
    ls_to_cu2_7493 <= isched_corrected_7345(0 downto 0);
    -- flow through binary operator CONCAT_u112_u127_7717_inst
    process(CONCAT_u42_u112_7685_wire, CONCAT_u8_u15_7716_wire) -- 
      variable tmp_var : std_logic_vector(126 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u42_u112_7685_wire, CONCAT_u8_u15_7716_wire, tmp_var);
      to_iunit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u11_u20_7820_inst
    process(CONCAT_u2_u11_7814_wire, CONCAT_u8_u9_7819_wire) -- 
      variable tmp_var : std_logic_vector(19 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u11_7814_wire, CONCAT_u8_u9_7819_wire, tmp_var);
      CONCAT_u11_u20_7820_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u12_u19_7912_inst
    process(CONCAT_u6_u12_7908_wire, CONCAT_u6_u7_7911_wire) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_7908_wire, CONCAT_u6_u7_7911_wire, tmp_var);
      CONCAT_u12_u19_7912_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u42_7669_inst
    process(CONCAT_u6_u13_7661_wire, CONCAT_u2_u29_7668_wire) -- 
      variable tmp_var : std_logic_vector(41 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_7661_wire, CONCAT_u2_u29_7668_wire, tmp_var);
      CONCAT_u13_u42_7669_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u42_7734_inst
    process(CONCAT_u6_u13_7726_wire, CONCAT_u2_u29_7733_wire) -- 
      variable tmp_var : std_logic_vector(41 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_7726_wire, CONCAT_u2_u29_7733_wire, tmp_var);
      CONCAT_u13_u42_7734_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u19_u32_7832_inst
    process(CONCAT_u1_u19_7830_wire, simm_13_7309) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u19_7830_wire, simm_13_7309, tmp_var);
      CONCAT_u19_u32_7832_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u19_u48_7920_inst
    process(CONCAT_u12_u19_7912_wire, CONCAT_u5_u29_7919_wire) -- 
      variable tmp_var : std_logic_vector(47 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u12_u19_7912_wire, CONCAT_u5_u29_7919_wire, tmp_var);
      CONCAT_u19_u48_7920_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u19_7830_inst
    process(mae_trap_7213, mmu_fsr_7281) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(mae_trap_7213, mmu_fsr_7281, tmp_var);
      CONCAT_u1_u19_7830_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7313_inst
    process(mae_trap_7213, cp_disabled_trap_7217) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(mae_trap_7213, cp_disabled_trap_7217, tmp_var);
      CONCAT_u1_u2_7313_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7316_inst
    process(fp_disabled_trap_7221, illegal_instr_trap_7225) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fp_disabled_trap_7221, illegal_instr_trap_7225, tmp_var);
      CONCAT_u1_u2_7316_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7664_inst
    process(stream_head_7337, do_not_bypass_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_7337, do_not_bypass_buffer, tmp_var);
      CONCAT_u1_u2_7664_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7675_inst
    process(reads_iu_rfile_7389, uses_iu_cc_for_branching_7349) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(reads_iu_rfile_7389, uses_iu_cc_for_branching_7349, tmp_var);
      CONCAT_u1_u2_7675_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7679_inst
    process(is_ret_or_retl_7357, uses_iu1_7361) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_ret_or_retl_7357, uses_iu1_7361, tmp_var);
      CONCAT_u1_u2_7679_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7682_inst
    process(uses_iu2_7365, iu1_to_sc_7405) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_iu2_7365, iu1_to_sc_7405, tmp_var);
      CONCAT_u1_u2_7682_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7688_inst
    process(iu1_to_iu2_fast_7397, iu1_to_iu2_7401) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_iu2_fast_7397, iu1_to_iu2_7401, tmp_var);
      CONCAT_u1_u2_7688_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7691_inst
    process(iu_reg_to_ls_7409, iu1_to_ls_trap_7413) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_reg_to_ls_7409, iu1_to_ls_trap_7413, tmp_var);
      CONCAT_u1_u2_7691_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7695_inst
    process(iu1_to_fu2_q_7609, iu1_to_cu2_7421) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_fu2_q_7609, iu1_to_cu2_7421, tmp_var);
      CONCAT_u1_u2_7695_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7700_inst
    process(OR_u1_u1_7698_wire, ls_to_iu2_7485) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(OR_u1_u1_7698_wire, ls_to_iu2_7485, tmp_var);
      CONCAT_u1_u2_7700_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7705_inst
    process(fu1_to_iu2_q_7629, cu1_to_iu2_7461) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fu1_to_iu2_q_7629, cu1_to_iu2_7461, tmp_var);
      CONCAT_u1_u2_7705_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7708_inst
    process(iu2_to_iretire_7593, debug_bp_hit_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu2_to_iretire_7593, debug_bp_hit_buffer, tmp_var);
      CONCAT_u1_u2_7708_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7712_inst
    process(annul_instr_7249, mae_trap_7213) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_instr_7249, mae_trap_7213, tmp_var);
      CONCAT_u1_u2_7712_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7729_inst
    process(stream_head_7337, do_not_bypass_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_7337, do_not_bypass_buffer, tmp_var);
      CONCAT_u1_u2_7729_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7740_inst
    process(imm_bit_7337) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(imm_bit_7337, reads_fu_rfile_q_7597, tmp_var);
      CONCAT_u1_u2_7740_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7769_inst
    process(fu2_to_iretire_q_7653, debug_bp_hit_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(fu2_to_iretire_q_7653, debug_bp_hit_buffer, tmp_var);
      CONCAT_u1_u2_7769_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7773_inst
    process(annul_instr_7249, mae_trap_7213) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_instr_7249, mae_trap_7213, tmp_var);
      CONCAT_u1_u2_7773_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7810_inst
    process(R_ONE_1_7808_wire_constant, do_not_bypass_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_7808_wire_constant, do_not_bypass_buffer, tmp_var);
      CONCAT_u1_u2_7810_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7837_inst
    process(uses_ls_corrected_7504, sc_to_ls_corrected_7795) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_ls_corrected_7504, sc_to_ls_corrected_7795, tmp_var);
      CONCAT_u1_u2_7837_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7840_inst
    process(iu_reg_to_ls_7409, iu1_to_ls_trap_7413) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_reg_to_ls_7409, iu1_to_ls_trap_7413, tmp_var);
      CONCAT_u1_u2_7840_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7850_inst
    process(ls_to_iu2_7485) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_iu2_7485, ls_to_fu2_q_7645, tmp_var);
      CONCAT_u1_u2_7850_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7853_inst
    process(ls_to_cu2_7493, debug_bp_hit_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_cu2_7493, debug_bp_hit_buffer, tmp_var);
      CONCAT_u1_u2_7853_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7857_inst
    process(annul_instr_7249, decode_trap_bit_7337) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_instr_7249, decode_trap_bit_7337, tmp_var);
      CONCAT_u1_u2_7857_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7923_inst
    process(debug_bp_hit_buffer, debug_intr_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(debug_bp_hit_buffer, debug_intr_buffer, tmp_var);
      CONCAT_u1_u2_7923_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7928_inst
    process(is_unconditional_cti_7253, is_call_7257) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_unconditional_cti_7253, is_call_7257, tmp_var);
      CONCAT_u1_u2_7928_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7932_inst
    process(is_bicc_7261, is_fbfcc_7265) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_bicc_7261, is_fbfcc_7265, tmp_var);
      CONCAT_u1_u2_7932_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7941_inst
    process(iu2_to_iretire_7593) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu2_to_iretire_7593, fu2_to_iretire_q_7653, tmp_var);
      CONCAT_u1_u2_7941_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7946_inst
    process(uses_ls_corrected_7504, uses_iu_cc_for_branching_7349) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_ls_corrected_7504, uses_iu_cc_for_branching_7349, tmp_var);
      CONCAT_u1_u2_7946_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7950_inst
    process(uses_fp_cc_for_branching_q_7649, is_ret_or_retl_7357) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(uses_fp_cc_for_branching_q_7649, is_ret_or_retl_7357, tmp_var);
      CONCAT_u1_u2_7950_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7953_inst
    process(iu1_to_sc_7405) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_sc_7405, fu1_to_sc_q_7617, tmp_var);
      CONCAT_u1_u2_7953_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7960_inst
    process(cu1_to_sc_7453, OR_u1_u1_7959_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(cu1_to_sc_7453, OR_u1_u1_7959_wire, tmp_var);
      CONCAT_u1_u2_7960_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7965_inst
    process(R_ZERO_1_7963_wire_constant, sc_to_ls_corrected_7795) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ZERO_1_7963_wire_constant, sc_to_ls_corrected_7795, tmp_var);
      CONCAT_u1_u2_7965_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_7823_inst
    process(stream_head_7337, iclass_7229) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_7337, iclass_7229, tmp_var);
      CONCAT_u1_u4_7823_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_7915_inst
    process(annul_instr_7249, dispatch_traps_7318) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(annul_instr_7249, dispatch_traps_7318, tmp_var);
      CONCAT_u1_u5_7915_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_7935_inst
    process(bicc_fbfcc_annul_flag_7273, bicc_fbfcc_cond_7277) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(bicc_fbfcc_annul_flag_7273, bicc_fbfcc_cond_7277, tmp_var);
      CONCAT_u1_u5_7935_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u20_u81_7834_inst
    process(CONCAT_u11_u20_7820_wire, CONCAT_u29_u61_7833_wire) -- 
      variable tmp_var : std_logic_vector(80 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u11_u20_7820_wire, CONCAT_u29_u61_7833_wire, tmp_var);
      CONCAT_u20_u81_7834_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u22_u24_7918_inst
    process(thread_control_word_7285, debug_bp_reg_id_buffer) -- 
      variable tmp_var : std_logic_vector(23 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_control_word_7285, debug_bp_reg_id_buffer, tmp_var);
      CONCAT_u22_u24_7918_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u25_7826_inst
    process(ispec_to_ls_7803, imm_bit_7337) -- 
      variable tmp_var : std_logic_vector(24 downto 0); -- 
    begin -- 
      ApConcat_proc(ispec_to_ls_7803, imm_bit_7337, tmp_var);
      CONCAT_u24_u25_7826_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u29_u61_7833_inst
    process(CONCAT_u4_u29_7827_wire, CONCAT_u19_u32_7832_wire) -- 
      variable tmp_var : std_logic_vector(60 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u29_7827_wire, CONCAT_u19_u32_7832_wire, tmp_var);
      CONCAT_u29_u61_7833_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u11_7814_inst
    process(CONCAT_u1_u2_7810_wire, CONCAT_u5_u9_7813_wire) -- 
      variable tmp_var : std_logic_vector(10 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7810_wire, CONCAT_u5_u9_7813_wire, tmp_var);
      CONCAT_u2_u11_7814_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u29_7668_inst
    process(CONCAT_u1_u2_7664_wire, CONCAT_u3_u27_7667_wire) -- 
      variable tmp_var : std_logic_vector(28 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7664_wire, CONCAT_u3_u27_7667_wire, tmp_var);
      CONCAT_u2_u29_7668_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u29_7733_inst
    process(CONCAT_u1_u2_7729_wire, CONCAT_u3_u27_7732_wire) -- 
      variable tmp_var : std_logic_vector(28 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7729_wire, CONCAT_u3_u27_7732_wire, tmp_var);
      CONCAT_u2_u29_7733_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u34_7859_inst
    process(CONCAT_u1_u2_7857_wire, pc_7293) -- 
      variable tmp_var : std_logic_vector(33 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7857_wire, pc_7293, tmp_var);
      CONCAT_u2_u34_7859_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_7714_inst
    process(CONCAT_u1_u2_7712_wire, decode_trap_bit_7337) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7712_wire, decode_trap_bit_7337, tmp_var);
      CONCAT_u2_u3_7714_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_7775_inst
    process(CONCAT_u1_u2_7773_wire, decode_trap_bit_7337) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7773_wire, decode_trap_bit_7337, tmp_var);
      CONCAT_u2_u3_7775_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_7846_inst
    process(CONCAT_u1_u2_7844_wire_constant, cu1_to_ls_7457) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7844_wire_constant, cu1_to_ls_7457, tmp_var);
      CONCAT_u2_u3_7846_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_7943_inst
    process(CONCAT_u1_u2_7941_wire, uses_cu2_7385) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7941_wire, uses_cu2_7385, tmp_var);
      CONCAT_u2_u3_7943_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_7962_inst
    process(CONCAT_u1_u2_7960_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7960_wire, sc_to_fu2_q_7641, tmp_var);
      CONCAT_u2_u3_7962_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7317_inst
    process(CONCAT_u1_u2_7313_wire, CONCAT_u1_u2_7316_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7313_wire, CONCAT_u1_u2_7316_wire, tmp_var);
      dispatch_traps_7318 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7683_inst
    process(CONCAT_u1_u2_7679_wire, CONCAT_u1_u2_7682_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7679_wire, CONCAT_u1_u2_7682_wire, tmp_var);
      CONCAT_u2_u4_7683_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7692_inst
    process(CONCAT_u1_u2_7688_wire, CONCAT_u1_u2_7691_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7688_wire, CONCAT_u1_u2_7691_wire, tmp_var);
      CONCAT_u2_u4_7692_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7701_inst
    process(CONCAT_u1_u2_7695_wire, CONCAT_u1_u2_7700_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7695_wire, CONCAT_u1_u2_7700_wire, tmp_var);
      CONCAT_u2_u4_7701_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7709_inst
    process(CONCAT_u1_u2_7705_wire, CONCAT_u1_u2_7708_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7705_wire, CONCAT_u1_u2_7708_wire, tmp_var);
      CONCAT_u2_u4_7709_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7770_inst
    process(CONCAT_u1_u2_7766_wire_constant, CONCAT_u1_u2_7769_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7766_wire_constant, CONCAT_u1_u2_7769_wire, tmp_var);
      CONCAT_u2_u4_7770_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7841_inst
    process(CONCAT_u1_u2_7837_wire, CONCAT_u1_u2_7840_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7837_wire, CONCAT_u1_u2_7840_wire, tmp_var);
      CONCAT_u2_u4_7841_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7854_inst
    process(CONCAT_u1_u2_7850_wire, CONCAT_u1_u2_7853_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7850_wire, CONCAT_u1_u2_7853_wire, tmp_var);
      CONCAT_u2_u4_7854_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7954_inst
    process(CONCAT_u1_u2_7950_wire, CONCAT_u1_u2_7953_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7950_wire, CONCAT_u1_u2_7953_wire, tmp_var);
      CONCAT_u2_u4_7954_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_7925_inst
    process(CONCAT_u1_u2_7923_wire, irl_4_buffer) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7923_wire, irl_4_buffer, tmp_var);
      CONCAT_u2_u6_7925_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u7_7936_inst
    process(CONCAT_u1_u2_7932_wire, CONCAT_u1_u5_7935_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7932_wire, CONCAT_u1_u5_7935_wire, tmp_var);
      CONCAT_u2_u7_7936_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_7817_inst
    process(stream_id_7205, slot_id_7209) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_id_7205, slot_id_7209, tmp_var);
      CONCAT_u2_u8_7817_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u33_7737_inst
    process(instr_7289, S_7337) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(instr_7289, S_7337, tmp_var);
      CONCAT_u32_u33_7737_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7672_inst
    process(instr_7289, pc_7293) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(instr_7289, pc_7293, tmp_var);
      CONCAT_u32_u64_7672_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7969_inst
    process(pc_7293, npc_7297) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(pc_7293, npc_7297, tmp_var);
      CONCAT_u32_u64_7969_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_7972_inst
    process(nnpc_7301, branch_target_npc_7305) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(nnpc_7301, branch_target_npc_7305, tmp_var);
      CONCAT_u32_u64_7972_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u33_u35_7741_inst
    process(CONCAT_u32_u33_7737_wire, CONCAT_u1_u2_7740_wire) -- 
      variable tmp_var : std_logic_vector(34 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u33_7737_wire, CONCAT_u1_u2_7740_wire, tmp_var);
      CONCAT_u33_u35_7741_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u35_u38_7747_inst
    process(CONCAT_u33_u35_7741_wire) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u33_u35_7741_wire, CONCAT_u2_u3_7746_wire_constant, tmp_var);
      CONCAT_u35_u38_7747_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u27_7667_inst
    process(iclass_7229, ispec_7233) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(iclass_7229, ispec_7233, tmp_var);
      CONCAT_u3_u27_7667_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u27_7732_inst
    process(iclass_7229, ispec_7233) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(iclass_7229, ispec_7233, tmp_var);
      CONCAT_u3_u27_7732_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_7947_inst
    process(CONCAT_u2_u3_7943_wire, CONCAT_u1_u2_7946_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_7943_wire, CONCAT_u1_u2_7946_wire, tmp_var);
      CONCAT_u3_u5_7947_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_7966_inst
    process(CONCAT_u2_u3_7962_wire, CONCAT_u1_u2_7965_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_7962_wire, CONCAT_u1_u2_7965_wire, tmp_var);
      CONCAT_u3_u5_7966_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u42_u112_7685_inst
    process(CONCAT_u13_u42_7669_wire, CONCAT_u66_u70_7684_wire) -- 
      variable tmp_var : std_logic_vector(111 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u42_7669_wire, CONCAT_u66_u70_7684_wire, tmp_var);
      CONCAT_u42_u112_7685_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u42_u80_7748_inst
    process(CONCAT_u13_u42_7734_wire, CONCAT_u35_u38_7747_wire) -- 
      variable tmp_var : std_logic_vector(79 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u42_7734_wire, CONCAT_u35_u38_7747_wire, tmp_var);
      CONCAT_u42_u80_7748_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u48_u63_7938_inst
    process(CONCAT_u19_u48_7920_wire, CONCAT_u8_u15_7937_wire) -- 
      variable tmp_var : std_logic_vector(62 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u19_u48_7920_wire, CONCAT_u8_u15_7937_wire, tmp_var);
      CONCAT_u48_u63_7938_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u29_7827_inst
    process(CONCAT_u1_u4_7823_wire, CONCAT_u24_u25_7826_wire) -- 
      variable tmp_var : std_logic_vector(28 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_7823_wire, CONCAT_u24_u25_7826_wire, tmp_var);
      CONCAT_u4_u29_7827_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u38_7860_inst
    process(CONCAT_u2_u4_7854_wire, CONCAT_u2_u34_7859_wire) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_7854_wire, CONCAT_u2_u34_7859_wire, tmp_var);
      CONCAT_u4_u38_7860_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_7657_inst
    process(thread_id_7201, stream_id_7205) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_7201, stream_id_7205, tmp_var);
      CONCAT_u4_u6_7657_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_7722_inst
    process(thread_id_7201, stream_id_7205) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_7201, stream_id_7205, tmp_var);
      CONCAT_u4_u6_7722_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_7906_inst
    process(thread_id_7201, stream_id_7205) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_7201, stream_id_7205, tmp_var);
      CONCAT_u4_u6_7906_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_7715_inst
    process(CONCAT_u2_u4_7709_wire, CONCAT_u2_u3_7714_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_7709_wire, CONCAT_u2_u3_7714_wire, tmp_var);
      CONCAT_u4_u7_7715_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_7776_inst
    process(CONCAT_u2_u4_7770_wire, CONCAT_u2_u3_7775_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_7770_wire, CONCAT_u2_u3_7775_wire, tmp_var);
      CONCAT_u4_u7_7776_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_7847_inst
    process(CONCAT_u2_u4_7841_wire, CONCAT_u2_u3_7846_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_7841_wire, CONCAT_u2_u3_7846_wire, tmp_var);
      CONCAT_u4_u7_7847_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7702_inst
    process(CONCAT_u2_u4_7692_wire, CONCAT_u2_u4_7701_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_7692_wire, CONCAT_u2_u4_7701_wire, tmp_var);
      CONCAT_u4_u8_7702_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u133_7974_inst
    process(CONCAT_u3_u5_7966_wire, CONCAT_u64_u128_7973_wire) -- 
      variable tmp_var : std_logic_vector(132 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_7966_wire, CONCAT_u64_u128_7973_wire, tmp_var);
      CONCAT_u5_u133_7974_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u29_7919_inst
    process(CONCAT_u1_u5_7915_wire, CONCAT_u22_u24_7918_wire) -- 
      variable tmp_var : std_logic_vector(28 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_7915_wire, CONCAT_u22_u24_7918_wire, tmp_var);
      CONCAT_u5_u29_7919_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_7813_inst
    process(rd_7806, thread_id_7201) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_7806, thread_id_7201, tmp_var);
      CONCAT_u5_u9_7813_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u9_7955_inst
    process(CONCAT_u3_u5_7947_wire, CONCAT_u2_u4_7954_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_7947_wire, CONCAT_u2_u4_7954_wire, tmp_var);
      CONCAT_u5_u9_7955_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u63_u205_7976_inst
    process(CONCAT_u48_u63_7938_wire, CONCAT_u9_u142_7975_wire) -- 
      variable tmp_var : std_logic_vector(204 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u48_u63_7938_wire, CONCAT_u9_u142_7975_wire, tmp_var);
      to_stream_corrector_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_7973_inst
    process(CONCAT_u32_u64_7969_wire, CONCAT_u32_u64_7972_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_7969_wire, CONCAT_u32_u64_7972_wire, tmp_var);
      CONCAT_u64_u128_7973_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u66_7676_inst
    process(CONCAT_u32_u64_7672_wire, CONCAT_u1_u2_7675_wire) -- 
      variable tmp_var : std_logic_vector(65 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_7672_wire, CONCAT_u1_u2_7675_wire, tmp_var);
      CONCAT_u64_u66_7676_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u66_u70_7684_inst
    process(CONCAT_u64_u66_7676_wire, CONCAT_u2_u4_7683_wire) -- 
      variable tmp_var : std_logic_vector(69 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u64_u66_7676_wire, CONCAT_u2_u4_7683_wire, tmp_var);
      CONCAT_u66_u70_7684_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_7908_inst
    process(CONCAT_u4_u6_7906_wire, slot_id_7209) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_7906_wire, slot_id_7209, tmp_var);
      CONCAT_u6_u12_7908_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_7661_inst
    process(CONCAT_u4_u6_7657_wire, CONCAT_u6_u7_7660_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_7657_wire, CONCAT_u6_u7_7660_wire, tmp_var);
      CONCAT_u6_u13_7661_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_7726_inst
    process(CONCAT_u4_u6_7722_wire, CONCAT_u6_u7_7725_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_7722_wire, CONCAT_u6_u7_7725_wire, tmp_var);
      CONCAT_u6_u13_7726_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_7660_inst
    process(slot_id_7209, thread_head_7337) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_7209, thread_head_7337, tmp_var);
      CONCAT_u6_u7_7660_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_7725_inst
    process(slot_id_7209, thread_head_7337) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_7209, thread_head_7337, tmp_var);
      CONCAT_u6_u7_7725_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_7911_inst
    process(sc_info_7241, fetch_error_7269) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(sc_info_7241, fetch_error_7269, tmp_var);
      CONCAT_u6_u7_7911_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u8_7929_inst
    process(CONCAT_u2_u6_7925_wire, CONCAT_u1_u2_7928_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u6_7925_wire, CONCAT_u1_u2_7928_wire, tmp_var);
      CONCAT_u6_u8_7929_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u45_7861_inst
    process(CONCAT_u4_u7_7847_wire, CONCAT_u4_u38_7860_wire) -- 
      variable tmp_var : std_logic_vector(44 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u7_7847_wire, CONCAT_u4_u38_7860_wire, tmp_var);
      CONCAT_u7_u45_7861_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u80_u95_7778_inst
    process(CONCAT_u42_u80_7748_wire, CONCAT_u8_u15_7777_wire) -- 
      variable tmp_var : std_logic_vector(94 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u42_u80_7748_wire, CONCAT_u8_u15_7777_wire, tmp_var);
      to_fpunit_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u81_u126_7862_inst
    process(CONCAT_u20_u81_7834_wire, CONCAT_u7_u45_7861_wire) -- 
      variable tmp_var : std_logic_vector(125 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u20_u81_7834_wire, CONCAT_u7_u45_7861_wire, tmp_var);
      to_loadstore_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u15_7716_inst
    process(CONCAT_u4_u8_7702_wire, CONCAT_u4_u7_7715_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_7702_wire, CONCAT_u4_u7_7715_wire, tmp_var);
      CONCAT_u8_u15_7716_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u15_7777_inst
    process(CONCAT_u4_u8_7763_wire_constant, CONCAT_u4_u7_7776_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_7763_wire_constant, CONCAT_u4_u7_7776_wire, tmp_var);
      CONCAT_u8_u15_7777_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u15_7937_inst
    process(CONCAT_u6_u8_7929_wire, CONCAT_u2_u7_7936_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u8_7929_wire, CONCAT_u2_u7_7936_wire, tmp_var);
      CONCAT_u8_u15_7937_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u9_7819_inst
    process(CONCAT_u2_u8_7817_wire, thread_head_7337) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_7817_wire, thread_head_7337, tmp_var);
      CONCAT_u8_u9_7819_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u9_u142_7975_inst
    process(CONCAT_u5_u9_7955_wire, CONCAT_u5_u133_7974_wire) -- 
      variable tmp_var : std_logic_vector(141 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u9_7955_wire, CONCAT_u5_u133_7974_wire, tmp_var);
      CONCAT_u9_u142_7975_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_7799_inst
    process(iclass_7229) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iclass_7229, R_DATA_TRANSFER_INSTR_7798_wire_constant, tmp_var);
      EQ_u3_u1_7799_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u18_u1_7500_inst
    process(mmu_fsr_7281) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(mmu_fsr_7281, konst_7499_wire_constant, tmp_var);
      NEQ_u18_u1_7500_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u18_u1_7783_inst
    process(mmu_fsr_7281) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(mmu_fsr_7281, konst_7782_wire_constant, tmp_var);
      mmu_fsr_modified_7784 <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_7573_inst
    process(irl_4_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(irl_4_buffer, konst_7572_wire_constant, tmp_var);
      NEQ_u4_u1_7573_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u1_u1_7341_inst
    OR_u1_u1_7341_wire <= (annul_instr_7249 or decode_trap_bit_7337);
    -- flow through binary operator OR_u1_u1_7497_inst
    OR_u1_u1_7497_wire <= (uses_ls_7369 or mae_trap_7213);
    -- flow through binary operator OR_u1_u1_7502_inst
    OR_u1_u1_7502_wire <= (NEQ_u18_u1_7500_wire or thread_head_7337);
    -- flow through binary operator OR_u1_u1_7503_inst
    uses_ls_corrected_7504 <= (OR_u1_u1_7497_wire or OR_u1_u1_7502_wire);
    -- flow through binary operator OR_u1_u1_7568_inst
    OR_u1_u1_7568_wire <= (thread_head_7337 or stream_head_7337);
    -- flow through binary operator OR_u1_u1_7570_inst
    OR_u1_u1_7570_wire <= (OR_u1_u1_7568_wire or debug_mode_7337);
    -- flow through binary operator OR_u1_u1_7575_inst
    OR_u1_u1_7575_wire <= (NEQ_u4_u1_7573_wire or last_issued_was_cti_7245);
    -- flow through binary operator OR_u1_u1_7576_inst
    sc_to_all_7577 <= (OR_u1_u1_7570_wire or OR_u1_u1_7575_wire);
    -- flow through binary operator OR_u1_u1_7590_inst
    OR_u1_u1_7590_wire <= (uses_iu2_7365 or iu1_to_iu2_7401);
    -- flow through binary operator OR_u1_u1_7592_inst
    iu2_to_iretire_7593 <= (OR_u1_u1_7590_wire or iu1_to_iu2_fast_7397);
    -- flow through binary operator OR_u1_u1_7698_inst
    OR_u1_u1_7698_wire <= (sc_to_iu2_7469 or sc_to_all_7577);
    -- flow through binary operator OR_u1_u1_7790_inst
    OR_u1_u1_7790_wire <= (sc_to_ls_7481 or sc_to_all_7577);
    -- flow through binary operator OR_u1_u1_7793_inst
    OR_u1_u1_7793_wire <= (is_bicc_7261 or is_fbfcc_7265);
    -- flow through binary operator OR_u1_u1_7794_inst
    sc_to_ls_corrected_7795 <= (OR_u1_u1_7790_wire or OR_u1_u1_7793_wire);
    -- flow through binary operator OR_u1_u1_7959_inst
    OR_u1_u1_7959_wire <= (sc_to_iu2_7469 or sc_to_all_7577);
    volatile_operator_decode_thread_control_word_6183: decode_thread_control_word_Volatile port map(ctrl_word => thread_control_word_7285, sc_instr_class => jmpl_rett_icache_7337, debug_mode => debug_mode_7337, logger_active => logger_active_7337, proc_ilvl => proc_ilvl_7337, enable_traps => enable_traps_7337, single_step_mode => single_step_mode_7337, ignore_break_points => ignore_break_points_7337, S => S_7337, imm_bit => imm_bit_7337, is_write_psr => is_write_psr_7337, is_mmu_ctrl_write => is_mmu_ctrl_write_7337, is_flush => is_flush_7337, is_cti => is_cti_7337, mis_predict => icache_hit_7337, trap_bit => decode_trap_bit_7337, stream_head => stream_head_7337, thread_head => thread_head_7337); 
    volatile_operator_get_destination_register_6290: get_destination_register_Volatile port map(instr => instr_7289, rd => rd_7806); 
    -- 
  end Block; -- data_path
  -- 
end idispatch_logic_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity idispatch_to_fpunit_logic_Volatile is -- 
  port ( -- 
    instr_descr : in  std_logic_vector(94 downto 0);
    send_to_rfile : out  std_logic_vector(0 downto 0);
    to_rfile : out  std_logic_vector(46 downto 0);
    to_exec : out  std_logic_vector(67 downto 0);
    to_writeback : out  std_logic_vector(42 downto 0)-- 
  );
  -- 
end entity idispatch_to_fpunit_logic_Volatile;
architecture idispatch_to_fpunit_logic_Volatile_arch of idispatch_to_fpunit_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(95-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_descr_buffer :  std_logic_vector(94 downto 0);
  -- output port buffer signals
  signal send_to_rfile_buffer :  std_logic_vector(0 downto 0);
  signal to_rfile_buffer :  std_logic_vector(46 downto 0);
  signal to_exec_buffer :  std_logic_vector(67 downto 0);
  signal to_writeback_buffer :  std_logic_vector(42 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_descr_buffer <= instr_descr;
  -- output handling  -------------------------------------------------------
  send_to_rfile <= send_to_rfile_buffer;
  send_to_rfile_buffer <= "0";
  to_rfile <= to_rfile_buffer;
  to_rfile_buffer <= "00000000000000000000000000000000000000000000000";
  to_exec <= to_exec_buffer;
  to_exec_buffer <= "00000000000000000000000000000000000000000000000000000000000000000000";
  to_writeback <= to_writeback_buffer;
  to_writeback_buffer <= "0000000000000000000000000000000000000000000";
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- 
  end Block; -- data_path
  -- 
end idispatch_to_fpunit_logic_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity idispatch_to_iunit_logic_Volatile is -- 
  port ( -- 
    instr_descr : in  std_logic_vector(126 downto 0);
    send_to_rfile : out  std_logic_vector(0 downto 0);
    to_rfile : out  std_logic_vector(58 downto 0);
    to_exec : out  std_logic_vector(149 downto 0);
    to_writeback : out  std_logic_vector(83 downto 0)-- 
  );
  -- 
end entity idispatch_to_iunit_logic_Volatile;
architecture idispatch_to_iunit_logic_Volatile_arch of idispatch_to_iunit_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(127-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal instr_descr_buffer :  std_logic_vector(126 downto 0);
  -- output port buffer signals
  signal send_to_rfile_buffer :  std_logic_vector(0 downto 0);
  signal to_rfile_buffer :  std_logic_vector(58 downto 0);
  signal to_exec_buffer :  std_logic_vector(149 downto 0);
  signal to_writeback_buffer :  std_logic_vector(83 downto 0);
  -- volatile/operator module components. 
  component decode_instruction_for_iunit_Volatile is -- 
    port ( -- 
      iclass : in  std_logic_vector(2 downto 0);
      ispec : in  std_logic_vector(23 downto 0);
      instr : in  std_logic_vector(31 downto 0);
      op_fetch_control_word : out  std_logic_vector(39 downto 0);
      alu_exec_control_word : out  std_logic_vector(54 downto 0);
      iunit_writeback_control_word : out  std_logic_vector(24 downto 0);
      imm_flag : out  std_logic_vector(0 downto 0);
      imm_operand : out  std_logic_vector(31 downto 0);
      priv_instr_trap_if_not_supervisor : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component extract_save_restore_from_exec_control_word_Volatile is -- 
    port ( -- 
      cw : in  std_logic_vector(54 downto 0);
      save : out  std_logic_vector(0 downto 0);
      restore : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component decode_op_fetch_control_word_Volatile is -- 
    port ( -- 
      cw : in  std_logic_vector(39 downto 0);
      read_rs1 : out  std_logic_vector(0 downto 0);
      rs1 : out  std_logic_vector(4 downto 0);
      read_rs2 : out  std_logic_vector(0 downto 0);
      rs2 : out  std_logic_vector(4 downto 0);
      read_rd : out  std_logic_vector(0 downto 0);
      write_rd : out  std_logic_vector(0 downto 0);
      double_word : out  std_logic_vector(0 downto 0);
      rd : out  std_logic_vector(4 downto 0);
      fetch_psr : out  std_logic_vector(2 downto 0);
      update_psr : out  std_logic_vector(2 downto 0);
      fetch_wim : out  std_logic_vector(0 downto 0);
      update_wim : out  std_logic_vector(0 downto 0);
      fetch_tbr : out  std_logic_vector(0 downto 0);
      update_tbr : out  std_logic_vector(0 downto 0);
      fetch_y : out  std_logic_vector(0 downto 0);
      update_y : out  std_logic_vector(0 downto 0);
      fetch_asr : out  std_logic_vector(0 downto 0);
      update_asr : out  std_logic_vector(0 downto 0);
      save_restore_lock : out  std_logic_vector(0 downto 0);
      asr_id : out  std_logic_vector(4 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  instr_descr_buffer <= instr_descr;
  -- output handling  -------------------------------------------------------
  send_to_rfile <= send_to_rfile_buffer;
  to_rfile <= to_rfile_buffer;
  to_exec <= to_exec_buffer;
  to_writeback <= to_writeback_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_8223_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8230_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8332_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u10_u13_8293_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u13_u16_8210_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u14_u43_8423_wire : std_logic_vector(42 downto 0);
    signal CONCAT_u15_u28_8294_wire : std_logic_vector(27 downto 0);
    signal CONCAT_u16_u31_8226_wire : std_logic_vector(30 downto 0);
    signal CONCAT_u1_u26_8416_wire : std_logic_vector(25 downto 0);
    signal CONCAT_u1_u2_8207_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8213_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8231_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8289_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8340_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8351_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8361_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8366_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8370_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8421_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8426_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8431_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8435_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u33_8440_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u1_u4_8282_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u5_8407_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u6_8216_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u1_u6_8220_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u1_u6_8234_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u26_u27_8418_wire : std_logic_vector(26 downto 0);
    signal CONCAT_u27_u29_8422_wire : std_logic_vector(28 downto 0);
    signal CONCAT_u2_u3_8209_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8292_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8353_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8363_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8372_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8428_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u3_8437_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u2_u6_8342_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u8_8217_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u2_u8_8235_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u2_u8_8345_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u64_8375_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u3_u36_8441_wire : std_logic_vector(35 downto 0);
    signal CONCAT_u3_u5_8367_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u5_8432_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u3_u67_8376_wire : std_logic_vector(66 downto 0);
    signal CONCAT_u3_u6_8238_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u3_u9_8357_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u4_u10_8286_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u4_u6_8200_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u41_8442_wire : std_logic_vector(40 downto 0);
    signal CONCAT_u5_u6_8285_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u6_8356_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u72_8377_wire : std_logic_vector(71 downto 0);
    signal CONCAT_u5_u7_8409_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u69_u78_8358_wire : std_logic_vector(77 downto 0);
    signal CONCAT_u6_u13_8204_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u69_8348_wire : std_logic_vector(68 downto 0);
    signal CONCAT_u6_u7_8203_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_8224_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_8246_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u6_u7_8412_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u7_u14_8413_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u8_u15_8225_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u8_u15_8247_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u8_u63_8347_wire : std_logic_vector(62 downto 0);
    signal MUX_8260_wire : std_logic_vector(2 downto 0);
    signal MUX_8266_wire : std_logic_vector(2 downto 0);
    signal MUX_8273_wire : std_logic_vector(2 downto 0);
    signal MUX_8279_wire : std_logic_vector(2 downto 0);
    signal NOT_u1_u1_8331_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8334_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8241_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8244_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8245_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8250_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8253_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8254_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8257_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8263_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8270_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8276_wire : std_logic_vector(0 downto 0);
    signal OR_u3_u3_8267_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_8280_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_8281_wire : std_logic_vector(2 downto 0);
    signal R_ACCESS_ASR_8277_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_8264_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_8258_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_8271_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_1_8405_wire_constant : std_logic_vector(0 downto 0);
    signal annul_instr_8135 : std_logic_vector(0 downto 0);
    signal asr_id_8189 : std_logic_vector(4 downto 0);
    signal clear_locks_in_rfile_8403 : std_logic_vector(0 downto 0);
    signal cu1_to_iu2_8123 : std_logic_vector(0 downto 0);
    signal debug_bp_hit_8131 : std_logic_vector(0 downto 0);
    signal decode_trap_bit_8143 : std_logic_vector(0 downto 0);
    signal do_not_bypass_8043 : std_logic_vector(0 downto 0);
    signal double_word_8189 : std_logic_vector(0 downto 0);
    signal exec_control_word_8156 : std_logic_vector(54 downto 0);
    signal fetch_asr_8189 : std_logic_vector(0 downto 0);
    signal fetch_psr_8189 : std_logic_vector(2 downto 0);
    signal fetch_tbr_8189 : std_logic_vector(0 downto 0);
    signal fetch_wim_8189 : std_logic_vector(0 downto 0);
    signal fetch_y_8189 : std_logic_vector(0 downto 0);
    signal fu1_to_iu2_8119 : std_logic_vector(0 downto 0);
    signal iclass_8047 : std_logic_vector(2 downto 0);
    signal imm_flag_8156 : std_logic_vector(0 downto 0);
    signal imm_operand_8156 : std_logic_vector(31 downto 0);
    signal instr_8055 : std_logic_vector(31 downto 0);
    signal is_restore_8193 : std_logic_vector(0 downto 0);
    signal is_ret_or_retl_8071 : std_logic_vector(0 downto 0);
    signal is_save_8193 : std_logic_vector(0 downto 0);
    signal ispec_8051 : std_logic_vector(23 downto 0);
    signal iu1_to_cu2_8107 : std_logic_vector(0 downto 0);
    signal iu1_to_fu2_8103 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_8091 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_fast_8087 : std_logic_vector(0 downto 0);
    signal iu1_to_ls_trap_8099 : std_logic_vector(0 downto 0);
    signal iu1_to_sc_8083 : std_logic_vector(0 downto 0);
    signal iu2_to_iretire_8127 : std_logic_vector(0 downto 0);
    signal iu_reg_to_ls_8095 : std_logic_vector(0 downto 0);
    signal konst_8259_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8265_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8272_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8278_wire_constant : std_logic_vector(2 downto 0);
    signal ls_to_iu2_8115 : std_logic_vector(0 downto 0);
    signal mae_trap_8139 : std_logic_vector(0 downto 0);
    signal op_fetch_control_word_8156 : std_logic_vector(39 downto 0);
    signal pc_8059 : std_logic_vector(31 downto 0);
    signal rd_8189 : std_logic_vector(4 downto 0);
    signal read_rd_8189 : std_logic_vector(0 downto 0);
    signal read_rs1_8189 : std_logic_vector(0 downto 0);
    signal read_rs2_8189 : std_logic_vector(0 downto 0);
    signal reads_iu_rfile_8063 : std_logic_vector(0 downto 0);
    signal rs1_8189 : std_logic_vector(4 downto 0);
    signal rs2_8189 : std_logic_vector(4 downto 0);
    signal sc_to_iu2_8111 : std_logic_vector(0 downto 0);
    signal skip_iu_8146 : std_logic_vector(0 downto 0);
    signal slot_id_8031 : std_logic_vector(5 downto 0);
    signal stream_head_8039 : std_logic_vector(0 downto 0);
    signal stream_id_8027 : std_logic_vector(1 downto 0);
    signal thread_head_8035 : std_logic_vector(0 downto 0);
    signal thread_id_8023 : std_logic_vector(3 downto 0);
    signal trap_if_not_supervisor_8156 : std_logic_vector(0 downto 0);
    signal type_cast_8291_wire_constant : std_logic_vector(0 downto 0);
    signal update_asr_8189 : std_logic_vector(0 downto 0);
    signal update_psr_8189 : std_logic_vector(2 downto 0);
    signal update_tbr_8189 : std_logic_vector(0 downto 0);
    signal update_wim_8189 : std_logic_vector(0 downto 0);
    signal update_y_8189 : std_logic_vector(0 downto 0);
    signal use_rfile_result_in_exec_8336 : std_logic_vector(0 downto 0);
    signal uses_iu1_8075 : std_logic_vector(0 downto 0);
    signal uses_iu2_8079 : std_logic_vector(0 downto 0);
    signal uses_iu_cc_for_branching_8067 : std_logic_vector(0 downto 0);
    signal window_modify_lock_8189 : std_logic_vector(0 downto 0);
    signal write_rd_8189 : std_logic_vector(0 downto 0);
    signal writeback_control_word_8156 : std_logic_vector(24 downto 0);
    -- 
  begin -- 
    R_ACCESS_ASR_8277_wire_constant <= "101";
    R_ACCESS_TBR_8264_wire_constant <= "010";
    R_ACCESS_WIM_8258_wire_constant <= "011";
    R_ACCESS_Y_8271_wire_constant <= "100";
    R_ONE_1_8405_wire_constant <= "1";
    konst_8259_wire_constant <= "000";
    konst_8265_wire_constant <= "000";
    konst_8272_wire_constant <= "000";
    konst_8278_wire_constant <= "000";
    type_cast_8291_wire_constant <= "1";
    -- flow-through select operator MUX_8260_inst
    MUX_8260_wire <= R_ACCESS_WIM_8258_wire_constant when (OR_u1_u1_8257_wire(0) /=  '0') else konst_8259_wire_constant;
    -- flow-through select operator MUX_8266_inst
    MUX_8266_wire <= R_ACCESS_TBR_8264_wire_constant when (OR_u1_u1_8263_wire(0) /=  '0') else konst_8265_wire_constant;
    -- flow-through select operator MUX_8273_inst
    MUX_8273_wire <= R_ACCESS_Y_8271_wire_constant when (OR_u1_u1_8270_wire(0) /=  '0') else konst_8272_wire_constant;
    -- flow-through select operator MUX_8279_inst
    MUX_8279_wire <= R_ACCESS_ASR_8277_wire_constant when (OR_u1_u1_8276_wire(0) /=  '0') else konst_8278_wire_constant;
    -- flow-through slice operator slice_8022_inst
    thread_id_8023 <= instr_descr_buffer(126 downto 123);
    -- flow-through slice operator slice_8026_inst
    stream_id_8027 <= instr_descr_buffer(122 downto 121);
    -- flow-through slice operator slice_8030_inst
    slot_id_8031 <= instr_descr_buffer(120 downto 115);
    -- flow-through slice operator slice_8034_inst
    thread_head_8035 <= instr_descr_buffer(114 downto 114);
    -- flow-through slice operator slice_8038_inst
    stream_head_8039 <= instr_descr_buffer(113 downto 113);
    -- flow-through slice operator slice_8042_inst
    do_not_bypass_8043 <= instr_descr_buffer(112 downto 112);
    -- flow-through slice operator slice_8046_inst
    iclass_8047 <= instr_descr_buffer(111 downto 109);
    -- flow-through slice operator slice_8050_inst
    ispec_8051 <= instr_descr_buffer(108 downto 85);
    -- flow-through slice operator slice_8054_inst
    instr_8055 <= instr_descr_buffer(84 downto 53);
    -- flow-through slice operator slice_8058_inst
    pc_8059 <= instr_descr_buffer(52 downto 21);
    -- flow-through slice operator slice_8062_inst
    reads_iu_rfile_8063 <= instr_descr_buffer(20 downto 20);
    -- flow-through slice operator slice_8066_inst
    uses_iu_cc_for_branching_8067 <= instr_descr_buffer(19 downto 19);
    -- flow-through slice operator slice_8070_inst
    is_ret_or_retl_8071 <= instr_descr_buffer(18 downto 18);
    -- flow-through slice operator slice_8074_inst
    uses_iu1_8075 <= instr_descr_buffer(17 downto 17);
    -- flow-through slice operator slice_8078_inst
    uses_iu2_8079 <= instr_descr_buffer(16 downto 16);
    -- flow-through slice operator slice_8082_inst
    iu1_to_sc_8083 <= instr_descr_buffer(15 downto 15);
    -- flow-through slice operator slice_8086_inst
    iu1_to_iu2_fast_8087 <= instr_descr_buffer(14 downto 14);
    -- flow-through slice operator slice_8090_inst
    iu1_to_iu2_8091 <= instr_descr_buffer(13 downto 13);
    -- flow-through slice operator slice_8094_inst
    iu_reg_to_ls_8095 <= instr_descr_buffer(12 downto 12);
    -- flow-through slice operator slice_8098_inst
    iu1_to_ls_trap_8099 <= instr_descr_buffer(11 downto 11);
    -- flow-through slice operator slice_8102_inst
    iu1_to_fu2_8103 <= instr_descr_buffer(10 downto 10);
    -- flow-through slice operator slice_8106_inst
    iu1_to_cu2_8107 <= instr_descr_buffer(9 downto 9);
    -- flow-through slice operator slice_8110_inst
    sc_to_iu2_8111 <= instr_descr_buffer(8 downto 8);
    -- flow-through slice operator slice_8114_inst
    ls_to_iu2_8115 <= instr_descr_buffer(7 downto 7);
    -- flow-through slice operator slice_8118_inst
    fu1_to_iu2_8119 <= instr_descr_buffer(6 downto 6);
    -- flow-through slice operator slice_8122_inst
    cu1_to_iu2_8123 <= instr_descr_buffer(5 downto 5);
    -- flow-through slice operator slice_8126_inst
    iu2_to_iretire_8127 <= instr_descr_buffer(4 downto 4);
    -- flow-through slice operator slice_8130_inst
    debug_bp_hit_8131 <= instr_descr_buffer(3 downto 3);
    -- flow-through slice operator slice_8134_inst
    annul_instr_8135 <= instr_descr_buffer(2 downto 2);
    -- flow-through slice operator slice_8138_inst
    mae_trap_8139 <= instr_descr_buffer(1 downto 1);
    -- flow-through slice operator slice_8142_inst
    decode_trap_bit_8143 <= instr_descr_buffer(0 downto 0);
    -- interlock W_send_to_rfile_8194_inst
    process(reads_iu_rfile_8063) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := reads_iu_rfile_8063(0 downto 0);
      send_to_rfile_buffer <= tmp_var; -- 
    end process;
    -- interlock W_skip_iu_8144_inst
    process(annul_instr_8135) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := annul_instr_8135(0 downto 0);
      skip_iu_8146 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_8223_inst
    AND_u1_u1_8223_wire <= (read_rd_8189 and double_word_8189);
    -- flow through binary operator AND_u1_u1_8230_inst
    AND_u1_u1_8230_wire <= (write_rd_8189 and double_word_8189);
    -- flow through binary operator AND_u1_u1_8332_inst
    AND_u1_u1_8332_wire <= (reads_iu_rfile_8063 and NOT_u1_u1_8331_wire);
    -- flow through binary operator AND_u1_u1_8335_inst
    use_rfile_result_in_exec_8336 <= (AND_u1_u1_8332_wire and NOT_u1_u1_8334_wire);
    -- flow through binary operator CONCAT_u10_u13_8293_inst
    process(CONCAT_u4_u10_8286_wire, CONCAT_u2_u3_8292_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u10_8286_wire, CONCAT_u2_u3_8292_wire, tmp_var);
      CONCAT_u10_u13_8293_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u16_8210_inst
    process(CONCAT_u6_u13_8204_wire, CONCAT_u2_u3_8209_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u13_8204_wire, CONCAT_u2_u3_8209_wire, tmp_var);
      CONCAT_u13_u16_8210_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u43_8423_inst
    process(CONCAT_u7_u14_8413_wire, CONCAT_u27_u29_8422_wire) -- 
      variable tmp_var : std_logic_vector(42 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u14_8413_wire, CONCAT_u27_u29_8422_wire, tmp_var);
      CONCAT_u14_u43_8423_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u28_8294_inst
    process(CONCAT_u8_u15_8247_wire, CONCAT_u10_u13_8293_wire) -- 
      variable tmp_var : std_logic_vector(27 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u15_8247_wire, CONCAT_u10_u13_8293_wire, tmp_var);
      CONCAT_u15_u28_8294_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u31_8226_inst
    process(CONCAT_u13_u16_8210_wire, CONCAT_u8_u15_8225_wire) -- 
      variable tmp_var : std_logic_vector(30 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u13_u16_8210_wire, CONCAT_u8_u15_8225_wire, tmp_var);
      CONCAT_u16_u31_8226_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u26_8416_inst
    process(stream_head_8039, writeback_control_word_8156) -- 
      variable tmp_var : std_logic_vector(25 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_8039, writeback_control_word_8156, tmp_var);
      CONCAT_u1_u26_8416_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8207_inst
    process(stream_head_8039, iu_reg_to_ls_8095) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_head_8039, iu_reg_to_ls_8095, tmp_var);
      CONCAT_u1_u2_8207_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8213_inst
    process(is_ret_or_retl_8071, window_modify_lock_8189) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_ret_or_retl_8071, window_modify_lock_8189, tmp_var);
      CONCAT_u1_u2_8213_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8231_inst
    process(read_rd_8189, AND_u1_u1_8230_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(read_rd_8189, AND_u1_u1_8230_wire, tmp_var);
      CONCAT_u1_u2_8231_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8289_inst
    process(is_restore_8193, skip_iu_8146) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(is_restore_8193, skip_iu_8146, tmp_var);
      CONCAT_u1_u2_8289_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8340_inst
    process(thread_head_8035, stream_head_8039) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_head_8035, stream_head_8039, tmp_var);
      CONCAT_u1_u2_8340_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8351_inst
    process(do_not_bypass_8043, imm_flag_8156) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(do_not_bypass_8043, imm_flag_8156, tmp_var);
      CONCAT_u1_u2_8351_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8361_inst
    process(iu1_to_iu2_fast_8087, iu1_to_iu2_8091) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_iu2_fast_8087, iu1_to_iu2_8091, tmp_var);
      CONCAT_u1_u2_8361_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8366_inst
    process(iu_reg_to_ls_8095, iu1_to_ls_trap_8099) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu_reg_to_ls_8095, iu1_to_ls_trap_8099, tmp_var);
      CONCAT_u1_u2_8366_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8370_inst
    process(iu1_to_fu2_8103, iu1_to_cu2_8107) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_fu2_8103, iu1_to_cu2_8107, tmp_var);
      CONCAT_u1_u2_8370_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8421_inst
    process(decode_trap_bit_8143, debug_bp_hit_8131) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(decode_trap_bit_8143, debug_bp_hit_8131, tmp_var);
      CONCAT_u1_u2_8421_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8426_inst
    process(clear_locks_in_rfile_8403, iu2_to_iretire_8127) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(clear_locks_in_rfile_8403, iu2_to_iretire_8127, tmp_var);
      CONCAT_u1_u2_8426_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8431_inst
    process(iu1_to_iu2_8091, sc_to_iu2_8111) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(iu1_to_iu2_8091, sc_to_iu2_8111, tmp_var);
      CONCAT_u1_u2_8431_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8435_inst
    process(ls_to_iu2_8115, fu1_to_iu2_8119) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(ls_to_iu2_8115, fu1_to_iu2_8119, tmp_var);
      CONCAT_u1_u2_8435_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u33_8440_inst
    process(skip_iu_8146, pc_8059) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(skip_iu_8146, pc_8059, tmp_var);
      CONCAT_u1_u33_8440_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_8282_inst
    process(OR_u1_u1_8254_wire, OR_u3_u3_8281_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(OR_u1_u1_8254_wire, OR_u3_u3_8281_wire, tmp_var);
      CONCAT_u1_u4_8282_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_8407_inst
    process(R_ONE_1_8405_wire_constant, thread_id_8023) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_8405_wire_constant, thread_id_8023, tmp_var);
      CONCAT_u1_u5_8407_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_8216_inst
    process(read_rs1_8189, rs1_8189) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(read_rs1_8189, rs1_8189, tmp_var);
      CONCAT_u1_u6_8216_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_8220_inst
    process(read_rs2_8189, rs2_8189) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(read_rs2_8189, rs2_8189, tmp_var);
      CONCAT_u1_u6_8220_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_8234_inst
    process(write_rd_8189, rd_8189) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_8189, rd_8189, tmp_var);
      CONCAT_u1_u6_8234_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u26_u27_8418_inst
    process(CONCAT_u1_u26_8416_wire, mae_trap_8139) -- 
      variable tmp_var : std_logic_vector(26 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u26_8416_wire, mae_trap_8139, tmp_var);
      CONCAT_u26_u27_8418_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u27_u29_8422_inst
    process(CONCAT_u26_u27_8418_wire, CONCAT_u1_u2_8421_wire) -- 
      variable tmp_var : std_logic_vector(28 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u26_u27_8418_wire, CONCAT_u1_u2_8421_wire, tmp_var);
      CONCAT_u27_u29_8422_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8209_inst
    process(CONCAT_u1_u2_8207_wire, uses_iu_cc_for_branching_8067) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8207_wire, uses_iu_cc_for_branching_8067, tmp_var);
      CONCAT_u2_u3_8209_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8292_inst
    process(CONCAT_u1_u2_8289_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8289_wire, type_cast_8291_wire_constant, tmp_var);
      CONCAT_u2_u3_8292_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8353_inst
    process(CONCAT_u1_u2_8351_wire, trap_if_not_supervisor_8156) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8351_wire, trap_if_not_supervisor_8156, tmp_var);
      CONCAT_u2_u3_8353_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8363_inst
    process(CONCAT_u1_u2_8361_wire, iu1_to_sc_8083) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8361_wire, iu1_to_sc_8083, tmp_var);
      CONCAT_u2_u3_8363_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8372_inst
    process(CONCAT_u1_u2_8370_wire, skip_iu_8146) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8370_wire, skip_iu_8146, tmp_var);
      CONCAT_u2_u3_8372_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8428_inst
    process(CONCAT_u1_u2_8426_wire, iu1_to_iu2_fast_8087) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8426_wire, iu1_to_iu2_fast_8087, tmp_var);
      CONCAT_u2_u3_8428_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8437_inst
    process(CONCAT_u1_u2_8435_wire, cu1_to_iu2_8123) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8435_wire, cu1_to_iu2_8123, tmp_var);
      CONCAT_u2_u3_8437_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_8342_inst
    process(CONCAT_u1_u2_8340_wire, thread_id_8023) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8340_wire, thread_id_8023, tmp_var);
      CONCAT_u2_u6_8342_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8217_inst
    process(CONCAT_u1_u2_8213_wire, CONCAT_u1_u6_8216_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8213_wire, CONCAT_u1_u6_8216_wire, tmp_var);
      CONCAT_u2_u8_8217_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8235_inst
    process(CONCAT_u1_u2_8231_wire, CONCAT_u1_u6_8234_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8231_wire, CONCAT_u1_u6_8234_wire, tmp_var);
      CONCAT_u2_u8_8235_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_8345_inst
    process(stream_id_8027, slot_id_8031) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_id_8027, slot_id_8031, tmp_var);
      CONCAT_u2_u8_8345_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u31_u59_8295_inst
    process(CONCAT_u16_u31_8226_wire, CONCAT_u15_u28_8294_wire) -- 
      variable tmp_var : std_logic_vector(58 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u31_8226_wire, CONCAT_u15_u28_8294_wire, tmp_var);
      to_rfile_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_8375_inst
    process(imm_operand_8156, pc_8059) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(imm_operand_8156, pc_8059, tmp_var);
      CONCAT_u32_u64_8375_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u36_8441_inst
    process(CONCAT_u2_u3_8437_wire, CONCAT_u1_u33_8440_wire) -- 
      variable tmp_var : std_logic_vector(35 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8437_wire, CONCAT_u1_u33_8440_wire, tmp_var);
      CONCAT_u3_u36_8441_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_8367_inst
    process(CONCAT_u2_u3_8363_wire, CONCAT_u1_u2_8366_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8363_wire, CONCAT_u1_u2_8366_wire, tmp_var);
      CONCAT_u3_u5_8367_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u5_8432_inst
    process(CONCAT_u2_u3_8428_wire, CONCAT_u1_u2_8431_wire) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8428_wire, CONCAT_u1_u2_8431_wire, tmp_var);
      CONCAT_u3_u5_8432_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u67_8376_inst
    process(CONCAT_u2_u3_8372_wire, CONCAT_u32_u64_8375_wire) -- 
      variable tmp_var : std_logic_vector(66 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8372_wire, CONCAT_u32_u64_8375_wire, tmp_var);
      CONCAT_u3_u67_8376_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_8238_inst
    process(fetch_psr_8189, update_psr_8189) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(fetch_psr_8189, update_psr_8189, tmp_var);
      CONCAT_u3_u6_8238_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u9_8357_inst
    process(CONCAT_u2_u3_8353_wire, CONCAT_u5_u6_8356_wire) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8353_wire, CONCAT_u5_u6_8356_wire, tmp_var);
      CONCAT_u3_u9_8357_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u43_u84_8443_inst
    process(CONCAT_u14_u43_8423_wire, CONCAT_u5_u41_8442_wire) -- 
      variable tmp_var : std_logic_vector(83 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u14_u43_8423_wire, CONCAT_u5_u41_8442_wire, tmp_var);
      to_writeback_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u10_8286_inst
    process(CONCAT_u1_u4_8282_wire, CONCAT_u5_u6_8285_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u4_8282_wire, CONCAT_u5_u6_8285_wire, tmp_var);
      CONCAT_u4_u10_8286_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_8200_inst
    process(thread_id_8023, stream_id_8027) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_8023, stream_id_8027, tmp_var);
      CONCAT_u4_u6_8200_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u41_8442_inst
    process(CONCAT_u3_u5_8432_wire, CONCAT_u3_u36_8441_wire) -- 
      variable tmp_var : std_logic_vector(40 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_8432_wire, CONCAT_u3_u36_8441_wire, tmp_var);
      CONCAT_u5_u41_8442_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_8285_inst
    process(asr_id_8189, is_save_8193) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(asr_id_8189, is_save_8193, tmp_var);
      CONCAT_u5_u6_8285_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_8356_inst
    process(rd_8189, use_rfile_result_in_exec_8336) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_8189, use_rfile_result_in_exec_8336, tmp_var);
      CONCAT_u5_u6_8356_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u72_8377_inst
    process(CONCAT_u3_u5_8367_wire, CONCAT_u3_u67_8376_wire) -- 
      variable tmp_var : std_logic_vector(71 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u5_8367_wire, CONCAT_u3_u67_8376_wire, tmp_var);
      CONCAT_u5_u72_8377_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_8409_inst
    process(CONCAT_u1_u5_8407_wire, stream_id_8027) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_8407_wire, stream_id_8027, tmp_var);
      CONCAT_u5_u7_8409_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u69_u78_8358_inst
    process(CONCAT_u6_u69_8348_wire, CONCAT_u3_u9_8357_wire) -- 
      variable tmp_var : std_logic_vector(77 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u69_8348_wire, CONCAT_u3_u9_8357_wire, tmp_var);
      CONCAT_u69_u78_8358_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u13_8204_inst
    process(CONCAT_u4_u6_8200_wire, CONCAT_u6_u7_8203_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_8200_wire, CONCAT_u6_u7_8203_wire, tmp_var);
      CONCAT_u6_u13_8204_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u69_8348_inst
    process(CONCAT_u2_u6_8342_wire, CONCAT_u8_u63_8347_wire) -- 
      variable tmp_var : std_logic_vector(68 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u6_8342_wire, CONCAT_u8_u63_8347_wire, tmp_var);
      CONCAT_u6_u69_8348_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_8203_inst
    process(slot_id_8031, thread_head_8035) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_8031, thread_head_8035, tmp_var);
      CONCAT_u6_u7_8203_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_8224_inst
    process(CONCAT_u1_u6_8220_wire, AND_u1_u1_8223_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u6_8220_wire, AND_u1_u1_8223_wire, tmp_var);
      CONCAT_u6_u7_8224_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_8246_inst
    process(CONCAT_u3_u6_8238_wire, OR_u1_u1_8245_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u3_u6_8238_wire, OR_u1_u1_8245_wire, tmp_var);
      CONCAT_u6_u7_8246_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u7_8412_inst
    process(slot_id_8031, thread_head_8035) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_8031, thread_head_8035, tmp_var);
      CONCAT_u6_u7_8412_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u78_u150_8378_inst
    process(CONCAT_u69_u78_8358_wire, CONCAT_u5_u72_8377_wire) -- 
      variable tmp_var : std_logic_vector(149 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u69_u78_8358_wire, CONCAT_u5_u72_8377_wire, tmp_var);
      to_exec_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u14_8413_inst
    process(CONCAT_u5_u7_8409_wire, CONCAT_u6_u7_8412_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_8409_wire, CONCAT_u6_u7_8412_wire, tmp_var);
      CONCAT_u7_u14_8413_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u15_8225_inst
    process(CONCAT_u2_u8_8217_wire, CONCAT_u6_u7_8224_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_8217_wire, CONCAT_u6_u7_8224_wire, tmp_var);
      CONCAT_u8_u15_8225_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u15_8247_inst
    process(CONCAT_u2_u8_8235_wire, CONCAT_u6_u7_8246_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_8235_wire, CONCAT_u6_u7_8246_wire, tmp_var);
      CONCAT_u8_u15_8247_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u63_8347_inst
    process(CONCAT_u2_u8_8345_wire, exec_control_word_8156) -- 
      variable tmp_var : std_logic_vector(62 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u8_8345_wire, exec_control_word_8156, tmp_var);
      CONCAT_u8_u63_8347_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_8331_inst
    process(iu_reg_to_ls_8095) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_reg_to_ls_8095, tmp_var);
      NOT_u1_u1_8331_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8334_inst
    process(uses_iu_cc_for_branching_8067) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", uses_iu_cc_for_branching_8067, tmp_var);
      NOT_u1_u1_8334_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8241_inst
    OR_u1_u1_8241_wire <= (fetch_wim_8189 or fetch_tbr_8189);
    -- flow through binary operator OR_u1_u1_8244_inst
    OR_u1_u1_8244_wire <= (fetch_y_8189 or fetch_asr_8189);
    -- flow through binary operator OR_u1_u1_8245_inst
    OR_u1_u1_8245_wire <= (OR_u1_u1_8241_wire or OR_u1_u1_8244_wire);
    -- flow through binary operator OR_u1_u1_8250_inst
    OR_u1_u1_8250_wire <= (update_wim_8189 or update_tbr_8189);
    -- flow through binary operator OR_u1_u1_8253_inst
    OR_u1_u1_8253_wire <= (update_y_8189 or update_asr_8189);
    -- flow through binary operator OR_u1_u1_8254_inst
    OR_u1_u1_8254_wire <= (OR_u1_u1_8250_wire or OR_u1_u1_8253_wire);
    -- flow through binary operator OR_u1_u1_8257_inst
    OR_u1_u1_8257_wire <= (update_wim_8189 or fetch_wim_8189);
    -- flow through binary operator OR_u1_u1_8263_inst
    OR_u1_u1_8263_wire <= (update_tbr_8189 or fetch_tbr_8189);
    -- flow through binary operator OR_u1_u1_8270_inst
    OR_u1_u1_8270_wire <= (update_y_8189 or fetch_y_8189);
    -- flow through binary operator OR_u1_u1_8276_inst
    OR_u1_u1_8276_wire <= (update_asr_8189 or fetch_asr_8189);
    -- flow through binary operator OR_u1_u1_8402_inst
    clear_locks_in_rfile_8403 <= (send_to_rfile_buffer or uses_iu2_8079);
    -- flow through binary operator OR_u3_u3_8267_inst
    OR_u3_u3_8267_wire <= (MUX_8260_wire or MUX_8266_wire);
    -- flow through binary operator OR_u3_u3_8280_inst
    OR_u3_u3_8280_wire <= (MUX_8273_wire or MUX_8279_wire);
    -- flow through binary operator OR_u3_u3_8281_inst
    OR_u3_u3_8281_wire <= (OR_u3_u3_8267_wire or OR_u3_u3_8280_wire);
    volatile_operator_decode_instruction_for_iunit_6571: decode_instruction_for_iunit_Volatile port map(iclass => iclass_8047, ispec => ispec_8051, instr => instr_8055, op_fetch_control_word => op_fetch_control_word_8156, alu_exec_control_word => exec_control_word_8156, iunit_writeback_control_word => writeback_control_word_8156, imm_flag => imm_flag_8156, imm_operand => imm_operand_8156, priv_instr_trap_if_not_supervisor => trap_if_not_supervisor_8156); 
    volatile_operator_decode_op_fetch_control_word_6572: decode_op_fetch_control_word_Volatile port map(cw => op_fetch_control_word_8156, read_rs1 => read_rs1_8189, rs1 => rs1_8189, read_rs2 => read_rs2_8189, rs2 => rs2_8189, read_rd => read_rd_8189, write_rd => write_rd_8189, double_word => double_word_8189, rd => rd_8189, fetch_psr => fetch_psr_8189, update_psr => update_psr_8189, fetch_wim => fetch_wim_8189, update_wim => update_wim_8189, fetch_tbr => fetch_tbr_8189, update_tbr => update_tbr_8189, fetch_y => fetch_y_8189, update_y => update_y_8189, fetch_asr => fetch_asr_8189, update_asr => update_asr_8189, save_restore_lock => window_modify_lock_8189, asr_id => asr_id_8189); 
    volatile_operator_extract_save_restore_from_exec_control_word_6573: extract_save_restore_from_exec_control_word_Volatile port map(cw => exec_control_word_8156, save => is_save_8193, restore => is_restore_8193); 
    -- 
  end Block; -- data_path
  -- 
end idispatch_to_iunit_logic_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity needSignalFromRetire_Volatile is -- 
  port ( -- 
    msg_from_sc : in  std_logic_vector(147 downto 0);
    sc_valid : out  std_logic_vector(0 downto 0);
    wait_on_iretire : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity needSignalFromRetire_Volatile;
architecture needSignalFromRetire_Volatile_arch of needSignalFromRetire_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(148-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal msg_from_sc_buffer :  std_logic_vector(147 downto 0);
  -- output port buffer signals
  signal sc_valid_buffer :  std_logic_vector(0 downto 0);
  signal wait_on_iretire_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  msg_from_sc_buffer <= msg_from_sc;
  -- output handling  -------------------------------------------------------
  sc_valid <= sc_valid_buffer;
  wait_on_iretire <= wait_on_iretire_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal w_9420 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_9415_inst
    sc_valid_buffer <= msg_from_sc_buffer(147 downto 147);
    -- flow-through slice operator slice_9419_inst
    w_9420 <= msg_from_sc_buffer(134 downto 134);
    -- flow through binary operator AND_u1_u1_9424_inst
    wait_on_iretire_buffer <= (sc_valid_buffer and w_9420);
    -- 
  end Block; -- data_path
  -- 
end needSignalFromRetire_Volatile_arch;
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
library teu_idecode_idispatch;
use teu_idecode_idispatch.idecode_idispatch_global_package.all;
entity idecode_idispatch is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    debug_bp_0: in std_logic_vector(31 downto 0);
    debug_bp_1: in std_logic_vector(31 downto 0);
    debug_bp_2: in std_logic_vector(31 downto 0);
    debug_bp_3: in std_logic_vector(31 downto 0);
    debug_dbg_interrupt: in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_data: out std_logic_vector(147 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_ifetch_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data: out std_logic_vector(58 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_data: out std_logic_vector(83 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_data: out std_logic_vector(125 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_data: in std_logic_vector(147 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_idispatch_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_idispatch_to_iunit_exec_pipe_read_data: out std_logic_vector(149 downto 0);
    teu_idispatch_to_iunit_exec_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_idispatch_to_iunit_exec_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_read_data: out std_logic_vector(204 downto 0);
    teu_idispatch_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_idispatch_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_data: in std_logic_vector(223 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_ifetch_to_idecode_extended_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_write_data: in std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_iretire_to_idispatch_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_annul_status: in std_logic_vector(15 downto 0)); -- 
  -- 
end entity; 
architecture idecode_idispatch_arch  of idecode_idispatch is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module analyze_sc_annul_status
  -- declarations related to module debug_calculate_debug_bp_hits
  -- declarations related to module decode_alu_ispec
  -- declarations related to module decode_cti_for_offset_calculation
  -- declarations related to module decode_cti_ispec
  -- declarations related to module decode_dti_ispec
  -- declarations related to module decode_instruction_base
  -- declarations related to module decode_instruction_for_iunit
  -- declarations related to module decode_instruction_stage_1
  -- declarations related to module decode_misc_ispec
  -- declarations related to module decode_op_fetch_control_word
  -- declarations related to module decode_thread_control_word
  -- declarations related to module extract_save_restore_from_exec_control_word
  -- declarations related to module generic_pc_adder
  -- declarations related to module get_destination_register
  -- declarations related to module idecode_idispatch_daemon
  component idecode_idispatch_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      noblock_joined_iretire_sc_to_idispatch_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_joined_iretire_sc_to_idispatch_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_joined_iretire_sc_to_idispatch_pipe_read_data : in   std_logic_vector(147 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_req : out  std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_ack : in   std_logic_vector(0 downto 0);
      teu_ifetch_to_idecode_extended_pipe_read_data : in   std_logic_vector(223 downto 0);
      debug_bp_0 : in std_logic_vector(31 downto 0);
      debug_bp_1 : in std_logic_vector(31 downto 0);
      debug_bp_2 : in std_logic_vector(31 downto 0);
      debug_bp_3 : in std_logic_vector(31 downto 0);
      debug_dbg_interrupt : in std_logic_vector(0 downto 0);
      teu_stream_corrector_annul_status : in std_logic_vector(15 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_ifetch_pipe_write_data : out  std_logic_vector(147 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data : out  std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_data : out  std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_loadstore_pipe_write_data : out  std_logic_vector(125 downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_idispatch_to_iunit_exec_pipe_write_data : out  std_logic_vector(149 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_idispatch_to_stream_corrector_pipe_write_data : out  std_logic_vector(204 downto 0);
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
  -- argument signals for module idecode_idispatch_daemon
  signal idecode_idispatch_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal idecode_idispatch_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal idecode_idispatch_daemon_start_req : std_logic;
  signal idecode_idispatch_daemon_start_ack : std_logic;
  signal idecode_idispatch_daemon_fin_req   : std_logic;
  signal idecode_idispatch_daemon_fin_ack : std_logic;
  -- declarations related to module idispatch_logic
  -- declarations related to module idispatch_to_fpunit_logic
  -- declarations related to module idispatch_to_iunit_logic
  -- declarations related to module needSignalFromRetire
  -- declarations related to module sc_iretire_join_daemon
  -- argument signals for module sc_iretire_join_daemon
  signal sc_iretire_join_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal sc_iretire_join_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal sc_iretire_join_daemon_start_req : std_logic;
  signal sc_iretire_join_daemon_start_ack : std_logic;
  signal sc_iretire_join_daemon_fin_req   : std_logic;
  signal sc_iretire_join_daemon_fin_ack : std_logic;
  -- aggregate signals for write to pipe noblock_joined_iretire_sc_to_idispatch
  signal noblock_joined_iretire_sc_to_idispatch_pipe_write_data: std_logic_vector(147 downto 0);
  signal noblock_joined_iretire_sc_to_idispatch_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_joined_iretire_sc_to_idispatch_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_joined_iretire_sc_to_idispatch
  signal noblock_joined_iretire_sc_to_idispatch_pipe_read_data: std_logic_vector(147 downto 0);
  signal noblock_joined_iretire_sc_to_idispatch_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_joined_iretire_sc_to_idispatch_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_idispatch_to_ifetch
  signal noblock_teu_idispatch_to_ifetch_pipe_write_data: std_logic_vector(147 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_ifetch_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_idispatch_to_iunit_register_file_read_access_command
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data: std_logic_vector(58 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_idispatch_to_iunit_writeback
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_data: std_logic_vector(83 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_teu_idispatch_to_loadstore
  signal noblock_teu_idispatch_to_loadstore_pipe_write_data: std_logic_vector(125 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_loadstore_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_stream_corrector_to_idispatch
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_data: std_logic_vector(147 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_idispatch_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_idispatch_to_iunit_exec
  signal teu_idispatch_to_iunit_exec_pipe_write_data: std_logic_vector(149 downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_idispatch_to_iunit_exec_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_idispatch_to_stream_corrector
  signal teu_idispatch_to_stream_corrector_pipe_write_data: std_logic_vector(204 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_idispatch_to_stream_corrector_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_ifetch_to_idecode_extended
  signal teu_ifetch_to_idecode_extended_pipe_read_data: std_logic_vector(223 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_ifetch_to_idecode_extended_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_iretire_to_idispatch
  signal teu_iretire_to_idispatch_pipe_read_data: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_iretire_to_idispatch_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module idecode_idispatch_daemon
  idecode_idispatch_daemon_instance:idecode_idispatch_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => idecode_idispatch_daemon_start_req,
      start_ack => idecode_idispatch_daemon_start_ack,
      fin_req => idecode_idispatch_daemon_fin_req,
      fin_ack => idecode_idispatch_daemon_fin_ack,
      clk => clk,
      reset => reset,
      debug_bp_0 => debug_bp_0,
      debug_bp_1 => debug_bp_1,
      debug_bp_2 => debug_bp_2,
      debug_bp_3 => debug_bp_3,
      debug_dbg_interrupt => debug_dbg_interrupt,
      noblock_joined_iretire_sc_to_idispatch_pipe_read_req => noblock_joined_iretire_sc_to_idispatch_pipe_read_req(0 downto 0),
      noblock_joined_iretire_sc_to_idispatch_pipe_read_ack => noblock_joined_iretire_sc_to_idispatch_pipe_read_ack(0 downto 0),
      noblock_joined_iretire_sc_to_idispatch_pipe_read_data => noblock_joined_iretire_sc_to_idispatch_pipe_read_data(147 downto 0),
      teu_ifetch_to_idecode_extended_pipe_read_req => teu_ifetch_to_idecode_extended_pipe_read_req(0 downto 0),
      teu_ifetch_to_idecode_extended_pipe_read_ack => teu_ifetch_to_idecode_extended_pipe_read_ack(0 downto 0),
      teu_ifetch_to_idecode_extended_pipe_read_data => teu_ifetch_to_idecode_extended_pipe_read_data(223 downto 0),
      teu_stream_corrector_annul_status => teu_stream_corrector_annul_status,
      noblock_teu_idispatch_to_ifetch_pipe_write_req => noblock_teu_idispatch_to_ifetch_pipe_write_req(0 downto 0),
      noblock_teu_idispatch_to_ifetch_pipe_write_ack => noblock_teu_idispatch_to_ifetch_pipe_write_ack(0 downto 0),
      noblock_teu_idispatch_to_ifetch_pipe_write_data => noblock_teu_idispatch_to_ifetch_pipe_write_data(147 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req(0 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack(0 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data(58 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_req => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req(0 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack(0 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_data => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data(83 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_write_req => noblock_teu_idispatch_to_loadstore_pipe_write_req(0 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_write_ack => noblock_teu_idispatch_to_loadstore_pipe_write_ack(0 downto 0),
      noblock_teu_idispatch_to_loadstore_pipe_write_data => noblock_teu_idispatch_to_loadstore_pipe_write_data(125 downto 0),
      teu_idispatch_to_iunit_exec_pipe_write_req => teu_idispatch_to_iunit_exec_pipe_write_req(0 downto 0),
      teu_idispatch_to_iunit_exec_pipe_write_ack => teu_idispatch_to_iunit_exec_pipe_write_ack(0 downto 0),
      teu_idispatch_to_iunit_exec_pipe_write_data => teu_idispatch_to_iunit_exec_pipe_write_data(149 downto 0),
      teu_idispatch_to_stream_corrector_pipe_write_req => teu_idispatch_to_stream_corrector_pipe_write_req(0 downto 0),
      teu_idispatch_to_stream_corrector_pipe_write_ack => teu_idispatch_to_stream_corrector_pipe_write_ack(0 downto 0),
      teu_idispatch_to_stream_corrector_pipe_write_data => teu_idispatch_to_stream_corrector_pipe_write_data(204 downto 0),
      tag_in => idecode_idispatch_daemon_tag_in,
      tag_out => idecode_idispatch_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  idecode_idispatch_daemon_tag_in <= (others => '0');
  idecode_idispatch_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => idecode_idispatch_daemon_start_req, start_ack => idecode_idispatch_daemon_start_ack,  fin_req => idecode_idispatch_daemon_fin_req,  fin_ack => idecode_idispatch_daemon_fin_ack);
  -- module sc_iretire_join_daemon
  sc_iretire_join_daemon_instance:sc_iretire_join_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => sc_iretire_join_daemon_start_req,
      start_ack => sc_iretire_join_daemon_start_ack,
      fin_req => sc_iretire_join_daemon_fin_req,
      fin_ack => sc_iretire_join_daemon_fin_ack,
      clk => clk,
      reset => reset,
      noblock_teu_stream_corrector_to_idispatch_pipe_read_req => noblock_teu_stream_corrector_to_idispatch_pipe_read_req(0 downto 0),
      noblock_teu_stream_corrector_to_idispatch_pipe_read_ack => noblock_teu_stream_corrector_to_idispatch_pipe_read_ack(0 downto 0),
      noblock_teu_stream_corrector_to_idispatch_pipe_read_data => noblock_teu_stream_corrector_to_idispatch_pipe_read_data(147 downto 0),
      teu_iretire_to_idispatch_pipe_read_req => teu_iretire_to_idispatch_pipe_read_req(0 downto 0),
      teu_iretire_to_idispatch_pipe_read_ack => teu_iretire_to_idispatch_pipe_read_ack(0 downto 0),
      teu_iretire_to_idispatch_pipe_read_data => teu_iretire_to_idispatch_pipe_read_data(0 downto 0),
      noblock_joined_iretire_sc_to_idispatch_pipe_write_req => noblock_joined_iretire_sc_to_idispatch_pipe_write_req(0 downto 0),
      noblock_joined_iretire_sc_to_idispatch_pipe_write_ack => noblock_joined_iretire_sc_to_idispatch_pipe_write_ack(0 downto 0),
      noblock_joined_iretire_sc_to_idispatch_pipe_write_data => noblock_joined_iretire_sc_to_idispatch_pipe_write_data(147 downto 0),
      tag_in => sc_iretire_join_daemon_tag_in,
      tag_out => sc_iretire_join_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  sc_iretire_join_daemon_tag_in <= (others => '0');
  sc_iretire_join_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => sc_iretire_join_daemon_start_req, start_ack => sc_iretire_join_daemon_start_ack,  fin_req => sc_iretire_join_daemon_fin_req,  fin_ack => sc_iretire_join_daemon_fin_ack);
  -- input signal-pipe debug_bp_0 accessed directly. 
  -- input signal-pipe debug_bp_1 accessed directly. 
  -- input signal-pipe debug_bp_2 accessed directly. 
  -- input signal-pipe debug_bp_3 accessed directly. 
  -- input signal-pipe debug_dbg_interrupt accessed directly. 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_joined_iretire_sc_to_idispatch_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_joined_iretire_sc_to_idispatch",
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
      read_req => noblock_joined_iretire_sc_to_idispatch_pipe_read_req,
      read_ack => noblock_joined_iretire_sc_to_idispatch_pipe_read_ack,
      read_data => noblock_joined_iretire_sc_to_idispatch_pipe_read_data,
      write_req => noblock_joined_iretire_sc_to_idispatch_pipe_write_req,
      write_ack => noblock_joined_iretire_sc_to_idispatch_pipe_write_ack,
      write_data => noblock_joined_iretire_sc_to_idispatch_pipe_write_data,
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
  noblock_teu_idispatch_to_iunit_register_file_read_access_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_iunit_register_file_read_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 59,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => true,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data,
      write_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_teu_idispatch_to_iunit_writeback_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_teu_idispatch_to_iunit_writeback",
      num_reads => 1,
      num_writes => 1,
      data_width => 84,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_teu_idispatch_to_iunit_writeback_pipe_read_req,
      read_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack,
      read_data => noblock_teu_idispatch_to_iunit_writeback_pipe_read_data,
      write_req => noblock_teu_idispatch_to_iunit_writeback_pipe_write_req,
      write_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack,
      write_data => noblock_teu_idispatch_to_iunit_writeback_pipe_write_data,
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
  teu_idispatch_to_iunit_exec_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_idispatch_to_iunit_exec",
      num_reads => 1,
      num_writes => 1,
      data_width => 150,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => teu_idispatch_to_iunit_exec_pipe_read_req,
      read_ack => teu_idispatch_to_iunit_exec_pipe_read_ack,
      read_data => teu_idispatch_to_iunit_exec_pipe_read_data,
      write_req => teu_idispatch_to_iunit_exec_pipe_write_req,
      write_ack => teu_idispatch_to_iunit_exec_pipe_write_ack,
      write_data => teu_idispatch_to_iunit_exec_pipe_write_data,
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
  -- input signal-pipe teu_stream_corrector_annul_status accessed directly. 
  -- gated clock generators 
  -- 
end idecode_idispatch_arch;
