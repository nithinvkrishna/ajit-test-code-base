-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package iu_registers_global_package is -- 
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
  constant lock_mask_1 : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
  constant lock_mask_2 : std_logic_vector(63 downto 0) := "0000000000000000000000000000000100000000000000000000000000000001";
  constant lock_mask_3 : std_logic_vector(95 downto 0) := "000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001";
  component iu_registers is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      CORE_ID: in std_logic_vector(7 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data: in std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req : in std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack : out std_logic_vector(0 downto 0);
      THREAD_ID: in std_logic_vector(7 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_data: in std_logic_vector(41 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      iunit_register_file_read_access_response_pipe_read_data: out std_logic_vector(141 downto 0);
      iunit_register_file_read_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
      iunit_register_file_read_access_response_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data: in std_logic_vector(16 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data: in std_logic_vector(82 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_data: in std_logic_vector(372 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data: in std_logic_vector(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_data: out std_logic_vector(16 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_data: out std_logic_vector(141 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_data: out std_logic_vector(31 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_read_data: out std_logic_vector(95 downto 0);
      teu_iunit_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_data: out std_logic_vector(31 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package iu_registers_global_package;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity analyze_ccu_command_Volatile is -- 
  port ( -- 
    ccu_command : in  std_logic_vector(41 downto 0);
    ccu_command_valid : out  std_logic_vector(0 downto 0);
    ccu_write_read_bar : out  std_logic_vector(0 downto 0);
    ccu_reg_type : out  std_logic_vector(2 downto 0);
    ccu_rid : out  std_logic_vector(4 downto 0);
    ccu_rval : out  std_logic_vector(31 downto 0);
    ccu_psr : out  std_logic_vector(0 downto 0);
    ccu_tbr : out  std_logic_vector(0 downto 0);
    ccu_wim : out  std_logic_vector(0 downto 0);
    ccu_asr : out  std_logic_vector(0 downto 0);
    ccu_y : out  std_logic_vector(0 downto 0);
    ccu_iu_reg : out  std_logic_vector(0 downto 0);
    ccu_read_asr : out  std_logic_vector(0 downto 0);
    ccu_write_asr : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity analyze_ccu_command_Volatile;
architecture analyze_ccu_command_Volatile_arch of analyze_ccu_command_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(42-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ccu_command_buffer :  std_logic_vector(41 downto 0);
  -- output port buffer signals
  signal ccu_command_valid_buffer :  std_logic_vector(0 downto 0);
  signal ccu_write_read_bar_buffer :  std_logic_vector(0 downto 0);
  signal ccu_reg_type_buffer :  std_logic_vector(2 downto 0);
  signal ccu_rid_buffer :  std_logic_vector(4 downto 0);
  signal ccu_rval_buffer :  std_logic_vector(31 downto 0);
  signal ccu_psr_buffer :  std_logic_vector(0 downto 0);
  signal ccu_tbr_buffer :  std_logic_vector(0 downto 0);
  signal ccu_wim_buffer :  std_logic_vector(0 downto 0);
  signal ccu_asr_buffer :  std_logic_vector(0 downto 0);
  signal ccu_y_buffer :  std_logic_vector(0 downto 0);
  signal ccu_iu_reg_buffer :  std_logic_vector(0 downto 0);
  signal ccu_read_asr_buffer :  std_logic_vector(0 downto 0);
  signal ccu_write_asr_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ccu_command_buffer <= ccu_command;
  -- output handling  -------------------------------------------------------
  ccu_command_valid <= ccu_command_valid_buffer;
  ccu_write_read_bar <= ccu_write_read_bar_buffer;
  ccu_reg_type <= ccu_reg_type_buffer;
  ccu_rid <= ccu_rid_buffer;
  ccu_rval <= ccu_rval_buffer;
  ccu_psr <= ccu_psr_buffer;
  ccu_tbr <= ccu_tbr_buffer;
  ccu_wim <= ccu_wim_buffer;
  ccu_asr <= ccu_asr_buffer;
  ccu_y <= ccu_y_buffer;
  ccu_iu_reg <= ccu_iu_reg_buffer;
  ccu_read_asr <= ccu_read_asr_buffer;
  ccu_write_asr <= ccu_write_asr_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1236_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1244_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1238_wire : std_logic_vector(0 downto 0);
    signal R_ACCESS_ASR_1220_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_PSR_1205_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_REG_1230_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_1210_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_1215_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_1225_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    R_ACCESS_ASR_1220_wire_constant <= "101";
    R_ACCESS_PSR_1205_wire_constant <= "001";
    R_ACCESS_REG_1230_wire_constant <= "110";
    R_ACCESS_TBR_1210_wire_constant <= "010";
    R_ACCESS_WIM_1215_wire_constant <= "011";
    R_ACCESS_Y_1225_wire_constant <= "100";
    -- flow-through slice operator slice_1179_inst
    ccu_write_read_bar_buffer <= ccu_command_buffer(41 downto 41);
    -- flow-through slice operator slice_1183_inst
    ccu_reg_type_buffer <= ccu_command_buffer(40 downto 38);
    -- flow-through slice operator slice_1187_inst
    ccu_rid_buffer <= ccu_command_buffer(37 downto 33);
    -- flow-through slice operator slice_1191_inst
    ccu_rval_buffer <= ccu_command_buffer(32 downto 1);
    -- flow-through slice operator slice_1195_inst
    ccu_command_valid_buffer <= ccu_command_buffer(0 downto 0);
    -- flow through binary operator AND_u1_u1_1236_inst
    AND_u1_u1_1236_wire <= (ccu_command_valid_buffer and ccu_asr_buffer);
    -- flow through binary operator AND_u1_u1_1239_inst
    ccu_read_asr_buffer <= (AND_u1_u1_1236_wire and NOT_u1_u1_1238_wire);
    -- flow through binary operator AND_u1_u1_1244_inst
    AND_u1_u1_1244_wire <= (ccu_command_valid_buffer and ccu_asr_buffer);
    -- flow through binary operator AND_u1_u1_1246_inst
    ccu_write_asr_buffer <= (AND_u1_u1_1244_wire and ccu_write_read_bar_buffer);
    -- flow through binary operator EQ_u3_u1_1206_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_PSR_1205_wire_constant, tmp_var);
      ccu_psr_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1211_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_TBR_1210_wire_constant, tmp_var);
      ccu_tbr_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1216_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_WIM_1215_wire_constant, tmp_var);
      ccu_wim_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1221_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_ASR_1220_wire_constant, tmp_var);
      ccu_asr_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1226_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_Y_1225_wire_constant, tmp_var);
      ccu_y_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1231_inst
    process(ccu_reg_type_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_buffer, R_ACCESS_REG_1230_wire_constant, tmp_var);
      ccu_iu_reg_buffer <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1238_inst
    process(ccu_write_read_bar_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_read_bar_buffer, tmp_var);
      NOT_u1_u1_1238_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end analyze_ccu_command_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity analyze_ccu_command_for_asr_Volatile is -- 
  port ( -- 
    ccu_command : in  std_logic_vector(41 downto 0);
    ccu_command_valid : out  std_logic_vector(0 downto 0);
    ccu_write : out  std_logic_vector(0 downto 0);
    ccu_read_iu_reg : out  std_logic_vector(0 downto 0);
    ccu_read_asr : out  std_logic_vector(0 downto 0);
    ccu_rid : out  std_logic_vector(4 downto 0)-- 
  );
  -- 
end entity analyze_ccu_command_for_asr_Volatile;
architecture analyze_ccu_command_for_asr_Volatile_arch of analyze_ccu_command_for_asr_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(42-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ccu_command_buffer :  std_logic_vector(41 downto 0);
  -- output port buffer signals
  signal ccu_command_valid_buffer :  std_logic_vector(0 downto 0);
  signal ccu_write_buffer :  std_logic_vector(0 downto 0);
  signal ccu_read_iu_reg_buffer :  std_logic_vector(0 downto 0);
  signal ccu_read_asr_buffer :  std_logic_vector(0 downto 0);
  signal ccu_rid_buffer :  std_logic_vector(4 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ccu_command_buffer <= ccu_command;
  -- output handling  -------------------------------------------------------
  ccu_command_valid <= ccu_command_valid_buffer;
  ccu_write <= ccu_write_buffer;
  ccu_read_iu_reg <= ccu_read_iu_reg_buffer;
  ccu_read_asr <= ccu_read_asr_buffer;
  ccu_rid <= ccu_rid_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1277_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1287_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1276_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_1286_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1279_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1289_wire : std_logic_vector(0 downto 0);
    signal R_ACCESS_ASR_1285_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_REG_1275_wire_constant : std_logic_vector(2 downto 0);
    signal ccu_reg_type_1263 : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    R_ACCESS_ASR_1285_wire_constant <= "101";
    R_ACCESS_REG_1275_wire_constant <= "110";
    -- flow-through slice operator slice_1258_inst
    ccu_write_buffer <= ccu_command_buffer(41 downto 41);
    -- flow-through slice operator slice_1262_inst
    ccu_reg_type_1263 <= ccu_command_buffer(40 downto 38);
    -- flow-through slice operator slice_1266_inst
    ccu_rid_buffer <= ccu_command_buffer(37 downto 33);
    -- flow-through slice operator slice_1270_inst
    ccu_command_valid_buffer <= ccu_command_buffer(0 downto 0);
    -- flow through binary operator AND_u1_u1_1277_inst
    AND_u1_u1_1277_wire <= (ccu_command_valid_buffer and EQ_u3_u1_1276_wire);
    -- flow through binary operator AND_u1_u1_1280_inst
    ccu_read_iu_reg_buffer <= (AND_u1_u1_1277_wire and NOT_u1_u1_1279_wire);
    -- flow through binary operator AND_u1_u1_1287_inst
    AND_u1_u1_1287_wire <= (ccu_command_valid_buffer and EQ_u3_u1_1286_wire);
    -- flow through binary operator AND_u1_u1_1290_inst
    ccu_read_asr_buffer <= (AND_u1_u1_1287_wire and NOT_u1_u1_1289_wire);
    -- flow through binary operator EQ_u3_u1_1276_inst
    process(ccu_reg_type_1263) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_1263, R_ACCESS_REG_1275_wire_constant, tmp_var);
      EQ_u3_u1_1276_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_1286_inst
    process(ccu_reg_type_1263) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_reg_type_1263, R_ACCESS_ASR_1285_wire_constant, tmp_var);
      EQ_u3_u1_1286_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1279_inst
    process(ccu_write_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_buffer, tmp_var);
      NOT_u1_u1_1279_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1289_inst
    process(ccu_write_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_buffer, tmp_var);
      NOT_u1_u1_1289_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end analyze_ccu_command_for_asr_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity bypass_cc_possible_logic_Volatile is -- 
  port ( -- 
    read_thread_id : in  std_logic_vector(3 downto 0);
    read_stream_id : in  std_logic_vector(1 downto 0);
    read_slot_id : in  std_logic_vector(5 downto 0);
    bypass_cc_info : in  std_logic_vector(16 downto 0);
    read_psr : in  std_logic_vector(2 downto 0);
    cc_write_pending : in  std_logic_vector(0 downto 0);
    bypass_cc_active : out  std_logic_vector(0 downto 0);
    bypass_cc_possible : out  std_logic_vector(0 downto 0);
    bypass_info_cc_value : out  std_logic_vector(3 downto 0)-- 
  );
  -- 
end entity bypass_cc_possible_logic_Volatile;
architecture bypass_cc_possible_logic_Volatile_arch of bypass_cc_possible_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(33-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal read_thread_id_buffer :  std_logic_vector(3 downto 0);
  signal read_stream_id_buffer :  std_logic_vector(1 downto 0);
  signal read_slot_id_buffer :  std_logic_vector(5 downto 0);
  signal bypass_cc_info_buffer :  std_logic_vector(16 downto 0);
  signal read_psr_buffer :  std_logic_vector(2 downto 0);
  signal cc_write_pending_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal bypass_cc_active_buffer :  std_logic_vector(0 downto 0);
  signal bypass_cc_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_info_cc_value_buffer :  std_logic_vector(3 downto 0);
  -- volatile/operator module components. 
  component check_if_bypass_cc_is_active_Volatile is -- 
    port ( -- 
      bypass_cc_info : in  std_logic_vector(16 downto 0);
      read_thread_id : in  std_logic_vector(3 downto 0);
      read_stream_id : in  std_logic_vector(1 downto 0);
      read_slot_id : in  std_logic_vector(5 downto 0);
      bypass_active : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component isCcRead_Volatile is -- 
    port ( -- 
      read_psr : in  std_logic_vector(2 downto 0);
      retval : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  read_thread_id_buffer <= read_thread_id;
  read_stream_id_buffer <= read_stream_id;
  read_slot_id_buffer <= read_slot_id;
  bypass_cc_info_buffer <= bypass_cc_info;
  read_psr_buffer <= read_psr;
  cc_write_pending_buffer <= cc_write_pending;
  -- output handling  -------------------------------------------------------
  bypass_cc_active <= bypass_cc_active_buffer;
  bypass_cc_possible <= bypass_cc_possible_buffer;
  bypass_info_cc_value <= bypass_info_cc_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1618_wire : std_logic_vector(0 downto 0);
    signal bypass_info_valid_1586 : std_logic_vector(0 downto 0);
    signal bypass_slot_id_1598 : std_logic_vector(5 downto 0);
    signal bypass_stream_id_1594 : std_logic_vector(1 downto 0);
    signal bypass_thread_id_1590 : std_logic_vector(3 downto 0);
    signal call_isCcRead_expr_1620_wire : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_1585_inst
    bypass_info_valid_1586 <= bypass_cc_info_buffer(16 downto 16);
    -- flow-through slice operator slice_1589_inst
    bypass_thread_id_1590 <= bypass_cc_info_buffer(15 downto 12);
    -- flow-through slice operator slice_1593_inst
    bypass_stream_id_1594 <= bypass_cc_info_buffer(11 downto 10);
    -- flow-through slice operator slice_1597_inst
    bypass_slot_id_1598 <= bypass_cc_info_buffer(9 downto 4);
    -- flow-through slice operator slice_1601_inst
    bypass_info_cc_value_buffer <= bypass_cc_info_buffer(3 downto 0);
    -- flow through binary operator AND_u1_u1_1618_inst
    AND_u1_u1_1618_wire <= (bypass_cc_active_buffer and cc_write_pending_buffer);
    -- flow through binary operator AND_u1_u1_1621_inst
    bypass_cc_possible_buffer <= (AND_u1_u1_1618_wire and call_isCcRead_expr_1620_wire);
    volatile_operator_isCcRead_1422: isCcRead_Volatile port map(read_psr => read_psr_buffer, retval => call_isCcRead_expr_1620_wire); 
    volatile_operator_check_if_bypass_cc_is_active_1420: check_if_bypass_cc_is_active_Volatile port map(bypass_cc_info => bypass_cc_info_buffer, read_thread_id => read_thread_id_buffer, read_stream_id => read_stream_id_buffer, read_slot_id => read_slot_id_buffer, bypass_active => bypass_cc_active_buffer); 
    -- 
  end Block; -- data_path
  -- 
end bypass_cc_possible_logic_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity bypass_possible_logic_Volatile is -- 
  port ( -- 
    read_thread_id : in  std_logic_vector(3 downto 0);
    read_stream_id : in  std_logic_vector(1 downto 0);
    read_slot_id : in  std_logic_vector(5 downto 0);
    bypass_info : in  std_logic_vector(82 downto 0);
    rs1_read_lock_available : in  std_logic_vector(0 downto 0);
    rs1_has_one_pending_write : in  std_logic_vector(0 downto 0);
    rs2_read_lock_available : in  std_logic_vector(0 downto 0);
    rs2_has_one_pending_write : in  std_logic_vector(0 downto 0);
    rd_h_read_lock_available : in  std_logic_vector(0 downto 0);
    rd_h_has_one_pending_write : in  std_logic_vector(0 downto 0);
    rd_l_read_lock_available : in  std_logic_vector(0 downto 0);
    rd_l_has_one_pending_write : in  std_logic_vector(0 downto 0);
    save_restore_lock : in  std_logic_vector(0 downto 0);
    rs1 : in  std_logic_vector(4 downto 0);
    rs2 : in  std_logic_vector(4 downto 0);
    read_rd : in  std_logic_vector(4 downto 0);
    write_rd : in  std_logic_vector(4 downto 0);
    speculative_lock_locks_available : in  std_logic_vector(0 downto 0);
    read_rs1 : in  std_logic_vector(0 downto 0);
    read_rs2 : in  std_logic_vector(0 downto 0);
    read_rd_h : in  std_logic_vector(0 downto 0);
    read_rd_l : in  std_logic_vector(0 downto 0);
    write_psr : in  std_logic_vector(2 downto 0);
    read_psr : in  std_logic_vector(2 downto 0);
    lock_psr : in  std_logic_vector(2 downto 0);
    psr_read_locks : in  std_logic_vector(2 downto 0);
    read_skip_iu : in  std_logic_vector(0 downto 0);
    read_sreg : in  std_logic_vector(0 downto 0);
    read_lock_all_regs : in  std_logic_vector(0 downto 0);
    lock_sreg : in  std_logic_vector(0 downto 0);
    bypass_active : out  std_logic_vector(0 downto 0);
    bypass_rs1_possible : out  std_logic_vector(0 downto 0);
    bypass_rs2_possible : out  std_logic_vector(0 downto 0);
    bypass_rd_h_possible : out  std_logic_vector(0 downto 0);
    bypass_rd_l_possible : out  std_logic_vector(0 downto 0);
    bypass_psr_possible : out  std_logic_vector(0 downto 0);
    bypass_possible : out  std_logic_vector(0 downto 0);
    bypass_info_rd_value : out  std_logic_vector(31 downto 0);
    bypass_info_psr_value : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity bypass_possible_logic_Volatile;
architecture bypass_possible_logic_Volatile_arch of bypass_possible_logic_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(145-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal read_thread_id_buffer :  std_logic_vector(3 downto 0);
  signal read_stream_id_buffer :  std_logic_vector(1 downto 0);
  signal read_slot_id_buffer :  std_logic_vector(5 downto 0);
  signal bypass_info_buffer :  std_logic_vector(82 downto 0);
  signal rs1_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rs1_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rs2_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rs2_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rd_h_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rd_h_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rd_l_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rd_l_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal save_restore_lock_buffer :  std_logic_vector(0 downto 0);
  signal rs1_buffer :  std_logic_vector(4 downto 0);
  signal rs2_buffer :  std_logic_vector(4 downto 0);
  signal read_rd_buffer :  std_logic_vector(4 downto 0);
  signal write_rd_buffer :  std_logic_vector(4 downto 0);
  signal speculative_lock_locks_available_buffer :  std_logic_vector(0 downto 0);
  signal read_rs1_buffer :  std_logic_vector(0 downto 0);
  signal read_rs2_buffer :  std_logic_vector(0 downto 0);
  signal read_rd_h_buffer :  std_logic_vector(0 downto 0);
  signal read_rd_l_buffer :  std_logic_vector(0 downto 0);
  signal write_psr_buffer :  std_logic_vector(2 downto 0);
  signal read_psr_buffer :  std_logic_vector(2 downto 0);
  signal lock_psr_buffer :  std_logic_vector(2 downto 0);
  signal psr_read_locks_buffer :  std_logic_vector(2 downto 0);
  signal read_skip_iu_buffer :  std_logic_vector(0 downto 0);
  signal read_sreg_buffer :  std_logic_vector(0 downto 0);
  signal read_lock_all_regs_buffer :  std_logic_vector(0 downto 0);
  signal lock_sreg_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal bypass_active_buffer :  std_logic_vector(0 downto 0);
  signal bypass_rs1_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_rs2_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_rd_h_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_rd_l_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_psr_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_possible_buffer :  std_logic_vector(0 downto 0);
  signal bypass_info_rd_value_buffer :  std_logic_vector(31 downto 0);
  signal bypass_info_psr_value_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component check_if_bypass_is_active_Volatile is -- 
    port ( -- 
      bypass_info : in  std_logic_vector(82 downto 0);
      read_thread_id : in  std_logic_vector(3 downto 0);
      read_stream_id : in  std_logic_vector(1 downto 0);
      read_slot_id : in  std_logic_vector(5 downto 0);
      bypass_alu_active : out  std_logic_vector(0 downto 0);
      bypass_psr_active : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  read_thread_id_buffer <= read_thread_id;
  read_stream_id_buffer <= read_stream_id;
  read_slot_id_buffer <= read_slot_id;
  bypass_info_buffer <= bypass_info;
  rs1_read_lock_available_buffer <= rs1_read_lock_available;
  rs1_has_one_pending_write_buffer <= rs1_has_one_pending_write;
  rs2_read_lock_available_buffer <= rs2_read_lock_available;
  rs2_has_one_pending_write_buffer <= rs2_has_one_pending_write;
  rd_h_read_lock_available_buffer <= rd_h_read_lock_available;
  rd_h_has_one_pending_write_buffer <= rd_h_has_one_pending_write;
  rd_l_read_lock_available_buffer <= rd_l_read_lock_available;
  rd_l_has_one_pending_write_buffer <= rd_l_has_one_pending_write;
  save_restore_lock_buffer <= save_restore_lock;
  rs1_buffer <= rs1;
  rs2_buffer <= rs2;
  read_rd_buffer <= read_rd;
  write_rd_buffer <= write_rd;
  speculative_lock_locks_available_buffer <= speculative_lock_locks_available;
  read_rs1_buffer <= read_rs1;
  read_rs2_buffer <= read_rs2;
  read_rd_h_buffer <= read_rd_h;
  read_rd_l_buffer <= read_rd_l;
  write_psr_buffer <= write_psr;
  read_psr_buffer <= read_psr;
  lock_psr_buffer <= lock_psr;
  psr_read_locks_buffer <= psr_read_locks;
  read_skip_iu_buffer <= read_skip_iu;
  read_sreg_buffer <= read_sreg;
  read_lock_all_regs_buffer <= read_lock_all_regs;
  lock_sreg_buffer <= lock_sreg;
  -- output handling  -------------------------------------------------------
  bypass_active <= bypass_active_buffer;
  bypass_rs1_possible <= bypass_rs1_possible_buffer;
  bypass_rs2_possible <= bypass_rs2_possible_buffer;
  bypass_rd_h_possible <= bypass_rd_h_possible_buffer;
  bypass_rd_l_possible <= bypass_rd_l_possible_buffer;
  bypass_psr_possible <= bypass_psr_possible_buffer;
  bypass_possible <= bypass_possible_buffer;
  bypass_info_rd_value <= bypass_info_rd_value_buffer;
  bypass_info_psr_value <= bypass_info_psr_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1771_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1777_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1778_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1786_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1792_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1793_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1806_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1812_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1813_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1829_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1835_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1836_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1844_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1896_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1899_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1903_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1904_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1907_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1909_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1912_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_1913_wire : std_logic_vector(0 downto 0);
    signal AND_u3_u3_1884_wire : std_logic_vector(2 downto 0);
    signal EQ_u3_u1_1886_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_1776_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_1791_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_1811_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_1834_wire : std_logic_vector(0 downto 0);
    signal NEQ_u3_u1_1843_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_1770_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_1785_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_1805_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_1828_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1846_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1851_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1859_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1867_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1875_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1895_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1898_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_1901_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1853_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1861_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1869_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1877_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_1893_wire : std_logic_vector(0 downto 0);
    signal OR_u5_u5_1820_wire : std_logic_vector(4 downto 0);
    signal bypass_alu_active_1765 : std_logic_vector(0 downto 0);
    signal bypass_info_rd_1741 : std_logic_vector(4 downto 0);
    signal bypass_info_update_psr_1737 : std_logic_vector(0 downto 0);
    signal bypass_info_valid_1721 : std_logic_vector(0 downto 0);
    signal bypass_psr_active_1765 : std_logic_vector(0 downto 0);
    signal bypass_slot_id_1733 : std_logic_vector(5 downto 0);
    signal bypass_stream_id_1729 : std_logic_vector(1 downto 0);
    signal bypass_thread_id_1725 : std_logic_vector(3 downto 0);
    signal konst_1769_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1784_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1798_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1804_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1819_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1827_wire_constant : std_logic_vector(4 downto 0);
    signal konst_1842_wire_constant : std_logic_vector(2 downto 0);
    signal konst_1885_wire_constant : std_logic_vector(2 downto 0);
    signal psr_ok_1889 : std_logic_vector(0 downto 0);
    signal rd_h_index_1800 : std_logic_vector(4 downto 0);
    signal rd_h_ok_1872 : std_logic_vector(0 downto 0);
    signal rd_l_index_1823 : std_logic_vector(4 downto 0);
    signal rd_l_ok_1880 : std_logic_vector(0 downto 0);
    signal rs1_ok_1856 : std_logic_vector(0 downto 0);
    signal rs2_ok_1864 : std_logic_vector(0 downto 0);
    signal trace_psr_bypass_1948 : std_logic_vector(0 downto 0);
    signal trace_rd_h_bypass_1934 : std_logic_vector(0 downto 0);
    signal trace_rd_l_bypass_1941 : std_logic_vector(0 downto 0);
    signal trace_rs1_bypass_1920 : std_logic_vector(0 downto 0);
    signal trace_rs2_bypass_1927 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_1769_wire_constant <= "00000";
    konst_1784_wire_constant <= "00000";
    konst_1798_wire_constant <= "11110";
    konst_1804_wire_constant <= "00000";
    konst_1819_wire_constant <= "00001";
    konst_1827_wire_constant <= "00000";
    konst_1842_wire_constant <= "000";
    konst_1885_wire_constant <= "000";
    -- flow-through select operator MUX_1822_inst
    rd_l_index_1823 <= OR_u5_u5_1820_wire when (read_rd_h_buffer(0) /=  '0') else read_rd_buffer;
    -- flow-through slice operator slice_1720_inst
    bypass_info_valid_1721 <= bypass_info_buffer(82 downto 82);
    -- flow-through slice operator slice_1724_inst
    bypass_thread_id_1725 <= bypass_info_buffer(81 downto 78);
    -- flow-through slice operator slice_1728_inst
    bypass_stream_id_1729 <= bypass_info_buffer(77 downto 76);
    -- flow-through slice operator slice_1732_inst
    bypass_slot_id_1733 <= bypass_info_buffer(75 downto 70);
    -- flow-through slice operator slice_1736_inst
    bypass_info_update_psr_1737 <= bypass_info_buffer(69 downto 69);
    -- flow-through slice operator slice_1740_inst
    bypass_info_rd_1741 <= bypass_info_buffer(68 downto 64);
    -- flow-through slice operator slice_1744_inst
    bypass_info_psr_value_buffer <= bypass_info_buffer(63 downto 32);
    -- flow-through slice operator slice_1748_inst
    bypass_info_rd_value_buffer <= bypass_info_buffer(31 downto 0);
    -- flow through binary operator AND_u1_u1_1771_inst
    AND_u1_u1_1771_wire <= (bypass_alu_active_1765 and NEQ_u5_u1_1770_wire);
    -- flow through binary operator AND_u1_u1_1777_inst
    AND_u1_u1_1777_wire <= (read_rs1_buffer and EQ_u5_u1_1776_wire);
    -- flow through binary operator AND_u1_u1_1778_inst
    AND_u1_u1_1778_wire <= (rs1_has_one_pending_write_buffer and AND_u1_u1_1777_wire);
    -- flow through binary operator AND_u1_u1_1779_inst
    bypass_rs1_possible_buffer <= (AND_u1_u1_1771_wire and AND_u1_u1_1778_wire);
    -- flow through binary operator AND_u1_u1_1786_inst
    AND_u1_u1_1786_wire <= (bypass_alu_active_1765 and NEQ_u5_u1_1785_wire);
    -- flow through binary operator AND_u1_u1_1792_inst
    AND_u1_u1_1792_wire <= (read_rs2_buffer and EQ_u5_u1_1791_wire);
    -- flow through binary operator AND_u1_u1_1793_inst
    AND_u1_u1_1793_wire <= (rs2_has_one_pending_write_buffer and AND_u1_u1_1792_wire);
    -- flow through binary operator AND_u1_u1_1794_inst
    bypass_rs2_possible_buffer <= (AND_u1_u1_1786_wire and AND_u1_u1_1793_wire);
    -- flow through binary operator AND_u1_u1_1806_inst
    AND_u1_u1_1806_wire <= (bypass_alu_active_1765 and NEQ_u5_u1_1805_wire);
    -- flow through binary operator AND_u1_u1_1812_inst
    AND_u1_u1_1812_wire <= (read_rd_h_buffer and EQ_u5_u1_1811_wire);
    -- flow through binary operator AND_u1_u1_1813_inst
    AND_u1_u1_1813_wire <= (rd_h_has_one_pending_write_buffer and AND_u1_u1_1812_wire);
    -- flow through binary operator AND_u1_u1_1814_inst
    bypass_rd_h_possible_buffer <= (AND_u1_u1_1806_wire and AND_u1_u1_1813_wire);
    -- flow through binary operator AND_u1_u1_1829_inst
    AND_u1_u1_1829_wire <= (bypass_alu_active_1765 and NEQ_u5_u1_1828_wire);
    -- flow through binary operator AND_u1_u1_1835_inst
    AND_u1_u1_1835_wire <= (read_rd_l_buffer and EQ_u5_u1_1834_wire);
    -- flow through binary operator AND_u1_u1_1836_inst
    AND_u1_u1_1836_wire <= (rd_l_has_one_pending_write_buffer and AND_u1_u1_1835_wire);
    -- flow through binary operator AND_u1_u1_1837_inst
    bypass_rd_l_possible_buffer <= (AND_u1_u1_1829_wire and AND_u1_u1_1836_wire);
    -- flow through binary operator AND_u1_u1_1844_inst
    AND_u1_u1_1844_wire <= (bypass_psr_active_1765 and NEQ_u3_u1_1843_wire);
    -- flow through binary operator AND_u1_u1_1847_inst
    bypass_psr_possible_buffer <= (AND_u1_u1_1844_wire and NOT_u1_u1_1846_wire);
    -- flow through binary operator AND_u1_u1_1896_inst
    AND_u1_u1_1896_wire <= (OR_u1_u1_1893_wire and NOT_u1_u1_1895_wire);
    -- flow through binary operator AND_u1_u1_1899_inst
    AND_u1_u1_1899_wire <= (AND_u1_u1_1896_wire and NOT_u1_u1_1898_wire);
    -- flow through binary operator AND_u1_u1_1903_inst
    AND_u1_u1_1903_wire <= (NOT_u1_u1_1901_wire and speculative_lock_locks_available_buffer);
    -- flow through binary operator AND_u1_u1_1904_inst
    AND_u1_u1_1904_wire <= (AND_u1_u1_1899_wire and AND_u1_u1_1903_wire);
    -- flow through binary operator AND_u1_u1_1907_inst
    AND_u1_u1_1907_wire <= (rs1_ok_1856 and rs2_ok_1864);
    -- flow through binary operator AND_u1_u1_1909_inst
    AND_u1_u1_1909_wire <= (AND_u1_u1_1907_wire and rd_h_ok_1872);
    -- flow through binary operator AND_u1_u1_1912_inst
    AND_u1_u1_1912_wire <= (rd_l_ok_1880 and psr_ok_1889);
    -- flow through binary operator AND_u1_u1_1913_inst
    AND_u1_u1_1913_wire <= (AND_u1_u1_1909_wire and AND_u1_u1_1912_wire);
    -- flow through binary operator AND_u1_u1_1914_inst
    bypass_possible_buffer <= (AND_u1_u1_1904_wire and AND_u1_u1_1913_wire);
    -- flow through binary operator AND_u1_u1_1919_inst
    trace_rs1_bypass_1920 <= (bypass_possible_buffer and bypass_rs1_possible_buffer);
    -- flow through binary operator AND_u1_u1_1926_inst
    trace_rs2_bypass_1927 <= (bypass_possible_buffer and bypass_rs2_possible_buffer);
    -- flow through binary operator AND_u1_u1_1933_inst
    trace_rd_h_bypass_1934 <= (bypass_possible_buffer and bypass_rd_h_possible_buffer);
    -- flow through binary operator AND_u1_u1_1940_inst
    trace_rd_l_bypass_1941 <= (bypass_possible_buffer and bypass_rd_l_possible_buffer);
    -- flow through binary operator AND_u1_u1_1947_inst
    trace_psr_bypass_1948 <= (bypass_possible_buffer and bypass_psr_possible_buffer);
    -- flow through binary operator AND_u3_u3_1884_inst
    AND_u3_u3_1884_wire <= (read_psr_buffer and psr_read_locks_buffer);
    -- flow through binary operator AND_u5_u5_1799_inst
    rd_h_index_1800 <= (read_rd_buffer and konst_1798_wire_constant);
    -- flow through binary operator EQ_u3_u1_1886_inst
    process(AND_u3_u3_1884_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u3_u3_1884_wire, konst_1885_wire_constant, tmp_var);
      EQ_u3_u1_1886_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_1776_inst
    process(rs1_buffer, bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_buffer, bypass_info_rd_1741, tmp_var);
      EQ_u5_u1_1776_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_1791_inst
    process(rs2_buffer, bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs2_buffer, bypass_info_rd_1741, tmp_var);
      EQ_u5_u1_1791_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_1811_inst
    process(rd_h_index_1800, bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rd_h_index_1800, bypass_info_rd_1741, tmp_var);
      EQ_u5_u1_1811_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_1834_inst
    process(rd_l_index_1823, bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rd_l_index_1823, bypass_info_rd_1741, tmp_var);
      EQ_u5_u1_1834_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_1843_inst
    process(psr_read_locks_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(psr_read_locks_buffer, konst_1842_wire_constant, tmp_var);
      NEQ_u3_u1_1843_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_1770_inst
    process(bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(bypass_info_rd_1741, konst_1769_wire_constant, tmp_var);
      NEQ_u5_u1_1770_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_1785_inst
    process(bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(bypass_info_rd_1741, konst_1784_wire_constant, tmp_var);
      NEQ_u5_u1_1785_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_1805_inst
    process(bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(bypass_info_rd_1741, konst_1804_wire_constant, tmp_var);
      NEQ_u5_u1_1805_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_1828_inst
    process(bypass_info_rd_1741) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(bypass_info_rd_1741, konst_1827_wire_constant, tmp_var);
      NEQ_u5_u1_1828_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_1846_inst
    process(save_restore_lock_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", save_restore_lock_buffer, tmp_var);
      NOT_u1_u1_1846_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1851_inst
    process(read_rs1_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_rs1_buffer, tmp_var);
      NOT_u1_u1_1851_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1859_inst
    process(read_rs2_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_rs2_buffer, tmp_var);
      NOT_u1_u1_1859_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1867_inst
    process(read_rd_h_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_rd_h_buffer, tmp_var);
      NOT_u1_u1_1867_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1875_inst
    process(read_rd_l_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_rd_l_buffer, tmp_var);
      NOT_u1_u1_1875_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1895_inst
    process(read_skip_iu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_skip_iu_buffer, tmp_var);
      NOT_u1_u1_1895_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1898_inst
    process(read_sreg_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_sreg_buffer, tmp_var);
      NOT_u1_u1_1898_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_1901_inst
    process(read_lock_all_regs_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_lock_all_regs_buffer, tmp_var);
      NOT_u1_u1_1901_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_1853_inst
    OR_u1_u1_1853_wire <= (NOT_u1_u1_1851_wire or rs1_read_lock_available_buffer);
    -- flow through binary operator OR_u1_u1_1855_inst
    rs1_ok_1856 <= (OR_u1_u1_1853_wire or bypass_rs1_possible_buffer);
    -- flow through binary operator OR_u1_u1_1861_inst
    OR_u1_u1_1861_wire <= (NOT_u1_u1_1859_wire or rs2_read_lock_available_buffer);
    -- flow through binary operator OR_u1_u1_1863_inst
    rs2_ok_1864 <= (OR_u1_u1_1861_wire or bypass_rs2_possible_buffer);
    -- flow through binary operator OR_u1_u1_1869_inst
    OR_u1_u1_1869_wire <= (NOT_u1_u1_1867_wire or rd_h_read_lock_available_buffer);
    -- flow through binary operator OR_u1_u1_1871_inst
    rd_h_ok_1872 <= (OR_u1_u1_1869_wire or bypass_rd_h_possible_buffer);
    -- flow through binary operator OR_u1_u1_1877_inst
    OR_u1_u1_1877_wire <= (NOT_u1_u1_1875_wire or rd_l_read_lock_available_buffer);
    -- flow through binary operator OR_u1_u1_1879_inst
    rd_l_ok_1880 <= (OR_u1_u1_1877_wire or bypass_rd_l_possible_buffer);
    -- flow through binary operator OR_u1_u1_1888_inst
    psr_ok_1889 <= (EQ_u3_u1_1886_wire or bypass_psr_possible_buffer);
    -- flow through binary operator OR_u1_u1_1893_inst
    OR_u1_u1_1893_wire <= (bypass_alu_active_1765 or bypass_psr_active_1765);
    -- flow through binary operator OR_u1_u1_1978_inst
    bypass_active_buffer <= (bypass_alu_active_1765 or bypass_psr_active_1765);
    -- flow through binary operator OR_u5_u5_1820_inst
    OR_u5_u5_1820_wire <= (read_rd_buffer or konst_1819_wire_constant);
    volatile_operator_check_if_bypass_is_active_1586: check_if_bypass_is_active_Volatile port map(bypass_info => bypass_info_buffer, read_thread_id => read_thread_id_buffer, read_stream_id => read_stream_id_buffer, read_slot_id => read_slot_id_buffer, bypass_alu_active => bypass_alu_active_1765, bypass_psr_active => bypass_psr_active_1765); 
    -- 
  end Block; -- data_path
  -- 
end bypass_possible_logic_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity calculate_address_Volatile is -- 
  port ( -- 
    reg_id : in  std_logic_vector(4 downto 0);
    cwp : in  std_logic_vector(4 downto 0);
    reg_address : out  std_logic_vector(6 downto 0)-- 
  );
  -- 
end entity calculate_address_Volatile;
architecture calculate_address_Volatile_arch of calculate_address_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(10-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal reg_id_buffer :  std_logic_vector(4 downto 0);
  signal cwp_buffer :  std_logic_vector(4 downto 0);
  -- output port buffer signals
  signal reg_address_buffer :  std_logic_vector(6 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  reg_id_buffer <= reg_id;
  cwp_buffer <= cwp;
  -- output handling  -------------------------------------------------------
  reg_address <= reg_address_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u5_u5_1997_wire : std_logic_vector(4 downto 0);
    signal MUX_2058_wire : std_logic_vector(6 downto 0);
    signal SUB_u5_u5_2009_wire : std_logic_vector(4 downto 0);
    signal SUB_u7_u7_2021_wire : std_logic_vector(6 downto 0);
    signal SUB_u7_u7_2038_wire : std_logic_vector(6 downto 0);
    signal ULT_u5_u1_2050_wire : std_logic_vector(0 downto 0);
    signal ULT_u5_u1_2055_wire : std_logic_vector(0 downto 0);
    signal cwp_7_1991 : std_logic_vector(6 downto 0);
    signal incr_cwp_7_2000 : std_logic_vector(6 downto 0);
    signal ireg_addr_2046 : std_logic_vector(6 downto 0);
    signal ireg_base_2034 : std_logic_vector(6 downto 0);
    signal ireg_offset_2041 : std_logic_vector(6 downto 0);
    signal konst_1996_wire_constant : std_logic_vector(4 downto 0);
    signal konst_2008_wire_constant : std_logic_vector(4 downto 0);
    signal konst_2015_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2020_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2022_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2032_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2037_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2039_wire_constant : std_logic_vector(6 downto 0);
    signal konst_2049_wire_constant : std_logic_vector(4 downto 0);
    signal konst_2054_wire_constant : std_logic_vector(4 downto 0);
    signal oreg_local_addr_2029 : std_logic_vector(6 downto 0);
    signal oreg_local_base_2017 : std_logic_vector(6 downto 0);
    signal oreg_local_offset_2024 : std_logic_vector(6 downto 0);
    signal reg_pair_id_7_2005 : std_logic_vector(6 downto 0);
    signal reg_pair_id_minus_16_7_2012 : std_logic_vector(6 downto 0);
    signal slice_1989_wire : std_logic_vector(2 downto 0);
    signal slice_1998_wire : std_logic_vector(2 downto 0);
    signal slice_2003_wire : std_logic_vector(3 downto 0);
    signal slice_2010_wire : std_logic_vector(3 downto 0);
    signal type_cast_1987_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_1994_wire_constant : std_logic_vector(3 downto 0);
    signal type_cast_2052_wire : std_logic_vector(6 downto 0);
    -- 
  begin -- 
    konst_1996_wire_constant <= "00001";
    konst_2008_wire_constant <= "10000";
    konst_2015_wire_constant <= "0000011";
    konst_2020_wire_constant <= "0000100";
    konst_2022_wire_constant <= "0000100";
    konst_2032_wire_constant <= "0000011";
    konst_2037_wire_constant <= "0000100";
    konst_2039_wire_constant <= "0000100";
    konst_2049_wire_constant <= "01000";
    konst_2054_wire_constant <= "11000";
    type_cast_1987_wire_constant <= "0000";
    type_cast_1994_wire_constant <= "0000";
    -- flow-through select operator MUX_2058_inst
    MUX_2058_wire <= oreg_local_addr_2029 when (ULT_u5_u1_2055_wire(0) /=  '0') else ireg_addr_2046;
    -- flow-through select operator MUX_2059_inst
    reg_address_buffer <= type_cast_2052_wire when (ULT_u5_u1_2050_wire(0) /=  '0') else MUX_2058_wire;
    -- flow-through slice operator slice_1989_inst
    slice_1989_wire <= cwp_buffer(2 downto 0);
    -- flow-through slice operator slice_1998_inst
    slice_1998_wire <= ADD_u5_u5_1997_wire(2 downto 0);
    -- flow-through slice operator slice_2003_inst
    slice_2003_wire <= reg_id_buffer(4 downto 1);
    -- flow-through slice operator slice_2010_inst
    slice_2010_wire <= SUB_u5_u5_2009_wire(4 downto 1);
    -- interlock type_cast_2004_inst
    process(slice_2003_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 3 downto 0) := slice_2003_wire(3 downto 0);
      reg_pair_id_7_2005 <= tmp_var; -- 
    end process;
    -- interlock type_cast_2011_inst
    process(slice_2010_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 3 downto 0) := slice_2010_wire(3 downto 0);
      reg_pair_id_minus_16_7_2012 <= tmp_var; -- 
    end process;
    -- interlock type_cast_2052_inst
    process(reg_pair_id_7_2005) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 6 downto 0) := reg_pair_id_7_2005(6 downto 0);
      type_cast_2052_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator ADD_u5_u5_1997_inst
    ADD_u5_u5_1997_wire <= std_logic_vector(unsigned(cwp_buffer) + unsigned(konst_1996_wire_constant));
    -- flow through binary operator ADD_u7_u7_2023_inst
    oreg_local_offset_2024 <= std_logic_vector(unsigned(SUB_u7_u7_2021_wire) + unsigned(konst_2022_wire_constant));
    -- flow through binary operator ADD_u7_u7_2028_inst
    oreg_local_addr_2029 <= std_logic_vector(unsigned(oreg_local_base_2017) + unsigned(oreg_local_offset_2024));
    -- flow through binary operator ADD_u7_u7_2040_inst
    ireg_offset_2041 <= std_logic_vector(unsigned(SUB_u7_u7_2038_wire) + unsigned(konst_2039_wire_constant));
    -- flow through binary operator ADD_u7_u7_2045_inst
    ireg_addr_2046 <= std_logic_vector(unsigned(ireg_base_2034) + unsigned(ireg_offset_2041));
    -- flow through binary operator CONCAT_u4_u7_1990_inst
    process(type_cast_1987_wire_constant, slice_1989_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_1987_wire_constant, slice_1989_wire, tmp_var);
      cwp_7_1991 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u7_1999_inst
    process(type_cast_1994_wire_constant, slice_1998_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_1994_wire_constant, slice_1998_wire, tmp_var);
      incr_cwp_7_2000 <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u7_u7_2016_inst
    process(cwp_7_1991) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApIntSHL_proc(cwp_7_1991, konst_2015_wire_constant, tmp_var);
      oreg_local_base_2017 <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u7_u7_2033_inst
    process(incr_cwp_7_2000) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApIntSHL_proc(incr_cwp_7_2000, konst_2032_wire_constant, tmp_var);
      ireg_base_2034 <= tmp_var; --
    end process;
    -- flow through binary operator SUB_u5_u5_2009_inst
    SUB_u5_u5_2009_wire <= std_logic_vector(unsigned(reg_id_buffer) - unsigned(konst_2008_wire_constant));
    -- flow through binary operator SUB_u7_u7_2021_inst
    SUB_u7_u7_2021_wire <= std_logic_vector(unsigned(reg_pair_id_7_2005) - unsigned(konst_2020_wire_constant));
    -- flow through binary operator SUB_u7_u7_2038_inst
    SUB_u7_u7_2038_wire <= std_logic_vector(unsigned(reg_pair_id_minus_16_7_2012) - unsigned(konst_2037_wire_constant));
    -- flow through binary operator ULT_u5_u1_2050_inst
    process(reg_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(reg_id_buffer, konst_2049_wire_constant, tmp_var);
      ULT_u5_u1_2050_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u5_u1_2055_inst
    process(reg_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(reg_id_buffer, konst_2054_wire_constant, tmp_var);
      ULT_u5_u1_2055_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end calculate_address_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity calculate_next_psr_value_Volatile is -- 
  port ( -- 
    write_psr : in  std_logic_vector(2 downto 0);
    psr_value : in  std_logic_vector(31 downto 0);
    curr_psr_val : in  std_logic_vector(31 downto 0);
    new_psr_val : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity calculate_next_psr_value_Volatile;
architecture calculate_next_psr_value_Volatile_arch of calculate_next_psr_value_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(67-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal write_psr_buffer :  std_logic_vector(2 downto 0);
  signal psr_value_buffer :  std_logic_vector(31 downto 0);
  signal curr_psr_val_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal new_psr_val_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  write_psr_buffer <= write_psr;
  psr_value_buffer <= psr_value;
  curr_psr_val_buffer <= curr_psr_val;
  -- output handling  -------------------------------------------------------
  new_psr_val <= new_psr_val_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u15_u20_2118_wire : std_logic_vector(19 downto 0);
    signal CONCAT_u8_u12_2105_wire : std_logic_vector(11 downto 0);
    signal MUX_2098_wire : std_logic_vector(7 downto 0);
    signal MUX_2104_wire : std_logic_vector(3 downto 0);
    signal MUX_2111_wire : std_logic_vector(14 downto 0);
    signal MUX_2117_wire : std_logic_vector(4 downto 0);
    signal slice_2095_wire : std_logic_vector(7 downto 0);
    signal slice_2097_wire : std_logic_vector(7 downto 0);
    signal slice_2101_wire : std_logic_vector(3 downto 0);
    signal slice_2103_wire : std_logic_vector(3 downto 0);
    signal slice_2108_wire : std_logic_vector(14 downto 0);
    signal slice_2110_wire : std_logic_vector(14 downto 0);
    signal slice_2114_wire : std_logic_vector(4 downto 0);
    signal slice_2116_wire : std_logic_vector(4 downto 0);
    signal update_cc_2087 : std_logic_vector(0 downto 0);
    signal update_cwp_2091 : std_logic_vector(0 downto 0);
    signal update_psr_rest_2083 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through select operator MUX_2098_inst
    MUX_2098_wire <= slice_2095_wire when (update_psr_rest_2083(0) /=  '0') else slice_2097_wire;
    -- flow-through select operator MUX_2104_inst
    MUX_2104_wire <= slice_2101_wire when (update_cc_2087(0) /=  '0') else slice_2103_wire;
    -- flow-through select operator MUX_2111_inst
    MUX_2111_wire <= slice_2108_wire when (update_psr_rest_2083(0) /=  '0') else slice_2110_wire;
    -- flow-through select operator MUX_2117_inst
    MUX_2117_wire <= slice_2114_wire when (update_cwp_2091(0) /=  '0') else slice_2116_wire;
    -- flow-through slice operator slice_2082_inst
    update_psr_rest_2083 <= write_psr_buffer(2 downto 2);
    -- flow-through slice operator slice_2086_inst
    update_cc_2087 <= write_psr_buffer(1 downto 1);
    -- flow-through slice operator slice_2090_inst
    update_cwp_2091 <= write_psr_buffer(0 downto 0);
    -- flow-through slice operator slice_2095_inst
    slice_2095_wire <= psr_value_buffer(31 downto 24);
    -- flow-through slice operator slice_2097_inst
    slice_2097_wire <= curr_psr_val_buffer(31 downto 24);
    -- flow-through slice operator slice_2101_inst
    slice_2101_wire <= psr_value_buffer(23 downto 20);
    -- flow-through slice operator slice_2103_inst
    slice_2103_wire <= curr_psr_val_buffer(23 downto 20);
    -- flow-through slice operator slice_2108_inst
    slice_2108_wire <= psr_value_buffer(19 downto 5);
    -- flow-through slice operator slice_2110_inst
    slice_2110_wire <= curr_psr_val_buffer(19 downto 5);
    -- flow-through slice operator slice_2114_inst
    slice_2114_wire <= psr_value_buffer(4 downto 0);
    -- flow-through slice operator slice_2116_inst
    slice_2116_wire <= curr_psr_val_buffer(4 downto 0);
    -- flow through binary operator CONCAT_u12_u32_2119_inst
    process(CONCAT_u8_u12_2105_wire, CONCAT_u15_u20_2118_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u12_2105_wire, CONCAT_u15_u20_2118_wire, tmp_var);
      new_psr_val_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u20_2118_inst
    process(MUX_2111_wire, MUX_2117_wire) -- 
      variable tmp_var : std_logic_vector(19 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_2111_wire, MUX_2117_wire, tmp_var);
      CONCAT_u15_u20_2118_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u12_2105_inst
    process(MUX_2098_wire, MUX_2104_wire) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_2098_wire, MUX_2104_wire, tmp_var);
      CONCAT_u8_u12_2105_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end calculate_next_psr_value_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity calculate_next_tbr_value_Volatile is -- 
  port ( -- 
    tbr_value : in  std_logic_vector(31 downto 0);
    old_tbr_value : in  std_logic_vector(31 downto 0);
    new_tbr_value : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity calculate_next_tbr_value_Volatile;
architecture calculate_next_tbr_value_Volatile_arch of calculate_next_tbr_value_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(64-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal tbr_value_buffer :  std_logic_vector(31 downto 0);
  signal old_tbr_value_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal new_tbr_value_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  tbr_value_buffer <= tbr_value;
  old_tbr_value_buffer <= old_tbr_value;
  -- output handling  -------------------------------------------------------
  new_tbr_value <= new_tbr_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal slice_2128_wire : std_logic_vector(19 downto 0);
    signal slice_2130_wire : std_logic_vector(11 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_2128_inst
    slice_2128_wire <= tbr_value_buffer(31 downto 12);
    -- flow-through slice operator slice_2130_inst
    slice_2130_wire <= old_tbr_value_buffer(11 downto 0);
    -- flow through binary operator CONCAT_u20_u32_2131_inst
    process(slice_2128_wire, slice_2130_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_2128_wire, slice_2130_wire, tmp_var);
      new_tbr_value_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end calculate_next_tbr_value_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity calculate_next_wim_value_Volatile is -- 
  port ( -- 
    wim_value : in  std_logic_vector(31 downto 0);
    new_wim_value : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity calculate_next_wim_value_Volatile;
architecture calculate_next_wim_value_Volatile_arch of calculate_next_wim_value_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(32-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal wim_value_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal new_wim_value_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  wim_value_buffer <= wim_value;
  -- output handling  -------------------------------------------------------
  new_wim_value <= new_wim_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal R_WIM_MASK_2139_wire_constant : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    R_WIM_MASK_2139_wire_constant <= "00000000000000000000000011111111";
    -- flow through binary operator AND_u32_u32_2140_inst
    new_wim_value_buffer <= (wim_value_buffer and R_WIM_MASK_2139_wire_constant);
    -- 
  end Block; -- data_path
  -- 
end calculate_next_wim_value_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity check_if_bypass_cc_is_active_Volatile is -- 
  port ( -- 
    bypass_cc_info : in  std_logic_vector(16 downto 0);
    read_thread_id : in  std_logic_vector(3 downto 0);
    read_stream_id : in  std_logic_vector(1 downto 0);
    read_slot_id : in  std_logic_vector(5 downto 0);
    bypass_active : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity check_if_bypass_cc_is_active_Volatile;
architecture check_if_bypass_cc_is_active_Volatile_arch of check_if_bypass_cc_is_active_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(29-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal bypass_cc_info_buffer :  std_logic_vector(16 downto 0);
  signal read_thread_id_buffer :  std_logic_vector(3 downto 0);
  signal read_stream_id_buffer :  std_logic_vector(1 downto 0);
  signal read_slot_id_buffer :  std_logic_vector(5 downto 0);
  -- output port buffer signals
  signal bypass_active_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  bypass_cc_info_buffer <= bypass_cc_info;
  read_thread_id_buffer <= read_thread_id;
  read_stream_id_buffer <= read_stream_id;
  read_slot_id_buffer <= read_slot_id;
  -- output handling  -------------------------------------------------------
  bypass_active <= bypass_active_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_1557_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_1560_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1556_wire : std_logic_vector(0 downto 0);
    signal bypass_info_valid_1543 : std_logic_vector(0 downto 0);
    signal bypass_stream_id_1551 : std_logic_vector(1 downto 0);
    signal bypass_thread_id_1547 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_1542_inst
    bypass_info_valid_1543 <= bypass_cc_info_buffer(16 downto 16);
    -- flow-through slice operator slice_1546_inst
    bypass_thread_id_1547 <= bypass_cc_info_buffer(15 downto 12);
    -- flow-through slice operator slice_1550_inst
    bypass_stream_id_1551 <= bypass_cc_info_buffer(11 downto 10);
    -- flow through binary operator AND_u1_u1_1557_inst
    AND_u1_u1_1557_wire <= (bypass_info_valid_1543 and EQ_u4_u1_1556_wire);
    -- flow through binary operator AND_u1_u1_1561_inst
    bypass_active_buffer <= (AND_u1_u1_1557_wire and EQ_u2_u1_1560_wire);
    -- flow through binary operator EQ_u2_u1_1560_inst
    process(bypass_stream_id_1551, read_stream_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bypass_stream_id_1551, read_stream_id_buffer, tmp_var);
      EQ_u2_u1_1560_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1556_inst
    process(bypass_thread_id_1547, read_thread_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bypass_thread_id_1547, read_thread_id_buffer, tmp_var);
      EQ_u4_u1_1556_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end check_if_bypass_cc_is_active_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity check_if_bypass_is_active_Volatile is -- 
  port ( -- 
    bypass_info : in  std_logic_vector(82 downto 0);
    read_thread_id : in  std_logic_vector(3 downto 0);
    read_stream_id : in  std_logic_vector(1 downto 0);
    read_slot_id : in  std_logic_vector(5 downto 0);
    bypass_alu_active : out  std_logic_vector(0 downto 0);
    bypass_psr_active : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity check_if_bypass_is_active_Volatile;
architecture check_if_bypass_is_active_Volatile_arch of check_if_bypass_is_active_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(95-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal bypass_info_buffer :  std_logic_vector(82 downto 0);
  signal read_thread_id_buffer :  std_logic_vector(3 downto 0);
  signal read_stream_id_buffer :  std_logic_vector(1 downto 0);
  signal read_slot_id_buffer :  std_logic_vector(5 downto 0);
  -- output port buffer signals
  signal bypass_alu_active_buffer :  std_logic_vector(0 downto 0);
  signal bypass_psr_active_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  bypass_info_buffer <= bypass_info;
  read_thread_id_buffer <= read_thread_id;
  read_stream_id_buffer <= read_stream_id;
  read_slot_id_buffer <= read_slot_id;
  -- output handling  -------------------------------------------------------
  bypass_alu_active <= bypass_alu_active_buffer;
  bypass_psr_active <= bypass_psr_active_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u2_u1_1664_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_1661_wire : std_logic_vector(0 downto 0);
    signal bypass_info_alu_valid_1645 : std_logic_vector(0 downto 0);
    signal bypass_info_update_psr_1657 : std_logic_vector(0 downto 0);
    signal bypass_slots_ok_1666 : std_logic_vector(0 downto 0);
    signal bypass_stream_id_1653 : std_logic_vector(1 downto 0);
    signal bypass_thread_id_1649 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_1644_inst
    bypass_info_alu_valid_1645 <= bypass_info_buffer(82 downto 82);
    -- flow-through slice operator slice_1648_inst
    bypass_thread_id_1649 <= bypass_info_buffer(81 downto 78);
    -- flow-through slice operator slice_1652_inst
    bypass_stream_id_1653 <= bypass_info_buffer(77 downto 76);
    -- flow-through slice operator slice_1656_inst
    bypass_info_update_psr_1657 <= bypass_info_buffer(69 downto 69);
    -- flow through binary operator AND_u1_u1_1665_inst
    bypass_slots_ok_1666 <= (EQ_u4_u1_1661_wire and EQ_u2_u1_1664_wire);
    -- flow through binary operator AND_u1_u1_1670_inst
    bypass_alu_active_buffer <= (bypass_info_alu_valid_1645 and bypass_slots_ok_1666);
    -- flow through binary operator AND_u1_u1_1675_inst
    bypass_psr_active_buffer <= (bypass_info_update_psr_1657 and bypass_slots_ok_1666);
    -- flow through binary operator EQ_u2_u1_1664_inst
    process(bypass_stream_id_1653, read_stream_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bypass_stream_id_1653, read_stream_id_buffer, tmp_var);
      EQ_u2_u1_1664_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_1661_inst
    process(bypass_thread_id_1649, read_thread_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bypass_thread_id_1649, read_thread_id_buffer, tmp_var);
      EQ_u4_u1_1661_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end check_if_bypass_is_active_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity clear_psr_locks_Volatile is -- 
  port ( -- 
    clear_locks : in  std_logic_vector(2 downto 0);
    psr_read_locks : in  std_logic_vector(2 downto 0);
    next_psr_read_locks : out  std_logic_vector(2 downto 0)-- 
  );
  -- 
end entity clear_psr_locks_Volatile;
architecture clear_psr_locks_Volatile_arch of clear_psr_locks_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(6-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal clear_locks_buffer :  std_logic_vector(2 downto 0);
  signal psr_read_locks_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal next_psr_read_locks_buffer :  std_logic_vector(2 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  clear_locks_buffer <= clear_locks;
  psr_read_locks_buffer <= psr_read_locks;
  -- output handling  -------------------------------------------------------
  next_psr_read_locks <= next_psr_read_locks_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal NOT_u3_u3_2218_wire : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    -- flow through binary operator AND_u3_u3_2219_inst
    next_psr_read_locks_buffer <= (psr_read_locks_buffer and NOT_u3_u3_2218_wire);
    -- unary operator NOT_u3_u3_2218_inst
    process(clear_locks_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", clear_locks_buffer, tmp_var);
      NOT_u3_u3_2218_wire <= tmp_var; -- 
    end process;
    -- 
  end Block; -- data_path
  -- 
end clear_psr_locks_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity clear_single_bit_lock_Volatile is -- 
  port ( -- 
    clear_lock : in  std_logic_vector(0 downto 0);
    old_lock_value : in  std_logic_vector(0 downto 0);
    new_lock_value : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity clear_single_bit_lock_Volatile;
architecture clear_single_bit_lock_Volatile_arch of clear_single_bit_lock_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(2-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal clear_lock_buffer :  std_logic_vector(0 downto 0);
  signal old_lock_value_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal new_lock_value_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  clear_lock_buffer <= clear_lock;
  old_lock_value_buffer <= old_lock_value;
  -- output handling  -------------------------------------------------------
  new_lock_value <= new_lock_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal R_ZERO_1_2228_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ZERO_1_2228_wire_constant <= "0";
    -- flow-through select operator MUX_2230_inst
    new_lock_value_buffer <= R_ZERO_1_2228_wire_constant when (clear_lock_buffer(0) /=  '0') else old_lock_value_buffer;
    -- 
  end Block; -- data_path
  -- 
end clear_single_bit_lock_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity clear_y_lock_Volatile is -- 
  port ( -- 
    clear_lock : in  std_logic_vector(0 downto 0);
    old_lock_value : in  std_logic_vector(2 downto 0);
    new_lock_value : out  std_logic_vector(2 downto 0)-- 
  );
  -- 
end entity clear_y_lock_Volatile;
architecture clear_y_lock_Volatile_arch of clear_y_lock_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(4-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal clear_lock_buffer :  std_logic_vector(0 downto 0);
  signal old_lock_value_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal new_lock_value_buffer :  std_logic_vector(2 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  clear_lock_buffer <= clear_lock;
  old_lock_value_buffer <= old_lock_value;
  -- output handling  -------------------------------------------------------
  new_lock_value <= new_lock_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal MUX_2246_wire : std_logic_vector(2 downto 0);
    signal SUB_u3_u3_2244_wire : std_logic_vector(2 downto 0);
    signal UGT_u3_u1_2241_wire : std_logic_vector(0 downto 0);
    signal konst_2240_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2243_wire_constant : std_logic_vector(2 downto 0);
    signal konst_2245_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_2240_wire_constant <= "000";
    konst_2243_wire_constant <= "001";
    konst_2245_wire_constant <= "000";
    -- flow-through select operator MUX_2246_inst
    MUX_2246_wire <= SUB_u3_u3_2244_wire when (UGT_u3_u1_2241_wire(0) /=  '0') else konst_2245_wire_constant;
    -- flow-through select operator MUX_2248_inst
    new_lock_value_buffer <= MUX_2246_wire when (clear_lock_buffer(0) /=  '0') else old_lock_value_buffer;
    -- flow through binary operator SUB_u3_u3_2244_inst
    SUB_u3_u3_2244_wire <= std_logic_vector(unsigned(old_lock_value_buffer) - unsigned(konst_2243_wire_constant));
    -- flow through binary operator UGT_u3_u1_2241_inst
    process(old_lock_value_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(old_lock_value_buffer, konst_2240_wire_constant, tmp_var);
      UGT_u3_u1_2241_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end clear_y_lock_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity construct_wb_message_to_iretire_Volatile is -- 
  port ( -- 
    write_command_valid : in  std_logic_vector(0 downto 0);
    write_response_valid : in  std_logic_vector(0 downto 0);
    write_response : in  std_logic_vector(43 downto 0);
    fwd_to_retire_valid : in  std_logic_vector(0 downto 0);
    fwd_info_to_retire : in  std_logic_vector(95 downto 0);
    psr_modified : in  std_logic_vector(0 downto 0);
    tbr_modified : in  std_logic_vector(0 downto 0);
    ret_PSR : in  std_logic_vector(31 downto 0);
    ret_TBR : in  std_logic_vector(31 downto 0);
    send_to_iretire : out  std_logic_vector(0 downto 0);
    response_to_iretire : out  std_logic_vector(95 downto 0)-- 
  );
  -- 
end entity construct_wb_message_to_iretire_Volatile;
architecture construct_wb_message_to_iretire_Volatile_arch of construct_wb_message_to_iretire_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(209-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal write_command_valid_buffer :  std_logic_vector(0 downto 0);
  signal write_response_valid_buffer :  std_logic_vector(0 downto 0);
  signal write_response_buffer :  std_logic_vector(43 downto 0);
  signal fwd_to_retire_valid_buffer :  std_logic_vector(0 downto 0);
  signal fwd_info_to_retire_buffer :  std_logic_vector(95 downto 0);
  signal psr_modified_buffer :  std_logic_vector(0 downto 0);
  signal tbr_modified_buffer :  std_logic_vector(0 downto 0);
  signal ret_PSR_buffer :  std_logic_vector(31 downto 0);
  signal ret_TBR_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal send_to_iretire_buffer :  std_logic_vector(0 downto 0);
  signal response_to_iretire_buffer :  std_logic_vector(95 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  write_command_valid_buffer <= write_command_valid;
  write_response_valid_buffer <= write_response_valid;
  write_response_buffer <= write_response;
  fwd_to_retire_valid_buffer <= fwd_to_retire_valid;
  fwd_info_to_retire_buffer <= fwd_info_to_retire;
  psr_modified_buffer <= psr_modified;
  tbr_modified_buffer <= tbr_modified;
  ret_PSR_buffer <= ret_PSR;
  ret_TBR_buffer <= ret_TBR;
  -- output handling  -------------------------------------------------------
  send_to_iretire <= send_to_iretire_buffer;
  response_to_iretire <= response_to_iretire_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u12_u15_2372_wire : std_logic_vector(14 downto 0);
    signal CONCAT_u17_u81_2381_wire : std_logic_vector(80 downto 0);
    signal CONCAT_u1_u2_2369_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_2375_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u17_2377_wire : std_logic_vector(16 downto 0);
    signal CONCAT_u2_u3_2371_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u32_u64_2380_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u4_u6_2364_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u6_u12_2366_wire : std_logic_vector(11 downto 0);
    signal NOT_u1_u1_2386_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_2388_wire : std_logic_vector(0 downto 0);
    signal exec_trap_2294 : std_logic_vector(0 downto 0);
    signal iunit_traps_2298 : std_logic_vector(14 downto 0);
    signal konst_2352_wire_constant : std_logic_vector(31 downto 0);
    signal machine_error_2290 : std_logic_vector(0 downto 0);
    signal pc_2278 : std_logic_vector(31 downto 0);
    signal psr_tbr_val_2360 : std_logic_vector(31 downto 0);
    signal psr_val_2282 : std_logic_vector(31 downto 0);
    signal rsp_sid_2338 : std_logic_vector(5 downto 0);
    signal rsp_stream_id_2334 : std_logic_vector(1 downto 0);
    signal rsp_tid_2330 : std_logic_vector(3 downto 0);
    signal rsp_wr_signature_2342 : std_logic_vector(31 downto 0);
    signal sid_2274 : std_logic_vector(5 downto 0);
    signal skip_iu_from_dispatch_2302 : std_logic_vector(0 downto 0);
    signal stream_id_2270 : std_logic_vector(1 downto 0);
    signal tid_2266 : std_logic_vector(3 downto 0);
    signal update_psr_2286 : std_logic_vector(0 downto 0);
    signal wr_signature_to_iretire_2354 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    konst_2352_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_2353_inst
    wr_signature_to_iretire_2354 <= rsp_wr_signature_2342 when (write_response_valid_buffer(0) /=  '0') else konst_2352_wire_constant;
    -- flow-through select operator MUX_2359_inst
    psr_tbr_val_2360 <= ret_PSR_buffer when (psr_modified_buffer(0) /=  '0') else ret_TBR_buffer;
    -- flow-through slice operator slice_2265_inst
    tid_2266 <= fwd_info_to_retire_buffer(94 downto 91);
    -- flow-through slice operator slice_2269_inst
    stream_id_2270 <= fwd_info_to_retire_buffer(90 downto 89);
    -- flow-through slice operator slice_2273_inst
    sid_2274 <= fwd_info_to_retire_buffer(88 downto 83);
    -- flow-through slice operator slice_2277_inst
    pc_2278 <= fwd_info_to_retire_buffer(82 downto 51);
    -- flow-through slice operator slice_2281_inst
    psr_val_2282 <= fwd_info_to_retire_buffer(50 downto 19);
    -- flow-through slice operator slice_2285_inst
    update_psr_2286 <= fwd_info_to_retire_buffer(18 downto 18);
    -- flow-through slice operator slice_2289_inst
    machine_error_2290 <= fwd_info_to_retire_buffer(17 downto 17);
    -- flow-through slice operator slice_2293_inst
    exec_trap_2294 <= fwd_info_to_retire_buffer(16 downto 16);
    -- flow-through slice operator slice_2297_inst
    iunit_traps_2298 <= fwd_info_to_retire_buffer(15 downto 1);
    -- flow-through slice operator slice_2301_inst
    skip_iu_from_dispatch_2302 <= fwd_info_to_retire_buffer(0 downto 0);
    -- flow-through slice operator slice_2329_inst
    rsp_tid_2330 <= write_response_buffer(43 downto 40);
    -- flow-through slice operator slice_2333_inst
    rsp_stream_id_2334 <= write_response_buffer(39 downto 38);
    -- flow-through slice operator slice_2337_inst
    rsp_sid_2338 <= write_response_buffer(37 downto 32);
    -- flow-through slice operator slice_2341_inst
    rsp_wr_signature_2342 <= write_response_buffer(31 downto 0);
    -- flow through binary operator AND_u1_u1_2390_inst
    send_to_iretire_buffer <= (OR_u1_u1_2388_wire and fwd_to_retire_valid_buffer);
    -- flow through binary operator CONCAT_u12_u15_2372_inst
    process(CONCAT_u6_u12_2366_wire, CONCAT_u2_u3_2371_wire) -- 
      variable tmp_var : std_logic_vector(14 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_2366_wire, CONCAT_u2_u3_2371_wire, tmp_var);
      CONCAT_u12_u15_2372_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u96_2382_inst
    process(CONCAT_u12_u15_2372_wire, CONCAT_u17_u81_2381_wire) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u12_u15_2372_wire, CONCAT_u17_u81_2381_wire, tmp_var);
      response_to_iretire_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u17_u81_2381_inst
    process(CONCAT_u2_u17_2377_wire, CONCAT_u32_u64_2380_wire) -- 
      variable tmp_var : std_logic_vector(80 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u17_2377_wire, CONCAT_u32_u64_2380_wire, tmp_var);
      CONCAT_u17_u81_2381_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2369_inst
    process(machine_error_2290, skip_iu_from_dispatch_2302) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(machine_error_2290, skip_iu_from_dispatch_2302, tmp_var);
      CONCAT_u1_u2_2369_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_2375_inst
    process(tbr_modified_buffer, exec_trap_2294) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(tbr_modified_buffer, exec_trap_2294, tmp_var);
      CONCAT_u1_u2_2375_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u17_2377_inst
    process(CONCAT_u1_u2_2375_wire, iunit_traps_2298) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2375_wire, iunit_traps_2298, tmp_var);
      CONCAT_u2_u17_2377_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_2371_inst
    process(CONCAT_u1_u2_2369_wire, psr_modified_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_2369_wire, psr_modified_buffer, tmp_var);
      CONCAT_u2_u3_2371_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_2380_inst
    process(wr_signature_to_iretire_2354, psr_tbr_val_2360) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(wr_signature_to_iretire_2354, psr_tbr_val_2360, tmp_var);
      CONCAT_u32_u64_2380_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_2364_inst
    process(tid_2266, stream_id_2270) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(tid_2266, stream_id_2270, tmp_var);
      CONCAT_u4_u6_2364_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_2366_inst
    process(CONCAT_u4_u6_2364_wire, sid_2274) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_2364_wire, sid_2274, tmp_var);
      CONCAT_u6_u12_2366_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_2386_inst
    process(write_command_valid_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_command_valid_buffer, tmp_var);
      NOT_u1_u1_2386_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_2388_inst
    OR_u1_u1_2388_wire <= (NOT_u1_u1_2386_wire or write_response_valid_buffer);
    -- 
  end Block; -- data_path
  -- 
end construct_wb_message_to_iretire_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity decode_iunit_writeback_control_word_Volatile is -- 
  port ( -- 
    cw : in  std_logic_vector(24 downto 0);
    write_rd : out  std_logic_vector(0 downto 0);
    double_word : out  std_logic_vector(0 downto 0);
    write_rd_from_load_store : out  std_logic_vector(0 downto 0);
    write_rd_from_iunit : out  std_logic_vector(0 downto 0);
    write_rd_from_pc : out  std_logic_vector(0 downto 0);
    write_rd_from_sreg : out  std_logic_vector(0 downto 0);
    rd : out  std_logic_vector(4 downto 0);
    update_psr : out  std_logic_vector(2 downto 0);
    update_wim : out  std_logic_vector(0 downto 0);
    update_tbr : out  std_logic_vector(0 downto 0);
    update_y : out  std_logic_vector(0 downto 0);
    update_asr : out  std_logic_vector(0 downto 0);
    asr_id : out  std_logic_vector(4 downto 0);
    is_save : out  std_logic_vector(0 downto 0);
    is_restore : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity decode_iunit_writeback_control_word_Volatile;
architecture decode_iunit_writeback_control_word_Volatile_arch of decode_iunit_writeback_control_word_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(25-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal cw_buffer :  std_logic_vector(24 downto 0);
  -- output port buffer signals
  signal write_rd_buffer :  std_logic_vector(0 downto 0);
  signal double_word_buffer :  std_logic_vector(0 downto 0);
  signal write_rd_from_load_store_buffer :  std_logic_vector(0 downto 0);
  signal write_rd_from_iunit_buffer :  std_logic_vector(0 downto 0);
  signal write_rd_from_pc_buffer :  std_logic_vector(0 downto 0);
  signal write_rd_from_sreg_buffer :  std_logic_vector(0 downto 0);
  signal rd_buffer :  std_logic_vector(4 downto 0);
  signal update_psr_buffer :  std_logic_vector(2 downto 0);
  signal update_wim_buffer :  std_logic_vector(0 downto 0);
  signal update_tbr_buffer :  std_logic_vector(0 downto 0);
  signal update_y_buffer :  std_logic_vector(0 downto 0);
  signal update_asr_buffer :  std_logic_vector(0 downto 0);
  signal asr_id_buffer :  std_logic_vector(4 downto 0);
  signal is_save_buffer :  std_logic_vector(0 downto 0);
  signal is_restore_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  cw_buffer <= cw;
  -- output handling  -------------------------------------------------------
  write_rd <= write_rd_buffer;
  double_word <= double_word_buffer;
  write_rd_from_load_store <= write_rd_from_load_store_buffer;
  write_rd_from_iunit <= write_rd_from_iunit_buffer;
  write_rd_from_pc <= write_rd_from_pc_buffer;
  write_rd_from_sreg <= write_rd_from_sreg_buffer;
  rd <= rd_buffer;
  update_psr <= update_psr_buffer;
  update_wim <= update_wim_buffer;
  update_tbr <= update_tbr_buffer;
  update_y <= update_y_buffer;
  update_asr <= update_asr_buffer;
  asr_id <= asr_id_buffer;
  is_save <= is_save_buffer;
  is_restore <= is_restore_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_6008_inst
    write_rd_buffer <= cw_buffer(24 downto 24);
    -- flow-through slice operator slice_6012_inst
    double_word_buffer <= cw_buffer(23 downto 23);
    -- flow-through slice operator slice_6016_inst
    write_rd_from_load_store_buffer <= cw_buffer(22 downto 22);
    -- flow-through slice operator slice_6020_inst
    write_rd_from_iunit_buffer <= cw_buffer(21 downto 21);
    -- flow-through slice operator slice_6024_inst
    write_rd_from_pc_buffer <= cw_buffer(20 downto 20);
    -- flow-through slice operator slice_6028_inst
    write_rd_from_sreg_buffer <= cw_buffer(19 downto 19);
    -- flow-through slice operator slice_6032_inst
    rd_buffer <= cw_buffer(18 downto 14);
    -- flow-through slice operator slice_6036_inst
    update_psr_buffer <= cw_buffer(13 downto 11);
    -- flow-through slice operator slice_6040_inst
    update_wim_buffer <= cw_buffer(10 downto 10);
    -- flow-through slice operator slice_6044_inst
    update_tbr_buffer <= cw_buffer(9 downto 9);
    -- flow-through slice operator slice_6048_inst
    update_y_buffer <= cw_buffer(8 downto 8);
    -- flow-through slice operator slice_6052_inst
    update_asr_buffer <= cw_buffer(7 downto 7);
    -- flow-through slice operator slice_6056_inst
    asr_id_buffer <= cw_buffer(6 downto 2);
    -- flow-through slice operator slice_6060_inst
    is_save_buffer <= cw_buffer(1 downto 1);
    -- flow-through slice operator slice_6064_inst
    is_restore_buffer <= cw_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end decode_iunit_writeback_control_word_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity expand_ls_bypass_Volatile is -- 
  port ( -- 
    ref_cpu_id : in  std_logic_vector(7 downto 0);
    ls_bypass_info : in  std_logic_vector(92 downto 0);
    bypass_info : out  std_logic_vector(82 downto 0)-- 
  );
  -- 
end entity expand_ls_bypass_Volatile;
architecture expand_ls_bypass_Volatile_arch of expand_ls_bypass_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(101-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal ref_cpu_id_buffer :  std_logic_vector(7 downto 0);
  signal ls_bypass_info_buffer :  std_logic_vector(92 downto 0);
  -- output port buffer signals
  signal bypass_info_buffer :  std_logic_vector(82 downto 0);
  -- volatile/operator module components. 
  component extract_into_registers_Volatile is -- 
    port ( -- 
      signed_type : in  std_logic_vector(0 downto 0);
      byte_mask : in  std_logic_vector(7 downto 0);
      rd : in  std_logic_vector(4 downto 0);
      wdata64 : in  std_logic_vector(63 downto 0);
      rd_h_valid : out  std_logic_vector(0 downto 0);
      rd_l_valid : out  std_logic_vector(0 downto 0);
      rd_h : out  std_logic_vector(4 downto 0);
      rd_l : out  std_logic_vector(4 downto 0);
      rd_h_value : out  std_logic_vector(31 downto 0);
      rd_l_value : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  ref_cpu_id_buffer <= ref_cpu_id;
  ls_bypass_info_buffer <= ls_bypass_info;
  -- output handling  -------------------------------------------------------
  bypass_info <= bypass_info_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_6815_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_6817_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u1_u5_6819_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u6_6827_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u8_6822_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u64_6831_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u5_u13_6823_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u6_u70_6832_wire : std_logic_vector(69 downto 0);
    signal NOT_u1_u1_6814_wire : std_logic_vector(0 downto 0);
    signal byte_mask_6785 : std_logic_vector(7 downto 0);
    signal cpu_id_6765 : std_logic_vector(1 downto 0);
    signal cpu_valid_6799 : std_logic_vector(0 downto 0);
    signal rd_6789 : std_logic_vector(4 downto 0);
    signal rd_h_6810 : std_logic_vector(4 downto 0);
    signal rd_h_valid_6810 : std_logic_vector(0 downto 0);
    signal rd_h_value_6810 : std_logic_vector(31 downto 0);
    signal rd_l_6810 : std_logic_vector(4 downto 0);
    signal rd_l_valid_6810 : std_logic_vector(0 downto 0);
    signal rd_l_value_6810 : std_logic_vector(31 downto 0);
    signal rdata_6793 : std_logic_vector(63 downto 0);
    signal signed_type_6781 : std_logic_vector(0 downto 0);
    signal slot_id_6777 : std_logic_vector(5 downto 0);
    signal stream_id_6773 : std_logic_vector(1 downto 0);
    signal thread_id_6769 : std_logic_vector(3 downto 0);
    signal type_cast_6797_wire : std_logic_vector(7 downto 0);
    signal type_cast_6825_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_6829_wire_constant : std_logic_vector(31 downto 0);
    signal valid_6761 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    type_cast_6825_wire_constant <= "0";
    type_cast_6829_wire_constant <= "00000000000000000000000000000000";
    -- flow-through slice operator slice_6760_inst
    valid_6761 <= ls_bypass_info_buffer(92 downto 92);
    -- flow-through slice operator slice_6764_inst
    cpu_id_6765 <= ls_bypass_info_buffer(91 downto 90);
    -- flow-through slice operator slice_6768_inst
    thread_id_6769 <= ls_bypass_info_buffer(89 downto 86);
    -- flow-through slice operator slice_6772_inst
    stream_id_6773 <= ls_bypass_info_buffer(85 downto 84);
    -- flow-through slice operator slice_6776_inst
    slot_id_6777 <= ls_bypass_info_buffer(83 downto 78);
    -- flow-through slice operator slice_6780_inst
    signed_type_6781 <= ls_bypass_info_buffer(77 downto 77);
    -- flow-through slice operator slice_6784_inst
    byte_mask_6785 <= ls_bypass_info_buffer(76 downto 69);
    -- flow-through slice operator slice_6788_inst
    rd_6789 <= ls_bypass_info_buffer(68 downto 64);
    -- flow-through slice operator slice_6792_inst
    rdata_6793 <= ls_bypass_info_buffer(63 downto 0);
    -- interlock type_cast_6797_inst
    process(cpu_id_6765) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 1 downto 0) := cpu_id_6765(1 downto 0);
      type_cast_6797_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_6815_inst
    AND_u1_u1_6815_wire <= (valid_6761 and NOT_u1_u1_6814_wire);
    -- flow through binary operator AND_u1_u1_6817_inst
    AND_u1_u1_6817_wire <= (AND_u1_u1_6815_wire and cpu_valid_6799);
    -- flow through binary operator CONCAT_u13_u83_6833_inst
    process(CONCAT_u5_u13_6823_wire, CONCAT_u6_u70_6832_wire) -- 
      variable tmp_var : std_logic_vector(82 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u13_6823_wire, CONCAT_u6_u70_6832_wire, tmp_var);
      bypass_info_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_6819_inst
    process(AND_u1_u1_6817_wire, thread_id_6769) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_6817_wire, thread_id_6769, tmp_var);
      CONCAT_u1_u5_6819_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_6827_inst
    process(type_cast_6825_wire_constant, rd_l_6810) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_6825_wire_constant, rd_l_6810, tmp_var);
      CONCAT_u1_u6_6827_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_6822_inst
    process(stream_id_6773, slot_id_6777) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(stream_id_6773, slot_id_6777, tmp_var);
      CONCAT_u2_u8_6822_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_6831_inst
    process(type_cast_6829_wire_constant, rd_l_value_6810) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(type_cast_6829_wire_constant, rd_l_value_6810, tmp_var);
      CONCAT_u32_u64_6831_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_6823_inst
    process(CONCAT_u1_u5_6819_wire, CONCAT_u2_u8_6822_wire) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_6819_wire, CONCAT_u2_u8_6822_wire, tmp_var);
      CONCAT_u5_u13_6823_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u70_6832_inst
    process(CONCAT_u1_u6_6827_wire, CONCAT_u32_u64_6831_wire) -- 
      variable tmp_var : std_logic_vector(69 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u6_6827_wire, CONCAT_u32_u64_6831_wire, tmp_var);
      CONCAT_u6_u70_6832_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_6798_inst
    process(ref_cpu_id_buffer, type_cast_6797_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ref_cpu_id_buffer, type_cast_6797_wire, tmp_var);
      cpu_valid_6799 <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_6814_inst
    process(rd_h_valid_6810) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", rd_h_valid_6810, tmp_var);
      NOT_u1_u1_6814_wire <= tmp_var; -- 
    end process;
    volatile_operator_extract_into_registers_5607: extract_into_registers_Volatile port map(signed_type => signed_type_6781, byte_mask => byte_mask_6785, rd => rd_6789, wdata64 => rdata_6793, rd_h_valid => rd_h_valid_6810, rd_l_valid => rd_l_valid_6810, rd_h => rd_h_6810, rd_l => rd_l_6810, rd_h_value => rd_h_value_6810, rd_l_value => rd_l_value_6810); 
    -- 
  end Block; -- data_path
  -- 
end expand_ls_bypass_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity extractReadRegs_Volatile is -- 
  port ( -- 
    read_command : in  std_logic_vector(58 downto 0);
    read_command_valid : out  std_logic_vector(0 downto 0);
    read_asr_id : out  std_logic_vector(4 downto 0);
    rs1 : out  std_logic_vector(4 downto 0);
    rs2 : out  std_logic_vector(4 downto 0);
    read_rd : out  std_logic_vector(4 downto 0)-- 
  );
  -- 
end entity extractReadRegs_Volatile;
architecture extractReadRegs_Volatile_arch of extractReadRegs_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(59-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal read_command_buffer :  std_logic_vector(58 downto 0);
  -- output port buffer signals
  signal read_command_valid_buffer :  std_logic_vector(0 downto 0);
  signal read_asr_id_buffer :  std_logic_vector(4 downto 0);
  signal rs1_buffer :  std_logic_vector(4 downto 0);
  signal rs2_buffer :  std_logic_vector(4 downto 0);
  signal read_rd_buffer :  std_logic_vector(4 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  read_command_buffer <= read_command;
  -- output handling  -------------------------------------------------------
  read_command_valid <= read_command_valid_buffer;
  read_asr_id <= read_asr_id_buffer;
  rs1 <= rs1_buffer;
  rs2 <= rs2_buffer;
  read_rd <= read_rd_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- flow-through slice operator slice_6845_inst
    rs1_buffer <= read_command_buffer(39 downto 35);
    -- flow-through slice operator slice_6849_inst
    rs2_buffer <= read_command_buffer(33 downto 29);
    -- flow-through slice operator slice_6853_inst
    read_rd_buffer <= read_command_buffer(24 downto 20);
    -- flow-through slice operator slice_6857_inst
    read_asr_id_buffer <= read_command_buffer(8 downto 4);
    -- flow-through slice operator slice_6861_inst
    read_command_valid_buffer <= read_command_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end extractReadRegs_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity extract_into_registers_Volatile is -- 
  port ( -- 
    signed_type : in  std_logic_vector(0 downto 0);
    byte_mask : in  std_logic_vector(7 downto 0);
    rd : in  std_logic_vector(4 downto 0);
    wdata64 : in  std_logic_vector(63 downto 0);
    rd_h_valid : out  std_logic_vector(0 downto 0);
    rd_l_valid : out  std_logic_vector(0 downto 0);
    rd_h : out  std_logic_vector(4 downto 0);
    rd_l : out  std_logic_vector(4 downto 0);
    rd_h_value : out  std_logic_vector(31 downto 0);
    rd_l_value : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity extract_into_registers_Volatile;
architecture extract_into_registers_Volatile_arch of extract_into_registers_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(78-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal byte_mask_buffer :  std_logic_vector(7 downto 0);
  signal rd_buffer :  std_logic_vector(4 downto 0);
  signal wdata64_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal rd_h_valid_buffer :  std_logic_vector(0 downto 0);
  signal rd_l_valid_buffer :  std_logic_vector(0 downto 0);
  signal rd_h_buffer :  std_logic_vector(4 downto 0);
  signal rd_l_buffer :  std_logic_vector(4 downto 0);
  signal rd_h_value_buffer :  std_logic_vector(31 downto 0);
  signal rd_l_value_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component pad8To32_Volatile is -- 
    port ( -- 
      signed_type : in  std_logic_vector(0 downto 0);
      b : in  std_logic_vector(7 downto 0);
      w : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component pad16To32_Volatile is -- 
    port ( -- 
      signed_type : in  std_logic_vector(0 downto 0);
      hw : in  std_logic_vector(15 downto 0);
      w : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  signed_type_buffer <= signed_type;
  byte_mask_buffer <= byte_mask;
  rd_buffer <= rd;
  wdata64_buffer <= wdata64;
  -- output handling  -------------------------------------------------------
  rd_h_valid <= rd_h_valid_buffer;
  rd_l_valid <= rd_l_valid_buffer;
  rd_h <= rd_h_buffer;
  rd_l <= rd_l_buffer;
  rd_h_value <= rd_h_value_buffer;
  rd_l_value <= rd_l_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal EQ_u4_u1_6675_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6681_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6691_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6700_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6711_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6720_wire : std_logic_vector(0 downto 0);
    signal EQ_u4_u1_6730_wire : std_logic_vector(0 downto 0);
    signal MUX_6669_wire : std_logic_vector(31 downto 0);
    signal MUX_6678_wire : std_logic_vector(31 downto 0);
    signal MUX_6687_wire : std_logic_vector(31 downto 0);
    signal MUX_6697_wire : std_logic_vector(31 downto 0);
    signal MUX_6706_wire : std_logic_vector(31 downto 0);
    signal MUX_6717_wire : std_logic_vector(31 downto 0);
    signal MUX_6726_wire : std_logic_vector(31 downto 0);
    signal MUX_6736_wire : std_logic_vector(31 downto 0);
    signal NEQ_u4_u1_6650_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_6664_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_6688_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_6707_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_6708_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_6727_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_6737_wire : std_logic_vector(31 downto 0);
    signal OR_u5_u5_6749_wire : std_logic_vector(4 downto 0);
    signal bmask_32_6656 : std_logic_vector(3 downto 0);
    signal call_pad16To32_expr_6685_wire : std_logic_vector(31 downto 0);
    signal call_pad16To32_expr_6695_wire : std_logic_vector(31 downto 0);
    signal call_pad8To32_expr_6704_wire : std_logic_vector(31 downto 0);
    signal call_pad8To32_expr_6715_wire : std_logic_vector(31 downto 0);
    signal call_pad8To32_expr_6724_wire : std_logic_vector(31 downto 0);
    signal call_pad8To32_expr_6734_wire : std_logic_vector(31 downto 0);
    signal konst_6634_wire_constant : std_logic_vector(7 downto 0);
    signal konst_6639_wire_constant : std_logic_vector(7 downto 0);
    signal konst_6649_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6663_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6674_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6677_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6680_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6686_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6690_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6696_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6699_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6705_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6710_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6716_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6719_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6725_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6729_wire_constant : std_logic_vector(3 downto 0);
    signal konst_6735_wire_constant : std_logic_vector(31 downto 0);
    signal konst_6742_wire_constant : std_logic_vector(4 downto 0);
    signal konst_6748_wire_constant : std_logic_vector(4 downto 0);
    signal rd_l_value_raw_32_6671 : std_logic_vector(31 downto 0);
    signal slice_6648_wire : std_logic_vector(3 downto 0);
    signal slice_6652_wire : std_logic_vector(3 downto 0);
    signal slice_6654_wire : std_logic_vector(3 downto 0);
    signal slice_6660_wire : std_logic_vector(31 downto 0);
    signal slice_6662_wire : std_logic_vector(3 downto 0);
    signal slice_6666_wire : std_logic_vector(31 downto 0);
    signal slice_6668_wire : std_logic_vector(31 downto 0);
    signal slice_6684_wire : std_logic_vector(15 downto 0);
    signal slice_6694_wire : std_logic_vector(15 downto 0);
    signal slice_6703_wire : std_logic_vector(7 downto 0);
    signal slice_6714_wire : std_logic_vector(7 downto 0);
    signal slice_6723_wire : std_logic_vector(7 downto 0);
    signal slice_6733_wire : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    konst_6634_wire_constant <= "11111111";
    konst_6639_wire_constant <= "00000000";
    konst_6649_wire_constant <= "0000";
    konst_6663_wire_constant <= "0000";
    konst_6674_wire_constant <= "1111";
    konst_6677_wire_constant <= "00000000000000000000000000000000";
    konst_6680_wire_constant <= "0011";
    konst_6686_wire_constant <= "00000000000000000000000000000000";
    konst_6690_wire_constant <= "1100";
    konst_6696_wire_constant <= "00000000000000000000000000000000";
    konst_6699_wire_constant <= "0001";
    konst_6705_wire_constant <= "00000000000000000000000000000000";
    konst_6710_wire_constant <= "0010";
    konst_6716_wire_constant <= "00000000000000000000000000000000";
    konst_6719_wire_constant <= "0100";
    konst_6725_wire_constant <= "00000000000000000000000000000000";
    konst_6729_wire_constant <= "1000";
    konst_6735_wire_constant <= "00000000000000000000000000000000";
    konst_6742_wire_constant <= "11110";
    konst_6748_wire_constant <= "00001";
    -- flow-through select operator MUX_6655_inst
    bmask_32_6656 <= slice_6652_wire when (NEQ_u4_u1_6650_wire(0) /=  '0') else slice_6654_wire;
    -- flow-through select operator MUX_6669_inst
    MUX_6669_wire <= slice_6666_wire when (NEQ_u4_u1_6664_wire(0) /=  '0') else slice_6668_wire;
    -- flow-through select operator MUX_6670_inst
    rd_l_value_raw_32_6671 <= slice_6660_wire when (rd_h_valid_buffer(0) /=  '0') else MUX_6669_wire;
    -- flow-through select operator MUX_6678_inst
    MUX_6678_wire <= rd_l_value_raw_32_6671 when (EQ_u4_u1_6675_wire(0) /=  '0') else konst_6677_wire_constant;
    -- flow-through select operator MUX_6687_inst
    MUX_6687_wire <= call_pad16To32_expr_6685_wire when (EQ_u4_u1_6681_wire(0) /=  '0') else konst_6686_wire_constant;
    -- flow-through select operator MUX_6697_inst
    MUX_6697_wire <= call_pad16To32_expr_6695_wire when (EQ_u4_u1_6691_wire(0) /=  '0') else konst_6696_wire_constant;
    -- flow-through select operator MUX_6706_inst
    MUX_6706_wire <= call_pad8To32_expr_6704_wire when (EQ_u4_u1_6700_wire(0) /=  '0') else konst_6705_wire_constant;
    -- flow-through select operator MUX_6717_inst
    MUX_6717_wire <= call_pad8To32_expr_6715_wire when (EQ_u4_u1_6711_wire(0) /=  '0') else konst_6716_wire_constant;
    -- flow-through select operator MUX_6726_inst
    MUX_6726_wire <= call_pad8To32_expr_6724_wire when (EQ_u4_u1_6720_wire(0) /=  '0') else konst_6725_wire_constant;
    -- flow-through select operator MUX_6736_inst
    MUX_6736_wire <= call_pad8To32_expr_6734_wire when (EQ_u4_u1_6730_wire(0) /=  '0') else konst_6735_wire_constant;
    -- flow-through select operator MUX_6751_inst
    rd_l_buffer <= OR_u5_u5_6749_wire when (rd_h_valid_buffer(0) /=  '0') else rd_buffer;
    -- flow-through slice operator slice_6644_inst
    rd_h_value_buffer <= wdata64_buffer(63 downto 32);
    -- flow-through slice operator slice_6648_inst
    slice_6648_wire <= byte_mask_buffer(7 downto 4);
    -- flow-through slice operator slice_6652_inst
    slice_6652_wire <= byte_mask_buffer(7 downto 4);
    -- flow-through slice operator slice_6654_inst
    slice_6654_wire <= byte_mask_buffer(3 downto 0);
    -- flow-through slice operator slice_6660_inst
    slice_6660_wire <= wdata64_buffer(31 downto 0);
    -- flow-through slice operator slice_6662_inst
    slice_6662_wire <= byte_mask_buffer(7 downto 4);
    -- flow-through slice operator slice_6666_inst
    slice_6666_wire <= wdata64_buffer(63 downto 32);
    -- flow-through slice operator slice_6668_inst
    slice_6668_wire <= wdata64_buffer(31 downto 0);
    -- flow-through slice operator slice_6684_inst
    slice_6684_wire <= rd_l_value_raw_32_6671(15 downto 0);
    -- flow-through slice operator slice_6694_inst
    slice_6694_wire <= rd_l_value_raw_32_6671(31 downto 16);
    -- flow-through slice operator slice_6703_inst
    slice_6703_wire <= rd_l_value_raw_32_6671(7 downto 0);
    -- flow-through slice operator slice_6714_inst
    slice_6714_wire <= rd_l_value_raw_32_6671(15 downto 8);
    -- flow-through slice operator slice_6723_inst
    slice_6723_wire <= rd_l_value_raw_32_6671(23 downto 16);
    -- flow-through slice operator slice_6733_inst
    slice_6733_wire <= rd_l_value_raw_32_6671(31 downto 24);
    -- flow through binary operator AND_u5_u5_6743_inst
    rd_h_buffer <= (rd_buffer and konst_6742_wire_constant);
    -- flow through binary operator EQ_u4_u1_6675_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6674_wire_constant, tmp_var);
      EQ_u4_u1_6675_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6681_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6680_wire_constant, tmp_var);
      EQ_u4_u1_6681_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6691_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6690_wire_constant, tmp_var);
      EQ_u4_u1_6691_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6700_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6699_wire_constant, tmp_var);
      EQ_u4_u1_6700_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6711_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6710_wire_constant, tmp_var);
      EQ_u4_u1_6711_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6720_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6719_wire_constant, tmp_var);
      EQ_u4_u1_6720_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u4_u1_6730_inst
    process(bmask_32_6656) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(bmask_32_6656, konst_6729_wire_constant, tmp_var);
      EQ_u4_u1_6730_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u8_u1_6635_inst
    process(byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(byte_mask_buffer, konst_6634_wire_constant, tmp_var);
      rd_h_valid_buffer <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_6650_inst
    process(slice_6648_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_6648_wire, konst_6649_wire_constant, tmp_var);
      NEQ_u4_u1_6650_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_6664_inst
    process(slice_6662_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(slice_6662_wire, konst_6663_wire_constant, tmp_var);
      NEQ_u4_u1_6664_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u8_u1_6640_inst
    process(byte_mask_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(byte_mask_buffer, konst_6639_wire_constant, tmp_var);
      rd_l_valid_buffer <= tmp_var; --
    end process;
    -- flow through binary operator OR_u32_u32_6688_inst
    OR_u32_u32_6688_wire <= (MUX_6678_wire or MUX_6687_wire);
    -- flow through binary operator OR_u32_u32_6707_inst
    OR_u32_u32_6707_wire <= (MUX_6697_wire or MUX_6706_wire);
    -- flow through binary operator OR_u32_u32_6708_inst
    OR_u32_u32_6708_wire <= (OR_u32_u32_6688_wire or OR_u32_u32_6707_wire);
    -- flow through binary operator OR_u32_u32_6727_inst
    OR_u32_u32_6727_wire <= (MUX_6717_wire or MUX_6726_wire);
    -- flow through binary operator OR_u32_u32_6737_inst
    OR_u32_u32_6737_wire <= (OR_u32_u32_6727_wire or MUX_6736_wire);
    -- flow through binary operator OR_u32_u32_6738_inst
    rd_l_value_buffer <= (OR_u32_u32_6708_wire or OR_u32_u32_6737_wire);
    -- flow through binary operator OR_u5_u5_6749_inst
    OR_u5_u5_6749_wire <= (rd_buffer or konst_6748_wire_constant);
    volatile_operator_pad16To32_5525: pad16To32_Volatile port map(signed_type => signed_type_buffer, hw => slice_6684_wire, w => call_pad16To32_expr_6685_wire); 
    volatile_operator_pad16To32_5530: pad16To32_Volatile port map(signed_type => signed_type_buffer, hw => slice_6694_wire, w => call_pad16To32_expr_6695_wire); 
    volatile_operator_pad8To32_5534: pad8To32_Volatile port map(signed_type => signed_type_buffer, b => slice_6703_wire, w => call_pad8To32_expr_6704_wire); 
    volatile_operator_pad8To32_5540: pad8To32_Volatile port map(signed_type => signed_type_buffer, b => slice_6714_wire, w => call_pad8To32_expr_6715_wire); 
    volatile_operator_pad8To32_5544: pad8To32_Volatile port map(signed_type => signed_type_buffer, b => slice_6723_wire, w => call_pad8To32_expr_6724_wire); 
    volatile_operator_pad8To32_5549: pad8To32_Volatile port map(signed_type => signed_type_buffer, b => slice_6733_wire, w => call_pad8To32_expr_6734_wire); 
    -- 
  end Block; -- data_path
  -- 
end extract_into_registers_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity extract_reg_lock_2_Volatile is -- 
  port ( -- 
    reg_read_locks : in  std_logic_vector(63 downto 0);
    rid : in  std_logic_vector(4 downto 0);
    b : out  std_logic_vector(1 downto 0)-- 
  );
  -- 
end entity extract_reg_lock_2_Volatile;
architecture extract_reg_lock_2_Volatile_arch of extract_reg_lock_2_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(69-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal reg_read_locks_buffer :  std_logic_vector(63 downto 0);
  signal rid_buffer :  std_logic_vector(4 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(1 downto 0);
  -- volatile/operator module components. 
  component testBit32_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(31 downto 0);
      sel : in  std_logic_vector(4 downto 0);
      b : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  reg_read_locks_buffer <= reg_read_locks;
  rid_buffer <= rid;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal L0_7039 : std_logic_vector(31 downto 0);
    signal L1_7035 : std_logic_vector(31 downto 0);
    signal b0_7047 : std_logic_vector(0 downto 0);
    signal b1_7043 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_7034_inst
    L1_7035 <= reg_read_locks_buffer(63 downto 32);
    -- flow-through slice operator slice_7038_inst
    L0_7039 <= reg_read_locks_buffer(31 downto 0);
    -- flow through binary operator CONCAT_u1_u2_7051_inst
    process(b1_7043, b0_7047) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(b1_7043, b0_7047, tmp_var);
      b_buffer <= tmp_var; --
    end process;
    volatile_operator_testBit32_5765: testBit32_Volatile port map(a => L1_7035, sel => rid_buffer, b => b1_7043); 
    volatile_operator_testBit32_5766: testBit32_Volatile port map(a => L0_7039, sel => rid_buffer, b => b0_7047); 
    -- 
  end Block; -- data_path
  -- 
end extract_reg_lock_2_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity insertBit16_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(15 downto 0);
    sel : in  std_logic_vector(3 downto 0);
    x : in  std_logic_vector(0 downto 0);
    b : out  std_logic_vector(15 downto 0)-- 
  );
  -- 
end entity insertBit16_Volatile;
architecture insertBit16_Volatile_arch of insertBit16_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(21-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(15 downto 0);
  signal sel_buffer :  std_logic_vector(3 downto 0);
  signal x_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(15 downto 0);
  -- volatile/operator module components. 
  component insertBit8_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(7 downto 0);
      sel : in  std_logic_vector(2 downto 0);
      x : in  std_logic_vector(0 downto 0);
      b : out  std_logic_vector(7 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u4_u1_7408_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u4_u1_7414_wire : std_logic_vector(0 downto 0);
    signal MUX_7411_wire : std_logic_vector(7 downto 0);
    signal MUX_7417_wire : std_logic_vector(7 downto 0);
    signal aH_7386 : std_logic_vector(7 downto 0);
    signal aL_7390 : std_logic_vector(7 downto 0);
    signal bH_7399 : std_logic_vector(7 downto 0);
    signal bL_7404 : std_logic_vector(7 downto 0);
    signal konst_7407_wire_constant : std_logic_vector(3 downto 0);
    signal konst_7413_wire_constant : std_logic_vector(3 downto 0);
    signal s3_7394 : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_7407_wire_constant <= "0011";
    konst_7413_wire_constant <= "0011";
    -- flow-through select operator MUX_7411_inst
    MUX_7411_wire <= bH_7399 when (BITSEL_u4_u1_7408_wire(0) /=  '0') else aH_7386;
    -- flow-through select operator MUX_7417_inst
    MUX_7417_wire <= aL_7390 when (BITSEL_u4_u1_7414_wire(0) /=  '0') else bL_7404;
    -- flow-through slice operator slice_7385_inst
    aH_7386 <= a_buffer(15 downto 8);
    -- flow-through slice operator slice_7389_inst
    aL_7390 <= a_buffer(7 downto 0);
    -- flow-through slice operator slice_7393_inst
    s3_7394 <= sel_buffer(2 downto 0);
    -- flow through binary operator BITSEL_u4_u1_7408_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7407_wire_constant, tmp_var);
      BITSEL_u4_u1_7408_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u4_u1_7414_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7413_wire_constant, tmp_var);
      BITSEL_u4_u1_7414_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_7418_inst
    process(MUX_7411_wire, MUX_7417_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_7411_wire, MUX_7417_wire, tmp_var);
      b_buffer <= tmp_var; --
    end process;
    volatile_operator_insertBit8_6042: insertBit8_Volatile port map(a => aH_7386, sel => s3_7394, x => x_buffer, b => bH_7399); 
    volatile_operator_insertBit8_6043: insertBit8_Volatile port map(a => aL_7390, sel => s3_7394, x => x_buffer, b => bL_7404); 
    -- 
  end Block; -- data_path
  -- 
end insertBit16_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity insertBit32_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(31 downto 0);
    sel : in  std_logic_vector(4 downto 0);
    x : in  std_logic_vector(0 downto 0);
    b : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity insertBit32_Volatile;
architecture insertBit32_Volatile_arch of insertBit32_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(38-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(31 downto 0);
  signal sel_buffer :  std_logic_vector(4 downto 0);
  signal x_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  component insertBit16_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(15 downto 0);
      sel : in  std_logic_vector(3 downto 0);
      x : in  std_logic_vector(0 downto 0);
      b : out  std_logic_vector(15 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u5_u1_7451_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u5_u1_7457_wire : std_logic_vector(0 downto 0);
    signal MUX_7454_wire : std_logic_vector(15 downto 0);
    signal MUX_7460_wire : std_logic_vector(15 downto 0);
    signal aH_7429 : std_logic_vector(15 downto 0);
    signal aL_7433 : std_logic_vector(15 downto 0);
    signal bH_7442 : std_logic_vector(15 downto 0);
    signal bL_7447 : std_logic_vector(15 downto 0);
    signal konst_7450_wire_constant : std_logic_vector(4 downto 0);
    signal konst_7456_wire_constant : std_logic_vector(4 downto 0);
    signal s4_7437 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    konst_7450_wire_constant <= "00100";
    konst_7456_wire_constant <= "00100";
    -- flow-through select operator MUX_7454_inst
    MUX_7454_wire <= bH_7442 when (BITSEL_u5_u1_7451_wire(0) /=  '0') else aH_7429;
    -- flow-through select operator MUX_7460_inst
    MUX_7460_wire <= aL_7433 when (BITSEL_u5_u1_7457_wire(0) /=  '0') else bL_7447;
    -- flow-through slice operator slice_7428_inst
    aH_7429 <= a_buffer(31 downto 16);
    -- flow-through slice operator slice_7432_inst
    aL_7433 <= a_buffer(15 downto 0);
    -- flow-through slice operator slice_7436_inst
    s4_7437 <= sel_buffer(3 downto 0);
    -- flow through binary operator BITSEL_u5_u1_7451_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7450_wire_constant, tmp_var);
      BITSEL_u5_u1_7451_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_7457_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7456_wire_constant, tmp_var);
      BITSEL_u5_u1_7457_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u32_7461_inst
    process(MUX_7454_wire, MUX_7460_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_7454_wire, MUX_7460_wire, tmp_var);
      b_buffer <= tmp_var; --
    end process;
    volatile_operator_insertBit16_6074: insertBit16_Volatile port map(a => aH_7429, sel => s4_7437, x => x_buffer, b => bH_7442); 
    volatile_operator_insertBit16_6075: insertBit16_Volatile port map(a => aL_7433, sel => s4_7437, x => x_buffer, b => bL_7447); 
    -- 
  end Block; -- data_path
  -- 
end insertBit32_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity insertBit4_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(3 downto 0);
    sel : in  std_logic_vector(1 downto 0);
    x : in  std_logic_vector(0 downto 0);
    b : out  std_logic_vector(3 downto 0)-- 
  );
  -- 
end entity insertBit4_Volatile;
architecture insertBit4_Volatile_arch of insertBit4_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(7-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(3 downto 0);
  signal sel_buffer :  std_logic_vector(1 downto 0);
  signal x_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(3 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal CONCAT_u1_u2_7318_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_7331_wire : std_logic_vector(1 downto 0);
    signal EQ_u2_u1_7308_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7314_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7321_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7327_wire : std_logic_vector(0 downto 0);
    signal MUX_7311_wire : std_logic_vector(0 downto 0);
    signal MUX_7317_wire : std_logic_vector(0 downto 0);
    signal MUX_7324_wire : std_logic_vector(0 downto 0);
    signal MUX_7330_wire : std_logic_vector(0 downto 0);
    signal a0_7304 : std_logic_vector(0 downto 0);
    signal a1_7300 : std_logic_vector(0 downto 0);
    signal a2_7296 : std_logic_vector(0 downto 0);
    signal a3_7292 : std_logic_vector(0 downto 0);
    signal konst_7307_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7313_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7320_wire_constant : std_logic_vector(1 downto 0);
    signal konst_7326_wire_constant : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_7307_wire_constant <= "11";
    konst_7313_wire_constant <= "10";
    konst_7320_wire_constant <= "01";
    konst_7326_wire_constant <= "00";
    -- flow-through select operator MUX_7311_inst
    MUX_7311_wire <= x_buffer when (EQ_u2_u1_7308_wire(0) /=  '0') else a3_7292;
    -- flow-through select operator MUX_7317_inst
    MUX_7317_wire <= x_buffer when (EQ_u2_u1_7314_wire(0) /=  '0') else a2_7296;
    -- flow-through select operator MUX_7324_inst
    MUX_7324_wire <= x_buffer when (EQ_u2_u1_7321_wire(0) /=  '0') else a1_7300;
    -- flow-through select operator MUX_7330_inst
    MUX_7330_wire <= x_buffer when (EQ_u2_u1_7327_wire(0) /=  '0') else a0_7304;
    -- flow-through slice operator slice_7291_inst
    a3_7292 <= a_buffer(3 downto 3);
    -- flow-through slice operator slice_7295_inst
    a2_7296 <= a_buffer(2 downto 2);
    -- flow-through slice operator slice_7299_inst
    a1_7300 <= a_buffer(1 downto 1);
    -- flow-through slice operator slice_7303_inst
    a0_7304 <= a_buffer(0 downto 0);
    -- flow through binary operator CONCAT_u1_u2_7318_inst
    process(MUX_7311_wire, MUX_7317_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_7311_wire, MUX_7317_wire, tmp_var);
      CONCAT_u1_u2_7318_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_7331_inst
    process(MUX_7324_wire, MUX_7330_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_7324_wire, MUX_7330_wire, tmp_var);
      CONCAT_u1_u2_7331_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_7332_inst
    process(CONCAT_u1_u2_7318_wire, CONCAT_u1_u2_7331_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_7318_wire, CONCAT_u1_u2_7331_wire, tmp_var);
      b_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7308_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sel_buffer, konst_7307_wire_constant, tmp_var);
      EQ_u2_u1_7308_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7314_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sel_buffer, konst_7313_wire_constant, tmp_var);
      EQ_u2_u1_7314_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7321_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sel_buffer, konst_7320_wire_constant, tmp_var);
      EQ_u2_u1_7321_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_7327_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sel_buffer, konst_7326_wire_constant, tmp_var);
      EQ_u2_u1_7327_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end insertBit4_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity insertBit8_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(7 downto 0);
    sel : in  std_logic_vector(2 downto 0);
    x : in  std_logic_vector(0 downto 0);
    b : out  std_logic_vector(7 downto 0)-- 
  );
  -- 
end entity insertBit8_Volatile;
architecture insertBit8_Volatile_arch of insertBit8_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(12-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(7 downto 0);
  signal sel_buffer :  std_logic_vector(2 downto 0);
  signal x_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(7 downto 0);
  -- volatile/operator module components. 
  component insertBit4_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(3 downto 0);
      sel : in  std_logic_vector(1 downto 0);
      x : in  std_logic_vector(0 downto 0);
      b : out  std_logic_vector(3 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  x_buffer <= x;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u3_u1_7365_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u3_u1_7371_wire : std_logic_vector(0 downto 0);
    signal MUX_7368_wire : std_logic_vector(3 downto 0);
    signal MUX_7374_wire : std_logic_vector(3 downto 0);
    signal aH_7343 : std_logic_vector(3 downto 0);
    signal aL_7347 : std_logic_vector(3 downto 0);
    signal bH_7356 : std_logic_vector(3 downto 0);
    signal bL_7361 : std_logic_vector(3 downto 0);
    signal konst_7364_wire_constant : std_logic_vector(2 downto 0);
    signal konst_7370_wire_constant : std_logic_vector(2 downto 0);
    signal s2_7351 : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_7364_wire_constant <= "010";
    konst_7370_wire_constant <= "010";
    -- flow-through select operator MUX_7368_inst
    MUX_7368_wire <= bH_7356 when (BITSEL_u3_u1_7365_wire(0) /=  '0') else aH_7343;
    -- flow-through select operator MUX_7374_inst
    MUX_7374_wire <= aL_7347 when (BITSEL_u3_u1_7371_wire(0) /=  '0') else bL_7361;
    -- flow-through slice operator slice_7342_inst
    aH_7343 <= a_buffer(7 downto 4);
    -- flow-through slice operator slice_7346_inst
    aL_7347 <= a_buffer(3 downto 0);
    -- flow-through slice operator slice_7350_inst
    s2_7351 <= sel_buffer(1 downto 0);
    -- flow through binary operator BITSEL_u3_u1_7365_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7364_wire_constant, tmp_var);
      BITSEL_u3_u1_7365_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u3_u1_7371_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7370_wire_constant, tmp_var);
      BITSEL_u3_u1_7371_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_7375_inst
    process(MUX_7368_wire, MUX_7374_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_7368_wire, MUX_7374_wire, tmp_var);
      b_buffer <= tmp_var; --
    end process;
    volatile_operator_insertBit4_6010: insertBit4_Volatile port map(a => aH_7343, sel => s2_7351, x => x_buffer, b => bH_7356); 
    volatile_operator_insertBit4_6011: insertBit4_Volatile port map(a => aL_7347, sel => s2_7351, x => x_buffer, b => bL_7361); 
    -- 
  end Block; -- data_path
  -- 
end insertBit8_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity insert_reg_lock_2_Volatile is -- 
  port ( -- 
    reg_read_locks : in  std_logic_vector(63 downto 0);
    rid : in  std_logic_vector(4 downto 0);
    b : in  std_logic_vector(1 downto 0);
    next_locks : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity insert_reg_lock_2_Volatile;
architecture insert_reg_lock_2_Volatile_arch of insert_reg_lock_2_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(71-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal reg_read_locks_buffer :  std_logic_vector(63 downto 0);
  signal rid_buffer :  std_logic_vector(4 downto 0);
  signal b_buffer :  std_logic_vector(1 downto 0);
  -- output port buffer signals
  signal next_locks_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  component insertBit32_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(31 downto 0);
      sel : in  std_logic_vector(4 downto 0);
      x : in  std_logic_vector(0 downto 0);
      b : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  reg_read_locks_buffer <= reg_read_locks;
  rid_buffer <= rid;
  b_buffer <= b;
  -- output handling  -------------------------------------------------------
  next_locks <= next_locks_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal L0_7559 : std_logic_vector(31 downto 0);
    signal L1_7555 : std_logic_vector(31 downto 0);
    signal NL0_7577 : std_logic_vector(31 downto 0);
    signal NL1_7572 : std_logic_vector(31 downto 0);
    signal b0_7567 : std_logic_vector(0 downto 0);
    signal b1_7563 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_7554_inst
    L1_7555 <= reg_read_locks_buffer(63 downto 32);
    -- flow-through slice operator slice_7558_inst
    L0_7559 <= reg_read_locks_buffer(31 downto 0);
    -- flow-through slice operator slice_7562_inst
    b1_7563 <= b_buffer(1 downto 1);
    -- flow-through slice operator slice_7566_inst
    b0_7567 <= b_buffer(0 downto 0);
    -- flow through binary operator CONCAT_u32_u64_7581_inst
    process(NL1_7572, NL0_7577) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(NL1_7572, NL0_7577, tmp_var);
      next_locks_buffer <= tmp_var; --
    end process;
    volatile_operator_insertBit32_6158: insertBit32_Volatile port map(a => L1_7555, sel => rid_buffer, x => b1_7563, b => NL1_7572); 
    volatile_operator_insertBit32_6159: insertBit32_Volatile port map(a => L0_7559, sel => rid_buffer, x => b0_7567, b => NL0_7577); 
    -- 
  end Block; -- data_path
  -- 
end insert_reg_lock_2_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity isCcRead_Volatile is -- 
  port ( -- 
    read_psr : in  std_logic_vector(2 downto 0);
    retval : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isCcRead_Volatile;
architecture isCcRead_Volatile_arch of isCcRead_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(3-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal read_psr_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal retval_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  read_psr_buffer <= read_psr;
  -- output handling  -------------------------------------------------------
  retval <= retval_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal konst_1569_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_1569_wire_constant <= "001";
    -- flow through binary operator BITSEL_u3_u1_1570_inst
    process(read_psr_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(read_psr_buffer, konst_1569_wire_constant, tmp_var);
      retval_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isCcRead_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity isValidBypassCCInfo_Volatile is -- 
  port ( -- 
    bypass_cc_info : in  std_logic_vector(16 downto 0);
    is_valid : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isValidBypassCCInfo_Volatile;
architecture isValidBypassCCInfo_Volatile_arch of isValidBypassCCInfo_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(17-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal bypass_cc_info_buffer :  std_logic_vector(16 downto 0);
  -- output port buffer signals
  signal is_valid_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  bypass_cc_info_buffer <= bypass_cc_info;
  -- output handling  -------------------------------------------------------
  is_valid <= is_valid_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal konst_7641_wire_constant : std_logic_vector(16 downto 0);
    -- 
  begin -- 
    konst_7641_wire_constant <= "00000000000010000";
    -- flow through binary operator BITSEL_u17_u1_7642_inst
    process(bypass_cc_info_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(bypass_cc_info_buffer, konst_7641_wire_constant, tmp_var);
      is_valid_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isValidBypassCCInfo_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity isValidBypassInfo_Volatile is -- 
  port ( -- 
    bypass_info : in  std_logic_vector(82 downto 0);
    is_valid : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity isValidBypassInfo_Volatile;
architecture isValidBypassInfo_Volatile_arch of isValidBypassInfo_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(83-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal bypass_info_buffer :  std_logic_vector(82 downto 0);
  -- output port buffer signals
  signal is_valid_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  bypass_info_buffer <= bypass_info;
  -- output handling  -------------------------------------------------------
  is_valid <= is_valid_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal konst_7650_wire_constant : std_logic_vector(82 downto 0);
    -- 
  begin -- 
    konst_7650_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000001010010";
    -- flow through binary operator BITSEL_u83_u1_7651_inst
    process(bypass_info_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(bypass_info_buffer, konst_7650_wire_constant, tmp_var);
      is_valid_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end isValidBypassInfo_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity iu_registers_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req : out  std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack : in   std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data : in   std_logic_vector(92 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_read_data : in   std_logic_vector(41 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data : in   std_logic_vector(16 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data : in   std_logic_vector(82 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_data : in   std_logic_vector(372 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data : in   std_logic_vector(58 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
    CORE_ID : in std_logic_vector(7 downto 0);
    THREAD_ID : in std_logic_vector(7 downto 0);
    iunit_register_file_read_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    iunit_register_file_read_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    iunit_register_file_read_access_response_pipe_write_data : out  std_logic_vector(141 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_write_data : out  std_logic_vector(16 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_write_data : out  std_logic_vector(141 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_write_data : out  std_logic_vector(31 downto 0);
    teu_iunit_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_write_data : out  std_logic_vector(95 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_write_data : out  std_logic_vector(31 downto 0);
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
end entity iu_registers_daemon;
architecture iu_registers_daemon_arch of iu_registers_daemon is -- 
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
  signal iu_registers_daemon_CP_1778_start: Boolean;
  signal iu_registers_daemon_CP_1778_symbol: Boolean;
  -- volatile/operator module components. 
  -- function library module [asr_update] component not printed.
  component calculate_next_psr_value_Volatile is -- 
    port ( -- 
      write_psr : in  std_logic_vector(2 downto 0);
      psr_value : in  std_logic_vector(31 downto 0);
      curr_psr_val : in  std_logic_vector(31 downto 0);
      new_psr_val : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component analyze_ccu_command_for_asr_Volatile is -- 
    port ( -- 
      ccu_command : in  std_logic_vector(41 downto 0);
      ccu_command_valid : out  std_logic_vector(0 downto 0);
      ccu_write : out  std_logic_vector(0 downto 0);
      ccu_read_iu_reg : out  std_logic_vector(0 downto 0);
      ccu_read_asr : out  std_logic_vector(0 downto 0);
      ccu_rid : out  std_logic_vector(4 downto 0)-- 
    );
    -- 
  end component; 
  component calculate_next_wim_value_Volatile is -- 
    port ( -- 
      wim_value : in  std_logic_vector(31 downto 0);
      new_wim_value : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component calculate_next_tbr_value_Volatile is -- 
    port ( -- 
      tbr_value : in  std_logic_vector(31 downto 0);
      old_tbr_value : in  std_logic_vector(31 downto 0);
      new_tbr_value : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component analyze_ccu_command_Volatile is -- 
    port ( -- 
      ccu_command : in  std_logic_vector(41 downto 0);
      ccu_command_valid : out  std_logic_vector(0 downto 0);
      ccu_write_read_bar : out  std_logic_vector(0 downto 0);
      ccu_reg_type : out  std_logic_vector(2 downto 0);
      ccu_rid : out  std_logic_vector(4 downto 0);
      ccu_rval : out  std_logic_vector(31 downto 0);
      ccu_psr : out  std_logic_vector(0 downto 0);
      ccu_tbr : out  std_logic_vector(0 downto 0);
      ccu_wim : out  std_logic_vector(0 downto 0);
      ccu_asr : out  std_logic_vector(0 downto 0);
      ccu_y : out  std_logic_vector(0 downto 0);
      ccu_iu_reg : out  std_logic_vector(0 downto 0);
      ccu_read_asr : out  std_logic_vector(0 downto 0);
      ccu_write_asr : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component bypass_possible_logic_Volatile is -- 
    port ( -- 
      read_thread_id : in  std_logic_vector(3 downto 0);
      read_stream_id : in  std_logic_vector(1 downto 0);
      read_slot_id : in  std_logic_vector(5 downto 0);
      bypass_info : in  std_logic_vector(82 downto 0);
      rs1_read_lock_available : in  std_logic_vector(0 downto 0);
      rs1_has_one_pending_write : in  std_logic_vector(0 downto 0);
      rs2_read_lock_available : in  std_logic_vector(0 downto 0);
      rs2_has_one_pending_write : in  std_logic_vector(0 downto 0);
      rd_h_read_lock_available : in  std_logic_vector(0 downto 0);
      rd_h_has_one_pending_write : in  std_logic_vector(0 downto 0);
      rd_l_read_lock_available : in  std_logic_vector(0 downto 0);
      rd_l_has_one_pending_write : in  std_logic_vector(0 downto 0);
      save_restore_lock : in  std_logic_vector(0 downto 0);
      rs1 : in  std_logic_vector(4 downto 0);
      rs2 : in  std_logic_vector(4 downto 0);
      read_rd : in  std_logic_vector(4 downto 0);
      write_rd : in  std_logic_vector(4 downto 0);
      speculative_lock_locks_available : in  std_logic_vector(0 downto 0);
      read_rs1 : in  std_logic_vector(0 downto 0);
      read_rs2 : in  std_logic_vector(0 downto 0);
      read_rd_h : in  std_logic_vector(0 downto 0);
      read_rd_l : in  std_logic_vector(0 downto 0);
      write_psr : in  std_logic_vector(2 downto 0);
      read_psr : in  std_logic_vector(2 downto 0);
      lock_psr : in  std_logic_vector(2 downto 0);
      psr_read_locks : in  std_logic_vector(2 downto 0);
      read_skip_iu : in  std_logic_vector(0 downto 0);
      read_sreg : in  std_logic_vector(0 downto 0);
      read_lock_all_regs : in  std_logic_vector(0 downto 0);
      lock_sreg : in  std_logic_vector(0 downto 0);
      bypass_active : out  std_logic_vector(0 downto 0);
      bypass_rs1_possible : out  std_logic_vector(0 downto 0);
      bypass_rs2_possible : out  std_logic_vector(0 downto 0);
      bypass_rd_h_possible : out  std_logic_vector(0 downto 0);
      bypass_rd_l_possible : out  std_logic_vector(0 downto 0);
      bypass_psr_possible : out  std_logic_vector(0 downto 0);
      bypass_possible : out  std_logic_vector(0 downto 0);
      bypass_info_rd_value : out  std_logic_vector(31 downto 0);
      bypass_info_psr_value : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component bypass_cc_possible_logic_Volatile is -- 
    port ( -- 
      read_thread_id : in  std_logic_vector(3 downto 0);
      read_stream_id : in  std_logic_vector(1 downto 0);
      read_slot_id : in  std_logic_vector(5 downto 0);
      bypass_cc_info : in  std_logic_vector(16 downto 0);
      read_psr : in  std_logic_vector(2 downto 0);
      cc_write_pending : in  std_logic_vector(0 downto 0);
      bypass_cc_active : out  std_logic_vector(0 downto 0);
      bypass_cc_possible : out  std_logic_vector(0 downto 0);
      bypass_info_cc_value : out  std_logic_vector(3 downto 0)-- 
    );
    -- 
  end component; 
  component clear_psr_locks_Volatile is -- 
    port ( -- 
      clear_locks : in  std_logic_vector(2 downto 0);
      psr_read_locks : in  std_logic_vector(2 downto 0);
      next_psr_read_locks : out  std_logic_vector(2 downto 0)-- 
    );
    -- 
  end component; 
  component clear_single_bit_lock_Volatile is -- 
    port ( -- 
      clear_lock : in  std_logic_vector(0 downto 0);
      old_lock_value : in  std_logic_vector(0 downto 0);
      new_lock_value : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component clear_y_lock_Volatile is -- 
    port ( -- 
      clear_lock : in  std_logic_vector(0 downto 0);
      old_lock_value : in  std_logic_vector(2 downto 0);
      new_lock_value : out  std_logic_vector(2 downto 0)-- 
    );
    -- 
  end component; 
  component construct_wb_message_to_iretire_Volatile is -- 
    port ( -- 
      write_command_valid : in  std_logic_vector(0 downto 0);
      write_response_valid : in  std_logic_vector(0 downto 0);
      write_response : in  std_logic_vector(43 downto 0);
      fwd_to_retire_valid : in  std_logic_vector(0 downto 0);
      fwd_info_to_retire : in  std_logic_vector(95 downto 0);
      psr_modified : in  std_logic_vector(0 downto 0);
      tbr_modified : in  std_logic_vector(0 downto 0);
      ret_PSR : in  std_logic_vector(31 downto 0);
      ret_TBR : in  std_logic_vector(31 downto 0);
      send_to_iretire : out  std_logic_vector(0 downto 0);
      response_to_iretire : out  std_logic_vector(95 downto 0)-- 
    );
    -- 
  end component; 
  component isValidBypassInfo_Volatile is -- 
    port ( -- 
      bypass_info : in  std_logic_vector(82 downto 0);
      is_valid : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component expand_ls_bypass_Volatile is -- 
    port ( -- 
      ref_cpu_id : in  std_logic_vector(7 downto 0);
      ls_bypass_info : in  std_logic_vector(92 downto 0);
      bypass_info : out  std_logic_vector(82 downto 0)-- 
    );
    -- 
  end component; 
  component isValidBypassCCInfo_Volatile is -- 
    port ( -- 
      bypass_cc_info : in  std_logic_vector(16 downto 0);
      is_valid : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component extractReadRegs_Volatile is -- 
    port ( -- 
      read_command : in  std_logic_vector(58 downto 0);
      read_command_valid : out  std_logic_vector(0 downto 0);
      read_asr_id : out  std_logic_vector(4 downto 0);
      rs1 : out  std_logic_vector(4 downto 0);
      rs2 : out  std_logic_vector(4 downto 0);
      read_rd : out  std_logic_vector(4 downto 0)-- 
    );
    -- 
  end component; 
  -- function library module [iu_registers_3r_1w_port_register_file] component not printed.
  component iu_writeback_core_Volatile is -- 
    port ( -- 
      wb_in_args : in  std_logic_vector(372 downto 0);
      wb_state : in  std_logic_vector(1 downto 0);
      send_to_rfile : out  std_logic_vector(0 downto 0);
      to_reg_wb : out  std_logic_vector(162 downto 0);
      iu2_to_retire : out  std_logic_vector(0 downto 0);
      to_wb_retire_stage : out  std_logic_vector(95 downto 0);
      next_wb_state : out  std_logic_vector(1 downto 0)-- 
    );
    -- 
  end component; 
  component update_asr_locks_Volatile is -- 
    port ( -- 
      clear_lock : in  std_logic_vector(0 downto 0);
      clear_rid : in  std_logic_vector(4 downto 0);
      test_lock : in  std_logic_vector(0 downto 0);
      set_lock : in  std_logic_vector(0 downto 0);
      test_set_rid : in  std_logic_vector(4 downto 0);
      asr_read_locks : in  std_logic_vector(31 downto 0);
      asr_locks_available : out  std_logic_vector(0 downto 0);
      post_clear_asr_locks : out  std_logic_vector(31 downto 0);
      post_test_and_set_asr_locks : out  std_logic_vector(31 downto 0)-- 
    );
    -- 
  end component; 
  component test_and_set_single_bit_lock_Volatile is -- 
    port ( -- 
      test_lock : in  std_logic_vector(0 downto 0);
      set_lock : in  std_logic_vector(0 downto 0);
      old_lock_value : in  std_logic_vector(0 downto 0);
      lock_available : out  std_logic_vector(0 downto 0);
      new_lock_value : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  component update_register_read_locks_Volatile is -- 
    port ( -- 
      clear_all_locks : in  std_logic_vector(0 downto 0);
      clear_rd : in  std_logic_vector(0 downto 0);
      c_double : in  std_logic_vector(0 downto 0);
      c_rd : in  std_logic_vector(4 downto 0);
      set_all_locks : in  std_logic_vector(0 downto 0);
      test_rs1 : in  std_logic_vector(0 downto 0);
      rs1 : in  std_logic_vector(4 downto 0);
      test_rs2 : in  std_logic_vector(0 downto 0);
      rs2 : in  std_logic_vector(4 downto 0);
      test_rd : in  std_logic_vector(0 downto 0);
      t_double : in  std_logic_vector(0 downto 0);
      t_rd : in  std_logic_vector(4 downto 0);
      set_rd : in  std_logic_vector(0 downto 0);
      s_double : in  std_logic_vector(0 downto 0);
      s_rd : in  std_logic_vector(4 downto 0);
      reg_read_locks : in  std_logic_vector(63 downto 0);
      all_reg_lock_locks_available_for_bypass : out  std_logic_vector(0 downto 0);
      all_reg_locks_available : out  std_logic_vector(0 downto 0);
      rs1_read_lock_available : out  std_logic_vector(0 downto 0);
      rs1_has_one_pending_write : out  std_logic_vector(0 downto 0);
      rs2_read_lock_available : out  std_logic_vector(0 downto 0);
      rs2_has_one_pending_write : out  std_logic_vector(0 downto 0);
      rd_h_read_lock_available : out  std_logic_vector(0 downto 0);
      rd_h_has_one_pending_write : out  std_logic_vector(0 downto 0);
      rd_l_read_lock_available : out  std_logic_vector(0 downto 0);
      rd_l_has_one_pending_write : out  std_logic_vector(0 downto 0);
      post_clear_reg_read_locks : out  std_logic_vector(63 downto 0);
      post_set_reg_read_locks : out  std_logic_vector(63 downto 0)-- 
    );
    -- 
  end component; 
  component test_and_set_y_lock_Volatile is -- 
    port ( -- 
      test_lock : in  std_logic_vector(0 downto 0);
      set_lock : in  std_logic_vector(0 downto 0);
      old_lock_value : in  std_logic_vector(2 downto 0);
      lock_available : out  std_logic_vector(0 downto 0);
      new_lock_value : out  std_logic_vector(2 downto 0)-- 
    );
    -- 
  end component; 
  component updateWriteToReadBypass_Volatile is -- 
    port ( -- 
      wr_even : in  std_logic_vector(0 downto 0);
      wr_odd : in  std_logic_vector(0 downto 0);
      wr_reg_id : in  std_logic_vector(4 downto 0);
      wr_cwp : in  std_logic_vector(4 downto 0);
      wr_value_even : in  std_logic_vector(31 downto 0);
      wr_value_odd : in  std_logic_vector(31 downto 0);
      rd_reg_id : in  std_logic_vector(4 downto 0);
      rd_cwp : in  std_logic_vector(4 downto 0);
      read_pair_value : in  std_logic_vector(63 downto 0);
      updated_read_pair_value : out  std_logic_vector(63 downto 0)-- 
    );
    -- 
  end component; 
  component test_and_set_psr_locks_Volatile is -- 
    port ( -- 
      test_locks : in  std_logic_vector(2 downto 0);
      set_locks : in  std_logic_vector(2 downto 0);
      psr_read_locks : in  std_logic_vector(2 downto 0);
      psr_read_lock_available : out  std_logic_vector(0 downto 0);
      next_psr_read_locks : out  std_logic_vector(2 downto 0)-- 
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
  signal W_sampled_core_id_9490_inst_req_0 : boolean;
  signal W_sampled_core_id_9490_inst_ack_1 : boolean;
  signal WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_1 : boolean;
  signal W_sampled_core_id_9490_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_1 : boolean;
  signal W_sampled_core_id_9490_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_1 : boolean;
  signal WPIPE_iunit_register_file_read_access_response_12304_inst_ack_1 : boolean;
  signal W_sampled_thread_id_9493_inst_ack_0 : boolean;
  signal W_sampled_thread_id_9493_inst_req_0 : boolean;
  signal WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_1 : boolean;
  signal WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_0 : boolean;
  signal next_local_circulant_12401_9551_buf_req_1 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_1 : boolean;
  signal RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_1 : boolean;
  signal RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_1 : boolean;
  signal phi_stmt_9511_req_0 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_0 : boolean;
  signal do_while_stmt_9497_branch_req_0 : boolean;
  signal RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_0 : boolean;
  signal RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_0 : boolean;
  signal RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_0 : boolean;
  signal W_sampled_thread_id_9493_inst_ack_1 : boolean;
  signal W_sampled_thread_id_9493_inst_req_1 : boolean;
  signal phi_stmt_9511_req_1 : boolean;
  signal WPIPE_iunit_register_file_read_access_response_12304_inst_req_1 : boolean;
  signal next_local_circulant_12401_9551_buf_ack_1 : boolean;
  signal WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_0 : boolean;
  signal WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_0 : boolean;
  signal phi_stmt_9552_req_1 : boolean;
  signal WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_0 : boolean;
  signal WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_0 : boolean;
  signal phi_stmt_9511_ack_0 : boolean;
  signal WPIPE_iunit_register_file_read_access_response_12304_inst_ack_0 : boolean;
  signal WPIPE_iunit_register_file_read_access_response_12304_inst_req_0 : boolean;
  signal do_while_stmt_9497_branch_ack_1 : boolean;
  signal RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_0 : boolean;
  signal RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_0 : boolean;
  signal phi_stmt_9552_req_0 : boolean;
  signal RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_1 : boolean;
  signal RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_1 : boolean;
  signal WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_1 : boolean;
  signal W_ccu_response_buffered_12331_inst_ack_1 : boolean;
  signal phi_stmt_9516_req_1 : boolean;
  signal phi_stmt_9516_req_0 : boolean;
  signal WPIPE_teu_iunit_to_iretire_12287_inst_ack_1 : boolean;
  signal phi_stmt_9516_ack_0 : boolean;
  signal do_while_stmt_9497_branch_ack_0 : boolean;
  signal WPIPE_teu_iunit_to_iretire_12287_inst_req_1 : boolean;
  signal WPIPE_teu_iunit_to_iretire_12287_inst_ack_0 : boolean;
  signal WPIPE_teu_iunit_to_iretire_12287_inst_req_0 : boolean;
  signal RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_1 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_0 : boolean;
  signal WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_0 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_0 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_1 : boolean;
  signal WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_0 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_1 : boolean;
  signal W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_1 : boolean;
  signal RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_0 : boolean;
  signal RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_0 : boolean;
  signal W_ccu_response_buffered_12331_inst_req_1 : boolean;
  signal next_local_circulant_12401_9551_buf_ack_0 : boolean;
  signal phi_stmt_9520_req_0 : boolean;
  signal phi_stmt_9520_req_1 : boolean;
  signal W_send_ccu_response_12609_delayed_1_0_12334_inst_req_1 : boolean;
  signal phi_stmt_9520_ack_0 : boolean;
  signal call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_0 : boolean;
  signal call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_0 : boolean;
  signal call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_1 : boolean;
  signal call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_1 : boolean;
  signal next_local_circulant_12401_9551_buf_req_0 : boolean;
  signal WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_1 : boolean;
  signal WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_1 : boolean;
  signal WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_1 : boolean;
  signal phi_stmt_9534_req_0 : boolean;
  signal phi_stmt_9534_req_1 : boolean;
  signal phi_stmt_9534_ack_0 : boolean;
  signal call_asr_update_expr_9539_inst_req_0 : boolean;
  signal call_asr_update_expr_9539_inst_ack_0 : boolean;
  signal call_asr_update_expr_9539_inst_req_1 : boolean;
  signal call_asr_update_expr_9539_inst_ack_1 : boolean;
  signal W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_0 : boolean;
  signal phi_stmt_9557_ack_0 : boolean;
  signal phi_stmt_9557_req_0 : boolean;
  signal phi_stmt_9557_req_1 : boolean;
  signal WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_0 : boolean;
  signal phi_stmt_9552_ack_0 : boolean;
  signal phi_stmt_9541_req_1 : boolean;
  signal phi_stmt_9541_req_0 : boolean;
  signal W_send_ccu_response_12609_delayed_1_0_12334_inst_req_0 : boolean;
  signal phi_stmt_9541_ack_0 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_0 : boolean;
  signal WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_1 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_0 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_1 : boolean;
  signal WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_1 : boolean;
  signal RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_1 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_1 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_0 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_1 : boolean;
  signal RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_1 : boolean;
  signal W_ccu_response_buffered_12331_inst_ack_0 : boolean;
  signal RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_0 : boolean;
  signal W_ccu_response_buffered_12331_inst_req_0 : boolean;
  signal phi_stmt_9548_req_1 : boolean;
  signal phi_stmt_9548_req_0 : boolean;
  signal phi_stmt_9548_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "iu_registers_daemon_input_buffer", -- 
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
  iu_registers_daemon_CP_1778_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "iu_registers_daemon_out_buffer", -- 
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
    preds <= iu_registers_daemon_CP_1778_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= iu_registers_daemon_CP_1778_start & tag_ilock_write_ack_symbol;
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
    preds <= iu_registers_daemon_CP_1778_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  iu_registers_daemon_CP_1778: Block -- control-path 
    signal iu_registers_daemon_CP_1778_elements: BooleanArray(240 downto 0);
    -- 
  begin -- 
    iu_registers_daemon_CP_1778_elements(0) <= iu_registers_daemon_CP_1778_start;
    iu_registers_daemon_CP_1778_symbol <= iu_registers_daemon_CP_1778_elements(6);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	4 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	3 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (14) 
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_sample_start_
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_sample_start_
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/$entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_update_start_
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Update/$entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Sample/req
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_update_start_
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Update/req
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Sample/req
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Update/$entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Update/req
      -- 
    req_1810_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1810_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(0), ack => W_sampled_thread_id_9493_inst_req_1); -- 
    req_1791_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1791_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(0), ack => W_sampled_core_id_9490_inst_req_0); -- 
    req_1796_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1796_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(0), ack => W_sampled_core_id_9490_inst_req_1); -- 
    req_1805_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1805_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(0), ack => W_sampled_thread_id_9493_inst_req_0); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_sample_completed_
      -- CP-element group 1: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Sample/ack
      -- CP-element group 1: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Sample/$exit
      -- 
    ack_1792_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sampled_core_id_9490_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(1)); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	5 
    -- CP-element group 2:  members (3) 
      -- CP-element group 2: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Update/ack
      -- CP-element group 2: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_Update/$exit
      -- CP-element group 2: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9492_update_completed_
      -- 
    ack_1797_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sampled_core_id_9490_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(2)); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_sample_completed_
      -- CP-element group 3: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Sample/ack
      -- CP-element group 3: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Sample/$exit
      -- 
    ack_1806_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sampled_thread_id_9493_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(3)); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	0 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_update_completed_
      -- CP-element group 4: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Update/ack
      -- CP-element group 4: 	 assign_stmt_9451_to_assign_stmt_9495/assign_stmt_9495_Update/$exit
      -- 
    ack_1811_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_sampled_thread_id_9493_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(4)); -- 
    -- CP-element group 5:  join  transition  place  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: 	2 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	7 
    -- CP-element group 5:  members (4) 
      -- CP-element group 5: 	 assign_stmt_9451_to_assign_stmt_9495/$exit
      -- CP-element group 5: 	 branch_block_stmt_9496/do_while_stmt_9497__entry__
      -- CP-element group 5: 	 branch_block_stmt_9496/$entry
      -- CP-element group 5: 	 branch_block_stmt_9496/branch_block_stmt_9496__entry__
      -- 
    iu_registers_daemon_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "iu_registers_daemon_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(4) & iu_registers_daemon_CP_1778_elements(2);
      gj_iu_registers_daemon_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(5), clk => clk, reset => reset); --
    end block;
    -- CP-element group 6:  transition  place  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	240 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (4) 
      -- CP-element group 6: 	 $exit
      -- CP-element group 6: 	 branch_block_stmt_9496/branch_block_stmt_9496__exit__
      -- CP-element group 6: 	 branch_block_stmt_9496/do_while_stmt_9497__exit__
      -- CP-element group 6: 	 branch_block_stmt_9496/$exit
      -- 
    iu_registers_daemon_CP_1778_elements(6) <= iu_registers_daemon_CP_1778_elements(240);
    -- CP-element group 7:  transition  place  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	5 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	13 
    -- CP-element group 7:  members (2) 
      -- CP-element group 7: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497__entry__
      -- CP-element group 7: 	 branch_block_stmt_9496/do_while_stmt_9497/$entry
      -- 
    iu_registers_daemon_CP_1778_elements(7) <= iu_registers_daemon_CP_1778_elements(5);
    -- CP-element group 8:  merge  place  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	240 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497__exit__
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(8) is bound as output of CP function.
    -- CP-element group 9:  merge  place  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	12 
    -- CP-element group 9:  members (1) 
      -- CP-element group 9: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_back
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(9) is bound as output of CP function.
    -- CP-element group 10:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	238 
    -- CP-element group 10: 	239 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_9496/do_while_stmt_9497/condition_done
      -- CP-element group 10: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_taken/$entry
      -- CP-element group 10: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_exit/$entry
      -- 
    iu_registers_daemon_CP_1778_elements(10) <= iu_registers_daemon_CP_1778_elements(15);
    -- CP-element group 11:  branch  place  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	237 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_body_done
      -- 
    iu_registers_daemon_CP_1778_elements(11) <= iu_registers_daemon_CP_1778_elements(237);
    -- CP-element group 12:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	9 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	66 
    -- CP-element group 12: 	47 
    -- CP-element group 12: 	87 
    -- CP-element group 12: 	108 
    -- CP-element group 12: 	129 
    -- CP-element group 12: 	155 
    -- CP-element group 12: 	174 
    -- CP-element group 12: 	195 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/back_edge_to_loop_body
      -- 
    iu_registers_daemon_CP_1778_elements(12) <= iu_registers_daemon_CP_1778_elements(9);
    -- CP-element group 13:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	7 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	49 
    -- CP-element group 13: 	68 
    -- CP-element group 13: 	89 
    -- CP-element group 13: 	110 
    -- CP-element group 13: 	131 
    -- CP-element group 13: 	157 
    -- CP-element group 13: 	176 
    -- CP-element group 13: 	197 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/first_time_through_loop_body
      -- 
    iu_registers_daemon_CP_1778_elements(13) <= iu_registers_daemon_CP_1778_elements(7);
    -- CP-element group 14:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	62 
    -- CP-element group 14: 	63 
    -- CP-element group 14: 	31 
    -- CP-element group 14: 	16 
    -- CP-element group 14: 	36 
    -- CP-element group 14: 	26 
    -- CP-element group 14: 	21 
    -- CP-element group 14: 	41 
    -- CP-element group 14: 	42 
    -- CP-element group 14: 	81 
    -- CP-element group 14: 	82 
    -- CP-element group 14: 	102 
    -- CP-element group 14: 	103 
    -- CP-element group 14: 	123 
    -- CP-element group 14: 	124 
    -- CP-element group 14: 	144 
    -- CP-element group 14: 	149 
    -- CP-element group 14: 	150 
    -- CP-element group 14: 	168 
    -- CP-element group 14: 	169 
    -- CP-element group 14: 	189 
    -- CP-element group 14: 	190 
    -- CP-element group 14: 	236 
    -- CP-element group 14:  members (7) 
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9505_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9508_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/$entry
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9502_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/loop_body_start
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9499_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9545_sample_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(14) is bound as output of CP function.
    -- CP-element group 15:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	18 
    -- CP-element group 15: 	20 
    -- CP-element group 15: 	236 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/condition_evaluated
      -- 
    condition_evaluated_1833_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1833_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(15), ack => do_while_stmt_9497_branch_req_0); -- 
    iu_registers_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(18) & iu_registers_daemon_CP_1778_elements(20) & iu_registers_daemon_CP_1778_elements(236);
      gj_iu_registers_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	62 
    -- CP-element group 16: 	14 
    -- CP-element group 16: 	41 
    -- CP-element group 16: 	81 
    -- CP-element group 16: 	102 
    -- CP-element group 16: 	123 
    -- CP-element group 16: 	149 
    -- CP-element group 16: 	168 
    -- CP-element group 16: 	189 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	20 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	32 
    -- CP-element group 16: 	37 
    -- CP-element group 16: 	22 
    -- CP-element group 16: 	27 
    -- CP-element group 16: 	43 
    -- CP-element group 16: 	83 
    -- CP-element group 16: 	104 
    -- CP-element group 16: 	125 
    -- CP-element group 16: 	145 
    -- CP-element group 16: 	151 
    -- CP-element group 16: 	170 
    -- CP-element group 16: 	191 
    -- CP-element group 16:  members (2) 
      -- CP-element group 16: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/aggregated_phi_sample_req
      -- CP-element group 16: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_sample_start__ps
      -- 
    iu_registers_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(62) & iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(41) & iu_registers_daemon_CP_1778_elements(81) & iu_registers_daemon_CP_1778_elements(102) & iu_registers_daemon_CP_1778_elements(123) & iu_registers_daemon_CP_1778_elements(149) & iu_registers_daemon_CP_1778_elements(168) & iu_registers_daemon_CP_1778_elements(189) & iu_registers_daemon_CP_1778_elements(20);
      gj_iu_registers_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	64 
    -- CP-element group 17: 	34 
    -- CP-element group 17: 	24 
    -- CP-element group 17: 	29 
    -- CP-element group 17: 	39 
    -- CP-element group 17: 	44 
    -- CP-element group 17: 	84 
    -- CP-element group 17: 	105 
    -- CP-element group 17: 	126 
    -- CP-element group 17: 	147 
    -- CP-element group 17: 	152 
    -- CP-element group 17: 	171 
    -- CP-element group 17: 	192 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17: 	237 
    -- CP-element group 17: marked-successors 
    -- CP-element group 17: 	62 
    -- CP-element group 17: 	41 
    -- CP-element group 17: 	81 
    -- CP-element group 17: 	102 
    -- CP-element group 17: 	123 
    -- CP-element group 17: 	149 
    -- CP-element group 17: 	168 
    -- CP-element group 17: 	189 
    -- CP-element group 17:  members (14) 
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9505_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9502_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/aggregated_phi_sample_ack
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9508_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9499_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9545_sample_completed_
      -- CP-element group 17: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_sample_completed_
      -- 
    iu_registers_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 12) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1);
      constant place_markings: IntegerArray(0 to 12)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0);
      constant place_delays: IntegerArray(0 to 12) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 13); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(64) & iu_registers_daemon_CP_1778_elements(34) & iu_registers_daemon_CP_1778_elements(24) & iu_registers_daemon_CP_1778_elements(29) & iu_registers_daemon_CP_1778_elements(39) & iu_registers_daemon_CP_1778_elements(44) & iu_registers_daemon_CP_1778_elements(84) & iu_registers_daemon_CP_1778_elements(105) & iu_registers_daemon_CP_1778_elements(126) & iu_registers_daemon_CP_1778_elements(147) & iu_registers_daemon_CP_1778_elements(152) & iu_registers_daemon_CP_1778_elements(171) & iu_registers_daemon_CP_1778_elements(192);
      gj_iu_registers_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 13, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	15 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(18) is a control-delay.
    cp_element_18_delay: control_delay_element  generic map(name => " 18_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(17), ack => iu_registers_daemon_CP_1778_elements(18), clk => clk, reset =>reset);
    -- CP-element group 19:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	63 
    -- CP-element group 19: 	31 
    -- CP-element group 19: 	36 
    -- CP-element group 19: 	26 
    -- CP-element group 19: 	21 
    -- CP-element group 19: 	42 
    -- CP-element group 19: 	82 
    -- CP-element group 19: 	103 
    -- CP-element group 19: 	124 
    -- CP-element group 19: 	144 
    -- CP-element group 19: 	150 
    -- CP-element group 19: 	190 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	33 
    -- CP-element group 19: 	38 
    -- CP-element group 19: 	23 
    -- CP-element group 19: 	28 
    -- CP-element group 19: 	45 
    -- CP-element group 19: 	85 
    -- CP-element group 19: 	106 
    -- CP-element group 19: 	127 
    -- CP-element group 19: 	146 
    -- CP-element group 19: 	153 
    -- CP-element group 19: 	193 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/aggregated_phi_update_req
      -- CP-element group 19: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_update_start__ps
      -- 
    iu_registers_daemon_cp_element_group_19: block -- 
      constant place_capacities: IntegerArray(0 to 11) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1);
      constant place_markings: IntegerArray(0 to 11)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant place_delays: IntegerArray(0 to 11) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_19"; 
      signal preds: BooleanArray(1 to 12); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(63) & iu_registers_daemon_CP_1778_elements(31) & iu_registers_daemon_CP_1778_elements(36) & iu_registers_daemon_CP_1778_elements(26) & iu_registers_daemon_CP_1778_elements(21) & iu_registers_daemon_CP_1778_elements(42) & iu_registers_daemon_CP_1778_elements(82) & iu_registers_daemon_CP_1778_elements(103) & iu_registers_daemon_CP_1778_elements(124) & iu_registers_daemon_CP_1778_elements(144) & iu_registers_daemon_CP_1778_elements(150) & iu_registers_daemon_CP_1778_elements(190);
      gj_iu_registers_daemon_cp_element_group_19 : generic_join generic map(name => joinName, number_of_predecessors => 12, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(19), clk => clk, reset => reset); --
    end block;
    -- CP-element group 20:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	65 
    -- CP-element group 20: 	30 
    -- CP-element group 20: 	35 
    -- CP-element group 20: 	25 
    -- CP-element group 20: 	40 
    -- CP-element group 20: 	46 
    -- CP-element group 20: 	86 
    -- CP-element group 20: 	107 
    -- CP-element group 20: 	128 
    -- CP-element group 20: 	148 
    -- CP-element group 20: 	154 
    -- CP-element group 20: 	173 
    -- CP-element group 20: 	194 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	15 
    -- CP-element group 20: marked-successors 
    -- CP-element group 20: 	16 
    -- CP-element group 20:  members (1) 
      -- CP-element group 20: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/aggregated_phi_update_ack
      -- 
    iu_registers_daemon_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 12) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1);
      constant place_markings: IntegerArray(0 to 12)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0);
      constant place_delays: IntegerArray(0 to 12) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 13); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(65) & iu_registers_daemon_CP_1778_elements(30) & iu_registers_daemon_CP_1778_elements(35) & iu_registers_daemon_CP_1778_elements(25) & iu_registers_daemon_CP_1778_elements(40) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(128) & iu_registers_daemon_CP_1778_elements(148) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(173) & iu_registers_daemon_CP_1778_elements(194);
      gj_iu_registers_daemon_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 13, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  join  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	14 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	214 
    -- CP-element group 21: 	217 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	19 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9499_update_start_
      -- 
    iu_registers_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217);
      gj_iu_registers_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	16 
    -- CP-element group 22: marked-predecessors 
    -- CP-element group 22: 	25 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Sample/rr
      -- CP-element group 22: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Sample/$entry
      -- CP-element group 22: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_sample_start_
      -- 
    rr_1851_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1851_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(22), ack => RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_22: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_22"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(16) & iu_registers_daemon_CP_1778_elements(25);
      gj_iu_registers_daemon_cp_element_group_22 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(22), clk => clk, reset => reset); --
    end block;
    -- CP-element group 23:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	19 
    -- CP-element group 23: 	24 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	25 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Update/cr
      -- CP-element group 23: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Update/$entry
      -- CP-element group 23: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_update_start_
      -- 
    cr_1856_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1856_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(23), ack => RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_23: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_23"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(24);
      gj_iu_registers_daemon_cp_element_group_23 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(23), clk => clk, reset => reset); --
    end block;
    -- CP-element group 24:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	22 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	17 
    -- CP-element group 24: 	23 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Sample/ra
      -- CP-element group 24: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Sample/$exit
      -- CP-element group 24: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_sample_completed_
      -- 
    ra_1852_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(24)); -- 
    -- CP-element group 25:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	23 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	20 
    -- CP-element group 25: 	213 
    -- CP-element group 25: 	216 
    -- CP-element group 25: marked-successors 
    -- CP-element group 25: 	22 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Update/ca
      -- CP-element group 25: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_Update/$exit
      -- CP-element group 25: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_update_completed_
      -- CP-element group 25: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9499_update_completed_
      -- 
    ca_1857_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(25)); -- 
    -- CP-element group 26:  join  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	14 
    -- CP-element group 26: marked-predecessors 
    -- CP-element group 26: 	220 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	19 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9502_update_start_
      -- 
    iu_registers_daemon_cp_element_group_26: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_26"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(220);
      gj_iu_registers_daemon_cp_element_group_26 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(26), clk => clk, reset => reset); --
    end block;
    -- CP-element group 27:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	16 
    -- CP-element group 27: marked-predecessors 
    -- CP-element group 27: 	30 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Sample/rr
      -- CP-element group 27: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Sample/$entry
      -- CP-element group 27: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_sample_start_
      -- 
    rr_1869_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1869_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(27), ack => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_27: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_27"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(16) & iu_registers_daemon_CP_1778_elements(30);
      gj_iu_registers_daemon_cp_element_group_27 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(27), clk => clk, reset => reset); --
    end block;
    -- CP-element group 28:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	19 
    -- CP-element group 28: 	29 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Update/cr
      -- CP-element group 28: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Update/$entry
      -- CP-element group 28: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_update_start_
      -- 
    cr_1874_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1874_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(28), ack => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_28: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_28"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(29);
      gj_iu_registers_daemon_cp_element_group_28 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(28), clk => clk, reset => reset); --
    end block;
    -- CP-element group 29:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	17 
    -- CP-element group 29: 	28 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Sample/ra
      -- CP-element group 29: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Sample/$exit
      -- CP-element group 29: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_sample_completed_
      -- 
    ra_1870_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(29)); -- 
    -- CP-element group 30:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	20 
    -- CP-element group 30: 	219 
    -- CP-element group 30: marked-successors 
    -- CP-element group 30: 	27 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Update/ca
      -- CP-element group 30: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_Update/$exit
      -- CP-element group 30: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_update_completed_
      -- CP-element group 30: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9502_update_completed_
      -- 
    ca_1875_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(30)); -- 
    -- CP-element group 31:  join  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	14 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	214 
    -- CP-element group 31: 	217 
    -- CP-element group 31: 	223 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	19 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9505_update_start_
      -- 
    iu_registers_daemon_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217) & iu_registers_daemon_CP_1778_elements(223);
      gj_iu_registers_daemon_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	16 
    -- CP-element group 32: marked-predecessors 
    -- CP-element group 32: 	35 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	34 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Sample/rr
      -- CP-element group 32: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_sample_start_
      -- CP-element group 32: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Sample/$entry
      -- 
    rr_1887_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1887_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(32), ack => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(16) & iu_registers_daemon_CP_1778_elements(35);
      gj_iu_registers_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	19 
    -- CP-element group 33: 	34 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_update_start_
      -- CP-element group 33: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Update/cr
      -- CP-element group 33: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Update/$entry
      -- 
    cr_1892_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1892_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(33), ack => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(34);
      gj_iu_registers_daemon_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	32 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	33 
    -- CP-element group 34: 	17 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_sample_completed_
      -- CP-element group 34: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Sample/ra
      -- CP-element group 34: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Sample/$exit
      -- 
    ra_1888_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(34)); -- 
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	20 
    -- CP-element group 35: 	213 
    -- CP-element group 35: 	216 
    -- CP-element group 35: 	222 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	32 
    -- CP-element group 35:  members (4) 
      -- CP-element group 35: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9505_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Update/ca
      -- CP-element group 35: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_Update/$exit
      -- 
    ca_1893_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(35)); -- 
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	14 
    -- CP-element group 36: marked-predecessors 
    -- CP-element group 36: 	214 
    -- CP-element group 36: 	217 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	19 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9508_update_start_
      -- 
    iu_registers_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217);
      gj_iu_registers_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	16 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	40 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Sample/$entry
      -- CP-element group 37: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_sample_start_
      -- CP-element group 37: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Sample/rr
      -- 
    rr_1905_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1905_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(37), ack => RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(16) & iu_registers_daemon_CP_1778_elements(40);
      gj_iu_registers_daemon_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	19 
    -- CP-element group 38: 	39 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_update_start_
      -- CP-element group 38: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Update/cr
      -- CP-element group 38: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Update/$entry
      -- 
    cr_1910_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1910_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(38), ack => RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(39);
      gj_iu_registers_daemon_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	17 
    -- CP-element group 39: 	38 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Sample/$exit
      -- CP-element group 39: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Sample/ra
      -- CP-element group 39: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_sample_completed_
      -- 
    ra_1906_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(39)); -- 
    -- CP-element group 40:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	20 
    -- CP-element group 40: 	213 
    -- CP-element group 40: 	216 
    -- CP-element group 40: marked-successors 
    -- CP-element group 40: 	37 
    -- CP-element group 40:  members (4) 
      -- CP-element group 40: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9508_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Update/ca
      -- CP-element group 40: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_Update/$exit
      -- 
    ca_1911_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(40)); -- 
    -- CP-element group 41:  join  transition  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	14 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	17 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	16 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	14 
    -- CP-element group 42: marked-predecessors 
    -- CP-element group 42: 	46 
    -- CP-element group 42: 	211 
    -- CP-element group 42: 	214 
    -- CP-element group 42: 	217 
    -- CP-element group 42: 	220 
    -- CP-element group 42: 	223 
    -- CP-element group 42: 	227 
    -- CP-element group 42: 	231 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	19 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_update_start_
      -- 
    iu_registers_daemon_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(211) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217) & iu_registers_daemon_CP_1778_elements(220) & iu_registers_daemon_CP_1778_elements(223) & iu_registers_daemon_CP_1778_elements(227) & iu_registers_daemon_CP_1778_elements(231);
      gj_iu_registers_daemon_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	16 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(43) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 44:  join  transition  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	17 
    -- CP-element group 44:  members (1) 
      -- CP-element group 44: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(44) is bound as output of CP function.
    -- CP-element group 45:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	19 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_update_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(45) <= iu_registers_daemon_CP_1778_elements(19);
    -- CP-element group 46:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	20 
    -- CP-element group 46: 	210 
    -- CP-element group 46: 	213 
    -- CP-element group 46: 	216 
    -- CP-element group 46: 	219 
    -- CP-element group 46: 	222 
    -- CP-element group 46: 	225 
    -- CP-element group 46: 	229 
    -- CP-element group 46: marked-successors 
    -- CP-element group 46: 	42 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_update_completed__ps
      -- CP-element group 46: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(46) is bound as output of CP function.
    -- CP-element group 47:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	12 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(47) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 48:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_loopback_sample_req_ps
      -- CP-element group 48: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_loopback_sample_req
      -- 
    phi_stmt_9511_loopback_sample_req_1921_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9511_loopback_sample_req_1921_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(48), ack => phi_stmt_9511_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(48) is bound as output of CP function.
    -- CP-element group 49:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	13 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(49) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 50:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: successors 
    -- CP-element group 50:  members (2) 
      -- CP-element group 50: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_entry_sample_req_ps
      -- CP-element group 50: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_entry_sample_req
      -- 
    phi_stmt_9511_entry_sample_req_1924_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9511_entry_sample_req_1924_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(50), ack => phi_stmt_9511_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(50) is bound as output of CP function.
    -- CP-element group 51:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: successors 
    -- CP-element group 51:  members (2) 
      -- CP-element group 51: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_phi_mux_ack
      -- CP-element group 51: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9511_phi_mux_ack_ps
      -- 
    phi_stmt_9511_phi_mux_ack_1927_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 51_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9511_ack_0, ack => iu_registers_daemon_CP_1778_elements(51)); -- 
    -- CP-element group 52:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: successors 
    -- CP-element group 52:  members (4) 
      -- CP-element group 52: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_sample_start__ps
      -- CP-element group 52: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_sample_completed__ps
      -- CP-element group 52: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_sample_start_
      -- CP-element group 52: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(52) is bound as output of CP function.
    -- CP-element group 53:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (2) 
      -- CP-element group 53: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_update_start__ps
      -- CP-element group 53: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_update_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(53) is bound as output of CP function.
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	55 
    -- CP-element group 54: successors 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(54) <= iu_registers_daemon_CP_1778_elements(55);
    -- CP-element group 55:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	54 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9513_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(55) is a control-delay.
    cp_element_55_delay: control_delay_element  generic map(name => " 55_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(53), ack => iu_registers_daemon_CP_1778_elements(55), clk => clk, reset =>reset);
    -- CP-element group 56:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	58 
    -- CP-element group 56:  members (1) 
      -- CP-element group 56: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(56) is bound as output of CP function.
    -- CP-element group 57:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(57) is bound as output of CP function.
    -- CP-element group 58:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	56 
    -- CP-element group 58: marked-predecessors 
    -- CP-element group 58: 	61 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	60 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_sample_start_
      -- CP-element group 58: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Sample/$entry
      -- CP-element group 58: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Sample/rr
      -- 
    rr_1948_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1948_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(58), ack => RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(56) & iu_registers_daemon_CP_1778_elements(61);
      gj_iu_registers_daemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: 	60 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	61 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_update_start_
      -- CP-element group 59: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Update/$entry
      -- CP-element group 59: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Update/cr
      -- 
    cr_1953_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1953_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(59), ack => RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_59: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_59"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(57) & iu_registers_daemon_CP_1778_elements(60);
      gj_iu_registers_daemon_cp_element_group_59 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(59), clk => clk, reset => reset); --
    end block;
    -- CP-element group 60:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	58 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	59 
    -- CP-element group 60:  members (4) 
      -- CP-element group 60: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_sample_completed__ps
      -- CP-element group 60: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_sample_completed_
      -- CP-element group 60: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Sample/$exit
      -- CP-element group 60: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Sample/ra
      -- 
    ra_1949_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(60)); -- 
    -- CP-element group 61:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	59 
    -- CP-element group 61: successors 
    -- CP-element group 61: marked-successors 
    -- CP-element group 61: 	58 
    -- CP-element group 61:  members (4) 
      -- CP-element group 61: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_update_completed__ps
      -- CP-element group 61: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_update_completed_
      -- CP-element group 61: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Update/$exit
      -- CP-element group 61: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_writeback_in_args_pipe_9515_Update/ca
      -- 
    ca_1954_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(61)); -- 
    -- CP-element group 62:  join  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	14 
    -- CP-element group 62: marked-predecessors 
    -- CP-element group 62: 	17 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	16 
    -- CP-element group 62:  members (1) 
      -- CP-element group 62: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_62: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_62"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_62 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(62), clk => clk, reset => reset); --
    end block;
    -- CP-element group 63:  join  transition  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	14 
    -- CP-element group 63: marked-predecessors 
    -- CP-element group 63: 	65 
    -- CP-element group 63: 	214 
    -- CP-element group 63: 	217 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	19 
    -- CP-element group 63:  members (1) 
      -- CP-element group 63: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_update_start_
      -- 
    iu_registers_daemon_cp_element_group_63: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_63"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(65) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217);
      gj_iu_registers_daemon_cp_element_group_63 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(63), clk => clk, reset => reset); --
    end block;
    -- CP-element group 64:  join  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	17 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(64) is bound as output of CP function.
    -- CP-element group 65:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	20 
    -- CP-element group 65: 	213 
    -- CP-element group 65: 	216 
    -- CP-element group 65: marked-successors 
    -- CP-element group 65: 	63 
    -- CP-element group 65:  members (2) 
      -- CP-element group 65: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_update_completed_
      -- CP-element group 65: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(65) is bound as output of CP function.
    -- CP-element group 66:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	12 
    -- CP-element group 66: successors 
    -- CP-element group 66:  members (1) 
      -- CP-element group 66: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(66) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 67:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: successors 
    -- CP-element group 67:  members (2) 
      -- CP-element group 67: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_loopback_sample_req
      -- CP-element group 67: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_loopback_sample_req_ps
      -- 
    phi_stmt_9516_loopback_sample_req_1965_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9516_loopback_sample_req_1965_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(67), ack => phi_stmt_9516_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(67) is bound as output of CP function.
    -- CP-element group 68:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	13 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (1) 
      -- CP-element group 68: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(68) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 69:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (2) 
      -- CP-element group 69: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_entry_sample_req
      -- CP-element group 69: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_entry_sample_req_ps
      -- 
    phi_stmt_9516_entry_sample_req_1968_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9516_entry_sample_req_1968_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(69), ack => phi_stmt_9516_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(69) is bound as output of CP function.
    -- CP-element group 70:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: successors 
    -- CP-element group 70:  members (2) 
      -- CP-element group 70: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_phi_mux_ack
      -- CP-element group 70: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9516_phi_mux_ack_ps
      -- 
    phi_stmt_9516_phi_mux_ack_1971_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9516_ack_0, ack => iu_registers_daemon_CP_1778_elements(70)); -- 
    -- CP-element group 71:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: successors 
    -- CP-element group 71:  members (4) 
      -- CP-element group 71: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_sample_start__ps
      -- CP-element group 71: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_sample_completed__ps
      -- CP-element group 71: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_sample_start_
      -- CP-element group 71: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(71) is bound as output of CP function.
    -- CP-element group 72:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	74 
    -- CP-element group 72:  members (2) 
      -- CP-element group 72: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_update_start__ps
      -- CP-element group 72: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_update_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(72) is bound as output of CP function.
    -- CP-element group 73:  join  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	74 
    -- CP-element group 73: successors 
    -- CP-element group 73:  members (1) 
      -- CP-element group 73: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(73) <= iu_registers_daemon_CP_1778_elements(74);
    -- CP-element group 74:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	72 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	73 
    -- CP-element group 74:  members (1) 
      -- CP-element group 74: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9518_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(74) is a control-delay.
    cp_element_74_delay: control_delay_element  generic map(name => " 74_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(72), ack => iu_registers_daemon_CP_1778_elements(74), clk => clk, reset =>reset);
    -- CP-element group 75:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	77 
    -- CP-element group 75:  members (1) 
      -- CP-element group 75: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(75) is bound as output of CP function.
    -- CP-element group 76:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(76) is bound as output of CP function.
    -- CP-element group 77:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	75 
    -- CP-element group 77: marked-predecessors 
    -- CP-element group 77: 	80 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	79 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_sample_start_
      -- CP-element group 77: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Sample/$entry
      -- CP-element group 77: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Sample/rr
      -- 
    rr_1992_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1992_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(77), ack => RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(75) & iu_registers_daemon_CP_1778_elements(80);
      gj_iu_registers_daemon_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: 	79 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	80 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_update_start_
      -- CP-element group 78: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Update/$entry
      -- CP-element group 78: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Update/cr
      -- 
    cr_1997_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1997_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(78), ack => RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(76) & iu_registers_daemon_CP_1778_elements(79);
      gj_iu_registers_daemon_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	77 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	78 
    -- CP-element group 79:  members (4) 
      -- CP-element group 79: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_sample_completed__ps
      -- CP-element group 79: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_sample_completed_
      -- CP-element group 79: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Sample/$exit
      -- CP-element group 79: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Sample/ra
      -- 
    ra_1993_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(79)); -- 
    -- CP-element group 80:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	78 
    -- CP-element group 80: successors 
    -- CP-element group 80: marked-successors 
    -- CP-element group 80: 	77 
    -- CP-element group 80:  members (4) 
      -- CP-element group 80: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_update_completed__ps
      -- CP-element group 80: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_update_completed_
      -- CP-element group 80: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Update/$exit
      -- CP-element group 80: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_Update/ca
      -- 
    ca_1998_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(80)); -- 
    -- CP-element group 81:  join  transition  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	14 
    -- CP-element group 81: marked-predecessors 
    -- CP-element group 81: 	17 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	16 
    -- CP-element group 81:  members (1) 
      -- CP-element group 81: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_81: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_81"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_81 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(81), clk => clk, reset => reset); --
    end block;
    -- CP-element group 82:  join  transition  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	14 
    -- CP-element group 82: marked-predecessors 
    -- CP-element group 82: 	86 
    -- CP-element group 82: 	214 
    -- CP-element group 82: 	217 
    -- CP-element group 82: 	223 
    -- CP-element group 82: 	227 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	19 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_update_start_
      -- 
    iu_registers_daemon_cp_element_group_82: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_82"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217) & iu_registers_daemon_CP_1778_elements(223) & iu_registers_daemon_CP_1778_elements(227);
      gj_iu_registers_daemon_cp_element_group_82 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(82), clk => clk, reset => reset); --
    end block;
    -- CP-element group 83:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	16 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(83) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 84:  join  transition  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	17 
    -- CP-element group 84:  members (1) 
      -- CP-element group 84: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(84) is bound as output of CP function.
    -- CP-element group 85:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	19 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (1) 
      -- CP-element group 85: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_update_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(85) <= iu_registers_daemon_CP_1778_elements(19);
    -- CP-element group 86:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	20 
    -- CP-element group 86: 	213 
    -- CP-element group 86: 	216 
    -- CP-element group 86: 	222 
    -- CP-element group 86: 	225 
    -- CP-element group 86: marked-successors 
    -- CP-element group 86: 	82 
    -- CP-element group 86:  members (2) 
      -- CP-element group 86: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_update_completed_
      -- CP-element group 86: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(86) is bound as output of CP function.
    -- CP-element group 87:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	12 
    -- CP-element group 87: successors 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(87) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 88:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: successors 
    -- CP-element group 88:  members (2) 
      -- CP-element group 88: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_loopback_sample_req
      -- CP-element group 88: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_loopback_sample_req_ps
      -- 
    phi_stmt_9520_loopback_sample_req_2009_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9520_loopback_sample_req_2009_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(88), ack => phi_stmt_9520_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(88) is bound as output of CP function.
    -- CP-element group 89:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	13 
    -- CP-element group 89: successors 
    -- CP-element group 89:  members (1) 
      -- CP-element group 89: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(89) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 90:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: successors 
    -- CP-element group 90:  members (2) 
      -- CP-element group 90: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_entry_sample_req
      -- CP-element group 90: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_entry_sample_req_ps
      -- 
    phi_stmt_9520_entry_sample_req_2012_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9520_entry_sample_req_2012_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(90), ack => phi_stmt_9520_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(90) is bound as output of CP function.
    -- CP-element group 91:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: successors 
    -- CP-element group 91:  members (2) 
      -- CP-element group 91: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_phi_mux_ack
      -- CP-element group 91: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9520_phi_mux_ack_ps
      -- 
    phi_stmt_9520_phi_mux_ack_2015_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 91_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9520_ack_0, ack => iu_registers_daemon_CP_1778_elements(91)); -- 
    -- CP-element group 92:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	94 
    -- CP-element group 92:  members (1) 
      -- CP-element group 92: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(92) is bound as output of CP function.
    -- CP-element group 93:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	95 
    -- CP-element group 93:  members (1) 
      -- CP-element group 93: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(93) is bound as output of CP function.
    -- CP-element group 94:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	92 
    -- CP-element group 94: marked-predecessors 
    -- CP-element group 94: 	96 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_sample_start_
      -- CP-element group 94: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Sample/$entry
      -- CP-element group 94: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Sample/req
      -- 
    req_2028_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2028_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(94), ack => call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_94: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_94"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(92) & iu_registers_daemon_CP_1778_elements(96);
      gj_iu_registers_daemon_cp_element_group_94 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(94), clk => clk, reset => reset); --
    end block;
    -- CP-element group 95:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	93 
    -- CP-element group 95: marked-predecessors 
    -- CP-element group 95: 	97 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	97 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_update_start_
      -- CP-element group 95: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Update/$entry
      -- CP-element group 95: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Update/req
      -- 
    req_2033_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2033_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(95), ack => call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "iu_registers_daemon_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(93) & iu_registers_daemon_CP_1778_elements(97);
      gj_iu_registers_daemon_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96: marked-successors 
    -- CP-element group 96: 	94 
    -- CP-element group 96:  members (4) 
      -- CP-element group 96: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_sample_completed__ps
      -- CP-element group 96: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_sample_completed_
      -- CP-element group 96: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Sample/$exit
      -- CP-element group 96: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Sample/ack
      -- 
    ack_2029_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(96)); -- 
    -- CP-element group 97:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	95 
    -- CP-element group 97: successors 
    -- CP-element group 97: marked-successors 
    -- CP-element group 97: 	95 
    -- CP-element group 97:  members (4) 
      -- CP-element group 97: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_update_completed__ps
      -- CP-element group 97: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_update_completed_
      -- CP-element group 97: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Update/$exit
      -- CP-element group 97: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_iu_registers_3r_1w_port_register_file_expr_9532_Update/ack
      -- 
    ack_2034_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(97)); -- 
    -- CP-element group 98:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: successors 
    -- CP-element group 98:  members (4) 
      -- CP-element group 98: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_sample_start__ps
      -- CP-element group 98: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_sample_completed__ps
      -- CP-element group 98: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_sample_start_
      -- CP-element group 98: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(98) is bound as output of CP function.
    -- CP-element group 99:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	101 
    -- CP-element group 99:  members (2) 
      -- CP-element group 99: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_update_start__ps
      -- CP-element group 99: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_update_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(99) is bound as output of CP function.
    -- CP-element group 100:  join  transition  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	101 
    -- CP-element group 100: successors 
    -- CP-element group 100:  members (1) 
      -- CP-element group 100: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(100) <= iu_registers_daemon_CP_1778_elements(101);
    -- CP-element group 101:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	99 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	100 
    -- CP-element group 101:  members (1) 
      -- CP-element group 101: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9533_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(101) is a control-delay.
    cp_element_101_delay: control_delay_element  generic map(name => " 101_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(99), ack => iu_registers_daemon_CP_1778_elements(101), clk => clk, reset =>reset);
    -- CP-element group 102:  join  transition  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	14 
    -- CP-element group 102: marked-predecessors 
    -- CP-element group 102: 	17 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	16 
    -- CP-element group 102:  members (1) 
      -- CP-element group 102: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(102), clk => clk, reset => reset); --
    end block;
    -- CP-element group 103:  join  transition  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	14 
    -- CP-element group 103: marked-predecessors 
    -- CP-element group 103: 	107 
    -- CP-element group 103: 	214 
    -- CP-element group 103: 	217 
    -- CP-element group 103: 	223 
    -- CP-element group 103: 	227 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	19 
    -- CP-element group 103:  members (1) 
      -- CP-element group 103: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_update_start_
      -- 
    iu_registers_daemon_cp_element_group_103: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_103"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217) & iu_registers_daemon_CP_1778_elements(223) & iu_registers_daemon_CP_1778_elements(227);
      gj_iu_registers_daemon_cp_element_group_103 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(103), clk => clk, reset => reset); --
    end block;
    -- CP-element group 104:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	16 
    -- CP-element group 104: successors 
    -- CP-element group 104:  members (1) 
      -- CP-element group 104: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(104) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 105:  join  transition  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: successors 
    -- CP-element group 105: 	17 
    -- CP-element group 105:  members (1) 
      -- CP-element group 105: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(105) is bound as output of CP function.
    -- CP-element group 106:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	19 
    -- CP-element group 106: successors 
    -- CP-element group 106:  members (1) 
      -- CP-element group 106: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_update_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(106) <= iu_registers_daemon_CP_1778_elements(19);
    -- CP-element group 107:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	20 
    -- CP-element group 107: 	213 
    -- CP-element group 107: 	216 
    -- CP-element group 107: 	222 
    -- CP-element group 107: 	225 
    -- CP-element group 107: marked-successors 
    -- CP-element group 107: 	103 
    -- CP-element group 107:  members (2) 
      -- CP-element group 107: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_update_completed_
      -- CP-element group 107: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(107) is bound as output of CP function.
    -- CP-element group 108:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	12 
    -- CP-element group 108: successors 
    -- CP-element group 108:  members (1) 
      -- CP-element group 108: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(108) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 109:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: successors 
    -- CP-element group 109:  members (2) 
      -- CP-element group 109: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_loopback_sample_req
      -- CP-element group 109: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_loopback_sample_req_ps
      -- 
    phi_stmt_9534_loopback_sample_req_2053_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9534_loopback_sample_req_2053_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(109), ack => phi_stmt_9534_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(109) is bound as output of CP function.
    -- CP-element group 110:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	13 
    -- CP-element group 110: successors 
    -- CP-element group 110:  members (1) 
      -- CP-element group 110: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(110) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 111:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (2) 
      -- CP-element group 111: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_entry_sample_req
      -- CP-element group 111: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_entry_sample_req_ps
      -- 
    phi_stmt_9534_entry_sample_req_2056_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9534_entry_sample_req_2056_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(111), ack => phi_stmt_9534_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(111) is bound as output of CP function.
    -- CP-element group 112:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: successors 
    -- CP-element group 112:  members (2) 
      -- CP-element group 112: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_phi_mux_ack
      -- CP-element group 112: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9534_phi_mux_ack_ps
      -- 
    phi_stmt_9534_phi_mux_ack_2059_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 112_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9534_ack_0, ack => iu_registers_daemon_CP_1778_elements(112)); -- 
    -- CP-element group 113:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(113) is bound as output of CP function.
    -- CP-element group 114:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: successors 
    -- CP-element group 114: 	116 
    -- CP-element group 114:  members (1) 
      -- CP-element group 114: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(114) is bound as output of CP function.
    -- CP-element group 115:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: marked-predecessors 
    -- CP-element group 115: 	117 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	117 
    -- CP-element group 115:  members (3) 
      -- CP-element group 115: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_sample_start_
      -- CP-element group 115: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Sample/$entry
      -- CP-element group 115: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Sample/req
      -- 
    req_2072_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2072_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(115), ack => call_asr_update_expr_9539_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_115: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_115"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(113) & iu_registers_daemon_CP_1778_elements(117);
      gj_iu_registers_daemon_cp_element_group_115 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(115), clk => clk, reset => reset); --
    end block;
    -- CP-element group 116:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	114 
    -- CP-element group 116: marked-predecessors 
    -- CP-element group 116: 	118 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	118 
    -- CP-element group 116:  members (3) 
      -- CP-element group 116: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_update_start_
      -- CP-element group 116: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Update/$entry
      -- CP-element group 116: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Update/req
      -- 
    req_2077_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2077_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(116), ack => call_asr_update_expr_9539_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_116: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_116"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(114) & iu_registers_daemon_CP_1778_elements(118);
      gj_iu_registers_daemon_cp_element_group_116 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(116), clk => clk, reset => reset); --
    end block;
    -- CP-element group 117:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	115 
    -- CP-element group 117: successors 
    -- CP-element group 117: marked-successors 
    -- CP-element group 117: 	115 
    -- CP-element group 117:  members (4) 
      -- CP-element group 117: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_sample_completed__ps
      -- CP-element group 117: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_sample_completed_
      -- CP-element group 117: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Sample/$exit
      -- CP-element group 117: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Sample/ack
      -- 
    ack_2073_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 117_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_asr_update_expr_9539_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(117)); -- 
    -- CP-element group 118:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	116 
    -- CP-element group 118: successors 
    -- CP-element group 118: marked-successors 
    -- CP-element group 118: 	116 
    -- CP-element group 118:  members (4) 
      -- CP-element group 118: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_update_completed__ps
      -- CP-element group 118: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_update_completed_
      -- CP-element group 118: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Update/$exit
      -- CP-element group 118: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/call_asr_update_expr_9539_Update/ack
      -- 
    ack_2078_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 118_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_asr_update_expr_9539_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(118)); -- 
    -- CP-element group 119:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: successors 
    -- CP-element group 119:  members (4) 
      -- CP-element group 119: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_sample_start__ps
      -- CP-element group 119: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_sample_completed__ps
      -- CP-element group 119: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_sample_start_
      -- CP-element group 119: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(119) is bound as output of CP function.
    -- CP-element group 120:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: successors 
    -- CP-element group 120: 	122 
    -- CP-element group 120:  members (2) 
      -- CP-element group 120: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_update_start__ps
      -- CP-element group 120: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_update_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(120) is bound as output of CP function.
    -- CP-element group 121:  join  transition  bypass  pipeline-parent 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	122 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (1) 
      -- CP-element group 121: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(121) <= iu_registers_daemon_CP_1778_elements(122);
    -- CP-element group 122:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	120 
    -- CP-element group 122: successors 
    -- CP-element group 122: 	121 
    -- CP-element group 122:  members (1) 
      -- CP-element group 122: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9540_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(122) is a control-delay.
    cp_element_122_delay: control_delay_element  generic map(name => " 122_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(120), ack => iu_registers_daemon_CP_1778_elements(122), clk => clk, reset =>reset);
    -- CP-element group 123:  join  transition  bypass  pipeline-parent 
    -- CP-element group 123: predecessors 
    -- CP-element group 123: 	14 
    -- CP-element group 123: marked-predecessors 
    -- CP-element group 123: 	17 
    -- CP-element group 123: successors 
    -- CP-element group 123: 	16 
    -- CP-element group 123:  members (1) 
      -- CP-element group 123: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_123: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_123"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_123 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(123), clk => clk, reset => reset); --
    end block;
    -- CP-element group 124:  join  transition  bypass  pipeline-parent 
    -- CP-element group 124: predecessors 
    -- CP-element group 124: 	14 
    -- CP-element group 124: marked-predecessors 
    -- CP-element group 124: 	128 
    -- CP-element group 124: 	220 
    -- CP-element group 124: successors 
    -- CP-element group 124: 	19 
    -- CP-element group 124:  members (1) 
      -- CP-element group 124: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_update_start_
      -- 
    iu_registers_daemon_cp_element_group_124: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_124"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(128) & iu_registers_daemon_CP_1778_elements(220);
      gj_iu_registers_daemon_cp_element_group_124 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(124), clk => clk, reset => reset); --
    end block;
    -- CP-element group 125:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 125: predecessors 
    -- CP-element group 125: 	16 
    -- CP-element group 125: successors 
    -- CP-element group 125:  members (1) 
      -- CP-element group 125: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(125) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 126:  join  transition  bypass  pipeline-parent 
    -- CP-element group 126: predecessors 
    -- CP-element group 126: successors 
    -- CP-element group 126: 	17 
    -- CP-element group 126:  members (1) 
      -- CP-element group 126: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(126) is bound as output of CP function.
    -- CP-element group 127:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 127: predecessors 
    -- CP-element group 127: 	19 
    -- CP-element group 127: successors 
    -- CP-element group 127:  members (1) 
      -- CP-element group 127: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_update_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(127) <= iu_registers_daemon_CP_1778_elements(19);
    -- CP-element group 128:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 128: predecessors 
    -- CP-element group 128: successors 
    -- CP-element group 128: 	20 
    -- CP-element group 128: 	219 
    -- CP-element group 128: marked-successors 
    -- CP-element group 128: 	124 
    -- CP-element group 128:  members (2) 
      -- CP-element group 128: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_update_completed_
      -- CP-element group 128: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(128) is bound as output of CP function.
    -- CP-element group 129:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 129: predecessors 
    -- CP-element group 129: 	12 
    -- CP-element group 129: successors 
    -- CP-element group 129:  members (1) 
      -- CP-element group 129: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(129) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 130:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 130: predecessors 
    -- CP-element group 130: successors 
    -- CP-element group 130:  members (2) 
      -- CP-element group 130: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_loopback_sample_req
      -- CP-element group 130: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_loopback_sample_req_ps
      -- 
    phi_stmt_9541_loopback_sample_req_2097_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9541_loopback_sample_req_2097_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(130), ack => phi_stmt_9541_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(130) is bound as output of CP function.
    -- CP-element group 131:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 131: predecessors 
    -- CP-element group 131: 	13 
    -- CP-element group 131: successors 
    -- CP-element group 131:  members (1) 
      -- CP-element group 131: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(131) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 132:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 132: predecessors 
    -- CP-element group 132: successors 
    -- CP-element group 132:  members (2) 
      -- CP-element group 132: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_entry_sample_req
      -- CP-element group 132: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_entry_sample_req_ps
      -- 
    phi_stmt_9541_entry_sample_req_2100_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9541_entry_sample_req_2100_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(132), ack => phi_stmt_9541_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(132) is bound as output of CP function.
    -- CP-element group 133:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 133: predecessors 
    -- CP-element group 133: successors 
    -- CP-element group 133:  members (2) 
      -- CP-element group 133: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_phi_mux_ack
      -- CP-element group 133: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9541_phi_mux_ack_ps
      -- 
    phi_stmt_9541_phi_mux_ack_2103_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 133_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9541_ack_0, ack => iu_registers_daemon_CP_1778_elements(133)); -- 
    -- CP-element group 134:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 134: predecessors 
    -- CP-element group 134: successors 
    -- CP-element group 134:  members (4) 
      -- CP-element group 134: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_sample_start__ps
      -- CP-element group 134: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_sample_completed__ps
      -- CP-element group 134: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_sample_start_
      -- CP-element group 134: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(134) is bound as output of CP function.
    -- CP-element group 135:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 135: predecessors 
    -- CP-element group 135: successors 
    -- CP-element group 135: 	137 
    -- CP-element group 135:  members (2) 
      -- CP-element group 135: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_update_start__ps
      -- CP-element group 135: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_update_start_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(135) is bound as output of CP function.
    -- CP-element group 136:  join  transition  bypass  pipeline-parent 
    -- CP-element group 136: predecessors 
    -- CP-element group 136: 	137 
    -- CP-element group 136: successors 
    -- CP-element group 136:  members (1) 
      -- CP-element group 136: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(136) <= iu_registers_daemon_CP_1778_elements(137);
    -- CP-element group 137:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 137: predecessors 
    -- CP-element group 137: 	135 
    -- CP-element group 137: successors 
    -- CP-element group 137: 	136 
    -- CP-element group 137:  members (1) 
      -- CP-element group 137: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9543_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(137) is a control-delay.
    cp_element_137_delay: control_delay_element  generic map(name => " 137_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(135), ack => iu_registers_daemon_CP_1778_elements(137), clk => clk, reset =>reset);
    -- CP-element group 138:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 138: predecessors 
    -- CP-element group 138: successors 
    -- CP-element group 138: 	140 
    -- CP-element group 138:  members (1) 
      -- CP-element group 138: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(138) is bound as output of CP function.
    -- CP-element group 139:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 139: predecessors 
    -- CP-element group 139: successors 
    -- CP-element group 139: 	141 
    -- CP-element group 139:  members (1) 
      -- CP-element group 139: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(139) is bound as output of CP function.
    -- CP-element group 140:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 140: predecessors 
    -- CP-element group 140: 	138 
    -- CP-element group 140: marked-predecessors 
    -- CP-element group 140: 	143 
    -- CP-element group 140: successors 
    -- CP-element group 140: 	142 
    -- CP-element group 140:  members (3) 
      -- CP-element group 140: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_sample_start_
      -- CP-element group 140: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Sample/$entry
      -- CP-element group 140: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Sample/rr
      -- 
    rr_2124_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2124_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(140), ack => RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_140: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_140"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(138) & iu_registers_daemon_CP_1778_elements(143);
      gj_iu_registers_daemon_cp_element_group_140 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(140), clk => clk, reset => reset); --
    end block;
    -- CP-element group 141:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 141: predecessors 
    -- CP-element group 141: 	139 
    -- CP-element group 141: 	142 
    -- CP-element group 141: successors 
    -- CP-element group 141: 	143 
    -- CP-element group 141:  members (3) 
      -- CP-element group 141: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_update_start_
      -- CP-element group 141: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Update/$entry
      -- CP-element group 141: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Update/cr
      -- 
    cr_2129_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2129_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(141), ack => RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_141: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_141"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(139) & iu_registers_daemon_CP_1778_elements(142);
      gj_iu_registers_daemon_cp_element_group_141 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(141), clk => clk, reset => reset); --
    end block;
    -- CP-element group 142:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 142: predecessors 
    -- CP-element group 142: 	140 
    -- CP-element group 142: successors 
    -- CP-element group 142: 	141 
    -- CP-element group 142:  members (4) 
      -- CP-element group 142: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_sample_completed__ps
      -- CP-element group 142: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_sample_completed_
      -- CP-element group 142: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Sample/$exit
      -- CP-element group 142: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Sample/ra
      -- 
    ra_2125_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 142_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(142)); -- 
    -- CP-element group 143:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 143: predecessors 
    -- CP-element group 143: 	141 
    -- CP-element group 143: successors 
    -- CP-element group 143: marked-successors 
    -- CP-element group 143: 	140 
    -- CP-element group 143:  members (4) 
      -- CP-element group 143: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_update_completed__ps
      -- CP-element group 143: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_update_completed_
      -- CP-element group 143: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Update/$exit
      -- CP-element group 143: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_Update/ca
      -- 
    ca_2130_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 143_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(143)); -- 
    -- CP-element group 144:  join  transition  bypass  pipeline-parent 
    -- CP-element group 144: predecessors 
    -- CP-element group 144: 	14 
    -- CP-element group 144: marked-predecessors 
    -- CP-element group 144: 	214 
    -- CP-element group 144: 	217 
    -- CP-element group 144: successors 
    -- CP-element group 144: 	19 
    -- CP-element group 144:  members (1) 
      -- CP-element group 144: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9545_update_start_
      -- 
    iu_registers_daemon_cp_element_group_144: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_144"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217);
      gj_iu_registers_daemon_cp_element_group_144 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(144), clk => clk, reset => reset); --
    end block;
    -- CP-element group 145:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 145: predecessors 
    -- CP-element group 145: 	16 
    -- CP-element group 145: marked-predecessors 
    -- CP-element group 145: 	148 
    -- CP-element group 145: successors 
    -- CP-element group 145: 	147 
    -- CP-element group 145:  members (3) 
      -- CP-element group 145: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_sample_start_
      -- CP-element group 145: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Sample/$entry
      -- CP-element group 145: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Sample/rr
      -- 
    rr_2143_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2143_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(145), ack => RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_145: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_145"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(16) & iu_registers_daemon_CP_1778_elements(148);
      gj_iu_registers_daemon_cp_element_group_145 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(145), clk => clk, reset => reset); --
    end block;
    -- CP-element group 146:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 146: predecessors 
    -- CP-element group 146: 	19 
    -- CP-element group 146: 	147 
    -- CP-element group 146: successors 
    -- CP-element group 146: 	148 
    -- CP-element group 146:  members (3) 
      -- CP-element group 146: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_update_start_
      -- CP-element group 146: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Update/$entry
      -- CP-element group 146: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Update/cr
      -- 
    cr_2148_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2148_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(146), ack => RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_146: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_146"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(147);
      gj_iu_registers_daemon_cp_element_group_146 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(146), clk => clk, reset => reset); --
    end block;
    -- CP-element group 147:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 147: predecessors 
    -- CP-element group 147: 	145 
    -- CP-element group 147: successors 
    -- CP-element group 147: 	17 
    -- CP-element group 147: 	146 
    -- CP-element group 147:  members (3) 
      -- CP-element group 147: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_sample_completed_
      -- CP-element group 147: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Sample/$exit
      -- CP-element group 147: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Sample/ra
      -- 
    ra_2144_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 147_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(147)); -- 
    -- CP-element group 148:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 148: predecessors 
    -- CP-element group 148: 	146 
    -- CP-element group 148: successors 
    -- CP-element group 148: 	20 
    -- CP-element group 148: 	213 
    -- CP-element group 148: 	216 
    -- CP-element group 148: marked-successors 
    -- CP-element group 148: 	145 
    -- CP-element group 148:  members (4) 
      -- CP-element group 148: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9545_update_completed_
      -- CP-element group 148: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_update_completed_
      -- CP-element group 148: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Update/$exit
      -- CP-element group 148: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_Update/ca
      -- 
    ca_2149_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 148_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(148)); -- 
    -- CP-element group 149:  join  transition  bypass  pipeline-parent 
    -- CP-element group 149: predecessors 
    -- CP-element group 149: 	14 
    -- CP-element group 149: marked-predecessors 
    -- CP-element group 149: 	17 
    -- CP-element group 149: successors 
    -- CP-element group 149: 	16 
    -- CP-element group 149:  members (1) 
      -- CP-element group 149: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_149: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_149"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_149 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(149), clk => clk, reset => reset); --
    end block;
    -- CP-element group 150:  join  transition  bypass  pipeline-parent 
    -- CP-element group 150: predecessors 
    -- CP-element group 150: 	14 
    -- CP-element group 150: marked-predecessors 
    -- CP-element group 150: 	154 
    -- CP-element group 150: 	211 
    -- CP-element group 150: 	214 
    -- CP-element group 150: 	217 
    -- CP-element group 150: 	220 
    -- CP-element group 150: 	223 
    -- CP-element group 150: 	227 
    -- CP-element group 150: 	231 
    -- CP-element group 150: successors 
    -- CP-element group 150: 	19 
    -- CP-element group 150:  members (1) 
      -- CP-element group 150: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_update_start_
      -- 
    iu_registers_daemon_cp_element_group_150: block -- 
      constant place_capacities: IntegerArray(0 to 8) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_markings: IntegerArray(0 to 8)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1);
      constant place_delays: IntegerArray(0 to 8) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_150"; 
      signal preds: BooleanArray(1 to 9); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(211) & iu_registers_daemon_CP_1778_elements(214) & iu_registers_daemon_CP_1778_elements(217) & iu_registers_daemon_CP_1778_elements(220) & iu_registers_daemon_CP_1778_elements(223) & iu_registers_daemon_CP_1778_elements(227) & iu_registers_daemon_CP_1778_elements(231);
      gj_iu_registers_daemon_cp_element_group_150 : generic_join generic map(name => joinName, number_of_predecessors => 9, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(150), clk => clk, reset => reset); --
    end block;
    -- CP-element group 151:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 151: predecessors 
    -- CP-element group 151: 	16 
    -- CP-element group 151: successors 
    -- CP-element group 151:  members (1) 
      -- CP-element group 151: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(151) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 152:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 152: predecessors 
    -- CP-element group 152: successors 
    -- CP-element group 152: 	17 
    -- CP-element group 152: 	172 
    -- CP-element group 152: 	193 
    -- CP-element group 152:  members (1) 
      -- CP-element group 152: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(152) is bound as output of CP function.
    -- CP-element group 153:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 153: predecessors 
    -- CP-element group 153: 	19 
    -- CP-element group 153: successors 
    -- CP-element group 153:  members (1) 
      -- CP-element group 153: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_update_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(153) <= iu_registers_daemon_CP_1778_elements(19);
    -- CP-element group 154:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 154: predecessors 
    -- CP-element group 154: successors 
    -- CP-element group 154: 	20 
    -- CP-element group 154: 	210 
    -- CP-element group 154: 	213 
    -- CP-element group 154: 	216 
    -- CP-element group 154: 	219 
    -- CP-element group 154: 	222 
    -- CP-element group 154: 	225 
    -- CP-element group 154: 	229 
    -- CP-element group 154: marked-successors 
    -- CP-element group 154: 	150 
    -- CP-element group 154:  members (2) 
      -- CP-element group 154: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_update_completed_
      -- CP-element group 154: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(154) is bound as output of CP function.
    -- CP-element group 155:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 155: predecessors 
    -- CP-element group 155: 	12 
    -- CP-element group 155: successors 
    -- CP-element group 155:  members (1) 
      -- CP-element group 155: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(155) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 156:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 156: predecessors 
    -- CP-element group 156: successors 
    -- CP-element group 156:  members (2) 
      -- CP-element group 156: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_loopback_sample_req
      -- CP-element group 156: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_loopback_sample_req_ps
      -- 
    phi_stmt_9548_loopback_sample_req_2159_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9548_loopback_sample_req_2159_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(156), ack => phi_stmt_9548_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(156) is bound as output of CP function.
    -- CP-element group 157:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 157: predecessors 
    -- CP-element group 157: 	13 
    -- CP-element group 157: successors 
    -- CP-element group 157:  members (1) 
      -- CP-element group 157: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(157) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 158:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 158: predecessors 
    -- CP-element group 158: successors 
    -- CP-element group 158:  members (2) 
      -- CP-element group 158: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_entry_sample_req
      -- CP-element group 158: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_entry_sample_req_ps
      -- 
    phi_stmt_9548_entry_sample_req_2162_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9548_entry_sample_req_2162_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(158), ack => phi_stmt_9548_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(158) is bound as output of CP function.
    -- CP-element group 159:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 159: predecessors 
    -- CP-element group 159: successors 
    -- CP-element group 159:  members (2) 
      -- CP-element group 159: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_phi_mux_ack
      -- CP-element group 159: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9548_phi_mux_ack_ps
      -- 
    phi_stmt_9548_phi_mux_ack_2165_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 159_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9548_ack_0, ack => iu_registers_daemon_CP_1778_elements(159)); -- 
    -- CP-element group 160:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 160: predecessors 
    -- CP-element group 160: successors 
    -- CP-element group 160:  members (4) 
      -- CP-element group 160: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_sample_start__ps
      -- CP-element group 160: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_sample_completed__ps
      -- CP-element group 160: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_sample_start_
      -- CP-element group 160: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_sample_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(160) is bound as output of CP function.
    -- CP-element group 161:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 161: predecessors 
    -- CP-element group 161: successors 
    -- CP-element group 161: 	163 
    -- CP-element group 161:  members (2) 
      -- CP-element group 161: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_update_start_
      -- CP-element group 161: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(161) is bound as output of CP function.
    -- CP-element group 162:  join  transition  bypass  pipeline-parent 
    -- CP-element group 162: predecessors 
    -- CP-element group 162: 	163 
    -- CP-element group 162: successors 
    -- CP-element group 162:  members (1) 
      -- CP-element group 162: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(162) <= iu_registers_daemon_CP_1778_elements(163);
    -- CP-element group 163:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 163: predecessors 
    -- CP-element group 163: 	161 
    -- CP-element group 163: successors 
    -- CP-element group 163: 	162 
    -- CP-element group 163:  members (1) 
      -- CP-element group 163: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_LOCAL_CIRCULANT_INIT_VALUE_9550_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(163) is a control-delay.
    cp_element_163_delay: control_delay_element  generic map(name => " 163_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(161), ack => iu_registers_daemon_CP_1778_elements(163), clk => clk, reset =>reset);
    -- CP-element group 164:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 164: predecessors 
    -- CP-element group 164: successors 
    -- CP-element group 164: 	166 
    -- CP-element group 164:  members (4) 
      -- CP-element group 164: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_sample_start__ps
      -- CP-element group 164: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Sample/$entry
      -- CP-element group 164: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Sample/req
      -- CP-element group 164: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_sample_start_
      -- 
    req_2186_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2186_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(164), ack => next_local_circulant_12401_9551_buf_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(164) is bound as output of CP function.
    -- CP-element group 165:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 165: predecessors 
    -- CP-element group 165: successors 
    -- CP-element group 165: 	167 
    -- CP-element group 165:  members (4) 
      -- CP-element group 165: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Update/req
      -- CP-element group 165: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_update_start_
      -- CP-element group 165: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Update/$entry
      -- CP-element group 165: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_update_start__ps
      -- 
    req_2191_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2191_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(165), ack => next_local_circulant_12401_9551_buf_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(165) is bound as output of CP function.
    -- CP-element group 166:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 166: predecessors 
    -- CP-element group 166: 	164 
    -- CP-element group 166: successors 
    -- CP-element group 166:  members (4) 
      -- CP-element group 166: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_sample_completed__ps
      -- CP-element group 166: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Sample/$exit
      -- CP-element group 166: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Sample/ack
      -- CP-element group 166: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_sample_completed_
      -- 
    ack_2187_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 166_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_local_circulant_12401_9551_buf_ack_0, ack => iu_registers_daemon_CP_1778_elements(166)); -- 
    -- CP-element group 167:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 167: predecessors 
    -- CP-element group 167: 	165 
    -- CP-element group 167: successors 
    -- CP-element group 167:  members (4) 
      -- CP-element group 167: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_update_completed_
      -- CP-element group 167: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Update/$exit
      -- CP-element group 167: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_Update/ack
      -- CP-element group 167: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/R_next_local_circulant_9551_update_completed__ps
      -- 
    ack_2192_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 167_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => next_local_circulant_12401_9551_buf_ack_1, ack => iu_registers_daemon_CP_1778_elements(167)); -- 
    -- CP-element group 168:  join  transition  bypass  pipeline-parent 
    -- CP-element group 168: predecessors 
    -- CP-element group 168: 	14 
    -- CP-element group 168: marked-predecessors 
    -- CP-element group 168: 	17 
    -- CP-element group 168: successors 
    -- CP-element group 168: 	16 
    -- CP-element group 168:  members (1) 
      -- CP-element group 168: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_168: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_168"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_168 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(168), clk => clk, reset => reset); --
    end block;
    -- CP-element group 169:  join  transition  bypass  pipeline-parent 
    -- CP-element group 169: predecessors 
    -- CP-element group 169: 	14 
    -- CP-element group 169: marked-predecessors 
    -- CP-element group 169: 	173 
    -- CP-element group 169: successors 
    -- CP-element group 169: 	172 
    -- CP-element group 169:  members (1) 
      -- CP-element group 169: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_update_start_
      -- 
    iu_registers_daemon_cp_element_group_169: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_169"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(173);
      gj_iu_registers_daemon_cp_element_group_169 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(169), clk => clk, reset => reset); --
    end block;
    -- CP-element group 170:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 170: predecessors 
    -- CP-element group 170: 	16 
    -- CP-element group 170: successors 
    -- CP-element group 170:  members (1) 
      -- CP-element group 170: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(170) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 171:  join  transition  bypass  pipeline-parent 
    -- CP-element group 171: predecessors 
    -- CP-element group 171: successors 
    -- CP-element group 171: 	17 
    -- CP-element group 171:  members (1) 
      -- CP-element group 171: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(171) is bound as output of CP function.
    -- CP-element group 172:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 172: predecessors 
    -- CP-element group 172: 	152 
    -- CP-element group 172: 	169 
    -- CP-element group 172: successors 
    -- CP-element group 172:  members (1) 
      -- CP-element group 172: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_update_start__ps
      -- 
    iu_registers_daemon_cp_element_group_172: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_172"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(152) & iu_registers_daemon_CP_1778_elements(169);
      gj_iu_registers_daemon_cp_element_group_172 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(172), clk => clk, reset => reset); --
    end block;
    -- CP-element group 173:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 173: predecessors 
    -- CP-element group 173: successors 
    -- CP-element group 173: 	20 
    -- CP-element group 173: marked-successors 
    -- CP-element group 173: 	169 
    -- CP-element group 173:  members (2) 
      -- CP-element group 173: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_update_completed_
      -- CP-element group 173: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_update_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(173) is bound as output of CP function.
    -- CP-element group 174:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 174: predecessors 
    -- CP-element group 174: 	12 
    -- CP-element group 174: successors 
    -- CP-element group 174:  members (1) 
      -- CP-element group 174: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(174) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 175:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 175: predecessors 
    -- CP-element group 175: successors 
    -- CP-element group 175:  members (2) 
      -- CP-element group 175: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_loopback_sample_req_ps
      -- CP-element group 175: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_loopback_sample_req
      -- 
    phi_stmt_9552_loopback_sample_req_2203_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9552_loopback_sample_req_2203_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(175), ack => phi_stmt_9552_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(175) is bound as output of CP function.
    -- CP-element group 176:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 176: predecessors 
    -- CP-element group 176: 	13 
    -- CP-element group 176: successors 
    -- CP-element group 176:  members (1) 
      -- CP-element group 176: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(176) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 177:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 177: predecessors 
    -- CP-element group 177: successors 
    -- CP-element group 177:  members (2) 
      -- CP-element group 177: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_entry_sample_req
      -- CP-element group 177: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_entry_sample_req_ps
      -- 
    phi_stmt_9552_entry_sample_req_2206_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9552_entry_sample_req_2206_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(177), ack => phi_stmt_9552_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(177) is bound as output of CP function.
    -- CP-element group 178:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 178: predecessors 
    -- CP-element group 178: successors 
    -- CP-element group 178:  members (2) 
      -- CP-element group 178: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_phi_mux_ack_ps
      -- CP-element group 178: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9552_phi_mux_ack
      -- 
    phi_stmt_9552_phi_mux_ack_2209_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 178_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9552_ack_0, ack => iu_registers_daemon_CP_1778_elements(178)); -- 
    -- CP-element group 179:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 179: predecessors 
    -- CP-element group 179: successors 
    -- CP-element group 179: 	181 
    -- CP-element group 179:  members (1) 
      -- CP-element group 179: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(179) is bound as output of CP function.
    -- CP-element group 180:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 180: predecessors 
    -- CP-element group 180: successors 
    -- CP-element group 180: 	182 
    -- CP-element group 180:  members (1) 
      -- CP-element group 180: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(180) is bound as output of CP function.
    -- CP-element group 181:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 181: predecessors 
    -- CP-element group 181: 	179 
    -- CP-element group 181: marked-predecessors 
    -- CP-element group 181: 	184 
    -- CP-element group 181: successors 
    -- CP-element group 181: 	183 
    -- CP-element group 181:  members (3) 
      -- CP-element group 181: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_sample_start_
      -- CP-element group 181: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Sample/rr
      -- CP-element group 181: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Sample/$entry
      -- 
    rr_2222_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2222_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(181), ack => RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_181: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_181"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(179) & iu_registers_daemon_CP_1778_elements(184);
      gj_iu_registers_daemon_cp_element_group_181 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(181), clk => clk, reset => reset); --
    end block;
    -- CP-element group 182:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 182: predecessors 
    -- CP-element group 182: 	180 
    -- CP-element group 182: 	183 
    -- CP-element group 182: successors 
    -- CP-element group 182: 	184 
    -- CP-element group 182:  members (3) 
      -- CP-element group 182: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Update/cr
      -- CP-element group 182: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Update/$entry
      -- CP-element group 182: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_update_start_
      -- 
    cr_2227_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2227_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(182), ack => RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_182: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_182"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(180) & iu_registers_daemon_CP_1778_elements(183);
      gj_iu_registers_daemon_cp_element_group_182 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(182), clk => clk, reset => reset); --
    end block;
    -- CP-element group 183:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 183: predecessors 
    -- CP-element group 183: 	181 
    -- CP-element group 183: successors 
    -- CP-element group 183: 	182 
    -- CP-element group 183:  members (4) 
      -- CP-element group 183: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_sample_completed_
      -- CP-element group 183: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_sample_completed__ps
      -- CP-element group 183: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Sample/ra
      -- CP-element group 183: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Sample/$exit
      -- 
    ra_2223_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 183_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(183)); -- 
    -- CP-element group 184:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 184: predecessors 
    -- CP-element group 184: 	182 
    -- CP-element group 184: successors 
    -- CP-element group 184: marked-successors 
    -- CP-element group 184: 	181 
    -- CP-element group 184:  members (4) 
      -- CP-element group 184: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_update_completed__ps
      -- CP-element group 184: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Update/ca
      -- CP-element group 184: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_Update/$exit
      -- CP-element group 184: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_update_completed_
      -- 
    ca_2228_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 184_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(184)); -- 
    -- CP-element group 185:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 185: predecessors 
    -- CP-element group 185: successors 
    -- CP-element group 185:  members (4) 
      -- CP-element group 185: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_sample_completed_
      -- CP-element group 185: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_sample_start_
      -- CP-element group 185: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_sample_completed__ps
      -- CP-element group 185: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(185) is bound as output of CP function.
    -- CP-element group 186:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 186: predecessors 
    -- CP-element group 186: successors 
    -- CP-element group 186: 	188 
    -- CP-element group 186:  members (2) 
      -- CP-element group 186: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_update_start_
      -- CP-element group 186: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(186) is bound as output of CP function.
    -- CP-element group 187:  join  transition  bypass  pipeline-parent 
    -- CP-element group 187: predecessors 
    -- CP-element group 187: 	188 
    -- CP-element group 187: successors 
    -- CP-element group 187:  members (1) 
      -- CP-element group 187: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(187) <= iu_registers_daemon_CP_1778_elements(188);
    -- CP-element group 188:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 188: predecessors 
    -- CP-element group 188: 	186 
    -- CP-element group 188: successors 
    -- CP-element group 188: 	187 
    -- CP-element group 188:  members (1) 
      -- CP-element group 188: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9556_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(188) is a control-delay.
    cp_element_188_delay: control_delay_element  generic map(name => " 188_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(186), ack => iu_registers_daemon_CP_1778_elements(188), clk => clk, reset =>reset);
    -- CP-element group 189:  join  transition  bypass  pipeline-parent 
    -- CP-element group 189: predecessors 
    -- CP-element group 189: 	14 
    -- CP-element group 189: marked-predecessors 
    -- CP-element group 189: 	17 
    -- CP-element group 189: successors 
    -- CP-element group 189: 	16 
    -- CP-element group 189:  members (1) 
      -- CP-element group 189: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_sample_start_
      -- 
    iu_registers_daemon_cp_element_group_189: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_189"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(17);
      gj_iu_registers_daemon_cp_element_group_189 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(189), clk => clk, reset => reset); --
    end block;
    -- CP-element group 190:  join  transition  bypass  pipeline-parent 
    -- CP-element group 190: predecessors 
    -- CP-element group 190: 	14 
    -- CP-element group 190: marked-predecessors 
    -- CP-element group 190: 	194 
    -- CP-element group 190: successors 
    -- CP-element group 190: 	19 
    -- CP-element group 190:  members (1) 
      -- CP-element group 190: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_update_start_
      -- 
    iu_registers_daemon_cp_element_group_190: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_190"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(14) & iu_registers_daemon_CP_1778_elements(194);
      gj_iu_registers_daemon_cp_element_group_190 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(190), clk => clk, reset => reset); --
    end block;
    -- CP-element group 191:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 191: predecessors 
    -- CP-element group 191: 	16 
    -- CP-element group 191: successors 
    -- CP-element group 191:  members (1) 
      -- CP-element group 191: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_sample_start__ps
      -- 
    iu_registers_daemon_CP_1778_elements(191) <= iu_registers_daemon_CP_1778_elements(16);
    -- CP-element group 192:  join  transition  bypass  pipeline-parent 
    -- CP-element group 192: predecessors 
    -- CP-element group 192: successors 
    -- CP-element group 192: 	17 
    -- CP-element group 192:  members (1) 
      -- CP-element group 192: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_sample_completed__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(192) is bound as output of CP function.
    -- CP-element group 193:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 193: predecessors 
    -- CP-element group 193: 	19 
    -- CP-element group 193: 	152 
    -- CP-element group 193: successors 
    -- CP-element group 193:  members (1) 
      -- CP-element group 193: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_update_start__ps
      -- 
    iu_registers_daemon_cp_element_group_193: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_193"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(19) & iu_registers_daemon_CP_1778_elements(152);
      gj_iu_registers_daemon_cp_element_group_193 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(193), clk => clk, reset => reset); --
    end block;
    -- CP-element group 194:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 194: predecessors 
    -- CP-element group 194: successors 
    -- CP-element group 194: 	20 
    -- CP-element group 194: marked-successors 
    -- CP-element group 194: 	190 
    -- CP-element group 194:  members (2) 
      -- CP-element group 194: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_update_completed__ps
      -- CP-element group 194: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(194) is bound as output of CP function.
    -- CP-element group 195:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 195: predecessors 
    -- CP-element group 195: 	12 
    -- CP-element group 195: successors 
    -- CP-element group 195:  members (1) 
      -- CP-element group 195: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_loopback_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(195) <= iu_registers_daemon_CP_1778_elements(12);
    -- CP-element group 196:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 196: predecessors 
    -- CP-element group 196: successors 
    -- CP-element group 196:  members (2) 
      -- CP-element group 196: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_loopback_sample_req_ps
      -- CP-element group 196: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_loopback_sample_req
      -- 
    phi_stmt_9557_loopback_sample_req_2247_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9557_loopback_sample_req_2247_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(196), ack => phi_stmt_9557_req_1); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(196) is bound as output of CP function.
    -- CP-element group 197:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 197: predecessors 
    -- CP-element group 197: 	13 
    -- CP-element group 197: successors 
    -- CP-element group 197:  members (1) 
      -- CP-element group 197: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_entry_trigger
      -- 
    iu_registers_daemon_CP_1778_elements(197) <= iu_registers_daemon_CP_1778_elements(13);
    -- CP-element group 198:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 198: predecessors 
    -- CP-element group 198: successors 
    -- CP-element group 198:  members (2) 
      -- CP-element group 198: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_entry_sample_req_ps
      -- CP-element group 198: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_entry_sample_req
      -- 
    phi_stmt_9557_entry_sample_req_2250_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_9557_entry_sample_req_2250_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(198), ack => phi_stmt_9557_req_0); -- 
    -- Element group iu_registers_daemon_CP_1778_elements(198) is bound as output of CP function.
    -- CP-element group 199:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 199: predecessors 
    -- CP-element group 199: successors 
    -- CP-element group 199:  members (2) 
      -- CP-element group 199: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_phi_mux_ack_ps
      -- CP-element group 199: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/phi_stmt_9557_phi_mux_ack
      -- 
    phi_stmt_9557_phi_mux_ack_2253_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 199_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_9557_ack_0, ack => iu_registers_daemon_CP_1778_elements(199)); -- 
    -- CP-element group 200:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 200: predecessors 
    -- CP-element group 200: successors 
    -- CP-element group 200:  members (4) 
      -- CP-element group 200: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_sample_completed_
      -- CP-element group 200: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_sample_start_
      -- CP-element group 200: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_sample_completed__ps
      -- CP-element group 200: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(200) is bound as output of CP function.
    -- CP-element group 201:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 201: predecessors 
    -- CP-element group 201: successors 
    -- CP-element group 201: 	203 
    -- CP-element group 201:  members (2) 
      -- CP-element group 201: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_update_start_
      -- CP-element group 201: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(201) is bound as output of CP function.
    -- CP-element group 202:  join  transition  bypass  pipeline-parent 
    -- CP-element group 202: predecessors 
    -- CP-element group 202: 	203 
    -- CP-element group 202: successors 
    -- CP-element group 202:  members (1) 
      -- CP-element group 202: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_update_completed__ps
      -- 
    iu_registers_daemon_CP_1778_elements(202) <= iu_registers_daemon_CP_1778_elements(203);
    -- CP-element group 203:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 203: predecessors 
    -- CP-element group 203: 	201 
    -- CP-element group 203: successors 
    -- CP-element group 203: 	202 
    -- CP-element group 203:  members (1) 
      -- CP-element group 203: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/konst_9559_update_completed_
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(203) is a control-delay.
    cp_element_203_delay: control_delay_element  generic map(name => " 203_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(201), ack => iu_registers_daemon_CP_1778_elements(203), clk => clk, reset =>reset);
    -- CP-element group 204:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 204: predecessors 
    -- CP-element group 204: successors 
    -- CP-element group 204: 	206 
    -- CP-element group 204:  members (1) 
      -- CP-element group 204: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_sample_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(204) is bound as output of CP function.
    -- CP-element group 205:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 205: predecessors 
    -- CP-element group 205: successors 
    -- CP-element group 205: 	207 
    -- CP-element group 205:  members (1) 
      -- CP-element group 205: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_update_start__ps
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(205) is bound as output of CP function.
    -- CP-element group 206:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 206: predecessors 
    -- CP-element group 206: 	204 
    -- CP-element group 206: marked-predecessors 
    -- CP-element group 206: 	209 
    -- CP-element group 206: successors 
    -- CP-element group 206: 	208 
    -- CP-element group 206:  members (3) 
      -- CP-element group 206: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Sample/rr
      -- CP-element group 206: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Sample/$entry
      -- CP-element group 206: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_sample_start_
      -- 
    rr_2274_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_2274_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(206), ack => RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_206: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_206"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(204) & iu_registers_daemon_CP_1778_elements(209);
      gj_iu_registers_daemon_cp_element_group_206 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(206), clk => clk, reset => reset); --
    end block;
    -- CP-element group 207:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 207: predecessors 
    -- CP-element group 207: 	205 
    -- CP-element group 207: 	208 
    -- CP-element group 207: successors 
    -- CP-element group 207: 	209 
    -- CP-element group 207:  members (3) 
      -- CP-element group 207: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Update/cr
      -- CP-element group 207: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Update/$entry
      -- CP-element group 207: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_update_start_
      -- 
    cr_2279_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_2279_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(207), ack => RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_207: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_207"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(205) & iu_registers_daemon_CP_1778_elements(208);
      gj_iu_registers_daemon_cp_element_group_207 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(207), clk => clk, reset => reset); --
    end block;
    -- CP-element group 208:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 208: predecessors 
    -- CP-element group 208: 	206 
    -- CP-element group 208: successors 
    -- CP-element group 208: 	207 
    -- CP-element group 208:  members (4) 
      -- CP-element group 208: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Sample/ra
      -- CP-element group 208: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Sample/$exit
      -- CP-element group 208: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_sample_completed_
      -- CP-element group 208: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_sample_completed__ps
      -- 
    ra_2275_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 208_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(208)); -- 
    -- CP-element group 209:  join  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 209: predecessors 
    -- CP-element group 209: 	207 
    -- CP-element group 209: successors 
    -- CP-element group 209: marked-successors 
    -- CP-element group 209: 	206 
    -- CP-element group 209:  members (4) 
      -- CP-element group 209: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Update/ca
      -- CP-element group 209: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_Update/$exit
      -- CP-element group 209: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_update_completed_
      -- CP-element group 209: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/RPIPE_ccu_to_teu_iunit_register_access_command_9561_update_completed__ps
      -- 
    ca_2280_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 209_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(209)); -- 
    -- CP-element group 210:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 210: predecessors 
    -- CP-element group 210: 	46 
    -- CP-element group 210: 	154 
    -- CP-element group 210: marked-predecessors 
    -- CP-element group 210: 	212 
    -- CP-element group 210: successors 
    -- CP-element group 210: 	211 
    -- CP-element group 210:  members (3) 
      -- CP-element group 210: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Sample/req
      -- CP-element group 210: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Sample/$entry
      -- CP-element group 210: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_sample_start_
      -- 
    req_2289_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2289_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(210), ack => WPIPE_teu_iunit_to_iretire_12287_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_210: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_210"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(212);
      gj_iu_registers_daemon_cp_element_group_210 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(210), clk => clk, reset => reset); --
    end block;
    -- CP-element group 211:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 211: predecessors 
    -- CP-element group 211: 	210 
    -- CP-element group 211: successors 
    -- CP-element group 211: 	212 
    -- CP-element group 211: marked-successors 
    -- CP-element group 211: 	42 
    -- CP-element group 211: 	150 
    -- CP-element group 211:  members (6) 
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Update/req
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Update/$entry
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Sample/ack
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Sample/$exit
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_update_start_
      -- CP-element group 211: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_sample_completed_
      -- 
    ack_2290_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 211_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_to_iretire_12287_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(211)); -- 
    req_2294_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2294_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(211), ack => WPIPE_teu_iunit_to_iretire_12287_inst_req_1); -- 
    -- CP-element group 212:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 212: predecessors 
    -- CP-element group 212: 	211 
    -- CP-element group 212: successors 
    -- CP-element group 212: 	237 
    -- CP-element group 212: marked-successors 
    -- CP-element group 212: 	210 
    -- CP-element group 212:  members (3) 
      -- CP-element group 212: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Update/ack
      -- CP-element group 212: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_Update/$exit
      -- CP-element group 212: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_to_iretire_12287_update_completed_
      -- 
    ack_2295_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 212_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_to_iretire_12287_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(212)); -- 
    -- CP-element group 213:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 213: predecessors 
    -- CP-element group 213: 	65 
    -- CP-element group 213: 	35 
    -- CP-element group 213: 	25 
    -- CP-element group 213: 	40 
    -- CP-element group 213: 	46 
    -- CP-element group 213: 	86 
    -- CP-element group 213: 	107 
    -- CP-element group 213: 	148 
    -- CP-element group 213: 	154 
    -- CP-element group 213: marked-predecessors 
    -- CP-element group 213: 	215 
    -- CP-element group 213: successors 
    -- CP-element group 213: 	214 
    -- CP-element group 213:  members (3) 
      -- CP-element group 213: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Sample/req
      -- CP-element group 213: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Sample/$entry
      -- CP-element group 213: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_sample_start_
      -- 
    req_2303_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2303_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(213), ack => WPIPE_iunit_register_file_read_access_response_12304_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_213: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_213"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(65) & iu_registers_daemon_CP_1778_elements(35) & iu_registers_daemon_CP_1778_elements(25) & iu_registers_daemon_CP_1778_elements(40) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(148) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(215);
      gj_iu_registers_daemon_cp_element_group_213 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(213), clk => clk, reset => reset); --
    end block;
    -- CP-element group 214:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 214: predecessors 
    -- CP-element group 214: 	213 
    -- CP-element group 214: successors 
    -- CP-element group 214: 	215 
    -- CP-element group 214: marked-successors 
    -- CP-element group 214: 	63 
    -- CP-element group 214: 	31 
    -- CP-element group 214: 	36 
    -- CP-element group 214: 	21 
    -- CP-element group 214: 	42 
    -- CP-element group 214: 	82 
    -- CP-element group 214: 	103 
    -- CP-element group 214: 	144 
    -- CP-element group 214: 	150 
    -- CP-element group 214:  members (6) 
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Update/req
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Update/$entry
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Sample/ack
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Sample/$exit
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_update_start_
      -- CP-element group 214: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_sample_completed_
      -- 
    ack_2304_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 214_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_iunit_register_file_read_access_response_12304_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(214)); -- 
    req_2308_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2308_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(214), ack => WPIPE_iunit_register_file_read_access_response_12304_inst_req_1); -- 
    -- CP-element group 215:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 215: predecessors 
    -- CP-element group 215: 	214 
    -- CP-element group 215: successors 
    -- CP-element group 215: 	237 
    -- CP-element group 215: marked-successors 
    -- CP-element group 215: 	213 
    -- CP-element group 215:  members (3) 
      -- CP-element group 215: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Update/ack
      -- CP-element group 215: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_Update/$exit
      -- CP-element group 215: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_iunit_register_file_read_access_response_12304_update_completed_
      -- 
    ack_2309_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 215_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_iunit_register_file_read_access_response_12304_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(215)); -- 
    -- CP-element group 216:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 216: predecessors 
    -- CP-element group 216: 	65 
    -- CP-element group 216: 	35 
    -- CP-element group 216: 	25 
    -- CP-element group 216: 	40 
    -- CP-element group 216: 	46 
    -- CP-element group 216: 	86 
    -- CP-element group 216: 	107 
    -- CP-element group 216: 	148 
    -- CP-element group 216: 	154 
    -- CP-element group 216: marked-predecessors 
    -- CP-element group 216: 	218 
    -- CP-element group 216: successors 
    -- CP-element group 216: 	217 
    -- CP-element group 216:  members (3) 
      -- CP-element group 216: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Sample/req
      -- CP-element group 216: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_sample_start_
      -- CP-element group 216: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Sample/$entry
      -- 
    req_2317_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2317_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(216), ack => WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_216: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 1);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_216"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(65) & iu_registers_daemon_CP_1778_elements(35) & iu_registers_daemon_CP_1778_elements(25) & iu_registers_daemon_CP_1778_elements(40) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(148) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(218);
      gj_iu_registers_daemon_cp_element_group_216 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(216), clk => clk, reset => reset); --
    end block;
    -- CP-element group 217:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 217: predecessors 
    -- CP-element group 217: 	216 
    -- CP-element group 217: successors 
    -- CP-element group 217: 	218 
    -- CP-element group 217: marked-successors 
    -- CP-element group 217: 	63 
    -- CP-element group 217: 	31 
    -- CP-element group 217: 	36 
    -- CP-element group 217: 	21 
    -- CP-element group 217: 	42 
    -- CP-element group 217: 	82 
    -- CP-element group 217: 	103 
    -- CP-element group 217: 	144 
    -- CP-element group 217: 	150 
    -- CP-element group 217:  members (6) 
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_sample_completed_
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_update_start_
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Sample/ack
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Sample/$exit
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Update/req
      -- CP-element group 217: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Update/$entry
      -- 
    ack_2318_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 217_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(217)); -- 
    req_2322_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2322_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(217), ack => WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_1); -- 
    -- CP-element group 218:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 218: predecessors 
    -- CP-element group 218: 	217 
    -- CP-element group 218: successors 
    -- CP-element group 218: 	237 
    -- CP-element group 218: marked-successors 
    -- CP-element group 218: 	216 
    -- CP-element group 218:  members (3) 
      -- CP-element group 218: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_update_completed_
      -- CP-element group 218: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Update/ack
      -- CP-element group 218: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_register_file_to_loadstore_12311_Update/$exit
      -- 
    ack_2323_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 218_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(218)); -- 
    -- CP-element group 219:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 219: predecessors 
    -- CP-element group 219: 	30 
    -- CP-element group 219: 	46 
    -- CP-element group 219: 	128 
    -- CP-element group 219: 	154 
    -- CP-element group 219: marked-predecessors 
    -- CP-element group 219: 	221 
    -- CP-element group 219: successors 
    -- CP-element group 219: 	220 
    -- CP-element group 219:  members (3) 
      -- CP-element group 219: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Sample/req
      -- CP-element group 219: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Sample/$entry
      -- CP-element group 219: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_sample_start_
      -- 
    req_2331_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2331_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(219), ack => WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_219: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_219"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(30) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(128) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(221);
      gj_iu_registers_daemon_cp_element_group_219 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(219), clk => clk, reset => reset); --
    end block;
    -- CP-element group 220:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 220: predecessors 
    -- CP-element group 220: 	219 
    -- CP-element group 220: successors 
    -- CP-element group 220: 	221 
    -- CP-element group 220: marked-successors 
    -- CP-element group 220: 	26 
    -- CP-element group 220: 	42 
    -- CP-element group 220: 	124 
    -- CP-element group 220: 	150 
    -- CP-element group 220:  members (6) 
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Update/req
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Update/$entry
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Sample/ack
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Sample/$exit
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_update_start_
      -- CP-element group 220: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_sample_completed_
      -- 
    ack_2332_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 220_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(220)); -- 
    req_2336_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2336_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(220), ack => WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_1); -- 
    -- CP-element group 221:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 221: predecessors 
    -- CP-element group 221: 	220 
    -- CP-element group 221: successors 
    -- CP-element group 221: 	237 
    -- CP-element group 221: marked-successors 
    -- CP-element group 221: 	219 
    -- CP-element group 221:  members (3) 
      -- CP-element group 221: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Update/ack
      -- CP-element group 221: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_Update/$exit
      -- CP-element group 221: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_cc_to_stream_corrector_12318_update_completed_
      -- 
    ack_2337_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 221_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(221)); -- 
    -- CP-element group 222:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 222: predecessors 
    -- CP-element group 222: 	35 
    -- CP-element group 222: 	46 
    -- CP-element group 222: 	86 
    -- CP-element group 222: 	107 
    -- CP-element group 222: 	154 
    -- CP-element group 222: marked-predecessors 
    -- CP-element group 222: 	224 
    -- CP-element group 222: successors 
    -- CP-element group 222: 	223 
    -- CP-element group 222:  members (3) 
      -- CP-element group 222: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_sample_start_
      -- CP-element group 222: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Sample/$entry
      -- CP-element group 222: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Sample/req
      -- 
    req_2345_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2345_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(222), ack => WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_222: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_222"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(35) & iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(224);
      gj_iu_registers_daemon_cp_element_group_222 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(222), clk => clk, reset => reset); --
    end block;
    -- CP-element group 223:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 223: predecessors 
    -- CP-element group 223: 	222 
    -- CP-element group 223: successors 
    -- CP-element group 223: 	224 
    -- CP-element group 223: marked-successors 
    -- CP-element group 223: 	31 
    -- CP-element group 223: 	42 
    -- CP-element group 223: 	82 
    -- CP-element group 223: 	103 
    -- CP-element group 223: 	150 
    -- CP-element group 223:  members (6) 
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_sample_completed_
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_update_start_
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Sample/$exit
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Update/req
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Update/$entry
      -- CP-element group 223: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Sample/ack
      -- 
    ack_2346_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 223_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(223)); -- 
    req_2350_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2350_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(223), ack => WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_1); -- 
    -- CP-element group 224:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 224: predecessors 
    -- CP-element group 224: 	223 
    -- CP-element group 224: successors 
    -- CP-element group 224: 	237 
    -- CP-element group 224: marked-successors 
    -- CP-element group 224: 	222 
    -- CP-element group 224:  members (3) 
      -- CP-element group 224: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_update_completed_
      -- CP-element group 224: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Update/ack
      -- CP-element group 224: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_iunit_rs1_to_stream_corrector_12325_Update/$exit
      -- 
    ack_2351_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 224_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(224)); -- 
    -- CP-element group 225:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 225: predecessors 
    -- CP-element group 225: 	46 
    -- CP-element group 225: 	86 
    -- CP-element group 225: 	107 
    -- CP-element group 225: 	154 
    -- CP-element group 225: marked-predecessors 
    -- CP-element group 225: 	227 
    -- CP-element group 225: successors 
    -- CP-element group 225: 	227 
    -- CP-element group 225:  members (3) 
      -- CP-element group 225: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_sample_start_
      -- CP-element group 225: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Sample/$entry
      -- CP-element group 225: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Sample/req
      -- 
    req_2359_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2359_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(225), ack => W_ccu_response_buffered_12331_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_225: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_225"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(86) & iu_registers_daemon_CP_1778_elements(107) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(227);
      gj_iu_registers_daemon_cp_element_group_225 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(225), clk => clk, reset => reset); --
    end block;
    -- CP-element group 226:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 226: predecessors 
    -- CP-element group 226: marked-predecessors 
    -- CP-element group 226: 	228 
    -- CP-element group 226: 	234 
    -- CP-element group 226: successors 
    -- CP-element group 226: 	228 
    -- CP-element group 226:  members (3) 
      -- CP-element group 226: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_update_start_
      -- CP-element group 226: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Update/req
      -- CP-element group 226: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Update/$entry
      -- 
    req_2364_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2364_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(226), ack => W_ccu_response_buffered_12331_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_226: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_226"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(228) & iu_registers_daemon_CP_1778_elements(234);
      gj_iu_registers_daemon_cp_element_group_226 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(226), clk => clk, reset => reset); --
    end block;
    -- CP-element group 227:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 227: predecessors 
    -- CP-element group 227: 	225 
    -- CP-element group 227: successors 
    -- CP-element group 227: marked-successors 
    -- CP-element group 227: 	42 
    -- CP-element group 227: 	82 
    -- CP-element group 227: 	103 
    -- CP-element group 227: 	150 
    -- CP-element group 227: 	225 
    -- CP-element group 227:  members (3) 
      -- CP-element group 227: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_sample_completed_
      -- CP-element group 227: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Sample/$exit
      -- CP-element group 227: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Sample/ack
      -- 
    ack_2360_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 227_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ccu_response_buffered_12331_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(227)); -- 
    -- CP-element group 228:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 228: predecessors 
    -- CP-element group 228: 	226 
    -- CP-element group 228: successors 
    -- CP-element group 228: 	233 
    -- CP-element group 228: marked-successors 
    -- CP-element group 228: 	226 
    -- CP-element group 228:  members (3) 
      -- CP-element group 228: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_update_completed_
      -- CP-element group 228: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Update/ack
      -- CP-element group 228: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12333_Update/$exit
      -- 
    ack_2365_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 228_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_ccu_response_buffered_12331_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(228)); -- 
    -- CP-element group 229:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 229: predecessors 
    -- CP-element group 229: 	46 
    -- CP-element group 229: 	154 
    -- CP-element group 229: marked-predecessors 
    -- CP-element group 229: 	231 
    -- CP-element group 229: successors 
    -- CP-element group 229: 	231 
    -- CP-element group 229:  members (3) 
      -- CP-element group 229: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_sample_start_
      -- CP-element group 229: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Sample/req
      -- CP-element group 229: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Sample/$entry
      -- 
    req_2373_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2373_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(229), ack => W_send_ccu_response_12609_delayed_1_0_12334_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_229: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_229"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(46) & iu_registers_daemon_CP_1778_elements(154) & iu_registers_daemon_CP_1778_elements(231);
      gj_iu_registers_daemon_cp_element_group_229 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(229), clk => clk, reset => reset); --
    end block;
    -- CP-element group 230:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 230: predecessors 
    -- CP-element group 230: marked-predecessors 
    -- CP-element group 230: 	232 
    -- CP-element group 230: 	234 
    -- CP-element group 230: successors 
    -- CP-element group 230: 	232 
    -- CP-element group 230:  members (3) 
      -- CP-element group 230: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_update_start_
      -- CP-element group 230: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Update/req
      -- CP-element group 230: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Update/$entry
      -- 
    req_2378_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2378_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(230), ack => W_send_ccu_response_12609_delayed_1_0_12334_inst_req_1); -- 
    iu_registers_daemon_cp_element_group_230: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_230"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(232) & iu_registers_daemon_CP_1778_elements(234);
      gj_iu_registers_daemon_cp_element_group_230 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(230), clk => clk, reset => reset); --
    end block;
    -- CP-element group 231:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 231: predecessors 
    -- CP-element group 231: 	229 
    -- CP-element group 231: successors 
    -- CP-element group 231: marked-successors 
    -- CP-element group 231: 	42 
    -- CP-element group 231: 	150 
    -- CP-element group 231: 	229 
    -- CP-element group 231:  members (3) 
      -- CP-element group 231: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_sample_completed_
      -- CP-element group 231: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Sample/ack
      -- CP-element group 231: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Sample/$exit
      -- 
    ack_2374_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 231_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(231)); -- 
    -- CP-element group 232:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 232: predecessors 
    -- CP-element group 232: 	230 
    -- CP-element group 232: successors 
    -- CP-element group 232: 	233 
    -- CP-element group 232: marked-successors 
    -- CP-element group 232: 	230 
    -- CP-element group 232:  members (3) 
      -- CP-element group 232: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Update/ack
      -- CP-element group 232: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_Update/$exit
      -- CP-element group 232: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/assign_stmt_12336_update_completed_
      -- 
    ack_2379_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 232_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(232)); -- 
    -- CP-element group 233:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 233: predecessors 
    -- CP-element group 233: 	228 
    -- CP-element group 233: 	232 
    -- CP-element group 233: marked-predecessors 
    -- CP-element group 233: 	235 
    -- CP-element group 233: successors 
    -- CP-element group 233: 	234 
    -- CP-element group 233:  members (3) 
      -- CP-element group 233: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Sample/$entry
      -- CP-element group 233: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Sample/req
      -- CP-element group 233: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_sample_start_
      -- 
    req_2387_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2387_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(233), ack => WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_0); -- 
    iu_registers_daemon_cp_element_group_233: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_233"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(228) & iu_registers_daemon_CP_1778_elements(232) & iu_registers_daemon_CP_1778_elements(235);
      gj_iu_registers_daemon_cp_element_group_233 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(233), clk => clk, reset => reset); --
    end block;
    -- CP-element group 234:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 234: predecessors 
    -- CP-element group 234: 	233 
    -- CP-element group 234: successors 
    -- CP-element group 234: 	235 
    -- CP-element group 234: marked-successors 
    -- CP-element group 234: 	226 
    -- CP-element group 234: 	230 
    -- CP-element group 234:  members (6) 
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Sample/$exit
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Sample/ack
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_update_start_
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_sample_completed_
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Update/req
      -- CP-element group 234: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Update/$entry
      -- 
    ack_2388_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 234_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_0, ack => iu_registers_daemon_CP_1778_elements(234)); -- 
    req_2392_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_2392_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => iu_registers_daemon_CP_1778_elements(234), ack => WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_1); -- 
    -- CP-element group 235:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 235: predecessors 
    -- CP-element group 235: 	234 
    -- CP-element group 235: successors 
    -- CP-element group 235: 	237 
    -- CP-element group 235: marked-successors 
    -- CP-element group 235: 	233 
    -- CP-element group 235:  members (3) 
      -- CP-element group 235: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_update_completed_
      -- CP-element group 235: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Update/ack
      -- CP-element group 235: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/WPIPE_teu_to_ccu_iunit_register_access_response_12338_Update/$exit
      -- 
    ack_2393_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 235_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_1, ack => iu_registers_daemon_CP_1778_elements(235)); -- 
    -- CP-element group 236:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 236: predecessors 
    -- CP-element group 236: 	14 
    -- CP-element group 236: successors 
    -- CP-element group 236: 	15 
    -- CP-element group 236:  members (1) 
      -- CP-element group 236: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group iu_registers_daemon_CP_1778_elements(236) is a control-delay.
    cp_element_236_delay: control_delay_element  generic map(name => " 236_delay", delay_value => 1)  port map(req => iu_registers_daemon_CP_1778_elements(14), ack => iu_registers_daemon_CP_1778_elements(236), clk => clk, reset =>reset);
    -- CP-element group 237:  join  transition  bypass  pipeline-parent 
    -- CP-element group 237: predecessors 
    -- CP-element group 237: 	17 
    -- CP-element group 237: 	212 
    -- CP-element group 237: 	215 
    -- CP-element group 237: 	218 
    -- CP-element group 237: 	221 
    -- CP-element group 237: 	224 
    -- CP-element group 237: 	235 
    -- CP-element group 237: successors 
    -- CP-element group 237: 	11 
    -- CP-element group 237:  members (1) 
      -- CP-element group 237: 	 branch_block_stmt_9496/do_while_stmt_9497/do_while_stmt_9497_loop_body/$exit
      -- 
    iu_registers_daemon_cp_element_group_237: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 7,1 => 7,2 => 7,3 => 7,4 => 7,5 => 7,6 => 7);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 40) := "iu_registers_daemon_cp_element_group_237"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= iu_registers_daemon_CP_1778_elements(17) & iu_registers_daemon_CP_1778_elements(212) & iu_registers_daemon_CP_1778_elements(215) & iu_registers_daemon_CP_1778_elements(218) & iu_registers_daemon_CP_1778_elements(221) & iu_registers_daemon_CP_1778_elements(224) & iu_registers_daemon_CP_1778_elements(235);
      gj_iu_registers_daemon_cp_element_group_237 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(237), clk => clk, reset => reset); --
    end block;
    -- CP-element group 238:  transition  input  bypass  pipeline-parent 
    -- CP-element group 238: predecessors 
    -- CP-element group 238: 	10 
    -- CP-element group 238: successors 
    -- CP-element group 238:  members (2) 
      -- CP-element group 238: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_exit/ack
      -- CP-element group 238: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_exit/$exit
      -- 
    ack_2398_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 238_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_9497_branch_ack_0, ack => iu_registers_daemon_CP_1778_elements(238)); -- 
    -- CP-element group 239:  transition  input  bypass  pipeline-parent 
    -- CP-element group 239: predecessors 
    -- CP-element group 239: 	10 
    -- CP-element group 239: successors 
    -- CP-element group 239:  members (2) 
      -- CP-element group 239: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_taken/ack
      -- CP-element group 239: 	 branch_block_stmt_9496/do_while_stmt_9497/loop_taken/$exit
      -- 
    ack_2402_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 239_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_9497_branch_ack_1, ack => iu_registers_daemon_CP_1778_elements(239)); -- 
    -- CP-element group 240:  transition  bypass  pipeline-parent 
    -- CP-element group 240: predecessors 
    -- CP-element group 240: 	8 
    -- CP-element group 240: successors 
    -- CP-element group 240: 	6 
    -- CP-element group 240:  members (1) 
      -- CP-element group 240: 	 branch_block_stmt_9496/do_while_stmt_9497/$exit
      -- 
    iu_registers_daemon_CP_1778_elements(240) <= iu_registers_daemon_CP_1778_elements(8);
    iu_registers_daemon_do_while_stmt_9497_terminator_2403: loop_terminator -- 
      generic map (name => " iu_registers_daemon_do_while_stmt_9497_terminator_2403", max_iterations_in_flight =>7) 
      port map(loop_body_exit => iu_registers_daemon_CP_1778_elements(11),loop_continue => iu_registers_daemon_CP_1778_elements(239),loop_terminate => iu_registers_daemon_CP_1778_elements(238),loop_back => iu_registers_daemon_CP_1778_elements(9),loop_exit => iu_registers_daemon_CP_1778_elements(8),clk => clk, reset => reset); -- 
    phi_stmt_9511_phi_seq_1955_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(49);
      iu_registers_daemon_CP_1778_elements(52)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(52);
      iu_registers_daemon_CP_1778_elements(53)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(54);
      iu_registers_daemon_CP_1778_elements(50) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(47);
      iu_registers_daemon_CP_1778_elements(56)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(60);
      iu_registers_daemon_CP_1778_elements(57)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(61);
      iu_registers_daemon_CP_1778_elements(48) <= phi_mux_reqs(1);
      phi_stmt_9511_phi_seq_1955 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9511_phi_seq_1955") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(43), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(44), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(45), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(46), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(51), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9516_phi_seq_1999_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(68);
      iu_registers_daemon_CP_1778_elements(71)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(71);
      iu_registers_daemon_CP_1778_elements(72)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(73);
      iu_registers_daemon_CP_1778_elements(69) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(66);
      iu_registers_daemon_CP_1778_elements(75)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(79);
      iu_registers_daemon_CP_1778_elements(76)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(80);
      iu_registers_daemon_CP_1778_elements(67) <= phi_mux_reqs(1);
      phi_stmt_9516_phi_seq_1999 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9516_phi_seq_1999") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(16), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(64), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(19), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(65), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(70), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9520_phi_seq_2043_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(87);
      iu_registers_daemon_CP_1778_elements(92)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(96);
      iu_registers_daemon_CP_1778_elements(93)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(97);
      iu_registers_daemon_CP_1778_elements(88) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(89);
      iu_registers_daemon_CP_1778_elements(98)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(98);
      iu_registers_daemon_CP_1778_elements(99)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(100);
      iu_registers_daemon_CP_1778_elements(90) <= phi_mux_reqs(1);
      phi_stmt_9520_phi_seq_2043 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9520_phi_seq_2043") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(83), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(84), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(85), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(86), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(91), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9534_phi_seq_2087_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(108);
      iu_registers_daemon_CP_1778_elements(113)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(117);
      iu_registers_daemon_CP_1778_elements(114)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(118);
      iu_registers_daemon_CP_1778_elements(109) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(110);
      iu_registers_daemon_CP_1778_elements(119)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(119);
      iu_registers_daemon_CP_1778_elements(120)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(121);
      iu_registers_daemon_CP_1778_elements(111) <= phi_mux_reqs(1);
      phi_stmt_9534_phi_seq_2087 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9534_phi_seq_2087") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(104), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(105), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(106), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(107), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(112), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9541_phi_seq_2131_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(131);
      iu_registers_daemon_CP_1778_elements(134)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(134);
      iu_registers_daemon_CP_1778_elements(135)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(136);
      iu_registers_daemon_CP_1778_elements(132) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(129);
      iu_registers_daemon_CP_1778_elements(138)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(142);
      iu_registers_daemon_CP_1778_elements(139)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(143);
      iu_registers_daemon_CP_1778_elements(130) <= phi_mux_reqs(1);
      phi_stmt_9541_phi_seq_2131 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9541_phi_seq_2131") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(125), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(126), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(127), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(128), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(133), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9548_phi_seq_2193_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(157);
      iu_registers_daemon_CP_1778_elements(160)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(160);
      iu_registers_daemon_CP_1778_elements(161)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(162);
      iu_registers_daemon_CP_1778_elements(158) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(155);
      iu_registers_daemon_CP_1778_elements(164)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(166);
      iu_registers_daemon_CP_1778_elements(165)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(167);
      iu_registers_daemon_CP_1778_elements(156) <= phi_mux_reqs(1);
      phi_stmt_9548_phi_seq_2193 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9548_phi_seq_2193") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(151), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(152), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(153), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(154), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(159), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9552_phi_seq_2237_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(174);
      iu_registers_daemon_CP_1778_elements(179)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(183);
      iu_registers_daemon_CP_1778_elements(180)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(184);
      iu_registers_daemon_CP_1778_elements(175) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(176);
      iu_registers_daemon_CP_1778_elements(185)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(185);
      iu_registers_daemon_CP_1778_elements(186)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(187);
      iu_registers_daemon_CP_1778_elements(177) <= phi_mux_reqs(1);
      phi_stmt_9552_phi_seq_2237 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9552_phi_seq_2237") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(170), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(171), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(172), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(173), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(178), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_9557_phi_seq_2281_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= iu_registers_daemon_CP_1778_elements(197);
      iu_registers_daemon_CP_1778_elements(200)<= src_sample_reqs(0);
      src_sample_acks(0)  <= iu_registers_daemon_CP_1778_elements(200);
      iu_registers_daemon_CP_1778_elements(201)<= src_update_reqs(0);
      src_update_acks(0)  <= iu_registers_daemon_CP_1778_elements(202);
      iu_registers_daemon_CP_1778_elements(198) <= phi_mux_reqs(0);
      triggers(1)  <= iu_registers_daemon_CP_1778_elements(195);
      iu_registers_daemon_CP_1778_elements(204)<= src_sample_reqs(1);
      src_sample_acks(1)  <= iu_registers_daemon_CP_1778_elements(208);
      iu_registers_daemon_CP_1778_elements(205)<= src_update_reqs(1);
      src_update_acks(1)  <= iu_registers_daemon_CP_1778_elements(209);
      iu_registers_daemon_CP_1778_elements(196) <= phi_mux_reqs(1);
      phi_stmt_9557_phi_seq_2281 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_9557_phi_seq_2281") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => iu_registers_daemon_CP_1778_elements(191), 
          phi_sample_ack => iu_registers_daemon_CP_1778_elements(192), 
          phi_update_req => iu_registers_daemon_CP_1778_elements(193), 
          phi_update_ack => iu_registers_daemon_CP_1778_elements(194), 
          phi_mux_ack => iu_registers_daemon_CP_1778_elements(199), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1834_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= iu_registers_daemon_CP_1778_elements(12);
        preds(1)  <= iu_registers_daemon_CP_1778_elements(13);
        entry_tmerge_1834 : transition_merge -- 
          generic map(name => " entry_tmerge_1834")
          port map (preds => preds, symbol_out => iu_registers_daemon_CP_1778_elements(14));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AASR_WRITE_START_10430 : std_logic_vector(0 downto 0);
    signal ADD_u4_u4_11435_wire : std_logic_vector(3 downto 0);
    signal ADD_u4_u4_11463_wire : std_logic_vector(3 downto 0);
    signal ADD_u4_u4_11491_wire : std_logic_vector(3 downto 0);
    signal ADD_u4_u4_11519_wire : std_logic_vector(3 downto 0);
    signal ADD_u5_u5_10371_wire : std_logic_vector(4 downto 0);
    signal AND_u1_u1_10072_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10081_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10090_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10099_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10108_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10117_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10126_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10135_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10261_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10270_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10279_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10288_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10336_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10341_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10348_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10356_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10361_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10414_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10417_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10418_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10426_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10428_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10467_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10470_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10602_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10606_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10619_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10623_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10936_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10942_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10945_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10983_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_10986_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11038_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11041_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11068_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11071_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11094_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11097_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11118_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11120_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11123_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11125_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11134_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11300_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11305_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11313_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11336_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11344_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11345_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11351_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11358_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11360_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11362_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11369_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11382_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11385_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11386_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11391_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11394_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11395_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11401_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11408_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11410_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11411_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11432_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11441_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11460_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11469_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11488_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11497_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11516_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11525_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11558_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11561_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11650_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11671_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11694_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11703_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11706_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11710_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11737_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11743_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11755_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11761_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_11768_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_12054_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_12056_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_12065_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_12067_wire : std_logic_vector(0 downto 0);
    signal AND_u3_u3_10704_wire : std_logic_vector(2 downto 0);
    signal AND_u3_u3_10716_wire : std_logic_vector(2 downto 0);
    signal ASR_READ_START_10420 : std_logic_vector(0 downto 0);
    signal ASR_READ_VALUE_9534 : std_logic_vector(31 downto 0);
    signal ASR_READ_VAL_9828 : std_logic_vector(31 downto 0);
    signal ASR_WRITE_START_12250 : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_11621_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_11625_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u32_u1_11628_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u3_u1_10352_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u5_u1_11162_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u5_u1_11172_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u5_u1_11235_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u5_u1_11250_wire : std_logic_vector(0 downto 0);
    signal CCCREDITS_9730 : std_logic_vector(3 downto 0);
    signal CCOUNTER_8_9815 : std_logic_vector(7 downto 0);
    signal CCU_ASR_READ_START_10457 : std_logic_vector(0 downto 0);
    signal CCU_ASR_WRITE_START_10446 : std_logic_vector(0 downto 0);
    signal CCU_WU_START_10383 : std_logic_vector(0 downto 0);
    signal CIRCULANT_9674 : std_logic_vector(274 downto 0);
    signal CONCAT_u101_u104_12395_wire : std_logic_vector(103 downto 0);
    signal CONCAT_u104_u113_12399_wire : std_logic_vector(112 downto 0);
    signal CONCAT_u108_u131_12170_wire : std_logic_vector(130 downto 0);
    signal CONCAT_u108_u131_12386_wire : std_logic_vector(130 downto 0);
    signal CONCAT_u108_u131_9672_wire : std_logic_vector(130 downto 0);
    signal CONCAT_u10_u12_12092_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u10_u20_12085_wire : std_logic_vector(19 downto 0);
    signal CONCAT_u131_u132_12389_wire : std_logic_vector(131 downto 0);
    signal CONCAT_u13_u45_12105_wire : std_logic_vector(44 downto 0);
    signal CONCAT_u146_u278_12390_wire : std_logic_vector(277 downto 0);
    signal CONCAT_u16_u144_12167_wire : std_logic_vector(143 downto 0);
    signal CONCAT_u16_u144_9669_wire : std_logic_vector(143 downto 0);
    signal CONCAT_u18_u146_12383_wire : std_logic_vector(145 downto 0);
    signal CONCAT_u1_u2_11622_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11629_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11638_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11643_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11646_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11843_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_11868_wire_constant : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_12091_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_12148_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_12347_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u5_11903_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u1_u6_11655_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u20_u32_12093_wire : std_logic_vector(31 downto 0);
    signal CONCAT_u2_u18_12381_wire : std_logic_vector(17 downto 0);
    signal CONCAT_u2_u4_11630_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u4_11647_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u2_u6_11845_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_11870_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u6_12152_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u2_u8_11848_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u2_u8_11873_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u32_u33_12099_wire : std_logic_vector(32 downto 0);
    signal CONCAT_u32_u64_11852_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_11855_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_11877_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_11880_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_12132_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u32_u64_12135_wire : std_logic_vector(63 downto 0);
    signal CONCAT_u37_u38_12264_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u37_u70_12100_wire : std_logic_vector(69 downto 0);
    signal CONCAT_u3_u4_12151_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u3_u6_12144_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u14_11640_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u4_u18_11658_wire : std_logic_vector(17 downto 0);
    signal CONCAT_u4_u6_11728_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u4_u8_11543_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_11546_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u4_u8_11635_wire : std_logic_vector(7 downto 0);
    signal CONCAT_u59_u101_12393_wire : std_logic_vector(100 downto 0);
    signal CONCAT_u5_u10_12081_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u10_12084_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u10_12088_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u10_12158_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u5_u13_12103_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u5_u13_12161_wire : std_logic_vector(12 downto 0);
    signal CONCAT_u5_u37_10497_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u37_10509_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u37_12096_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u37_12262_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u6_12268_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u7_11905_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u64_u128_11856_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u64_u128_11881_wire : std_logic_vector(127 downto 0);
    signal CONCAT_u64_u96_12141_wire : std_logic_vector(95 downto 0);
    signal CONCAT_u6_u10_11908_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u6_u14_11657_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u6_u14_11849_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u6_u14_11874_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u6_u38_11731_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u70_u115_12106_wire : std_logic_vector(114 downto 0);
    signal CONCAT_u8_u10_11639_wire : std_logic_vector(9 downto 0);
    signal CONCAT_u8_u40_9703_wire : std_logic_vector(39 downto 0);
    signal CONCAT_u8_u9_12398_wire : std_logic_vector(8 downto 0);
    signal CONCAT_u96_u102_12145_wire : std_logic_vector(101 downto 0);
    signal COUNTER_FROM_IU_REGS_ACCESS_9824 : std_logic_vector(7 downto 0);
    signal CREDITS_9710 : std_logic_vector(15 downto 0);
    signal CREDITS_raw_9570 : std_logic_vector(15 downto 0);
    signal CWP_10320 : std_logic_vector(4 downto 0);
    signal CYCLE_COUNT_8_9811 : std_logic_vector(7 downto 0);
    signal CYCLE_COUNT_9698 : std_logic_vector(22 downto 0);
    signal DIFF_9820 : std_logic_vector(7 downto 0);
    signal EQ_u1_u1_11450_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_11478_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_11506_wire : std_logic_vector(0 downto 0);
    signal EQ_u1_u1_11534_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10075_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10084_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10093_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10102_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10111_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10120_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10129_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10138_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10264_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10273_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10282_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_10291_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_10546_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_11667_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_11674_wire : std_logic_vector(0 downto 0);
    signal INIT_CREDITS_9451 : std_logic_vector(15 downto 0);
    signal IUCREDITS_9738 : std_logic_vector(3 downto 0);
    signal IU_ASR_READ_START_10452 : std_logic_vector(0 downto 0);
    signal IU_ASR_WRITE_START_10441 : std_logic_vector(0 downto 0);
    signal IU_REG_READ_VALUES_9520 : std_logic_vector(191 downto 0);
    signal IU_WU_START_10389 : std_logic_vector(0 downto 0);
    signal LOCAL_CIRCULANT_INIT_VALUE_9489 : std_logic_vector(390 downto 0);
    signal LOCKS_9718 : std_logic_vector(107 downto 0);
    signal LOCKS_raw_9578 : std_logic_vector(107 downto 0);
    signal LSCREDITS_9726 : std_logic_vector(3 downto 0);
    signal MUX_10372_wire : std_logic_vector(4 downto 0);
    signal MUX_10463_wire : std_logic_vector(0 downto 0);
    signal MUX_10566_wire : std_logic_vector(31 downto 0);
    signal MUX_11008_wire : std_logic_vector(31 downto 0);
    signal MUX_11010_wire : std_logic_vector(31 downto 0);
    signal MUX_11016_wire : std_logic_vector(31 downto 0);
    signal MUX_11017_wire : std_logic_vector(31 downto 0);
    signal MUX_11054_wire : std_logic_vector(31 downto 0);
    signal MUX_11083_wire : std_logic_vector(31 downto 0);
    signal MUX_11106_wire : std_logic_vector(31 downto 0);
    signal MUX_11437_wire : std_logic_vector(3 downto 0);
    signal MUX_11446_wire : std_logic_vector(3 downto 0);
    signal MUX_11453_wire : std_logic_vector(3 downto 0);
    signal MUX_11465_wire : std_logic_vector(3 downto 0);
    signal MUX_11474_wire : std_logic_vector(3 downto 0);
    signal MUX_11481_wire : std_logic_vector(3 downto 0);
    signal MUX_11493_wire : std_logic_vector(3 downto 0);
    signal MUX_11502_wire : std_logic_vector(3 downto 0);
    signal MUX_11509_wire : std_logic_vector(3 downto 0);
    signal MUX_11521_wire : std_logic_vector(3 downto 0);
    signal MUX_11530_wire : std_logic_vector(3 downto 0);
    signal MUX_11537_wire : std_logic_vector(3 downto 0);
    signal MUX_11600_wire : std_logic_vector(7 downto 0);
    signal MUX_11604_wire : std_logic_vector(7 downto 0);
    signal MUX_11609_wire : std_logic_vector(7 downto 0);
    signal MUX_11613_wire : std_logic_vector(7 downto 0);
    signal MUX_11654_wire : std_logic_vector(4 downto 0);
    signal MUX_11677_wire : std_logic_vector(0 downto 0);
    signal MUX_11740_wire : std_logic_vector(31 downto 0);
    signal MUX_11746_wire : std_logic_vector(31 downto 0);
    signal MUX_11751_wire : std_logic_vector(31 downto 0);
    signal MUX_11758_wire : std_logic_vector(31 downto 0);
    signal MUX_11764_wire : std_logic_vector(31 downto 0);
    signal MUX_11771_wire : std_logic_vector(31 downto 0);
    signal MUX_11779_wire : std_logic_vector(31 downto 0);
    signal MUX_11783_wire : std_logic_vector(31 downto 0);
    signal MUX_11788_wire : std_logic_vector(31 downto 0);
    signal MUX_11792_wire : std_logic_vector(31 downto 0);
    signal MUX_11954_wire : std_logic_vector(63 downto 0);
    signal MUX_11963_wire : std_logic_vector(2 downto 0);
    signal MUX_11975_wire : std_logic_vector(0 downto 0);
    signal MUX_11984_wire : std_logic_vector(0 downto 0);
    signal MUX_11993_wire : std_logic_vector(2 downto 0);
    signal MUX_12001_wire : std_logic_vector(0 downto 0);
    signal MUX_12006_wire : std_logic_vector(0 downto 0);
    signal MUX_12008_wire : std_logic_vector(0 downto 0);
    signal MUX_12359_wire : std_logic_vector(0 downto 0);
    signal NCYCLE_COUNT_8_9868 : std_logic_vector(7 downto 0);
    signal NEQ_u3_u1_10977_wire : std_logic_vector(0 downto 0);
    signal NEQ_u3_u1_12182_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_11270_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_11277_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_11284_wire : std_logic_vector(0 downto 0);
    signal NEQ_u4_u1_11291_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_10340_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_10355_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10346_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10387_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10412_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10424_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10439_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10450_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10462_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10476_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10601_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10604_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10618_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10622_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_10874_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11136_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11163_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11323_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11326_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11333_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11343_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11347_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11354_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11368_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11371_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11388_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11390_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11404_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11431_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11439_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11459_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11467_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11487_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11495_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11515_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11523_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11556_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11560_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11669_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11686_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11702_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11927_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11933_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_11939_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_12053_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_12064_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_10358_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_10360_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_10466_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_10478_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_10877_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11005_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11164_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11173_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11251_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11306_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11309_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11327_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11335_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11339_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11341_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11349_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11357_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11361_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11407_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11683_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11687_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11692_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11693_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11697_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11699_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11707_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_11708_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_11747_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_11752_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_11765_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_11772_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_11784_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_11793_wire : std_logic_vector(31 downto 0);
    signal OR_u4_u4_11447_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_11475_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_11503_wire : std_logic_vector(3 downto 0);
    signal OR_u4_u4_11531_wire : std_logic_vector(3 downto 0);
    signal PREFETCH_ASR_9807 : std_logic_vector(4 downto 0);
    signal PREFETCH_READ_CWP_9799 : std_logic_vector(4 downto 0);
    signal PREFETCH_RS1_9803 : std_logic_vector(4 downto 0);
    signal PSR_9751 : std_logic_vector(31 downto 0);
    signal READ_RD_PAIR_VALUE_9840 : std_logic_vector(63 downto 0);
    signal READ_REGISTERS_9706 : std_logic_vector(231 downto 0);
    signal REGISTER_FILE_READ_STALL_10579 : std_logic_vector(0 downto 0);
    signal RPIPE_CORE_ID_9491_wire : std_logic_vector(7 downto 0);
    signal RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_wire : std_logic_vector(92 downto 0);
    signal RPIPE_THREAD_ID_9494_wire : std_logic_vector(7 downto 0);
    signal RPIPE_THREAD_ID_9607_wire : std_logic_vector(7 downto 0);
    signal RPIPE_ccu_to_teu_iunit_register_access_command_9561_wire : std_logic_vector(41 downto 0);
    signal RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_wire : std_logic_vector(16 downto 0);
    signal RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_wire : std_logic_vector(82 downto 0);
    signal RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_iunit_writeback_in_args_pipe_9515_wire : std_logic_vector(372 downto 0);
    signal RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_wire : std_logic_vector(58 downto 0);
    signal RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_wire : std_logic_vector(0 downto 0);
    signal RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_wire : std_logic_vector(0 downto 0);
    signal RS1CREDITS_9734 : std_logic_vector(3 downto 0);
    signal RS1_PAIR_VALUE_9832 : std_logic_vector(63 downto 0);
    signal RS2_PAIR_VALUE_9836 : std_logic_vector(63 downto 0);
    signal R_ACCESS_ASR_10110_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_ASR_10119_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_ASR_10281_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_10074_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_10083_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_10263_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_10092_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_10101_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_10272_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_10128_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_10137_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_10290_wire_constant : std_logic_vector(2 downto 0);
    signal R_NWINDOWS_MOD_MASK_5_10318_wire_constant : std_logic_vector(4 downto 0);
    signal R_NWINDOWS_MOD_MASK_5_10324_wire_constant : std_logic_vector(4 downto 0);
    signal R_NWINDOWS_MOD_MASK_5_10330_wire_constant : std_logic_vector(4 downto 0);
    signal R_NWINDOWS_MOD_MASK_5_10373_wire_constant : std_logic_vector(4 downto 0);
    signal R_ONE_1_11841_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_11901_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_11999_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_10818_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_10858_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_12004_wire_constant : std_logic_vector(0 downto 0);
    signal STATES_9722 : std_logic_vector(22 downto 0);
    signal STATES_raw_9582 : std_logic_vector(22 downto 0);
    signal STATUS_REGS_9714 : std_logic_vector(127 downto 0);
    signal STATUS_REGS_raw_9574 : std_logic_vector(127 downto 0);
    signal SUB_u4_u4_11444_wire : std_logic_vector(3 downto 0);
    signal SUB_u4_u4_11472_wire : std_logic_vector(3 downto 0);
    signal SUB_u4_u4_11500_wire : std_logic_vector(3 downto 0);
    signal SUB_u4_u4_11528_wire : std_logic_vector(3 downto 0);
    signal SUB_u5_u5_10368_wire : std_logic_vector(4 downto 0);
    signal S_to_ls_11815 : std_logic_vector(0 downto 0);
    signal TBR_9759 : std_logic_vector(31 downto 0);
    signal UGT_u5_u1_11299_wire : std_logic_vector(0 downto 0);
    signal UGT_u5_u1_11304_wire : std_logic_vector(0 downto 0);
    signal UGT_u5_u1_11312_wire : std_logic_vector(0 downto 0);
    signal ULT_u5_u1_11690_wire : std_logic_vector(0 downto 0);
    signal WIM_9755 : std_logic_vector(31 downto 0);
    signal WU_START_10380 : std_logic_vector(0 downto 0);
    signal XOR_u8_u8_11592_wire : std_logic_vector(7 downto 0);
    signal XOR_u8_u8_11605_wire : std_logic_vector(7 downto 0);
    signal XOR_u8_u8_11614_wire : std_logic_vector(7 downto 0);
    signal Y_9763 : std_logic_vector(31 downto 0);
    signal all_locks_available_11127 : std_logic_vector(0 downto 0);
    signal all_send_cc_locks_available_11130 : std_logic_vector(0 downto 0);
    signal allow_non_asr_reg_read_10583 : std_logic_vector(0 downto 0);
    signal asr_access_command_12270 : std_logic_vector(43 downto 0);
    signal asr_read_cmd_10523 : std_logic_vector(5 downto 0);
    signal asr_read_locks_9771 : std_logic_vector(31 downto 0);
    signal asr_read_request_from_ccu_10505 : std_logic_vector(5 downto 0);
    signal asr_read_request_from_iu_10517 : std_logic_vector(5 downto 0);
    signal asr_write_cmd_10529 : std_logic_vector(37 downto 0);
    signal asr_write_request_from_ccu_10500 : std_logic_vector(37 downto 0);
    signal asr_write_request_from_iu_10512 : std_logic_vector(37 downto 0);
    signal asr_write_to_read_bypass_10548 : std_logic_vector(0 downto 0);
    signal bypass_cc_active_10931 : std_logic_vector(0 downto 0);
    signal bypass_cc_info_9541 : std_logic_vector(16 downto 0);
    signal bypass_cc_info_valid_11427 : std_logic_vector(0 downto 0);
    signal bypass_cc_possible_10931 : std_logic_vector(0 downto 0);
    signal bypass_info_cc_10931 : std_logic_vector(3 downto 0);
    signal bypass_info_psr_value_10921 : std_logic_vector(31 downto 0);
    signal bypass_info_rd_value_10915 : std_logic_vector(31 downto 0);
    signal bypass_possible_10879 : std_logic_vector(0 downto 0);
    signal bypass_psr_possible_10909 : std_logic_vector(0 downto 0);
    signal bypass_rd_h_possible_10897 : std_logic_vector(0 downto 0);
    signal bypass_rd_l_possible_10903 : std_logic_vector(0 downto 0);
    signal bypass_rs1_possible_10885 : std_logic_vector(0 downto 0);
    signal bypass_rs2_possible_10891 : std_logic_vector(0 downto 0);
    signal call_asr_update_expr_9539_wire : std_logic_vector(31 downto 0);
    signal call_iu_registers_3r_1w_port_register_file_expr_9532_wire : std_logic_vector(191 downto 0);
    signal cc_credit_return_9621 : std_logic_vector(0 downto 0);
    signal cc_credit_return_raw_9502 : std_logic_vector(0 downto 0);
    signal cc_write_pending_10712 : std_logic_vector(0 downto 0);
    signal ccu_allow_reg_write_10591 : std_logic_vector(0 downto 0);
    signal ccu_asr_9898 : std_logic_vector(0 downto 0);
    signal ccu_command_9594 : std_logic_vector(41 downto 0);
    signal ccu_command_next_9557 : std_logic_vector(41 downto 0);
    signal ccu_command_used_to_access_regfile_12028 : std_logic_vector(41 downto 0);
    signal ccu_command_valid_9898 : std_logic_vector(0 downto 0);
    signal ccu_cwp_10326 : std_logic_vector(4 downto 0);
    signal ccu_iu_reg_9898 : std_logic_vector(0 downto 0);
    signal ccu_psr_9898 : std_logic_vector(0 downto 0);
    signal ccu_read_asr_9898 : std_logic_vector(0 downto 0);
    signal ccu_reg_type_9898 : std_logic_vector(2 downto 0);
    signal ccu_response_11774 : std_logic_vector(31 downto 0);
    signal ccu_response_buffered_12333 : std_logic_vector(31 downto 0);
    signal ccu_rid_9898 : std_logic_vector(4 downto 0);
    signal ccu_rid_match_with_prefetch_11679 : std_logic_vector(0 downto 0);
    signal ccu_rval_9898 : std_logic_vector(31 downto 0);
    signal ccu_tbr_9898 : std_logic_vector(0 downto 0);
    signal ccu_update_psr_in_window_10343 : std_logic_vector(0 downto 0);
    signal ccu_wim_9898 : std_logic_vector(0 downto 0);
    signal ccu_write_asr_9898 : std_logic_vector(0 downto 0);
    signal ccu_write_read_bar_9898 : std_logic_vector(0 downto 0);
    signal ccu_y_9898 : std_logic_vector(0 downto 0);
    signal clear_all_locks_10645 : std_logic_vector(0 downto 0);
    signal command_to_reg_file_access_12108 : std_logic_vector(146 downto 0);
    signal copy_of_psr_read_locks_9779 : std_logic_vector(2 downto 0);
    signal counter_9602 : std_logic_vector(7 downto 0);
    signal dcache_bypass_info_9545 : std_logic_vector(92 downto 0);
    signal do_read_from_ccu_11138 : std_logic_vector(0 downto 0);
    signal do_write_gpr_from_ccu_10947 : std_logic_vector(0 downto 0);
    signal do_write_gpr_from_iu_10938 : std_logic_vector(0 downto 0);
    signal do_write_psr_from_ccu_10988 : std_logic_vector(0 downto 0);
    signal do_write_psr_from_iu_10979 : std_logic_vector(0 downto 0);
    signal do_write_tbr_from_ccu_11043 : std_logic_vector(0 downto 0);
    signal do_write_tbr_from_iu_11034 : std_logic_vector(0 downto 0);
    signal do_write_wim_from_ccu_11073 : std_logic_vector(0 downto 0);
    signal do_write_wim_from_iu_11064 : std_logic_vector(0 downto 0);
    signal do_write_y_from_ccu_11099 : std_logic_vector(0 downto 0);
    signal do_write_y_from_iu_11090 : std_logic_vector(0 downto 0);
    signal double_flag_10187 : std_logic_vector(0 downto 0);
    signal double_gpr_flag_10957 : std_logic_vector(0 downto 0);
    signal fwd_info_to_retire_9686 : std_logic_vector(95 downto 0);
    signal fwd_to_retire_valid_9686 : std_logic_vector(0 downto 0);
    signal get_ccu_command_11942 : std_logic_vector(0 downto 0);
    signal get_commands_9598 : std_logic_vector(2 downto 0);
    signal get_read_command_11930 : std_logic_vector(0 downto 0);
    signal get_write_command_11936 : std_logic_vector(0 downto 0);
    signal get_writeback_info_12285 : std_logic_vector(0 downto 0);
    signal have_cc_credit_11280 : std_logic_vector(0 downto 0);
    signal have_iu_credit_11294 : std_logic_vector(0 downto 0);
    signal have_ls_credit_11273 : std_logic_vector(0 downto 0);
    signal have_rs1_credit_11287 : std_logic_vector(0 downto 0);
    signal init_flag_9586 : std_logic_vector(0 downto 0);
    signal is_a_window_register_read_access_11315 : std_logic_vector(0 downto 0);
    signal is_restore_10179 : std_logic_vector(0 downto 0);
    signal is_save_10175 : std_logic_vector(0 downto 0);
    signal iu_allow_reg_write_10587 : std_logic_vector(0 downto 0);
    signal iu_bypass_active_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_info_9516 : std_logic_vector(82 downto 0);
    signal iu_bypass_info_psr_value_10831 : std_logic_vector(31 downto 0);
    signal iu_bypass_info_rd_value_10831 : std_logic_vector(31 downto 0);
    signal iu_bypass_info_valid_11421 : std_logic_vector(0 downto 0);
    signal iu_bypass_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_psr_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_rd_h_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_rd_l_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_rs1_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_bypass_rs2_possible_10831 : std_logic_vector(0 downto 0);
    signal iu_credit_return_9639 : std_logic_vector(0 downto 0);
    signal iu_credit_return_raw_9508 : std_logic_vector(0 downto 0);
    signal iu_cwp_10332 : std_logic_vector(4 downto 0);
    signal iu_non_asr_clear_locks_is_active_10625 : std_logic_vector(0 downto 0);
    signal iu_non_asr_read_is_active_10608 : std_logic_vector(0 downto 0);
    signal iu_non_asr_write_is_active_10630 : std_logic_vector(0 downto 0);
    signal iu_to_be_written_next_PSR_10993 : std_logic_vector(31 downto 0);
    signal iu_to_be_written_next_tbr_11047 : std_logic_vector(31 downto 0);
    signal iu_to_be_written_next_wim_11076 : std_logic_vector(31 downto 0);
    signal iu_update_psr_in_window_10363 : std_logic_vector(0 downto 0);
    signal iu_writeback_args_9511 : std_logic_vector(372 downto 0);
    signal konst_10351_wire_constant : std_logic_vector(2 downto 0);
    signal konst_10367_wire_constant : std_logic_vector(4 downto 0);
    signal konst_10370_wire_constant : std_logic_vector(4 downto 0);
    signal konst_10643_wire_constant : std_logic_vector(2 downto 0);
    signal konst_10705_wire_constant : std_logic_vector(2 downto 0);
    signal konst_10710_wire_constant : std_logic_vector(2 downto 0);
    signal konst_10717_wire_constant : std_logic_vector(2 downto 0);
    signal konst_10976_wire_constant : std_logic_vector(2 downto 0);
    signal konst_11161_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11171_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11221_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11234_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11249_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11269_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11276_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11283_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11290_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11298_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11303_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11311_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11434_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11436_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11443_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11445_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11452_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11462_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11464_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11471_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11473_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11480_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11490_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11492_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11499_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11501_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11508_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11518_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11520_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11527_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11529_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11536_wire_constant : std_logic_vector(3 downto 0);
    signal konst_11599_wire_constant : std_logic_vector(7 downto 0);
    signal konst_11603_wire_constant : std_logic_vector(7 downto 0);
    signal konst_11608_wire_constant : std_logic_vector(7 downto 0);
    signal konst_11612_wire_constant : std_logic_vector(7 downto 0);
    signal konst_11620_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11624_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11627_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11653_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11689_wire_constant : std_logic_vector(4 downto 0);
    signal konst_11739_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11745_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11750_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11757_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11763_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11770_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11778_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11782_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11787_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11791_wire_constant : std_logic_vector(31 downto 0);
    signal konst_11813_wire_constant : std_logic_vector(31 downto 0);
    signal konst_12181_wire_constant : std_logic_vector(2 downto 0);
    signal konst_12404_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9513_wire_constant : std_logic_vector(372 downto 0);
    signal konst_9518_wire_constant : std_logic_vector(82 downto 0);
    signal konst_9533_wire_constant : std_logic_vector(191 downto 0);
    signal konst_9540_wire_constant : std_logic_vector(31 downto 0);
    signal konst_9543_wire_constant : std_logic_vector(16 downto 0);
    signal konst_9556_wire_constant : std_logic_vector(58 downto 0);
    signal konst_9559_wire_constant : std_logic_vector(41 downto 0);
    signal konst_9613_wire_constant : std_logic_vector(7 downto 0);
    signal konst_9618_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9624_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9630_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9636_wire_constant : std_logic_vector(0 downto 0);
    signal konst_9648_wire_constant : std_logic_vector(127 downto 0);
    signal konst_9654_wire_constant : std_logic_vector(107 downto 0);
    signal konst_9660_wire_constant : std_logic_vector(22 downto 0);
    signal konst_9690_wire_constant : std_logic_vector(162 downto 0);
    signal konst_9866_wire_constant : std_logic_vector(7 downto 0);
    signal l_get_ccu_command_9855 : std_logic_vector(0 downto 0);
    signal l_get_read_command_9859 : std_logic_vector(0 downto 0);
    signal l_get_write_command_9863 : std_logic_vector(0 downto 0);
    signal local_circulant_9548 : std_logic_vector(390 downto 0);
    signal lock_asr_10122 : std_logic_vector(0 downto 0);
    signal lock_psr_9990 : std_logic_vector(2 downto 0);
    signal lock_rd_h_9974 : std_logic_vector(0 downto 0);
    signal lock_rd_l_9978 : std_logic_vector(0 downto 0);
    signal lock_sreg_9998 : std_logic_vector(0 downto 0);
    signal lock_tbr_10086 : std_logic_vector(0 downto 0);
    signal lock_wim_10104 : std_logic_vector(0 downto 0);
    signal lock_y_10140 : std_logic_vector(0 downto 0);
    signal ls_bypass_active_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_info_9610 : std_logic_vector(82 downto 0);
    signal ls_bypass_info_psr_value_10871 : std_logic_vector(31 downto 0);
    signal ls_bypass_info_rd_value_10871 : std_logic_vector(31 downto 0);
    signal ls_bypass_info_valid_11424 : std_logic_vector(0 downto 0);
    signal ls_bypass_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_psr_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_rd_h_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_rd_l_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_rs1_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_bypass_rs2_possible_10871 : std_logic_vector(0 downto 0);
    signal ls_credit_return_9633 : std_logic_vector(0 downto 0);
    signal ls_credit_return_raw_9499 : std_logic_vector(0 downto 0);
    signal mCREDITS_9645 : std_logic_vector(15 downto 0);
    signal mLOCKS_9657 : std_logic_vector(107 downto 0);
    signal mSTATES_9663 : std_logic_vector(22 downto 0);
    signal mSTATUS_REGS_9651 : std_logic_vector(127 downto 0);
    signal match_with_prefetch_11320 : std_logic_vector(0 downto 0);
    signal next_CCCREDITS_11483 : std_logic_vector(3 downto 0);
    signal next_CIRCULANT_12172 : std_logic_vector(274 downto 0);
    signal next_CREDITS_11548 : std_logic_vector(15 downto 0);
    signal next_IUCREDITS_11539 : std_logic_vector(3 downto 0);
    signal next_LOCKS_12154 : std_logic_vector(107 downto 0);
    signal next_PREFETCH_ASR_12077 : std_logic_vector(4 downto 0);
    signal next_PREFETCH_READ_CWP_12013 : std_logic_vector(4 downto 0);
    signal next_PREFETCH_RS1_12074 : std_logic_vector(4 downto 0);
    signal next_PSR_11019 : std_logic_vector(31 downto 0);
    signal next_RS1CREDITS_11511 : std_logic_vector(3 downto 0);
    signal next_STATES_12163 : std_logic_vector(22 downto 0);
    signal next_STATUS_REGS_12137 : std_logic_vector(127 downto 0);
    signal next_TBR_11056 : std_logic_vector(31 downto 0);
    signal next_WIM_11085 : std_logic_vector(31 downto 0);
    signal next_Y_11108 : std_logic_vector(31 downto 0);
    signal next_asr_read_locks_10568 : std_logic_vector(31 downto 0);
    signal next_ccu_asr_12035 : std_logic_vector(0 downto 0);
    signal next_ccu_command_12202 : std_logic_vector(41 downto 0);
    signal next_ccu_iu_reg_12035 : std_logic_vector(0 downto 0);
    signal next_ccu_rid_12035 : std_logic_vector(4 downto 0);
    signal next_ccu_valid_12035 : std_logic_vector(0 downto 0);
    signal next_ccu_write_12035 : std_logic_vector(0 downto 0);
    signal next_copy_of_psr_read_locks_11968 : std_logic_vector(2 downto 0);
    signal next_counter_9615 : std_logic_vector(7 downto 0);
    signal next_cwp_11179 : std_logic_vector(4 downto 0);
    signal next_get_commands_12350 : std_logic_vector(2 downto 0);
    signal next_lSCREDITS_11455 : std_logic_vector(3 downto 0);
    signal next_local_circulant_12401 : std_logic_vector(390 downto 0);
    signal next_local_circulant_12401_9551_buffered : std_logic_vector(390 downto 0);
    signal next_mCREDITS_12365 : std_logic_vector(15 downto 0);
    signal next_mLOCKS_12373 : std_logic_vector(107 downto 0);
    signal next_mSTATES_12377 : std_logic_vector(22 downto 0);
    signal next_mSTATUS_REGS_12369 : std_logic_vector(127 downto 0);
    signal next_psr_read_locks_11965 : std_logic_vector(2 downto 0);
    signal next_read_command_12196 : std_logic_vector(58 downto 0);
    signal next_read_cwp_12222 : std_logic_vector(4 downto 0);
    signal next_read_rs1_response_sent_12361 : std_logic_vector(0 downto 0);
    signal next_reg_read_locks_11956 : std_logic_vector(63 downto 0);
    signal next_tbr_read_lock_11977 : std_logic_vector(0 downto 0);
    signal next_wb_state_12298 : std_logic_vector(1 downto 0);
    signal next_wb_state_raw_9686 : std_logic_vector(1 downto 0);
    signal next_wim_read_lock_11986 : std_logic_vector(0 downto 0);
    signal next_window_modify_lock_12010 : std_logic_vector(0 downto 0);
    signal next_y_read_lock_11995 : std_logic_vector(2 downto 0);
    signal ok_to_prefetch_11329 : std_logic_vector(0 downto 0);
    signal post_clear_asr_read_locks_10399 : std_logic_vector(31 downto 0);
    signal post_clear_copy_of_psr_read_locks_10700 : std_logic_vector(2 downto 0);
    signal post_clear_psr_read_locks_10690 : std_logic_vector(2 downto 0);
    signal post_clear_reg_read_locks_10674 : std_logic_vector(63 downto 0);
    signal post_clear_tbr_read_lock_10731 : std_logic_vector(0 downto 0);
    signal post_clear_wim_read_lock_10747 : std_logic_vector(0 downto 0);
    signal post_clear_y_read_lock_10766 : std_logic_vector(2 downto 0);
    signal post_save_restore_cwp_10375 : std_logic_vector(4 downto 0);
    signal post_test_and_set_asr_read_locks_10399 : std_logic_vector(31 downto 0);
    signal post_test_and_set_psr_read_locks_10696 : std_logic_vector(2 downto 0);
    signal post_test_and_set_reg_read_locks_10674 : std_logic_vector(63 downto 0);
    signal post_test_and_set_tbr_read_lock_10737 : std_logic_vector(0 downto 0);
    signal post_test_and_set_wim_read_lock_10753 : std_logic_vector(0 downto 0);
    signal post_test_and_set_y_read_lock_10772 : std_logic_vector(2 downto 0);
    signal psr_locks_available_to_start_asr_access_10405 : std_logic_vector(0 downto 0);
    signal psr_modified_12185 : std_logic_vector(0 downto 0);
    signal psr_read_locks_9775 : std_logic_vector(2 downto 0);
    signal psr_response_value_11864 : std_logic_vector(31 downto 0);
    signal rccu_9903 : std_logic_vector(0 downto 0);
    signal rd_h_has_one_pending_write_10674 : std_logic_vector(0 downto 0);
    signal rd_h_read_lock_available_10674 : std_logic_vector(0 downto 0);
    signal rd_h_response_value_11833 : std_logic_vector(31 downto 0);
    signal rd_l_has_one_pending_write_10674 : std_logic_vector(0 downto 0);
    signal rd_l_read_lock_available_10674 : std_logic_vector(0 downto 0);
    signal rd_l_response_value_11839 : std_logic_vector(31 downto 0);
    signal read_asr_10113 : std_logic_vector(0 downto 0);
    signal read_asr_id_10006 : std_logic_vector(4 downto 0);
    signal read_asr_id_next_12206 : std_logic_vector(4 downto 0);
    signal read_cc_response_11910 : std_logic_vector(16 downto 0);
    signal read_command_9590 : std_logic_vector(58 downto 0);
    signal read_command_for_access_valid_12049 : std_logic_vector(0 downto 0);
    signal read_command_next_9552 : std_logic_vector(58 downto 0);
    signal read_command_used_to_access_regfile_12022 : std_logic_vector(58 downto 0);
    signal read_command_valid_10022 : std_logic_vector(0 downto 0);
    signal read_cwp_11185 : std_logic_vector(4 downto 0);
    signal read_gpr_rs1_id_11144 : std_logic_vector(4 downto 0);
    signal read_lock_all_regs_9946 : std_logic_vector(0 downto 0);
    signal read_psr_9986 : std_logic_vector(2 downto 0);
    signal read_rd_9982 : std_logic_vector(4 downto 0);
    signal read_rd_h_9966 : std_logic_vector(0 downto 0);
    signal read_rd_h_value_11245 : std_logic_vector(31 downto 0);
    signal read_rd_l_9970 : std_logic_vector(0 downto 0);
    signal read_rd_l_value_11257 : std_logic_vector(31 downto 0);
    signal read_rd_next_12218 : std_logic_vector(4 downto 0);
    signal read_response_to_exec_11883 : std_logic_vector(141 downto 0);
    signal read_response_to_ls_11858 : std_logic_vector(141 downto 0);
    signal read_restore_10014 : std_logic_vector(0 downto 0);
    signal read_rs1_9950 : std_logic_vector(0 downto 0);
    signal read_rs1_response_11913 : std_logic_vector(31 downto 0);
    signal read_rs1_response_sent_9606 : std_logic_vector(0 downto 0);
    signal read_rs1_value_11231 : std_logic_vector(31 downto 0);
    signal read_rs2_9958 : std_logic_vector(0 downto 0);
    signal read_rs2_value_11241 : std_logic_vector(31 downto 0);
    signal read_save_10010 : std_logic_vector(0 downto 0);
    signal read_send_cc_to_sc_9938 : std_logic_vector(0 downto 0);
    signal read_send_rs1_to_sc_9942 : std_logic_vector(0 downto 0);
    signal read_send_to_ls_9934 : std_logic_vector(0 downto 0);
    signal read_skip_iu_10018 : std_logic_vector(0 downto 0);
    signal read_slot_id_9922 : std_logic_vector(5 downto 0);
    signal read_sreg_9994 : std_logic_vector(0 downto 0);
    signal read_sreg_value_11795 : std_logic_vector(31 downto 0);
    signal read_stream_head_9930 : std_logic_vector(0 downto 0);
    signal read_stream_id_9918 : std_logic_vector(1 downto 0);
    signal read_tbr_10077 : std_logic_vector(0 downto 0);
    signal read_thread_head_9926 : std_logic_vector(0 downto 0);
    signal read_thread_id_9914 : std_logic_vector(3 downto 0);
    signal read_wim_10095 : std_logic_vector(0 downto 0);
    signal read_y_10131 : std_logic_vector(0 downto 0);
    signal reg_read_locks_9767 : std_logic_vector(63 downto 0);
    signal resolved_asr_read_id_10535 : std_logic_vector(4 downto 0);
    signal resolved_asr_write_id_10541 : std_logic_vector(4 downto 0);
    signal resolved_cc_value_11899 : std_logic_vector(3 downto 0);
    signal response_to_iretire_12282 : std_logic_vector(95 downto 0);
    signal ret_PSR_12175 : std_logic_vector(31 downto 0);
    signal ret_TBR_12178 : std_logic_vector(31 downto 0);
    signal rfile_write_cmd_9686 : std_logic_vector(162 downto 0);
    signal rfile_write_valid_9686 : std_logic_vector(0 downto 0);
    signal rread_10037 : std_logic_vector(0 downto 0);
    signal rread_asr_id_next_12049 : std_logic_vector(4 downto 0);
    signal rread_asr_id_next_corrected_12071 : std_logic_vector(4 downto 0);
    signal rread_rd_next_12049 : std_logic_vector(4 downto 0);
    signal rrs1_next_12049 : std_logic_vector(4 downto 0);
    signal rrs1_next_corrected_12060 : std_logic_vector(4 downto 0);
    signal rrs2_next_12049 : std_logic_vector(4 downto 0);
    signal rs1_9954 : std_logic_vector(4 downto 0);
    signal rs1_credit_return_9627 : std_logic_vector(0 downto 0);
    signal rs1_credit_return_raw_9505 : std_logic_vector(0 downto 0);
    signal rs1_has_one_pending_write_10674 : std_logic_vector(0 downto 0);
    signal rs1_next_12210 : std_logic_vector(4 downto 0);
    signal rs1_read_lock_available_10674 : std_logic_vector(0 downto 0);
    signal rs1_response_value_11821 : std_logic_vector(31 downto 0);
    signal rs2_9962 : std_logic_vector(4 downto 0);
    signal rs2_has_one_pending_write_10674 : std_logic_vector(0 downto 0);
    signal rs2_next_12214 : std_logic_vector(4 downto 0);
    signal rs2_read_lock_available_10674 : std_logic_vector(0 downto 0);
    signal rs2_response_value_11827 : std_logic_vector(31 downto 0);
    signal rwrite_10236 : std_logic_vector(0 downto 0);
    signal sacrifical_new_psr_locks_10405 : std_logic_vector(2 downto 0);
    signal sampled_core_id_9492 : std_logic_vector(7 downto 0);
    signal sampled_thread_id_9495 : std_logic_vector(7 downto 0);
    signal sel_rs1_l_11223 : std_logic_vector(0 downto 0);
    signal send_asr_read_response_11266 : std_logic_vector(0 downto 0);
    signal send_asr_write_response_11563 : std_logic_vector(0 downto 0);
    signal send_ccu_response_11712 : std_logic_vector(0 downto 0);
    signal send_ccu_response_12609_delayed_1_0_12336 : std_logic_vector(0 downto 0);
    signal send_read_cc_response_11413 : std_logic_vector(0 downto 0);
    signal send_read_response_base_11418 : std_logic_vector(0 downto 0);
    signal send_read_response_to_exec_11373 : std_logic_vector(0 downto 0);
    signal send_read_response_to_exec_or_ls_11364 : std_logic_vector(0 downto 0);
    signal send_read_response_to_ls_11378 : std_logic_vector(0 downto 0);
    signal send_read_rs1_response_11397 : std_logic_vector(0 downto 0);
    signal send_to_iretire_12282 : std_logic_vector(0 downto 0);
    signal send_write_response_11568 : std_logic_vector(0 downto 0);
    signal skip_assert_10027 : std_logic_vector(0 downto 0);
    signal slice_10317_wire : std_logic_vector(4 downto 0);
    signal slice_10323_wire : std_logic_vector(4 downto 0);
    signal slice_10329_wire : std_logic_vector(4 downto 0);
    signal slice_10996_wire : std_logic_vector(26 downto 0);
    signal slice_11227_wire : std_logic_vector(31 downto 0);
    signal slice_11229_wire : std_logic_vector(31 downto 0);
    signal slice_11237_wire : std_logic_vector(31 downto 0);
    signal slice_11239_wire : std_logic_vector(31 downto 0);
    signal slice_11253_wire : std_logic_vector(31 downto 0);
    signal slice_11255_wire : std_logic_vector(31 downto 0);
    signal slice_11632_wire : std_logic_vector(3 downto 0);
    signal slice_11634_wire : std_logic_vector(3 downto 0);
    signal slice_11897_wire : std_logic_vector(3 downto 0);
    signal slice_9701_wire : std_logic_vector(7 downto 0);
    signal speculative_asr_locks_available_10399 : std_logic_vector(0 downto 0);
    signal speculative_lock_locks_available_for_bypass_10791 : std_logic_vector(0 downto 0);
    signal speculative_psr_lock_locks_available_for_bypass_10707 : std_logic_vector(0 downto 0);
    signal speculative_psr_locks_available_10696 : std_logic_vector(0 downto 0);
    signal speculative_psr_locks_available_for_sending_cc_10719 : std_logic_vector(0 downto 0);
    signal speculative_reg_lock_locks_available_for_bypass_10674 : std_logic_vector(0 downto 0);
    signal speculative_reg_locks_available_10674 : std_logic_vector(0 downto 0);
    signal speculative_tbr_read_lock_available_10737 : std_logic_vector(0 downto 0);
    signal speculative_wim_read_lock_available_10753 : std_logic_vector(0 downto 0);
    signal speculative_y_read_lock_available_10772 : std_logic_vector(0 downto 0);
    signal sreg_type_10002 : std_logic_vector(2 downto 0);
    signal start_asr_access_10435 : std_logic_vector(0 downto 0);
    signal tbr_modified_12190 : std_logic_vector(0 downto 0);
    signal tbr_read_lock_9787 : std_logic_vector(0 downto 0);
    signal type_cast_11676_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_12267_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_12354_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_12357_wire_constant : std_logic_vector(0 downto 0);
    signal type_cast_12388_wire_constant : std_logic_vector(0 downto 0);
    signal update_asr_locks_due_to_read_10472 : std_logic_vector(0 downto 0);
    signal update_asr_locks_due_to_write_10480 : std_logic_vector(0 downto 0);
    signal update_asr_read_locks_10559 : std_logic_vector(0 downto 0);
    signal updated_ASR_READ_VAL_10554 : std_logic_vector(31 downto 0);
    signal updated_READ_RD_PAIR_VALUE_11218 : std_logic_vector(63 downto 0);
    signal updated_RS1_PAIR_VALUE_11196 : std_logic_vector(63 downto 0);
    signal updated_RS2_PAIR_VALUE_11207 : std_logic_vector(63 downto 0);
    signal wb_state_9566 : std_logic_vector(1 downto 0);
    signal wim_read_lock_9783 : std_logic_vector(0 downto 0);
    signal window_modify_lock_9795 : std_logic_vector(0 downto 0);
    signal wr_psr_value_10207 : std_logic_vector(31 downto 0);
    signal wr_rd_val_high_10195 : std_logic_vector(31 downto 0);
    signal wr_rd_val_high_signature_11575 : std_logic_vector(7 downto 0);
    signal wr_rd_val_low_10199 : std_logic_vector(31 downto 0);
    signal wr_rd_val_low_signature_11578 : std_logic_vector(7 downto 0);
    signal write_10183 : std_logic_vector(0 downto 0);
    signal write_SIGNATURE_11660 : std_logic_vector(31 downto 0);
    signal write_asr_10284 : std_logic_vector(0 downto 0);
    signal write_asr_id_12254 : std_logic_vector(4 downto 0);
    signal write_command_9692 : std_logic_vector(162 downto 0);
    signal write_command_valid_10231 : std_logic_vector(0 downto 0);
    signal write_cwp_12226 : std_logic_vector(4 downto 0);
    signal write_gpr_even_12230 : std_logic_vector(0 downto 0);
    signal write_gpr_flag_10952 : std_logic_vector(0 downto 0);
    signal write_gpr_odd_12234 : std_logic_vector(0 downto 0);
    signal write_gpr_rd_id_12238 : std_logic_vector(4 downto 0);
    signal write_gpr_signature_11595 : std_logic_vector(7 downto 0);
    signal write_gpr_value_even_12242 : std_logic_vector(31 downto 0);
    signal write_gpr_value_h_10966 : std_logic_vector(31 downto 0);
    signal write_gpr_value_l_10972 : std_logic_vector(31 downto 0);
    signal write_gpr_value_odd_12246 : std_logic_vector(31 downto 0);
    signal write_psr_10203 : std_logic_vector(2 downto 0);
    signal write_rd_10191 : std_logic_vector(4 downto 0);
    signal write_reg_signature_11616 : std_logic_vector(7 downto 0);
    signal write_registers_10227 : std_logic_vector(0 downto 0);
    signal write_response_11733 : std_logic_vector(43 downto 0);
    signal write_slot_id_10171 : std_logic_vector(5 downto 0);
    signal write_sreg_10211 : std_logic_vector(0 downto 0);
    signal write_sreg_type_10215 : std_logic_vector(2 downto 0);
    signal write_sreg_value_12258 : std_logic_vector(31 downto 0);
    signal write_stream_id_10167 : std_logic_vector(1 downto 0);
    signal write_tbr_10266 : std_logic_vector(0 downto 0);
    signal write_tbr_signature_11584 : std_logic_vector(7 downto 0);
    signal write_thread_id_10163 : std_logic_vector(3 downto 0);
    signal write_wim_10275 : std_logic_vector(0 downto 0);
    signal write_wim_signature_11581 : std_logic_vector(7 downto 0);
    signal write_y_10293 : std_logic_vector(0 downto 0);
    signal write_y_signature_11587 : std_logic_vector(7 downto 0);
    signal wu_save_restore_PSR_10999 : std_logic_vector(31 downto 0);
    signal wwrite_asr_id_10223 : std_logic_vector(4 downto 0);
    signal wwrite_cwp_11182 : std_logic_vector(4 downto 0);
    signal wwrite_gpr_even_11166 : std_logic_vector(0 downto 0);
    signal wwrite_gpr_odd_11175 : std_logic_vector(0 downto 0);
    signal wwrite_gpr_rd_id_10963 : std_logic_vector(4 downto 0);
    signal wwrite_gpr_value_even_11150 : std_logic_vector(31 downto 0);
    signal wwrite_gpr_value_odd_11156 : std_logic_vector(31 downto 0);
    signal wwrite_sreg_value_10219 : std_logic_vector(31 downto 0);
    signal y_read_lock_9791 : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    CONCAT_u1_u2_11646_wire_constant <= "00";
    CONCAT_u1_u2_11868_wire_constant <= "01";
    INIT_CREDITS_9451 <= "0010001000100010";
    LOCAL_CIRCULANT_INIT_VALUE_9489 <= "0000100010001000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    REGISTER_FILE_READ_STALL_10579 <= "0";
    R_ACCESS_ASR_10110_wire_constant <= "101";
    R_ACCESS_ASR_10119_wire_constant <= "101";
    R_ACCESS_ASR_10281_wire_constant <= "101";
    R_ACCESS_TBR_10074_wire_constant <= "010";
    R_ACCESS_TBR_10083_wire_constant <= "010";
    R_ACCESS_TBR_10263_wire_constant <= "010";
    R_ACCESS_WIM_10092_wire_constant <= "011";
    R_ACCESS_WIM_10101_wire_constant <= "011";
    R_ACCESS_WIM_10272_wire_constant <= "011";
    R_ACCESS_Y_10128_wire_constant <= "100";
    R_ACCESS_Y_10137_wire_constant <= "100";
    R_ACCESS_Y_10290_wire_constant <= "100";
    R_NWINDOWS_MOD_MASK_5_10318_wire_constant <= "00111";
    R_NWINDOWS_MOD_MASK_5_10324_wire_constant <= "00111";
    R_NWINDOWS_MOD_MASK_5_10330_wire_constant <= "00111";
    R_NWINDOWS_MOD_MASK_5_10373_wire_constant <= "00111";
    R_ONE_1_11841_wire_constant <= "1";
    R_ONE_1_11901_wire_constant <= "1";
    R_ONE_1_11999_wire_constant <= "1";
    R_ZERO_1_10818_wire_constant <= "0";
    R_ZERO_1_10858_wire_constant <= "0";
    R_ZERO_1_12004_wire_constant <= "0";
    allow_non_asr_reg_read_10583 <= "1";
    ccu_allow_reg_write_10591 <= "1";
    iu_allow_reg_write_10587 <= "1";
    konst_10351_wire_constant <= "000";
    konst_10367_wire_constant <= "00001";
    konst_10370_wire_constant <= "00001";
    konst_10643_wire_constant <= "000";
    konst_10705_wire_constant <= "000";
    konst_10710_wire_constant <= "001";
    konst_10717_wire_constant <= "000";
    konst_10976_wire_constant <= "000";
    konst_11161_wire_constant <= "00000";
    konst_11171_wire_constant <= "00000";
    konst_11221_wire_constant <= "00000";
    konst_11234_wire_constant <= "00000";
    konst_11249_wire_constant <= "00000";
    konst_11269_wire_constant <= "0000";
    konst_11276_wire_constant <= "0000";
    konst_11283_wire_constant <= "0000";
    konst_11290_wire_constant <= "0000";
    konst_11298_wire_constant <= "00111";
    konst_11303_wire_constant <= "00111";
    konst_11311_wire_constant <= "00111";
    konst_11434_wire_constant <= "0001";
    konst_11436_wire_constant <= "0000";
    konst_11443_wire_constant <= "0001";
    konst_11445_wire_constant <= "0000";
    konst_11452_wire_constant <= "0000";
    konst_11462_wire_constant <= "0001";
    konst_11464_wire_constant <= "0000";
    konst_11471_wire_constant <= "0001";
    konst_11473_wire_constant <= "0000";
    konst_11480_wire_constant <= "0000";
    konst_11490_wire_constant <= "0001";
    konst_11492_wire_constant <= "0000";
    konst_11499_wire_constant <= "0001";
    konst_11501_wire_constant <= "0000";
    konst_11508_wire_constant <= "0000";
    konst_11518_wire_constant <= "0001";
    konst_11520_wire_constant <= "0000";
    konst_11527_wire_constant <= "0001";
    konst_11529_wire_constant <= "0000";
    konst_11536_wire_constant <= "0000";
    konst_11599_wire_constant <= "00000000";
    konst_11603_wire_constant <= "00000000";
    konst_11608_wire_constant <= "00000000";
    konst_11612_wire_constant <= "00000000";
    konst_11620_wire_constant <= "00000000000000000000000000000111";
    konst_11624_wire_constant <= "00000000000000000000000000000110";
    konst_11627_wire_constant <= "00000000000000000000000000000101";
    konst_11653_wire_constant <= "00000";
    konst_11689_wire_constant <= "01000";
    konst_11739_wire_constant <= "00000000000000000000000000000000";
    konst_11745_wire_constant <= "00000000000000000000000000000000";
    konst_11750_wire_constant <= "00000000000000000000000000000000";
    konst_11757_wire_constant <= "00000000000000000000000000000000";
    konst_11763_wire_constant <= "00000000000000000000000000000000";
    konst_11770_wire_constant <= "00000000000000000000000000000000";
    konst_11778_wire_constant <= "00000000000000000000000000000000";
    konst_11782_wire_constant <= "00000000000000000000000000000000";
    konst_11787_wire_constant <= "00000000000000000000000000000000";
    konst_11791_wire_constant <= "00000000000000000000000000000000";
    konst_11813_wire_constant <= "00000000000000000000000000000111";
    konst_12181_wire_constant <= "000";
    konst_12404_wire_constant <= "1";
    konst_9513_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9518_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9533_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9540_wire_constant <= "00000000000000000000000000000000";
    konst_9543_wire_constant <= "00000000000000000";
    konst_9556_wire_constant <= "00000000000000000000000000000000000000000000000000000000000";
    konst_9559_wire_constant <= "000000000000000000000000000000000000000000";
    konst_9613_wire_constant <= "00000001";
    konst_9618_wire_constant <= "0";
    konst_9624_wire_constant <= "0";
    konst_9630_wire_constant <= "0";
    konst_9636_wire_constant <= "0";
    konst_9648_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9654_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9660_wire_constant <= "00000000000000000000000";
    konst_9690_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_9866_wire_constant <= "00000001";
    type_cast_11676_wire_constant <= "1";
    type_cast_12267_wire_constant <= "1";
    type_cast_12354_wire_constant <= "0";
    type_cast_12357_wire_constant <= "1";
    type_cast_12388_wire_constant <= "0";
    phi_stmt_9511: Block -- phi operator 
      signal idata: std_logic_vector(745 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_9513_wire_constant & RPIPE_noblock_iunit_writeback_in_args_pipe_9515_wire;
      req <= phi_stmt_9511_req_0 & phi_stmt_9511_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9511",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 373) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9511_ack_0,
          idata => idata,
          odata => iu_writeback_args_9511,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9511
    phi_stmt_9516: Block -- phi operator 
      signal idata: std_logic_vector(165 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_9518_wire_constant & RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_wire;
      req <= phi_stmt_9516_req_0 & phi_stmt_9516_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9516",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 83) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9516_ack_0,
          idata => idata,
          odata => iu_bypass_info_9516,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9516
    phi_stmt_9520: Block -- phi operator 
      signal idata: std_logic_vector(383 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= call_iu_registers_3r_1w_port_register_file_expr_9532_wire & konst_9533_wire_constant;
      req <= phi_stmt_9520_req_0 & phi_stmt_9520_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9520",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 192) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9520_ack_0,
          idata => idata,
          odata => IU_REG_READ_VALUES_9520,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9520
    phi_stmt_9534: Block -- phi operator 
      signal idata: std_logic_vector(63 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= call_asr_update_expr_9539_wire & konst_9540_wire_constant;
      req <= phi_stmt_9534_req_0 & phi_stmt_9534_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9534",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 32) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9534_ack_0,
          idata => idata,
          odata => ASR_READ_VALUE_9534,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9534
    phi_stmt_9541: Block -- phi operator 
      signal idata: std_logic_vector(33 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_9543_wire_constant & RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_wire;
      req <= phi_stmt_9541_req_0 & phi_stmt_9541_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9541",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 17) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9541_ack_0,
          idata => idata,
          odata => bypass_cc_info_9541,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9541
    phi_stmt_9548: Block -- phi operator 
      signal idata: std_logic_vector(781 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= LOCAL_CIRCULANT_INIT_VALUE_9489 & next_local_circulant_12401_9551_buffered;
      req <= phi_stmt_9548_req_0 & phi_stmt_9548_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9548",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 391) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9548_ack_0,
          idata => idata,
          odata => local_circulant_9548,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9548
    phi_stmt_9552: Block -- phi operator 
      signal idata: std_logic_vector(117 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_wire & konst_9556_wire_constant;
      req <= phi_stmt_9552_req_0 & phi_stmt_9552_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9552",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 59) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9552_ack_0,
          idata => idata,
          odata => read_command_next_9552,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9552
    phi_stmt_9557: Block -- phi operator 
      signal idata: std_logic_vector(83 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= konst_9559_wire_constant & RPIPE_ccu_to_teu_iunit_register_access_command_9561_wire;
      req <= phi_stmt_9557_req_0 & phi_stmt_9557_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_9557",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 42) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_9557_ack_0,
          idata => idata,
          odata => ccu_command_next_9557,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_9557
    -- flow-through select operator MUX_10372_inst
    MUX_10372_wire <= SUB_u5_u5_10368_wire when (is_save_10175(0) /=  '0') else ADD_u5_u5_10371_wire;
    -- flow-through select operator MUX_10463_inst
    MUX_10463_wire <= IU_ASR_READ_START_10452 when (read_asr_10113(0) /=  '0') else NOT_u1_u1_10462_wire;
    -- flow-through select operator MUX_10522_inst
    asr_read_cmd_10523 <= asr_read_request_from_ccu_10505 when (ccu_command_valid_9898(0) /=  '0') else asr_read_request_from_iu_10517;
    -- flow-through select operator MUX_10528_inst
    asr_write_cmd_10529 <= asr_write_request_from_ccu_10500 when (ccu_command_valid_9898(0) /=  '0') else asr_write_request_from_iu_10512;
    -- flow-through select operator MUX_10534_inst
    resolved_asr_read_id_10535 <= ccu_rid_9898 when (ccu_command_valid_9898(0) /=  '0') else read_asr_id_10006;
    -- flow-through select operator MUX_10540_inst
    resolved_asr_write_id_10541 <= ccu_rid_9898 when (ccu_command_valid_9898(0) /=  '0') else wwrite_asr_id_10223;
    -- flow-through select operator MUX_10553_inst
    updated_ASR_READ_VAL_10554 <= wwrite_sreg_value_10219 when (asr_write_to_read_bypass_10548(0) /=  '0') else ASR_READ_VAL_9828;
    -- flow-through select operator MUX_10566_inst
    MUX_10566_wire <= post_clear_asr_read_locks_10399 when (update_asr_locks_due_to_write_10480(0) /=  '0') else asr_read_locks_9771;
    -- flow-through select operator MUX_10567_inst
    next_asr_read_locks_10568 <= post_test_and_set_asr_read_locks_10399 when (update_asr_locks_due_to_read_10472(0) /=  '0') else MUX_10566_wire;
    -- flow-through select operator MUX_10884_inst
    bypass_rs1_possible_10885 <= iu_bypass_rs1_possible_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_rs1_possible_10871;
    -- flow-through select operator MUX_10890_inst
    bypass_rs2_possible_10891 <= iu_bypass_rs2_possible_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_rs2_possible_10871;
    -- flow-through select operator MUX_10896_inst
    bypass_rd_h_possible_10897 <= iu_bypass_rd_h_possible_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_rd_h_possible_10871;
    -- flow-through select operator MUX_10902_inst
    bypass_rd_l_possible_10903 <= iu_bypass_rd_l_possible_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_rd_l_possible_10871;
    -- flow-through select operator MUX_10908_inst
    bypass_psr_possible_10909 <= iu_bypass_psr_possible_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_psr_possible_10871;
    -- flow-through select operator MUX_10914_inst
    bypass_info_rd_value_10915 <= iu_bypass_info_rd_value_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_info_rd_value_10871;
    -- flow-through select operator MUX_10920_inst
    bypass_info_psr_value_10921 <= iu_bypass_info_psr_value_10831 when (iu_bypass_possible_10831(0) /=  '0') else ls_bypass_info_psr_value_10871;
    -- flow-through select operator MUX_10962_inst
    wwrite_gpr_rd_id_10963 <= write_rd_10191 when (do_write_gpr_from_iu_10938(0) /=  '0') else ccu_rid_9898;
    -- flow-through select operator MUX_10971_inst
    write_gpr_value_l_10972 <= wr_rd_val_low_10199 when (do_write_gpr_from_iu_10938(0) /=  '0') else ccu_rval_9898;
    -- flow-through select operator MUX_11008_inst
    MUX_11008_wire <= wu_save_restore_PSR_10999 when (OR_u1_u1_11005_wire(0) /=  '0') else iu_to_be_written_next_PSR_10993;
    -- flow-through select operator MUX_11010_inst
    MUX_11010_wire <= MUX_11008_wire when (IU_WU_START_10389(0) /=  '0') else ccu_rval_9898;
    -- flow-through select operator MUX_11016_inst
    MUX_11016_wire <= iu_to_be_written_next_PSR_10993 when (do_write_psr_from_iu_10979(0) /=  '0') else PSR_9751;
    -- flow-through select operator MUX_11017_inst
    MUX_11017_wire <= ccu_rval_9898 when (do_write_psr_from_ccu_10988(0) /=  '0') else MUX_11016_wire;
    -- flow-through select operator MUX_11018_inst
    next_PSR_11019 <= MUX_11010_wire when (WU_START_10380(0) /=  '0') else MUX_11017_wire;
    -- flow-through select operator MUX_11054_inst
    MUX_11054_wire <= iu_to_be_written_next_tbr_11047 when (do_write_tbr_from_iu_11034(0) /=  '0') else TBR_9759;
    -- flow-through select operator MUX_11055_inst
    next_TBR_11056 <= ccu_rval_9898 when (do_write_tbr_from_ccu_11043(0) /=  '0') else MUX_11054_wire;
    -- flow-through select operator MUX_11083_inst
    MUX_11083_wire <= iu_to_be_written_next_wim_11076 when (do_write_wim_from_iu_11064(0) /=  '0') else WIM_9755;
    -- flow-through select operator MUX_11084_inst
    next_WIM_11085 <= ccu_rval_9898 when (do_write_wim_from_ccu_11073(0) /=  '0') else MUX_11083_wire;
    -- flow-through select operator MUX_11106_inst
    MUX_11106_wire <= wwrite_sreg_value_10219 when (do_write_y_from_iu_11090(0) /=  '0') else Y_9763;
    -- flow-through select operator MUX_11107_inst
    next_Y_11108 <= ccu_rval_9898 when (do_write_y_from_ccu_11099(0) /=  '0') else MUX_11106_wire;
    -- flow-through select operator MUX_11143_inst
    read_gpr_rs1_id_11144 <= ccu_rid_9898 when (do_read_from_ccu_11138(0) /=  '0') else rs1_9954;
    -- flow-through select operator MUX_11149_inst
    wwrite_gpr_value_even_11150 <= write_gpr_value_h_10966 when (double_gpr_flag_10957(0) /=  '0') else write_gpr_value_l_10972;
    -- flow-through select operator MUX_11155_inst
    wwrite_gpr_value_odd_11156 <= write_gpr_value_l_10972 when (double_gpr_flag_10957(0) /=  '0') else write_gpr_value_l_10972;
    -- flow-through select operator MUX_11230_inst
    read_rs1_value_11231 <= slice_11227_wire when (sel_rs1_l_11223(0) /=  '0') else slice_11229_wire;
    -- flow-through select operator MUX_11240_inst
    read_rs2_value_11241 <= slice_11237_wire when (BITSEL_u5_u1_11235_wire(0) /=  '0') else slice_11239_wire;
    -- flow-through select operator MUX_11256_inst
    read_rd_l_value_11257 <= slice_11253_wire when (OR_u1_u1_11251_wire(0) /=  '0') else slice_11255_wire;
    -- flow-through select operator MUX_11437_inst
    MUX_11437_wire <= ADD_u4_u4_11435_wire when (AND_u1_u1_11432_wire(0) /=  '0') else konst_11436_wire_constant;
    -- flow-through select operator MUX_11446_inst
    MUX_11446_wire <= SUB_u4_u4_11444_wire when (AND_u1_u1_11441_wire(0) /=  '0') else konst_11445_wire_constant;
    -- flow-through select operator MUX_11453_inst
    MUX_11453_wire <= LSCREDITS_9726 when (EQ_u1_u1_11450_wire(0) /=  '0') else konst_11452_wire_constant;
    -- flow-through select operator MUX_11465_inst
    MUX_11465_wire <= ADD_u4_u4_11463_wire when (AND_u1_u1_11460_wire(0) /=  '0') else konst_11464_wire_constant;
    -- flow-through select operator MUX_11474_inst
    MUX_11474_wire <= SUB_u4_u4_11472_wire when (AND_u1_u1_11469_wire(0) /=  '0') else konst_11473_wire_constant;
    -- flow-through select operator MUX_11481_inst
    MUX_11481_wire <= CCCREDITS_9730 when (EQ_u1_u1_11478_wire(0) /=  '0') else konst_11480_wire_constant;
    -- flow-through select operator MUX_11493_inst
    MUX_11493_wire <= ADD_u4_u4_11491_wire when (AND_u1_u1_11488_wire(0) /=  '0') else konst_11492_wire_constant;
    -- flow-through select operator MUX_11502_inst
    MUX_11502_wire <= SUB_u4_u4_11500_wire when (AND_u1_u1_11497_wire(0) /=  '0') else konst_11501_wire_constant;
    -- flow-through select operator MUX_11509_inst
    MUX_11509_wire <= RS1CREDITS_9734 when (EQ_u1_u1_11506_wire(0) /=  '0') else konst_11508_wire_constant;
    -- flow-through select operator MUX_11521_inst
    MUX_11521_wire <= ADD_u4_u4_11519_wire when (AND_u1_u1_11516_wire(0) /=  '0') else konst_11520_wire_constant;
    -- flow-through select operator MUX_11530_inst
    MUX_11530_wire <= SUB_u4_u4_11528_wire when (AND_u1_u1_11525_wire(0) /=  '0') else konst_11529_wire_constant;
    -- flow-through select operator MUX_11537_inst
    MUX_11537_wire <= IUCREDITS_9738 when (EQ_u1_u1_11534_wire(0) /=  '0') else konst_11536_wire_constant;
    -- flow-through select operator MUX_11594_inst
    write_gpr_signature_11595 <= XOR_u8_u8_11592_wire when (double_flag_10187(0) /=  '0') else wr_rd_val_low_signature_11578;
    -- flow-through select operator MUX_11600_inst
    MUX_11600_wire <= write_gpr_signature_11595 when (do_write_gpr_from_iu_10938(0) /=  '0') else konst_11599_wire_constant;
    -- flow-through select operator MUX_11604_inst
    MUX_11604_wire <= write_wim_signature_11581 when (do_write_wim_from_iu_11064(0) /=  '0') else konst_11603_wire_constant;
    -- flow-through select operator MUX_11609_inst
    MUX_11609_wire <= write_tbr_signature_11584 when (do_write_tbr_from_iu_11034(0) /=  '0') else konst_11608_wire_constant;
    -- flow-through select operator MUX_11613_inst
    MUX_11613_wire <= write_y_signature_11587 when (do_write_y_from_iu_11090(0) /=  '0') else konst_11612_wire_constant;
    -- flow-through select operator MUX_11654_inst
    MUX_11654_wire <= write_rd_10191 when (do_write_gpr_from_iu_10938(0) /=  '0') else konst_11653_wire_constant;
    -- flow-through select operator MUX_11677_inst
    MUX_11677_wire <= EQ_u5_u1_11674_wire when (AND_u1_u1_11671_wire(0) /=  '0') else type_cast_11676_wire_constant;
    -- flow-through select operator MUX_11678_inst
    ccu_rid_match_with_prefetch_11679 <= EQ_u5_u1_11667_wire when (ccu_iu_reg_9898(0) /=  '0') else MUX_11677_wire;
    -- flow-through select operator MUX_11740_inst
    MUX_11740_wire <= read_rs1_value_11231 when (AND_u1_u1_11737_wire(0) /=  '0') else konst_11739_wire_constant;
    -- flow-through select operator MUX_11746_inst
    MUX_11746_wire <= PSR_9751 when (AND_u1_u1_11743_wire(0) /=  '0') else konst_11745_wire_constant;
    -- flow-through select operator MUX_11751_inst
    MUX_11751_wire <= updated_ASR_READ_VAL_10554 when (CCU_ASR_READ_START_10457(0) /=  '0') else konst_11750_wire_constant;
    -- flow-through select operator MUX_11758_inst
    MUX_11758_wire <= TBR_9759 when (AND_u1_u1_11755_wire(0) /=  '0') else konst_11757_wire_constant;
    -- flow-through select operator MUX_11764_inst
    MUX_11764_wire <= WIM_9755 when (AND_u1_u1_11761_wire(0) /=  '0') else konst_11763_wire_constant;
    -- flow-through select operator MUX_11771_inst
    MUX_11771_wire <= Y_9763 when (AND_u1_u1_11768_wire(0) /=  '0') else konst_11770_wire_constant;
    -- flow-through select operator MUX_11779_inst
    MUX_11779_wire <= updated_ASR_READ_VAL_10554 when (read_asr_10113(0) /=  '0') else konst_11778_wire_constant;
    -- flow-through select operator MUX_11783_inst
    MUX_11783_wire <= next_TBR_11056 when (read_tbr_10077(0) /=  '0') else konst_11782_wire_constant;
    -- flow-through select operator MUX_11788_inst
    MUX_11788_wire <= next_WIM_11085 when (read_wim_10095(0) /=  '0') else konst_11787_wire_constant;
    -- flow-through select operator MUX_11792_inst
    MUX_11792_wire <= next_Y_11108 when (read_y_10131(0) /=  '0') else konst_11791_wire_constant;
    -- flow-through select operator MUX_11820_inst
    rs1_response_value_11821 <= read_rs1_value_11231 when (rs1_read_lock_available_10674(0) /=  '0') else bypass_info_rd_value_10915;
    -- flow-through select operator MUX_11826_inst
    rs2_response_value_11827 <= read_rs2_value_11241 when (rs2_read_lock_available_10674(0) /=  '0') else bypass_info_rd_value_10915;
    -- flow-through select operator MUX_11832_inst
    rd_h_response_value_11833 <= read_rd_h_value_11245 when (rd_h_read_lock_available_10674(0) /=  '0') else bypass_info_rd_value_10915;
    -- flow-through select operator MUX_11838_inst
    rd_l_response_value_11839 <= read_rd_l_value_11257 when (rd_l_read_lock_available_10674(0) /=  '0') else bypass_info_rd_value_10915;
    -- flow-through select operator MUX_11863_inst
    psr_response_value_11864 <= next_PSR_11019 when (speculative_psr_locks_available_10696(0) /=  '0') else bypass_info_psr_value_10921;
    -- flow-through select operator MUX_11898_inst
    resolved_cc_value_11899 <= bypass_info_cc_10931 when (bypass_cc_possible_10931(0) /=  '0') else slice_11897_wire;
    -- flow-through select operator MUX_11954_inst
    MUX_11954_wire <= post_clear_reg_read_locks_10674 when (send_write_response_11568(0) /=  '0') else reg_read_locks_9767;
    -- flow-through select operator MUX_11955_inst
    next_reg_read_locks_11956 <= post_test_and_set_reg_read_locks_10674 when (send_read_response_base_11418(0) /=  '0') else MUX_11954_wire;
    -- flow-through select operator MUX_11963_inst
    MUX_11963_wire <= post_clear_psr_read_locks_10690 when (send_write_response_11568(0) /=  '0') else psr_read_locks_9775;
    -- flow-through select operator MUX_11964_inst
    next_psr_read_locks_11965 <= post_test_and_set_psr_read_locks_10696 when (send_read_response_base_11418(0) /=  '0') else MUX_11963_wire;
    -- flow-through select operator MUX_11975_inst
    MUX_11975_wire <= post_clear_tbr_read_lock_10731 when (send_write_response_11568(0) /=  '0') else tbr_read_lock_9787;
    -- flow-through select operator MUX_11976_inst
    next_tbr_read_lock_11977 <= post_test_and_set_tbr_read_lock_10737 when (send_read_response_base_11418(0) /=  '0') else MUX_11975_wire;
    -- flow-through select operator MUX_11984_inst
    MUX_11984_wire <= post_clear_wim_read_lock_10747 when (send_write_response_11568(0) /=  '0') else wim_read_lock_9783;
    -- flow-through select operator MUX_11985_inst
    next_wim_read_lock_11986 <= post_test_and_set_wim_read_lock_10753 when (send_read_response_base_11418(0) /=  '0') else MUX_11984_wire;
    -- flow-through select operator MUX_11993_inst
    MUX_11993_wire <= post_clear_y_read_lock_10766 when (send_write_response_11568(0) /=  '0') else y_read_lock_9791;
    -- flow-through select operator MUX_11994_inst
    next_y_read_lock_11995 <= post_test_and_set_y_read_lock_10772 when (send_read_response_base_11418(0) /=  '0') else MUX_11993_wire;
    -- flow-through select operator MUX_12001_inst
    MUX_12001_wire <= R_ONE_1_11999_wire_constant when (read_lock_all_regs_9946(0) /=  '0') else window_modify_lock_9795;
    -- flow-through select operator MUX_12006_inst
    MUX_12006_wire <= R_ZERO_1_12004_wire_constant when (clear_all_locks_10645(0) /=  '0') else window_modify_lock_9795;
    -- flow-through select operator MUX_12008_inst
    MUX_12008_wire <= MUX_12006_wire when (send_write_response_11568(0) /=  '0') else window_modify_lock_9795;
    -- flow-through select operator MUX_12009_inst
    next_window_modify_lock_12010 <= MUX_12001_wire when (send_read_response_base_11418(0) /=  '0') else MUX_12008_wire;
    -- flow-through select operator MUX_12021_inst
    read_command_used_to_access_regfile_12022 <= read_command_next_9552 when (get_read_command_11930(0) /=  '0') else read_command_9590;
    -- flow-through select operator MUX_12027_inst
    ccu_command_used_to_access_regfile_12028 <= ccu_command_next_9557 when (get_ccu_command_11942(0) /=  '0') else ccu_command_9594;
    -- flow-through select operator MUX_12059_inst
    rrs1_next_corrected_12060 <= next_ccu_rid_12035 when (AND_u1_u1_12056_wire(0) /=  '0') else rrs1_next_12049;
    -- flow-through select operator MUX_12070_inst
    rread_asr_id_next_corrected_12071 <= next_ccu_rid_12035 when (AND_u1_u1_12067_wire(0) /=  '0') else rread_asr_id_next_12049;
    -- flow-through select operator MUX_12195_inst
    next_read_command_12196 <= read_command_next_9552 when (get_read_command_11930(0) /=  '0') else read_command_9590;
    -- flow-through select operator MUX_12201_inst
    next_ccu_command_12202 <= ccu_command_next_9557 when (get_ccu_command_11942(0) /=  '0') else ccu_command_9594;
    -- flow-through select operator MUX_12297_inst
    next_wb_state_12298 <= next_wb_state_raw_9686 when (get_writeback_info_12285(0) /=  '0') else wb_state_9566;
    -- flow-through select operator MUX_12359_inst
    MUX_12359_wire <= type_cast_12357_wire_constant when (send_read_rs1_response_11397(0) /=  '0') else read_rs1_response_sent_9606;
    -- flow-through select operator MUX_12360_inst
    next_read_rs1_response_sent_12361 <= type_cast_12354_wire_constant when (get_read_command_11930(0) /=  '0') else MUX_12359_wire;
    -- flow-through select operator MUX_9620_inst
    cc_credit_return_9621 <= konst_9618_wire_constant when (init_flag_9586(0) /=  '0') else cc_credit_return_raw_9502;
    -- flow-through select operator MUX_9626_inst
    rs1_credit_return_9627 <= konst_9624_wire_constant when (init_flag_9586(0) /=  '0') else rs1_credit_return_raw_9505;
    -- flow-through select operator MUX_9632_inst
    ls_credit_return_9633 <= konst_9630_wire_constant when (init_flag_9586(0) /=  '0') else ls_credit_return_raw_9499;
    -- flow-through select operator MUX_9638_inst
    iu_credit_return_9639 <= konst_9636_wire_constant when (init_flag_9586(0) /=  '0') else iu_credit_return_raw_9508;
    -- flow-through select operator MUX_9644_inst
    mCREDITS_9645 <= INIT_CREDITS_9451 when (init_flag_9586(0) /=  '0') else CREDITS_raw_9570;
    -- flow-through select operator MUX_9650_inst
    mSTATUS_REGS_9651 <= konst_9648_wire_constant when (init_flag_9586(0) /=  '0') else STATUS_REGS_raw_9574;
    -- flow-through select operator MUX_9656_inst
    mLOCKS_9657 <= konst_9654_wire_constant when (init_flag_9586(0) /=  '0') else LOCKS_raw_9578;
    -- flow-through select operator MUX_9662_inst
    mSTATES_9663 <= konst_9660_wire_constant when (init_flag_9586(0) /=  '0') else STATES_raw_9582;
    -- flow-through select operator MUX_9691_inst
    write_command_9692 <= rfile_write_cmd_9686 when (rfile_write_valid_9686(0) /=  '0') else konst_9690_wire_constant;
    -- flow-through slice operator slice_10001_inst
    sreg_type_10002 <= read_command_9590(11 downto 9);
    -- flow-through slice operator slice_10005_inst
    read_asr_id_10006 <= read_command_9590(8 downto 4);
    -- flow-through slice operator slice_10009_inst
    read_save_10010 <= read_command_9590(3 downto 3);
    -- flow-through slice operator slice_10013_inst
    read_restore_10014 <= read_command_9590(2 downto 2);
    -- flow-through slice operator slice_10017_inst
    read_skip_iu_10018 <= read_command_9590(1 downto 1);
    -- flow-through slice operator slice_10021_inst
    read_command_valid_10022 <= read_command_9590(0 downto 0);
    -- flow-through slice operator slice_10162_inst
    write_thread_id_10163 <= write_command_9692(162 downto 159);
    -- flow-through slice operator slice_10166_inst
    write_stream_id_10167 <= write_command_9692(158 downto 157);
    -- flow-through slice operator slice_10170_inst
    write_slot_id_10171 <= write_command_9692(156 downto 151);
    -- flow-through slice operator slice_10174_inst
    is_save_10175 <= write_command_9692(150 downto 150);
    -- flow-through slice operator slice_10178_inst
    is_restore_10179 <= write_command_9692(149 downto 149);
    -- flow-through slice operator slice_10182_inst
    write_10183 <= write_command_9692(148 downto 148);
    -- flow-through slice operator slice_10186_inst
    double_flag_10187 <= write_command_9692(147 downto 147);
    -- flow-through slice operator slice_10190_inst
    write_rd_10191 <= write_command_9692(146 downto 142);
    -- flow-through slice operator slice_10194_inst
    wr_rd_val_high_10195 <= write_command_9692(141 downto 110);
    -- flow-through slice operator slice_10198_inst
    wr_rd_val_low_10199 <= write_command_9692(109 downto 78);
    -- flow-through slice operator slice_10202_inst
    write_psr_10203 <= write_command_9692(77 downto 75);
    -- flow-through slice operator slice_10206_inst
    wr_psr_value_10207 <= write_command_9692(74 downto 43);
    -- flow-through slice operator slice_10210_inst
    write_sreg_10211 <= write_command_9692(42 downto 42);
    -- flow-through slice operator slice_10214_inst
    write_sreg_type_10215 <= write_command_9692(41 downto 39);
    -- flow-through slice operator slice_10218_inst
    wwrite_sreg_value_10219 <= write_command_9692(38 downto 7);
    -- flow-through slice operator slice_10222_inst
    wwrite_asr_id_10223 <= write_command_9692(6 downto 2);
    -- flow-through slice operator slice_10226_inst
    write_registers_10227 <= write_command_9692(1 downto 1);
    -- flow-through slice operator slice_10230_inst
    write_command_valid_10231 <= write_command_9692(0 downto 0);
    -- flow-through slice operator slice_10317_inst
    slice_10317_wire <= PSR_9751(4 downto 0);
    -- flow-through slice operator slice_10323_inst
    slice_10323_wire <= ccu_rval_9898(4 downto 0);
    -- flow-through slice operator slice_10329_inst
    slice_10329_wire <= wr_psr_value_10207(4 downto 0);
    -- flow-through slice operator slice_10996_inst
    slice_10996_wire <= PSR_9751(31 downto 5);
    -- flow-through slice operator slice_11178_inst
    next_cwp_11179 <= next_PSR_11019(4 downto 0);
    -- flow-through slice operator slice_11227_inst
    slice_11227_wire <= updated_RS1_PAIR_VALUE_11196(31 downto 0);
    -- flow-through slice operator slice_11229_inst
    slice_11229_wire <= updated_RS1_PAIR_VALUE_11196(63 downto 32);
    -- flow-through slice operator slice_11237_inst
    slice_11237_wire <= updated_RS2_PAIR_VALUE_11207(31 downto 0);
    -- flow-through slice operator slice_11239_inst
    slice_11239_wire <= updated_RS2_PAIR_VALUE_11207(63 downto 32);
    -- flow-through slice operator slice_11244_inst
    read_rd_h_value_11245 <= updated_READ_RD_PAIR_VALUE_11218(63 downto 32);
    -- flow-through slice operator slice_11253_inst
    slice_11253_wire <= updated_READ_RD_PAIR_VALUE_11218(31 downto 0);
    -- flow-through slice operator slice_11255_inst
    slice_11255_wire <= updated_READ_RD_PAIR_VALUE_11218(63 downto 32);
    -- flow-through slice operator slice_11632_inst
    slice_11632_wire <= next_PSR_11019(11 downto 8);
    -- flow-through slice operator slice_11634_inst
    slice_11634_wire <= next_PSR_11019(3 downto 0);
    -- flow-through slice operator slice_11897_inst
    slice_11897_wire <= next_PSR_11019(23 downto 20);
    -- flow-through slice operator slice_12205_inst
    read_asr_id_next_12206 <= command_to_reg_file_access_12108(146 downto 142);
    -- flow-through slice operator slice_12209_inst
    rs1_next_12210 <= command_to_reg_file_access_12108(141 downto 137);
    -- flow-through slice operator slice_12213_inst
    rs2_next_12214 <= command_to_reg_file_access_12108(136 downto 132);
    -- flow-through slice operator slice_12217_inst
    read_rd_next_12218 <= command_to_reg_file_access_12108(131 downto 127);
    -- flow-through slice operator slice_12221_inst
    next_read_cwp_12222 <= command_to_reg_file_access_12108(126 downto 122);
    -- flow-through slice operator slice_12225_inst
    write_cwp_12226 <= command_to_reg_file_access_12108(121 downto 117);
    -- flow-through slice operator slice_12229_inst
    write_gpr_even_12230 <= command_to_reg_file_access_12108(116 downto 116);
    -- flow-through slice operator slice_12233_inst
    write_gpr_odd_12234 <= command_to_reg_file_access_12108(115 downto 115);
    -- flow-through slice operator slice_12237_inst
    write_gpr_rd_id_12238 <= command_to_reg_file_access_12108(114 downto 110);
    -- flow-through slice operator slice_12241_inst
    write_gpr_value_even_12242 <= command_to_reg_file_access_12108(109 downto 78);
    -- flow-through slice operator slice_12245_inst
    write_gpr_value_odd_12246 <= command_to_reg_file_access_12108(77 downto 46);
    -- flow-through slice operator slice_12249_inst
    ASR_WRITE_START_12250 <= command_to_reg_file_access_12108(45 downto 45);
    -- flow-through slice operator slice_12253_inst
    write_asr_id_12254 <= command_to_reg_file_access_12108(44 downto 40);
    -- flow-through slice operator slice_12257_inst
    write_sreg_value_12258 <= command_to_reg_file_access_12108(31 downto 0);
    -- flow-through slice operator slice_12364_inst
    next_mCREDITS_12365 <= next_CIRCULANT_12172(274 downto 259);
    -- flow-through slice operator slice_12368_inst
    next_mSTATUS_REGS_12369 <= next_CIRCULANT_12172(258 downto 131);
    -- flow-through slice operator slice_12372_inst
    next_mLOCKS_12373 <= next_CIRCULANT_12172(130 downto 23);
    -- flow-through slice operator slice_12376_inst
    next_mSTATES_12377 <= next_CIRCULANT_12172(22 downto 0);
    -- flow-through slice operator slice_9565_inst
    wb_state_9566 <= local_circulant_9548(390 downto 389);
    -- flow-through slice operator slice_9569_inst
    CREDITS_raw_9570 <= local_circulant_9548(388 downto 373);
    -- flow-through slice operator slice_9573_inst
    STATUS_REGS_raw_9574 <= local_circulant_9548(372 downto 245);
    -- flow-through slice operator slice_9577_inst
    LOCKS_raw_9578 <= local_circulant_9548(244 downto 137);
    -- flow-through slice operator slice_9581_inst
    STATES_raw_9582 <= local_circulant_9548(136 downto 114);
    -- flow-through slice operator slice_9585_inst
    init_flag_9586 <= local_circulant_9548(113 downto 113);
    -- flow-through slice operator slice_9589_inst
    read_command_9590 <= local_circulant_9548(112 downto 54);
    -- flow-through slice operator slice_9593_inst
    ccu_command_9594 <= local_circulant_9548(53 downto 12);
    -- flow-through slice operator slice_9597_inst
    get_commands_9598 <= local_circulant_9548(11 downto 9);
    -- flow-through slice operator slice_9601_inst
    counter_9602 <= local_circulant_9548(8 downto 1);
    -- flow-through slice operator slice_9605_inst
    read_rs1_response_sent_9606 <= local_circulant_9548(0 downto 0);
    -- flow-through slice operator slice_9701_inst
    slice_9701_wire <= CYCLE_COUNT_9698(7 downto 0);
    -- flow-through slice operator slice_9709_inst
    CREDITS_9710 <= CIRCULANT_9674(274 downto 259);
    -- flow-through slice operator slice_9713_inst
    STATUS_REGS_9714 <= CIRCULANT_9674(258 downto 131);
    -- flow-through slice operator slice_9717_inst
    LOCKS_9718 <= CIRCULANT_9674(130 downto 23);
    -- flow-through slice operator slice_9721_inst
    STATES_9722 <= CIRCULANT_9674(22 downto 0);
    -- flow-through slice operator slice_9725_inst
    LSCREDITS_9726 <= CREDITS_9710(15 downto 12);
    -- flow-through slice operator slice_9729_inst
    CCCREDITS_9730 <= CREDITS_9710(11 downto 8);
    -- flow-through slice operator slice_9733_inst
    RS1CREDITS_9734 <= CREDITS_9710(7 downto 4);
    -- flow-through slice operator slice_9737_inst
    IUCREDITS_9738 <= CREDITS_9710(3 downto 0);
    -- flow-through slice operator slice_9750_inst
    PSR_9751 <= STATUS_REGS_9714(127 downto 96);
    -- flow-through slice operator slice_9754_inst
    WIM_9755 <= STATUS_REGS_9714(95 downto 64);
    -- flow-through slice operator slice_9758_inst
    TBR_9759 <= STATUS_REGS_9714(63 downto 32);
    -- flow-through slice operator slice_9762_inst
    Y_9763 <= STATUS_REGS_9714(31 downto 0);
    -- flow-through slice operator slice_9766_inst
    reg_read_locks_9767 <= LOCKS_9718(107 downto 44);
    -- flow-through slice operator slice_9770_inst
    asr_read_locks_9771 <= LOCKS_9718(43 downto 12);
    -- flow-through slice operator slice_9774_inst
    psr_read_locks_9775 <= LOCKS_9718(11 downto 9);
    -- flow-through slice operator slice_9778_inst
    copy_of_psr_read_locks_9779 <= LOCKS_9718(8 downto 6);
    -- flow-through slice operator slice_9782_inst
    wim_read_lock_9783 <= LOCKS_9718(5 downto 5);
    -- flow-through slice operator slice_9786_inst
    tbr_read_lock_9787 <= LOCKS_9718(4 downto 4);
    -- flow-through slice operator slice_9790_inst
    y_read_lock_9791 <= LOCKS_9718(3 downto 1);
    -- flow-through slice operator slice_9794_inst
    window_modify_lock_9795 <= LOCKS_9718(0 downto 0);
    -- flow-through slice operator slice_9798_inst
    PREFETCH_READ_CWP_9799 <= STATES_9722(22 downto 18);
    -- flow-through slice operator slice_9802_inst
    PREFETCH_RS1_9803 <= STATES_9722(17 downto 13);
    -- flow-through slice operator slice_9806_inst
    PREFETCH_ASR_9807 <= STATES_9722(12 downto 8);
    -- flow-through slice operator slice_9810_inst
    CYCLE_COUNT_8_9811 <= STATES_9722(7 downto 0);
    -- flow-through slice operator slice_9814_inst
    CCOUNTER_8_9815 <= STATES_9722(7 downto 0);
    -- flow-through slice operator slice_9823_inst
    COUNTER_FROM_IU_REGS_ACCESS_9824 <= READ_REGISTERS_9706(231 downto 224);
    -- flow-through slice operator slice_9827_inst
    ASR_READ_VAL_9828 <= READ_REGISTERS_9706(223 downto 192);
    -- flow-through slice operator slice_9831_inst
    RS1_PAIR_VALUE_9832 <= READ_REGISTERS_9706(191 downto 128);
    -- flow-through slice operator slice_9835_inst
    RS2_PAIR_VALUE_9836 <= READ_REGISTERS_9706(127 downto 64);
    -- flow-through slice operator slice_9839_inst
    READ_RD_PAIR_VALUE_9840 <= READ_REGISTERS_9706(63 downto 0);
    -- flow-through slice operator slice_9854_inst
    l_get_ccu_command_9855 <= get_commands_9598(2 downto 2);
    -- flow-through slice operator slice_9858_inst
    l_get_read_command_9859 <= get_commands_9598(1 downto 1);
    -- flow-through slice operator slice_9862_inst
    l_get_write_command_9863 <= get_commands_9598(0 downto 0);
    -- flow-through slice operator slice_9913_inst
    read_thread_id_9914 <= read_command_9590(58 downto 55);
    -- flow-through slice operator slice_9917_inst
    read_stream_id_9918 <= read_command_9590(54 downto 53);
    -- flow-through slice operator slice_9921_inst
    read_slot_id_9922 <= read_command_9590(52 downto 47);
    -- flow-through slice operator slice_9925_inst
    read_thread_head_9926 <= read_command_9590(46 downto 46);
    -- flow-through slice operator slice_9929_inst
    read_stream_head_9930 <= read_command_9590(45 downto 45);
    -- flow-through slice operator slice_9933_inst
    read_send_to_ls_9934 <= read_command_9590(44 downto 44);
    -- flow-through slice operator slice_9937_inst
    read_send_cc_to_sc_9938 <= read_command_9590(43 downto 43);
    -- flow-through slice operator slice_9941_inst
    read_send_rs1_to_sc_9942 <= read_command_9590(42 downto 42);
    -- flow-through slice operator slice_9945_inst
    read_lock_all_regs_9946 <= read_command_9590(41 downto 41);
    -- flow-through slice operator slice_9949_inst
    read_rs1_9950 <= read_command_9590(40 downto 40);
    -- flow-through slice operator slice_9953_inst
    rs1_9954 <= read_command_9590(39 downto 35);
    -- flow-through slice operator slice_9957_inst
    read_rs2_9958 <= read_command_9590(34 downto 34);
    -- flow-through slice operator slice_9961_inst
    rs2_9962 <= read_command_9590(33 downto 29);
    -- flow-through slice operator slice_9965_inst
    read_rd_h_9966 <= read_command_9590(28 downto 28);
    -- flow-through slice operator slice_9969_inst
    read_rd_l_9970 <= read_command_9590(27 downto 27);
    -- flow-through slice operator slice_9973_inst
    lock_rd_h_9974 <= read_command_9590(26 downto 26);
    -- flow-through slice operator slice_9977_inst
    lock_rd_l_9978 <= read_command_9590(25 downto 25);
    -- flow-through slice operator slice_9981_inst
    read_rd_9982 <= read_command_9590(24 downto 20);
    -- flow-through slice operator slice_9985_inst
    read_psr_9986 <= read_command_9590(19 downto 17);
    -- flow-through slice operator slice_9989_inst
    lock_psr_9990 <= read_command_9590(16 downto 14);
    -- flow-through slice operator slice_9993_inst
    read_sreg_9994 <= read_command_9590(13 downto 13);
    -- flow-through slice operator slice_9997_inst
    lock_sreg_9998 <= read_command_9590(12 downto 12);
    -- interlock W_CCU_WU_START_10381_inst
    process(ccu_update_psr_in_window_10343) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := ccu_update_psr_in_window_10343(0 downto 0);
      CCU_WU_START_10383 <= tmp_var; -- 
    end process;
    -- interlock W_CYCLE_COUNT_9696_inst
    process(mSTATES_9663) -- 
      variable tmp_var : std_logic_vector(22 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 22 downto 0) := mSTATES_9663(22 downto 0);
      CYCLE_COUNT_9698 <= tmp_var; -- 
    end process;
    -- interlock W_all_send_cc_locks_available_11128_inst
    process(speculative_psr_locks_available_for_sending_cc_10719) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := speculative_psr_locks_available_for_sending_cc_10719(0 downto 0);
      all_send_cc_locks_available_11130 <= tmp_var; -- 
    end process;
    W_ccu_response_buffered_12331_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_ccu_response_buffered_12331_inst_req_0;
      W_ccu_response_buffered_12331_inst_ack_0<= wack(0);
      rreq(0) <= W_ccu_response_buffered_12331_inst_req_1;
      W_ccu_response_buffered_12331_inst_ack_1<= rack(0);
      W_ccu_response_buffered_12331_inst : InterlockBuffer generic map ( -- 
        name => "W_ccu_response_buffered_12331_inst",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => ccu_response_11774,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => ccu_response_buffered_12333,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_get_writeback_info_12283_inst
    process(get_write_command_11936) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := get_write_command_11936(0 downto 0);
      get_writeback_info_12285 <= tmp_var; -- 
    end process;
    -- interlock W_next_PREFETCH_ASR_12075_inst
    process(rread_asr_id_next_corrected_12071) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := rread_asr_id_next_corrected_12071(4 downto 0);
      next_PREFETCH_ASR_12077 <= tmp_var; -- 
    end process;
    -- interlock W_next_PREFETCH_READ_CWP_12011_inst
    process(next_cwp_11179) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := next_cwp_11179(4 downto 0);
      next_PREFETCH_READ_CWP_12013 <= tmp_var; -- 
    end process;
    -- interlock W_next_PREFETCH_RS1_12072_inst
    process(rrs1_next_corrected_12060) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := rrs1_next_corrected_12060(4 downto 0);
      next_PREFETCH_RS1_12074 <= tmp_var; -- 
    end process;
    -- interlock W_next_copy_of_psr_read_locks_11966_inst
    process(next_psr_read_locks_11965) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 2 downto 0) := next_psr_read_locks_11965(2 downto 0);
      next_copy_of_psr_read_locks_11968 <= tmp_var; -- 
    end process;
    -- interlock W_read_cwp_11183_inst
    process(PREFETCH_READ_CWP_9799) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := PREFETCH_READ_CWP_9799(4 downto 0);
      read_cwp_11185 <= tmp_var; -- 
    end process;
    -- interlock W_read_rs1_response_11911_inst
    process(read_rs1_value_11231) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := read_rs1_value_11231(31 downto 0);
      read_rs1_response_11913 <= tmp_var; -- 
    end process;
    -- interlock W_ret_PSR_12173_inst
    process(next_PSR_11019) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := next_PSR_11019(31 downto 0);
      ret_PSR_12175 <= tmp_var; -- 
    end process;
    -- interlock W_ret_TBR_12176_inst
    process(next_TBR_11056) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := next_TBR_11056(31 downto 0);
      ret_TBR_12178 <= tmp_var; -- 
    end process;
    W_sampled_core_id_9490_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_sampled_core_id_9490_inst_req_0;
      W_sampled_core_id_9490_inst_ack_0<= wack(0);
      rreq(0) <= W_sampled_core_id_9490_inst_req_1;
      W_sampled_core_id_9490_inst_ack_1<= rack(0);
      W_sampled_core_id_9490_inst : InterlockBuffer generic map ( -- 
        name => "W_sampled_core_id_9490_inst",
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
        write_data => RPIPE_CORE_ID_9491_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => sampled_core_id_9492,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_sampled_thread_id_9493_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_sampled_thread_id_9493_inst_req_0;
      W_sampled_thread_id_9493_inst_ack_0<= wack(0);
      rreq(0) <= W_sampled_thread_id_9493_inst_req_1;
      W_sampled_thread_id_9493_inst_ack_1<= rack(0);
      W_sampled_thread_id_9493_inst : InterlockBuffer generic map ( -- 
        name => "W_sampled_thread_id_9493_inst",
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
        write_data => RPIPE_THREAD_ID_9494_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => sampled_thread_id_9495,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_send_asr_read_response_11264_inst
    process(IU_ASR_READ_START_10452) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := IU_ASR_READ_START_10452(0 downto 0);
      send_asr_read_response_11266 <= tmp_var; -- 
    end process;
    W_send_ccu_response_12609_delayed_1_0_12334_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_send_ccu_response_12609_delayed_1_0_12334_inst_req_0;
      W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_0<= wack(0);
      rreq(0) <= W_send_ccu_response_12609_delayed_1_0_12334_inst_req_1;
      W_send_ccu_response_12609_delayed_1_0_12334_inst_ack_1<= rack(0);
      W_send_ccu_response_12609_delayed_1_0_12334_inst : InterlockBuffer generic map ( -- 
        name => "W_send_ccu_response_12609_delayed_1_0_12334_inst",
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
        write_data => send_ccu_response_11712,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => send_ccu_response_12609_delayed_1_0_12336,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock W_write_gpr_value_h_10964_inst
    process(wr_rd_val_high_10195) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := wr_rd_val_high_10195(31 downto 0);
      write_gpr_value_h_10966 <= tmp_var; -- 
    end process;
    -- interlock W_wwrite_cwp_11180_inst
    process(next_cwp_11179) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := next_cwp_11179(4 downto 0);
      wwrite_cwp_11182 <= tmp_var; -- 
    end process;
    next_local_circulant_12401_9551_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= next_local_circulant_12401_9551_buf_req_0;
      next_local_circulant_12401_9551_buf_ack_0<= wack(0);
      rreq(0) <= next_local_circulant_12401_9551_buf_req_1;
      next_local_circulant_12401_9551_buf_ack_1<= rack(0);
      next_local_circulant_12401_9551_buf : InterlockBuffer generic map ( -- 
        name => "next_local_circulant_12401_9551_buf",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 391,
        out_data_width => 391,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => next_local_circulant_12401,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => next_local_circulant_12401_9551_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_9499
    process(RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_wire(0 downto 0);
      ls_credit_return_raw_9499 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_9502
    process(RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_wire(0 downto 0);
      cc_credit_return_raw_9502 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_9505
    process(RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_wire(0 downto 0);
      rs1_credit_return_raw_9505 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_9508
    process(RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_wire(0 downto 0);
      iu_credit_return_raw_9508 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_9545
    process(RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_wire) -- 
      variable tmp_var : std_logic_vector(92 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 92 downto 0) := RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_wire(92 downto 0);
      dcache_bypass_info_9545 <= tmp_var; -- 
    end process;
    do_while_stmt_9497_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_12404_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_9497_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_9497_branch_req_0,
          ack0 => do_while_stmt_9497_branch_ack_0,
          ack1 => do_while_stmt_9497_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator ADD_u4_u4_11435_inst
    ADD_u4_u4_11435_wire <= std_logic_vector(unsigned(LSCREDITS_9726) + unsigned(konst_11434_wire_constant));
    -- flow through binary operator ADD_u4_u4_11463_inst
    ADD_u4_u4_11463_wire <= std_logic_vector(unsigned(CCCREDITS_9730) + unsigned(konst_11462_wire_constant));
    -- flow through binary operator ADD_u4_u4_11491_inst
    ADD_u4_u4_11491_wire <= std_logic_vector(unsigned(RS1CREDITS_9734) + unsigned(konst_11490_wire_constant));
    -- flow through binary operator ADD_u4_u4_11519_inst
    ADD_u4_u4_11519_wire <= std_logic_vector(unsigned(IUCREDITS_9738) + unsigned(konst_11518_wire_constant));
    -- flow through binary operator ADD_u5_u5_10371_inst
    ADD_u5_u5_10371_wire <= std_logic_vector(unsigned(CWP_10320) + unsigned(konst_10370_wire_constant));
    -- flow through binary operator ADD_u8_u8_9614_inst
    next_counter_9615 <= std_logic_vector(unsigned(counter_9602) + unsigned(konst_9613_wire_constant));
    -- flow through binary operator ADD_u8_u8_9867_inst
    NCYCLE_COUNT_8_9868 <= std_logic_vector(unsigned(CYCLE_COUNT_8_9811) + unsigned(konst_9866_wire_constant));
    -- flow through binary operator AND_u1_u1_10026_inst
    skip_assert_10027 <= (read_command_valid_10022 and read_skip_iu_10018);
    -- flow through binary operator AND_u1_u1_10036_inst
    rread_10037 <= (l_get_read_command_9859 and read_command_valid_10022);
    -- flow through binary operator AND_u1_u1_10072_inst
    AND_u1_u1_10072_wire <= (read_command_valid_10022 and read_sreg_9994);
    -- flow through binary operator AND_u1_u1_10076_inst
    read_tbr_10077 <= (AND_u1_u1_10072_wire and EQ_u3_u1_10075_wire);
    -- flow through binary operator AND_u1_u1_10081_inst
    AND_u1_u1_10081_wire <= (read_command_valid_10022 and lock_sreg_9998);
    -- flow through binary operator AND_u1_u1_10085_inst
    lock_tbr_10086 <= (AND_u1_u1_10081_wire and EQ_u3_u1_10084_wire);
    -- flow through binary operator AND_u1_u1_10090_inst
    AND_u1_u1_10090_wire <= (read_command_valid_10022 and read_sreg_9994);
    -- flow through binary operator AND_u1_u1_10094_inst
    read_wim_10095 <= (AND_u1_u1_10090_wire and EQ_u3_u1_10093_wire);
    -- flow through binary operator AND_u1_u1_10099_inst
    AND_u1_u1_10099_wire <= (read_command_valid_10022 and lock_sreg_9998);
    -- flow through binary operator AND_u1_u1_10103_inst
    lock_wim_10104 <= (AND_u1_u1_10099_wire and EQ_u3_u1_10102_wire);
    -- flow through binary operator AND_u1_u1_10108_inst
    AND_u1_u1_10108_wire <= (read_command_valid_10022 and read_sreg_9994);
    -- flow through binary operator AND_u1_u1_10112_inst
    read_asr_10113 <= (AND_u1_u1_10108_wire and EQ_u3_u1_10111_wire);
    -- flow through binary operator AND_u1_u1_10117_inst
    AND_u1_u1_10117_wire <= (read_command_valid_10022 and lock_sreg_9998);
    -- flow through binary operator AND_u1_u1_10121_inst
    lock_asr_10122 <= (AND_u1_u1_10117_wire and EQ_u3_u1_10120_wire);
    -- flow through binary operator AND_u1_u1_10126_inst
    AND_u1_u1_10126_wire <= (read_command_valid_10022 and read_sreg_9994);
    -- flow through binary operator AND_u1_u1_10130_inst
    read_y_10131 <= (AND_u1_u1_10126_wire and EQ_u3_u1_10129_wire);
    -- flow through binary operator AND_u1_u1_10135_inst
    AND_u1_u1_10135_wire <= (read_command_valid_10022 and lock_sreg_9998);
    -- flow through binary operator AND_u1_u1_10139_inst
    lock_y_10140 <= (AND_u1_u1_10135_wire and EQ_u3_u1_10138_wire);
    -- flow through binary operator AND_u1_u1_10235_inst
    rwrite_10236 <= (l_get_write_command_9863 and write_command_valid_10231);
    -- flow through binary operator AND_u1_u1_10261_inst
    AND_u1_u1_10261_wire <= (write_command_valid_10231 and write_sreg_10211);
    -- flow through binary operator AND_u1_u1_10265_inst
    write_tbr_10266 <= (AND_u1_u1_10261_wire and EQ_u3_u1_10264_wire);
    -- flow through binary operator AND_u1_u1_10270_inst
    AND_u1_u1_10270_wire <= (write_command_valid_10231 and write_sreg_10211);
    -- flow through binary operator AND_u1_u1_10274_inst
    write_wim_10275 <= (AND_u1_u1_10270_wire and EQ_u3_u1_10273_wire);
    -- flow through binary operator AND_u1_u1_10279_inst
    AND_u1_u1_10279_wire <= (write_command_valid_10231 and write_sreg_10211);
    -- flow through binary operator AND_u1_u1_10283_inst
    write_asr_10284 <= (AND_u1_u1_10279_wire and EQ_u3_u1_10282_wire);
    -- flow through binary operator AND_u1_u1_10288_inst
    AND_u1_u1_10288_wire <= (write_command_valid_10231 and write_sreg_10211);
    -- flow through binary operator AND_u1_u1_10292_inst
    write_y_10293 <= (AND_u1_u1_10288_wire and EQ_u3_u1_10291_wire);
    -- flow through binary operator AND_u1_u1_10336_inst
    AND_u1_u1_10336_wire <= (ccu_command_valid_9898 and ccu_write_read_bar_9898);
    -- flow through binary operator AND_u1_u1_10341_inst
    AND_u1_u1_10341_wire <= (ccu_psr_9898 and NEQ_u5_u1_10340_wire);
    -- flow through binary operator AND_u1_u1_10342_inst
    ccu_update_psr_in_window_10343 <= (AND_u1_u1_10336_wire and AND_u1_u1_10341_wire);
    -- flow through binary operator AND_u1_u1_10348_inst
    AND_u1_u1_10348_wire <= (NOT_u1_u1_10346_wire and write_command_valid_10231);
    -- flow through binary operator AND_u1_u1_10356_inst
    AND_u1_u1_10356_wire <= (BITSEL_u3_u1_10352_wire and NEQ_u5_u1_10355_wire);
    -- flow through binary operator AND_u1_u1_10361_inst
    AND_u1_u1_10361_wire <= (write_registers_10227 and OR_u1_u1_10360_wire);
    -- flow through binary operator AND_u1_u1_10362_inst
    iu_update_psr_in_window_10363 <= (AND_u1_u1_10348_wire and AND_u1_u1_10361_wire);
    -- flow through binary operator AND_u1_u1_10388_inst
    IU_WU_START_10389 <= (iu_update_psr_in_window_10363 and NOT_u1_u1_10387_wire);
    -- flow through binary operator AND_u1_u1_10414_inst
    AND_u1_u1_10414_wire <= (NOT_u1_u1_10412_wire and read_asr_10113);
    -- flow through binary operator AND_u1_u1_10417_inst
    AND_u1_u1_10417_wire <= (psr_locks_available_to_start_asr_access_10405 and speculative_asr_locks_available_10399);
    -- flow through binary operator AND_u1_u1_10418_inst
    AND_u1_u1_10418_wire <= (AND_u1_u1_10414_wire and AND_u1_u1_10417_wire);
    -- flow through binary operator AND_u1_u1_10426_inst
    AND_u1_u1_10426_wire <= (NOT_u1_u1_10424_wire and write_registers_10227);
    -- flow through binary operator AND_u1_u1_10428_inst
    AND_u1_u1_10428_wire <= (AND_u1_u1_10426_wire and write_asr_10284);
    -- flow through binary operator AND_u1_u1_10440_inst
    IU_ASR_WRITE_START_10441 <= (AASR_WRITE_START_10430 and NOT_u1_u1_10439_wire);
    -- flow through binary operator AND_u1_u1_10445_inst
    CCU_ASR_WRITE_START_10446 <= (AASR_WRITE_START_10430 and ccu_write_asr_9898);
    -- flow through binary operator AND_u1_u1_10451_inst
    IU_ASR_READ_START_10452 <= (ASR_READ_START_10420 and NOT_u1_u1_10450_wire);
    -- flow through binary operator AND_u1_u1_10456_inst
    CCU_ASR_READ_START_10457 <= (ASR_READ_START_10420 and ccu_read_asr_9898);
    -- flow through binary operator AND_u1_u1_10467_inst
    AND_u1_u1_10467_wire <= (MUX_10463_wire and OR_u1_u1_10466_wire);
    -- flow through binary operator AND_u1_u1_10470_inst
    AND_u1_u1_10470_wire <= (speculative_asr_locks_available_10399 and psr_locks_available_to_start_asr_access_10405);
    -- flow through binary operator AND_u1_u1_10471_inst
    update_asr_locks_due_to_read_10472 <= (AND_u1_u1_10467_wire and AND_u1_u1_10470_wire);
    -- flow through binary operator AND_u1_u1_10479_inst
    update_asr_locks_due_to_write_10480 <= (write_asr_10284 and OR_u1_u1_10478_wire);
    -- flow through binary operator AND_u1_u1_10547_inst
    asr_write_to_read_bypass_10548 <= (AASR_WRITE_START_10430 and EQ_u5_u1_10546_wire);
    -- flow through binary operator AND_u1_u1_10602_inst
    AND_u1_u1_10602_wire <= (NOT_u1_u1_10601_wire and allow_non_asr_reg_read_10583);
    -- flow through binary operator AND_u1_u1_10606_inst
    AND_u1_u1_10606_wire <= (NOT_u1_u1_10604_wire and read_command_valid_10022);
    -- flow through binary operator AND_u1_u1_10607_inst
    iu_non_asr_read_is_active_10608 <= (AND_u1_u1_10602_wire and AND_u1_u1_10606_wire);
    -- flow through binary operator AND_u1_u1_10619_inst
    AND_u1_u1_10619_wire <= (NOT_u1_u1_10618_wire and iu_allow_reg_write_10587);
    -- flow through binary operator AND_u1_u1_10623_inst
    AND_u1_u1_10623_wire <= (write_command_valid_10231 and NOT_u1_u1_10622_wire);
    -- flow through binary operator AND_u1_u1_10624_inst
    iu_non_asr_clear_locks_is_active_10625 <= (AND_u1_u1_10619_wire and AND_u1_u1_10623_wire);
    -- flow through binary operator AND_u1_u1_10629_inst
    iu_non_asr_write_is_active_10630 <= (iu_non_asr_clear_locks_is_active_10625 and write_registers_10227);
    -- flow through binary operator AND_u1_u1_10790_inst
    speculative_lock_locks_available_for_bypass_10791 <= (speculative_reg_lock_locks_available_for_bypass_10674 and speculative_psr_lock_locks_available_for_bypass_10707);
    -- flow through binary operator AND_u1_u1_10878_inst
    bypass_possible_10879 <= (NOT_u1_u1_10874_wire and OR_u1_u1_10877_wire);
    -- flow through binary operator AND_u1_u1_10936_inst
    AND_u1_u1_10936_wire <= (write_command_valid_10231 and write_10183);
    -- flow through binary operator AND_u1_u1_10937_inst
    do_write_gpr_from_iu_10938 <= (iu_non_asr_write_is_active_10630 and AND_u1_u1_10936_wire);
    -- flow through binary operator AND_u1_u1_10942_inst
    AND_u1_u1_10942_wire <= (ccu_command_valid_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_10945_inst
    AND_u1_u1_10945_wire <= (ccu_write_read_bar_9898 and ccu_iu_reg_9898);
    -- flow through binary operator AND_u1_u1_10946_inst
    do_write_gpr_from_ccu_10947 <= (AND_u1_u1_10942_wire and AND_u1_u1_10945_wire);
    -- flow through binary operator AND_u1_u1_10956_inst
    double_gpr_flag_10957 <= (do_write_gpr_from_iu_10938 and double_flag_10187);
    -- flow through binary operator AND_u1_u1_10978_inst
    do_write_psr_from_iu_10979 <= (iu_non_asr_write_is_active_10630 and NEQ_u3_u1_10977_wire);
    -- flow through binary operator AND_u1_u1_10983_inst
    AND_u1_u1_10983_wire <= (ccu_command_valid_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_10986_inst
    AND_u1_u1_10986_wire <= (ccu_write_read_bar_9898 and ccu_psr_9898);
    -- flow through binary operator AND_u1_u1_10987_inst
    do_write_psr_from_ccu_10988 <= (AND_u1_u1_10983_wire and AND_u1_u1_10986_wire);
    -- flow through binary operator AND_u1_u1_11033_inst
    do_write_tbr_from_iu_11034 <= (iu_non_asr_write_is_active_10630 and write_tbr_10266);
    -- flow through binary operator AND_u1_u1_11038_inst
    AND_u1_u1_11038_wire <= (ccu_command_valid_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_11041_inst
    AND_u1_u1_11041_wire <= (ccu_write_read_bar_9898 and ccu_tbr_9898);
    -- flow through binary operator AND_u1_u1_11042_inst
    do_write_tbr_from_ccu_11043 <= (AND_u1_u1_11038_wire and AND_u1_u1_11041_wire);
    -- flow through binary operator AND_u1_u1_11063_inst
    do_write_wim_from_iu_11064 <= (iu_non_asr_write_is_active_10630 and write_wim_10275);
    -- flow through binary operator AND_u1_u1_11068_inst
    AND_u1_u1_11068_wire <= (ccu_command_valid_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_11071_inst
    AND_u1_u1_11071_wire <= (ccu_write_read_bar_9898 and ccu_wim_9898);
    -- flow through binary operator AND_u1_u1_11072_inst
    do_write_wim_from_ccu_11073 <= (AND_u1_u1_11068_wire and AND_u1_u1_11071_wire);
    -- flow through binary operator AND_u1_u1_11089_inst
    do_write_y_from_iu_11090 <= (iu_non_asr_write_is_active_10630 and write_y_10293);
    -- flow through binary operator AND_u1_u1_11094_inst
    AND_u1_u1_11094_wire <= (ccu_command_valid_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_11097_inst
    AND_u1_u1_11097_wire <= (ccu_write_read_bar_9898 and ccu_y_9898);
    -- flow through binary operator AND_u1_u1_11098_inst
    do_write_y_from_ccu_11099 <= (AND_u1_u1_11094_wire and AND_u1_u1_11097_wire);
    -- flow through binary operator AND_u1_u1_11118_inst
    AND_u1_u1_11118_wire <= (speculative_reg_locks_available_10674 and speculative_psr_locks_available_10696);
    -- flow through binary operator AND_u1_u1_11120_inst
    AND_u1_u1_11120_wire <= (AND_u1_u1_11118_wire and speculative_asr_locks_available_10399);
    -- flow through binary operator AND_u1_u1_11123_inst
    AND_u1_u1_11123_wire <= (speculative_tbr_read_lock_available_10737 and speculative_wim_read_lock_available_10753);
    -- flow through binary operator AND_u1_u1_11125_inst
    AND_u1_u1_11125_wire <= (AND_u1_u1_11123_wire and speculative_y_read_lock_available_10772);
    -- flow through binary operator AND_u1_u1_11126_inst
    all_locks_available_11127 <= (AND_u1_u1_11120_wire and AND_u1_u1_11125_wire);
    -- flow through binary operator AND_u1_u1_11134_inst
    AND_u1_u1_11134_wire <= (ccu_command_valid_9898 and allow_non_asr_reg_read_10583);
    -- flow through binary operator AND_u1_u1_11137_inst
    do_read_from_ccu_11138 <= (AND_u1_u1_11134_wire and NOT_u1_u1_11136_wire);
    -- flow through binary operator AND_u1_u1_11165_inst
    wwrite_gpr_even_11166 <= (write_gpr_flag_10952 and OR_u1_u1_11164_wire);
    -- flow through binary operator AND_u1_u1_11174_inst
    wwrite_gpr_odd_11175 <= (write_gpr_flag_10952 and OR_u1_u1_11173_wire);
    -- flow through binary operator AND_u1_u1_11300_inst
    AND_u1_u1_11300_wire <= (read_rs1_9950 and UGT_u5_u1_11299_wire);
    -- flow through binary operator AND_u1_u1_11305_inst
    AND_u1_u1_11305_wire <= (read_rs2_9958 and UGT_u5_u1_11304_wire);
    -- flow through binary operator AND_u1_u1_11313_inst
    AND_u1_u1_11313_wire <= (OR_u1_u1_11309_wire and UGT_u5_u1_11312_wire);
    -- flow through binary operator AND_u1_u1_11328_inst
    ok_to_prefetch_11329 <= (NOT_u1_u1_11323_wire and OR_u1_u1_11327_wire);
    -- flow through binary operator AND_u1_u1_11336_inst
    AND_u1_u1_11336_wire <= (read_command_valid_10022 and OR_u1_u1_11335_wire);
    -- flow through binary operator AND_u1_u1_11344_inst
    AND_u1_u1_11344_wire <= (OR_u1_u1_11341_wire and NOT_u1_u1_11343_wire);
    -- flow through binary operator AND_u1_u1_11345_inst
    AND_u1_u1_11345_wire <= (AND_u1_u1_11336_wire and AND_u1_u1_11344_wire);
    -- flow through binary operator AND_u1_u1_11351_inst
    AND_u1_u1_11351_wire <= (OR_u1_u1_11349_wire and ok_to_prefetch_11329);
    -- flow through binary operator AND_u1_u1_11358_inst
    AND_u1_u1_11358_wire <= (NOT_u1_u1_11354_wire and OR_u1_u1_11357_wire);
    -- flow through binary operator AND_u1_u1_11360_inst
    AND_u1_u1_11360_wire <= (AND_u1_u1_11358_wire and iu_non_asr_read_is_active_10608);
    -- flow through binary operator AND_u1_u1_11362_inst
    AND_u1_u1_11362_wire <= (AND_u1_u1_11351_wire and OR_u1_u1_11361_wire);
    -- flow through binary operator AND_u1_u1_11363_inst
    send_read_response_to_exec_or_ls_11364 <= (AND_u1_u1_11345_wire and AND_u1_u1_11362_wire);
    -- flow through binary operator AND_u1_u1_11369_inst
    AND_u1_u1_11369_wire <= (send_read_response_to_exec_or_ls_11364 and NOT_u1_u1_11368_wire);
    -- flow through binary operator AND_u1_u1_11372_inst
    send_read_response_to_exec_11373 <= (AND_u1_u1_11369_wire and NOT_u1_u1_11371_wire);
    -- flow through binary operator AND_u1_u1_11377_inst
    send_read_response_to_ls_11378 <= (send_read_response_to_exec_or_ls_11364 and read_send_to_ls_9934);
    -- flow through binary operator AND_u1_u1_11382_inst
    AND_u1_u1_11382_wire <= (read_command_valid_10022 and read_send_rs1_to_sc_9942);
    -- flow through binary operator AND_u1_u1_11385_inst
    AND_u1_u1_11385_wire <= (have_rs1_credit_11287 and ok_to_prefetch_11329);
    -- flow through binary operator AND_u1_u1_11386_inst
    AND_u1_u1_11386_wire <= (AND_u1_u1_11382_wire and AND_u1_u1_11385_wire);
    -- flow through binary operator AND_u1_u1_11391_inst
    AND_u1_u1_11391_wire <= (NOT_u1_u1_11388_wire and NOT_u1_u1_11390_wire);
    -- flow through binary operator AND_u1_u1_11394_inst
    AND_u1_u1_11394_wire <= (all_locks_available_11127 and iu_non_asr_read_is_active_10608);
    -- flow through binary operator AND_u1_u1_11395_inst
    AND_u1_u1_11395_wire <= (AND_u1_u1_11391_wire and AND_u1_u1_11394_wire);
    -- flow through binary operator AND_u1_u1_11396_inst
    send_read_rs1_response_11397 <= (AND_u1_u1_11386_wire and AND_u1_u1_11395_wire);
    -- flow through binary operator AND_u1_u1_11401_inst
    AND_u1_u1_11401_wire <= (read_command_valid_10022 and read_send_cc_to_sc_9938);
    -- flow through binary operator AND_u1_u1_11408_inst
    AND_u1_u1_11408_wire <= (NOT_u1_u1_11404_wire and OR_u1_u1_11407_wire);
    -- flow through binary operator AND_u1_u1_11410_inst
    AND_u1_u1_11410_wire <= (AND_u1_u1_11408_wire and iu_non_asr_read_is_active_10608);
    -- flow through binary operator AND_u1_u1_11411_inst
    AND_u1_u1_11411_wire <= (have_cc_credit_11280 and AND_u1_u1_11410_wire);
    -- flow through binary operator AND_u1_u1_11412_inst
    send_read_cc_response_11413 <= (AND_u1_u1_11401_wire and AND_u1_u1_11411_wire);
    -- flow through binary operator AND_u1_u1_11432_inst
    AND_u1_u1_11432_wire <= (ls_credit_return_9633 and NOT_u1_u1_11431_wire);
    -- flow through binary operator AND_u1_u1_11441_inst
    AND_u1_u1_11441_wire <= (NOT_u1_u1_11439_wire and send_read_response_to_ls_11378);
    -- flow through binary operator AND_u1_u1_11460_inst
    AND_u1_u1_11460_wire <= (cc_credit_return_9621 and NOT_u1_u1_11459_wire);
    -- flow through binary operator AND_u1_u1_11469_inst
    AND_u1_u1_11469_wire <= (NOT_u1_u1_11467_wire and send_read_cc_response_11413);
    -- flow through binary operator AND_u1_u1_11488_inst
    AND_u1_u1_11488_wire <= (rs1_credit_return_9627 and NOT_u1_u1_11487_wire);
    -- flow through binary operator AND_u1_u1_11497_inst
    AND_u1_u1_11497_wire <= (NOT_u1_u1_11495_wire and send_read_rs1_response_11397);
    -- flow through binary operator AND_u1_u1_11516_inst
    AND_u1_u1_11516_wire <= (iu_credit_return_9639 and NOT_u1_u1_11515_wire);
    -- flow through binary operator AND_u1_u1_11525_inst
    AND_u1_u1_11525_wire <= (NOT_u1_u1_11523_wire and send_read_response_to_exec_11373);
    -- flow through binary operator AND_u1_u1_11558_inst
    AND_u1_u1_11558_wire <= (NOT_u1_u1_11556_wire and write_asr_10284);
    -- flow through binary operator AND_u1_u1_11561_inst
    AND_u1_u1_11561_wire <= (AND_u1_u1_11558_wire and NOT_u1_u1_11560_wire);
    -- flow through binary operator AND_u1_u1_11650_inst
    AND_u1_u1_11650_wire <= (do_write_gpr_from_iu_10938 and double_flag_10187);
    -- flow through binary operator AND_u1_u1_11671_inst
    AND_u1_u1_11671_wire <= (NOT_u1_u1_11669_wire and ccu_asr_9898);
    -- flow through binary operator AND_u1_u1_11694_inst
    AND_u1_u1_11694_wire <= (OR_u1_u1_11683_wire and OR_u1_u1_11693_wire);
    -- flow through binary operator AND_u1_u1_11703_inst
    AND_u1_u1_11703_wire <= (NOT_u1_u1_11702_wire and allow_non_asr_reg_read_10583);
    -- flow through binary operator AND_u1_u1_11706_inst
    AND_u1_u1_11706_wire <= (ccu_write_read_bar_9898 and ccu_allow_reg_write_10591);
    -- flow through binary operator AND_u1_u1_11710_inst
    AND_u1_u1_11710_wire <= (OR_u1_u1_11708_wire and ccu_command_valid_9898);
    -- flow through binary operator AND_u1_u1_11711_inst
    send_ccu_response_11712 <= (AND_u1_u1_11694_wire and AND_u1_u1_11710_wire);
    -- flow through binary operator AND_u1_u1_11737_inst
    AND_u1_u1_11737_wire <= (do_read_from_ccu_11138 and ccu_iu_reg_9898);
    -- flow through binary operator AND_u1_u1_11743_inst
    AND_u1_u1_11743_wire <= (do_read_from_ccu_11138 and ccu_psr_9898);
    -- flow through binary operator AND_u1_u1_11755_inst
    AND_u1_u1_11755_wire <= (do_read_from_ccu_11138 and ccu_tbr_9898);
    -- flow through binary operator AND_u1_u1_11761_inst
    AND_u1_u1_11761_wire <= (do_read_from_ccu_11138 and ccu_wim_9898);
    -- flow through binary operator AND_u1_u1_11768_inst
    AND_u1_u1_11768_wire <= (do_read_from_ccu_11138 and ccu_y_9898);
    -- flow through binary operator AND_u1_u1_12054_inst
    AND_u1_u1_12054_wire <= (next_ccu_valid_12035 and NOT_u1_u1_12053_wire);
    -- flow through binary operator AND_u1_u1_12056_inst
    AND_u1_u1_12056_wire <= (AND_u1_u1_12054_wire and next_ccu_iu_reg_12035);
    -- flow through binary operator AND_u1_u1_12065_inst
    AND_u1_u1_12065_wire <= (next_ccu_valid_12035 and NOT_u1_u1_12064_wire);
    -- flow through binary operator AND_u1_u1_12067_inst
    AND_u1_u1_12067_wire <= (AND_u1_u1_12065_wire and next_ccu_asr_12035);
    -- flow through binary operator AND_u1_u1_12184_inst
    psr_modified_12185 <= (NEQ_u3_u1_12182_wire and write_registers_10227);
    -- flow through binary operator AND_u1_u1_12189_inst
    tbr_modified_12190 <= (write_tbr_10266 and write_registers_10227);
    -- flow through binary operator AND_u1_u1_9902_inst
    rccu_9903 <= (l_get_ccu_command_9855 and ccu_command_valid_9898);
    -- flow through binary operator AND_u3_u3_10704_inst
    AND_u3_u3_10704_wire <= (lock_psr_9990 and post_clear_copy_of_psr_read_locks_10700);
    -- flow through binary operator AND_u3_u3_10716_inst
    AND_u3_u3_10716_wire <= (read_psr_9986 and post_clear_copy_of_psr_read_locks_10700);
    -- flow through binary operator AND_u5_u5_10319_inst
    CWP_10320 <= (slice_10317_wire and R_NWINDOWS_MOD_MASK_5_10318_wire_constant);
    -- flow through binary operator AND_u5_u5_10325_inst
    ccu_cwp_10326 <= (slice_10323_wire and R_NWINDOWS_MOD_MASK_5_10324_wire_constant);
    -- flow through binary operator AND_u5_u5_10331_inst
    iu_cwp_10332 <= (slice_10329_wire and R_NWINDOWS_MOD_MASK_5_10330_wire_constant);
    -- flow through binary operator AND_u5_u5_10374_inst
    post_save_restore_cwp_10375 <= (MUX_10372_wire and R_NWINDOWS_MOD_MASK_5_10373_wire_constant);
    -- flow through binary operator BITSEL_u32_u1_11621_inst
    process(next_PSR_11019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(next_PSR_11019, konst_11620_wire_constant, tmp_var);
      BITSEL_u32_u1_11621_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_11625_inst
    process(next_PSR_11019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(next_PSR_11019, konst_11624_wire_constant, tmp_var);
      BITSEL_u32_u1_11625_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_11628_inst
    process(next_PSR_11019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(next_PSR_11019, konst_11627_wire_constant, tmp_var);
      BITSEL_u32_u1_11628_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u32_u1_11814_inst
    process(next_PSR_11019) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(next_PSR_11019, konst_11813_wire_constant, tmp_var);
      S_to_ls_11815 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u3_u1_10352_inst
    process(write_psr_10203) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(write_psr_10203, konst_10351_wire_constant, tmp_var);
      BITSEL_u3_u1_10352_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u3_u1_10644_inst
    process(write_psr_10203) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(write_psr_10203, konst_10643_wire_constant, tmp_var);
      clear_all_locks_10645 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u3_u1_10711_inst
    process(post_clear_copy_of_psr_read_locks_10700) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(post_clear_copy_of_psr_read_locks_10700, konst_10710_wire_constant, tmp_var);
      cc_write_pending_10712 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_11162_inst
    process(wwrite_gpr_rd_id_10963) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(wwrite_gpr_rd_id_10963, konst_11161_wire_constant, tmp_var);
      BITSEL_u5_u1_11162_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_11172_inst
    process(wwrite_gpr_rd_id_10963) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(wwrite_gpr_rd_id_10963, konst_11171_wire_constant, tmp_var);
      BITSEL_u5_u1_11172_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_11222_inst
    process(read_gpr_rs1_id_11144) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(read_gpr_rs1_id_11144, konst_11221_wire_constant, tmp_var);
      sel_rs1_l_11223 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_11235_inst
    process(rs2_9962) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(rs2_9962, konst_11234_wire_constant, tmp_var);
      BITSEL_u5_u1_11235_wire <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u5_u1_11250_inst
    process(read_rd_9982) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(read_rd_9982, konst_11249_wire_constant, tmp_var);
      BITSEL_u5_u1_11250_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u101_u104_12395_inst
    process(CONCAT_u59_u101_12393_wire, next_get_commands_12350) -- 
      variable tmp_var : std_logic_vector(103 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u59_u101_12393_wire, next_get_commands_12350, tmp_var);
      CONCAT_u101_u104_12395_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u102_u108_12153_inst
    process(CONCAT_u96_u102_12145_wire, CONCAT_u2_u6_12152_wire) -- 
      variable tmp_var : std_logic_vector(107 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u96_u102_12145_wire, CONCAT_u2_u6_12152_wire, tmp_var);
      next_LOCKS_12154 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u104_u113_12399_inst
    process(CONCAT_u101_u104_12395_wire, CONCAT_u8_u9_12398_wire) -- 
      variable tmp_var : std_logic_vector(112 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u101_u104_12395_wire, CONCAT_u8_u9_12398_wire, tmp_var);
      CONCAT_u104_u113_12399_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u108_u131_12170_inst
    process(next_LOCKS_12154, next_STATES_12163) -- 
      variable tmp_var : std_logic_vector(130 downto 0); -- 
    begin -- 
      ApConcat_proc(next_LOCKS_12154, next_STATES_12163, tmp_var);
      CONCAT_u108_u131_12170_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u108_u131_12386_inst
    process(next_mLOCKS_12373, next_mSTATES_12377) -- 
      variable tmp_var : std_logic_vector(130 downto 0); -- 
    begin -- 
      ApConcat_proc(next_mLOCKS_12373, next_mSTATES_12377, tmp_var);
      CONCAT_u108_u131_12386_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u108_u131_9672_inst
    process(mLOCKS_9657, mSTATES_9663) -- 
      variable tmp_var : std_logic_vector(130 downto 0); -- 
    begin -- 
      ApConcat_proc(mLOCKS_9657, mSTATES_9663, tmp_var);
      CONCAT_u108_u131_9672_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u12_12092_inst
    process(CONCAT_u5_u10_12088_wire, CONCAT_u1_u2_12091_wire) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_12088_wire, CONCAT_u1_u2_12091_wire, tmp_var);
      CONCAT_u10_u12_12092_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u20_12085_inst
    process(CONCAT_u5_u10_12081_wire, CONCAT_u5_u10_12084_wire) -- 
      variable tmp_var : std_logic_vector(19 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_12081_wire, CONCAT_u5_u10_12084_wire, tmp_var);
      CONCAT_u10_u20_12085_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u10_u23_12162_inst
    process(CONCAT_u5_u10_12158_wire, CONCAT_u5_u13_12161_wire) -- 
      variable tmp_var : std_logic_vector(22 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u10_12158_wire, CONCAT_u5_u13_12161_wire, tmp_var);
      next_STATES_12163 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u131_u132_12389_inst
    process(CONCAT_u108_u131_12386_wire) -- 
      variable tmp_var : std_logic_vector(131 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u108_u131_12386_wire, type_cast_12388_wire_constant, tmp_var);
      CONCAT_u131_u132_12389_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u13_u45_12105_inst
    process(CONCAT_u5_u13_12103_wire, wwrite_sreg_value_10219) -- 
      variable tmp_var : std_logic_vector(44 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u13_12103_wire, wwrite_sreg_value_10219, tmp_var);
      CONCAT_u13_u45_12105_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u144_u275_12171_inst
    process(CONCAT_u16_u144_12167_wire, CONCAT_u108_u131_12170_wire) -- 
      variable tmp_var : std_logic_vector(274 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u144_12167_wire, CONCAT_u108_u131_12170_wire, tmp_var);
      next_CIRCULANT_12172 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u144_u275_9673_inst
    process(CONCAT_u16_u144_9669_wire, CONCAT_u108_u131_9672_wire) -- 
      variable tmp_var : std_logic_vector(274 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u16_u144_9669_wire, CONCAT_u108_u131_9672_wire, tmp_var);
      CIRCULANT_9674 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u146_u278_12390_inst
    process(CONCAT_u18_u146_12383_wire, CONCAT_u131_u132_12389_wire) -- 
      variable tmp_var : std_logic_vector(277 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u18_u146_12383_wire, CONCAT_u131_u132_12389_wire, tmp_var);
      CONCAT_u146_u278_12390_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u142_11857_inst
    process(CONCAT_u6_u14_11849_wire, CONCAT_u64_u128_11856_wire) -- 
      variable tmp_var : std_logic_vector(141 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u14_11849_wire, CONCAT_u64_u128_11856_wire, tmp_var);
      read_response_to_ls_11858 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u142_11882_inst
    process(CONCAT_u6_u14_11874_wire, CONCAT_u64_u128_11881_wire) -- 
      variable tmp_var : std_logic_vector(141 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u14_11874_wire, CONCAT_u64_u128_11881_wire, tmp_var);
      read_response_to_exec_11883 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u32_11659_inst
    process(CONCAT_u4_u14_11640_wire, CONCAT_u4_u18_11658_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u14_11640_wire, CONCAT_u4_u18_11658_wire, tmp_var);
      write_SIGNATURE_11660 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u144_12167_inst
    process(next_CREDITS_11548, next_STATUS_REGS_12137) -- 
      variable tmp_var : std_logic_vector(143 downto 0); -- 
    begin -- 
      ApConcat_proc(next_CREDITS_11548, next_STATUS_REGS_12137, tmp_var);
      CONCAT_u16_u144_12167_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u144_9669_inst
    process(mCREDITS_9645, mSTATUS_REGS_9651) -- 
      variable tmp_var : std_logic_vector(143 downto 0); -- 
    begin -- 
      ApConcat_proc(mCREDITS_9645, mSTATUS_REGS_9651, tmp_var);
      CONCAT_u16_u144_9669_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u18_u146_12383_inst
    process(CONCAT_u2_u18_12381_wire, next_mSTATUS_REGS_12369) -- 
      variable tmp_var : std_logic_vector(145 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u18_12381_wire, next_mSTATUS_REGS_12369, tmp_var);
      CONCAT_u18_u146_12383_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_11622_inst
    process(do_write_psr_from_iu_10979, BITSEL_u32_u1_11621_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(do_write_psr_from_iu_10979, BITSEL_u32_u1_11621_wire, tmp_var);
      CONCAT_u1_u2_11622_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_11629_inst
    process(BITSEL_u32_u1_11625_wire, BITSEL_u32_u1_11628_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(BITSEL_u32_u1_11625_wire, BITSEL_u32_u1_11628_wire, tmp_var);
      CONCAT_u1_u2_11629_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_11638_inst
    process(do_write_wim_from_iu_11064, do_write_tbr_from_iu_11034) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(do_write_wim_from_iu_11064, do_write_tbr_from_iu_11034, tmp_var);
      CONCAT_u1_u2_11638_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_11643_inst
    process(do_write_y_from_iu_11090, do_write_gpr_from_iu_10938) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(do_write_y_from_iu_11090, do_write_gpr_from_iu_10938, tmp_var);
      CONCAT_u1_u2_11643_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_11843_inst
    process(R_ONE_1_11841_wire_constant, S_to_ls_11815) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_11841_wire_constant, S_to_ls_11815, tmp_var);
      CONCAT_u1_u2_11843_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_12091_inst
    process(wwrite_gpr_even_11166, wwrite_gpr_odd_11175) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(wwrite_gpr_even_11166, wwrite_gpr_odd_11175, tmp_var);
      CONCAT_u1_u2_12091_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_12148_inst
    process(next_wim_read_lock_11986, next_tbr_read_lock_11977) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(next_wim_read_lock_11986, next_tbr_read_lock_11977, tmp_var);
      CONCAT_u1_u2_12148_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_12347_inst
    process(get_ccu_command_11942, get_read_command_11930) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(get_ccu_command_11942, get_read_command_11930, tmp_var);
      CONCAT_u1_u2_12347_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_11903_inst
    process(R_ONE_1_11901_wire_constant, read_thread_id_9914) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(R_ONE_1_11901_wire_constant, read_thread_id_9914, tmp_var);
      CONCAT_u1_u5_11903_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u6_11655_inst
    process(AND_u1_u1_11650_wire, MUX_11654_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_11650_wire, MUX_11654_wire, tmp_var);
      CONCAT_u1_u6_11655_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u20_u32_12093_inst
    process(CONCAT_u10_u20_12085_wire, CONCAT_u10_u12_12092_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u10_u20_12085_wire, CONCAT_u10_u12_12092_wire, tmp_var);
      CONCAT_u20_u32_12093_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u278_u391_12400_inst
    process(CONCAT_u146_u278_12390_wire, CONCAT_u104_u113_12399_wire) -- 
      variable tmp_var : std_logic_vector(390 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u146_u278_12390_wire, CONCAT_u104_u113_12399_wire, tmp_var);
      next_local_circulant_12401 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u27_u32_10998_inst
    process(slice_10996_wire, post_save_restore_cwp_10375) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_10996_wire, post_save_restore_cwp_10375, tmp_var);
      wu_save_restore_PSR_10999 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u18_12381_inst
    process(next_wb_state_12298, next_mCREDITS_12365) -- 
      variable tmp_var : std_logic_vector(17 downto 0); -- 
    begin -- 
      ApConcat_proc(next_wb_state_12298, next_mCREDITS_12365, tmp_var);
      CONCAT_u2_u18_12381_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_12349_inst
    process(CONCAT_u1_u2_12347_wire, get_write_command_11936) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_12347_wire, get_write_command_11936, tmp_var);
      next_get_commands_12350 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_11630_inst
    process(CONCAT_u1_u2_11622_wire, CONCAT_u1_u2_11629_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_11622_wire, CONCAT_u1_u2_11629_wire, tmp_var);
      CONCAT_u2_u4_11630_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u4_11647_inst
    process(CONCAT_u1_u2_11643_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_11643_wire, CONCAT_u1_u2_11646_wire_constant, tmp_var);
      CONCAT_u2_u4_11647_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_11845_inst
    process(CONCAT_u1_u2_11843_wire, read_thread_id_9914) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_11843_wire, read_thread_id_9914, tmp_var);
      CONCAT_u2_u6_11845_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_11870_inst
    process(CONCAT_u1_u2_11868_wire_constant, read_thread_id_9914) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_11868_wire_constant, read_thread_id_9914, tmp_var);
      CONCAT_u2_u6_11870_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u6_12152_inst
    process(CONCAT_u1_u2_12148_wire, CONCAT_u3_u4_12151_wire) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_12148_wire, CONCAT_u3_u4_12151_wire, tmp_var);
      CONCAT_u2_u6_12152_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_11848_inst
    process(read_stream_id_9918, read_slot_id_9922) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(read_stream_id_9918, read_slot_id_9922, tmp_var);
      CONCAT_u2_u8_11848_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u8_11873_inst
    process(read_stream_id_9918, read_slot_id_9922) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(read_stream_id_9918, read_slot_id_9922, tmp_var);
      CONCAT_u2_u8_11873_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u147_12107_inst
    process(CONCAT_u20_u32_12093_wire, CONCAT_u70_u115_12106_wire) -- 
      variable tmp_var : std_logic_vector(146 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u20_u32_12093_wire, CONCAT_u70_u115_12106_wire, tmp_var);
      command_to_reg_file_access_12108 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u33_12099_inst
    process(wwrite_gpr_value_odd_11156, AASR_WRITE_START_10430) -- 
      variable tmp_var : std_logic_vector(32 downto 0); -- 
    begin -- 
      ApConcat_proc(wwrite_gpr_value_odd_11156, AASR_WRITE_START_10430, tmp_var);
      CONCAT_u32_u33_12099_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_11852_inst
    process(rs1_response_value_11821, rs2_response_value_11827) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(rs1_response_value_11821, rs2_response_value_11827, tmp_var);
      CONCAT_u32_u64_11852_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_11855_inst
    process(rd_h_response_value_11833, rd_l_response_value_11839) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_h_response_value_11833, rd_l_response_value_11839, tmp_var);
      CONCAT_u32_u64_11855_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_11877_inst
    process(rs1_response_value_11821, rs2_response_value_11827) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(rs1_response_value_11821, rs2_response_value_11827, tmp_var);
      CONCAT_u32_u64_11877_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_11880_inst
    process(psr_response_value_11864, read_sreg_value_11795) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(psr_response_value_11864, read_sreg_value_11795, tmp_var);
      CONCAT_u32_u64_11880_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_12132_inst
    process(next_PSR_11019, next_WIM_11085) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_PSR_11019, next_WIM_11085, tmp_var);
      CONCAT_u32_u64_12132_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u64_12135_inst
    process(next_TBR_11056, next_Y_11108) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(next_TBR_11056, next_Y_11108, tmp_var);
      CONCAT_u32_u64_12135_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u38_10499_inst
    process(CONCAT_u5_u37_10497_wire, AASR_WRITE_START_10430) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u37_10497_wire, AASR_WRITE_START_10430, tmp_var);
      asr_write_request_from_ccu_10500 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u38_10511_inst
    process(CONCAT_u5_u37_10509_wire, AASR_WRITE_START_10430) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u37_10509_wire, AASR_WRITE_START_10430, tmp_var);
      asr_write_request_from_iu_10512 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u38_12264_inst
    process(CONCAT_u5_u37_12262_wire, ASR_WRITE_START_12250) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u37_12262_wire, ASR_WRITE_START_12250, tmp_var);
      CONCAT_u37_u38_12264_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u70_12100_inst
    process(CONCAT_u5_u37_12096_wire, CONCAT_u32_u33_12099_wire) -- 
      variable tmp_var : std_logic_vector(69 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u37_12096_wire, CONCAT_u32_u33_12099_wire, tmp_var);
      CONCAT_u37_u70_12100_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u38_u44_12269_inst
    process(CONCAT_u37_u38_12264_wire, CONCAT_u5_u6_12268_wire) -- 
      variable tmp_var : std_logic_vector(43 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u37_u38_12264_wire, CONCAT_u5_u6_12268_wire, tmp_var);
      asr_access_command_12270 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u4_12151_inst
    process(next_y_read_lock_11995, next_window_modify_lock_12010) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(next_y_read_lock_11995, next_window_modify_lock_12010, tmp_var);
      CONCAT_u3_u4_12151_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u6_12144_inst
    process(next_psr_read_locks_11965, next_copy_of_psr_read_locks_11968) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(next_psr_read_locks_11965, next_copy_of_psr_read_locks_11968, tmp_var);
      CONCAT_u3_u6_12144_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u40_u232_9705_inst
    process(CONCAT_u8_u40_9703_wire, IU_REG_READ_VALUES_9520) -- 
      variable tmp_var : std_logic_vector(231 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u8_u40_9703_wire, IU_REG_READ_VALUES_9520, tmp_var);
      READ_REGISTERS_9706 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u14_11640_inst
    process(CONCAT_u2_u4_11630_wire, CONCAT_u8_u10_11639_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_11630_wire, CONCAT_u8_u10_11639_wire, tmp_var);
      CONCAT_u4_u14_11640_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u18_11658_inst
    process(CONCAT_u2_u4_11647_wire, CONCAT_u6_u14_11657_wire) -- 
      variable tmp_var : std_logic_vector(17 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u4_11647_wire, CONCAT_u6_u14_11657_wire, tmp_var);
      CONCAT_u4_u18_11658_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_11728_inst
    process(write_thread_id_10163, write_stream_id_10167) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(write_thread_id_10163, write_stream_id_10167, tmp_var);
      CONCAT_u4_u6_11728_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_11543_inst
    process(next_lSCREDITS_11455, next_CCCREDITS_11483) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(next_lSCREDITS_11455, next_CCCREDITS_11483, tmp_var);
      CONCAT_u4_u8_11543_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_11546_inst
    process(next_RS1CREDITS_11511, next_IUCREDITS_11539) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(next_RS1CREDITS_11511, next_IUCREDITS_11539, tmp_var);
      CONCAT_u4_u8_11546_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u8_11635_inst
    process(slice_11632_wire, slice_11634_wire) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_11632_wire, slice_11634_wire, tmp_var);
      CONCAT_u4_u8_11635_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u59_u101_12393_inst
    process(next_read_command_12196, next_ccu_command_12202) -- 
      variable tmp_var : std_logic_vector(100 downto 0); -- 
    begin -- 
      ApConcat_proc(next_read_command_12196, next_ccu_command_12202, tmp_var);
      CONCAT_u59_u101_12393_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_12081_inst
    process(rread_asr_id_next_corrected_12071, rrs1_next_corrected_12060) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(rread_asr_id_next_corrected_12071, rrs1_next_corrected_12060, tmp_var);
      CONCAT_u5_u10_12081_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_12084_inst
    process(rrs2_next_12049, rread_rd_next_12049) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(rrs2_next_12049, rread_rd_next_12049, tmp_var);
      CONCAT_u5_u10_12084_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_12088_inst
    process(next_PREFETCH_READ_CWP_12013, wwrite_cwp_11182) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(next_PREFETCH_READ_CWP_12013, wwrite_cwp_11182, tmp_var);
      CONCAT_u5_u10_12088_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u10_12158_inst
    process(next_PREFETCH_READ_CWP_12013, next_PREFETCH_RS1_12074) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(next_PREFETCH_READ_CWP_12013, next_PREFETCH_RS1_12074, tmp_var);
      CONCAT_u5_u10_12158_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_12103_inst
    process(wwrite_asr_id_10223, CCOUNTER_8_9815) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(wwrite_asr_id_10223, CCOUNTER_8_9815, tmp_var);
      CONCAT_u5_u13_12103_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u13_12161_inst
    process(next_PREFETCH_ASR_12077, NCYCLE_COUNT_8_9868) -- 
      variable tmp_var : std_logic_vector(12 downto 0); -- 
    begin -- 
      ApConcat_proc(next_PREFETCH_ASR_12077, NCYCLE_COUNT_8_9868, tmp_var);
      CONCAT_u5_u13_12161_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_10497_inst
    process(ccu_rid_9898, ccu_rval_9898) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(ccu_rid_9898, ccu_rval_9898, tmp_var);
      CONCAT_u5_u37_10497_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_10509_inst
    process(wwrite_asr_id_10223, wwrite_sreg_value_10219) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(wwrite_asr_id_10223, wwrite_sreg_value_10219, tmp_var);
      CONCAT_u5_u37_10509_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_12096_inst
    process(wwrite_gpr_rd_id_10963, wwrite_gpr_value_even_11150) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(wwrite_gpr_rd_id_10963, wwrite_gpr_value_even_11150, tmp_var);
      CONCAT_u5_u37_12096_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_12262_inst
    process(write_asr_id_12254, write_sreg_value_12258) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(write_asr_id_12254, write_sreg_value_12258, tmp_var);
      CONCAT_u5_u37_12262_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_10504_inst
    process(ccu_rid_9898, ASR_READ_START_10420) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(ccu_rid_9898, ASR_READ_START_10420, tmp_var);
      asr_read_request_from_ccu_10505 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_10516_inst
    process(read_asr_id_10006, ASR_READ_START_10420) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(read_asr_id_10006, ASR_READ_START_10420, tmp_var);
      asr_read_request_from_iu_10517 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u6_12268_inst
    process(read_asr_id_next_12206) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(read_asr_id_next_12206, type_cast_12267_wire_constant, tmp_var);
      CONCAT_u5_u6_12268_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_11905_inst
    process(CONCAT_u1_u5_11903_wire, read_stream_id_9918) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_11903_wire, read_stream_id_9918, tmp_var);
      CONCAT_u5_u7_11905_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_11856_inst
    process(CONCAT_u32_u64_11852_wire, CONCAT_u32_u64_11855_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_11852_wire, CONCAT_u32_u64_11855_wire, tmp_var);
      CONCAT_u64_u128_11856_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_11881_inst
    process(CONCAT_u32_u64_11877_wire, CONCAT_u32_u64_11880_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_11877_wire, CONCAT_u32_u64_11880_wire, tmp_var);
      CONCAT_u64_u128_11881_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u128_12136_inst
    process(CONCAT_u32_u64_12132_wire, CONCAT_u32_u64_12135_wire) -- 
      variable tmp_var : std_logic_vector(127 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u64_12132_wire, CONCAT_u32_u64_12135_wire, tmp_var);
      next_STATUS_REGS_12137 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u64_u96_12141_inst
    process(next_reg_read_locks_11956, next_asr_read_locks_10568) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(next_reg_read_locks_11956, next_asr_read_locks_10568, tmp_var);
      CONCAT_u64_u96_12141_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u10_11908_inst
    process(read_slot_id_9922, resolved_cc_value_11899) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(read_slot_id_9922, resolved_cc_value_11899, tmp_var);
      CONCAT_u6_u10_11908_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u14_11657_inst
    process(CONCAT_u1_u6_11655_wire, write_reg_signature_11616) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u6_11655_wire, write_reg_signature_11616, tmp_var);
      CONCAT_u6_u14_11657_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u14_11849_inst
    process(CONCAT_u2_u6_11845_wire, CONCAT_u2_u8_11848_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u6_11845_wire, CONCAT_u2_u8_11848_wire, tmp_var);
      CONCAT_u6_u14_11849_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u14_11874_inst
    process(CONCAT_u2_u6_11870_wire, CONCAT_u2_u8_11873_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u6_11870_wire, CONCAT_u2_u8_11873_wire, tmp_var);
      CONCAT_u6_u14_11874_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u38_11731_inst
    process(write_slot_id_10171, write_SIGNATURE_11660) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(write_slot_id_10171, write_SIGNATURE_11660, tmp_var);
      CONCAT_u6_u38_11731_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u44_11732_inst
    process(CONCAT_u4_u6_11728_wire, CONCAT_u6_u38_11731_wire) -- 
      variable tmp_var : std_logic_vector(43 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_11728_wire, CONCAT_u6_u38_11731_wire, tmp_var);
      write_response_11733 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u70_u115_12106_inst
    process(CONCAT_u37_u70_12100_wire, CONCAT_u13_u45_12105_wire) -- 
      variable tmp_var : std_logic_vector(114 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u37_u70_12100_wire, CONCAT_u13_u45_12105_wire, tmp_var);
      CONCAT_u70_u115_12106_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u17_11909_inst
    process(CONCAT_u5_u7_11905_wire, CONCAT_u6_u10_11908_wire) -- 
      variable tmp_var : std_logic_vector(16 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_11905_wire, CONCAT_u6_u10_11908_wire, tmp_var);
      read_cc_response_11910 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u10_11639_inst
    process(CONCAT_u4_u8_11635_wire, CONCAT_u1_u2_11638_wire) -- 
      variable tmp_var : std_logic_vector(9 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_11635_wire, CONCAT_u1_u2_11638_wire, tmp_var);
      CONCAT_u8_u10_11639_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u16_11547_inst
    process(CONCAT_u4_u8_11543_wire, CONCAT_u4_u8_11546_wire) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u8_11543_wire, CONCAT_u4_u8_11546_wire, tmp_var);
      next_CREDITS_11548 <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u40_9703_inst
    process(slice_9701_wire, ASR_READ_VALUE_9534) -- 
      variable tmp_var : std_logic_vector(39 downto 0); -- 
    begin -- 
      ApConcat_proc(slice_9701_wire, ASR_READ_VALUE_9534, tmp_var);
      CONCAT_u8_u40_9703_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u8_u9_12398_inst
    process(next_counter_9615, next_read_rs1_response_sent_12361) -- 
      variable tmp_var : std_logic_vector(8 downto 0); -- 
    begin -- 
      ApConcat_proc(next_counter_9615, next_read_rs1_response_sent_12361, tmp_var);
      CONCAT_u8_u9_12398_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u96_u102_12145_inst
    process(CONCAT_u64_u96_12141_wire, CONCAT_u3_u6_12144_wire) -- 
      variable tmp_var : std_logic_vector(101 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u64_u96_12141_wire, CONCAT_u3_u6_12144_wire, tmp_var);
      CONCAT_u96_u102_12145_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_11450_inst
    process(ls_credit_return_9633, send_read_response_to_ls_11378) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ls_credit_return_9633, send_read_response_to_ls_11378, tmp_var);
      EQ_u1_u1_11450_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_11478_inst
    process(cc_credit_return_9621, send_read_cc_response_11413) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(cc_credit_return_9621, send_read_cc_response_11413, tmp_var);
      EQ_u1_u1_11478_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_11506_inst
    process(rs1_credit_return_9627, send_read_rs1_response_11397) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_credit_return_9627, send_read_rs1_response_11397, tmp_var);
      EQ_u1_u1_11506_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u1_u1_11534_inst
    process(iu_credit_return_9639, send_read_response_to_exec_11373) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(iu_credit_return_9639, send_read_response_to_exec_11373, tmp_var);
      EQ_u1_u1_11534_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10075_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_TBR_10074_wire_constant, tmp_var);
      EQ_u3_u1_10075_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10084_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_TBR_10083_wire_constant, tmp_var);
      EQ_u3_u1_10084_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10093_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_WIM_10092_wire_constant, tmp_var);
      EQ_u3_u1_10093_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10102_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_WIM_10101_wire_constant, tmp_var);
      EQ_u3_u1_10102_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10111_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_ASR_10110_wire_constant, tmp_var);
      EQ_u3_u1_10111_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10120_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_ASR_10119_wire_constant, tmp_var);
      EQ_u3_u1_10120_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10129_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_Y_10128_wire_constant, tmp_var);
      EQ_u3_u1_10129_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10138_inst
    process(sreg_type_10002) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sreg_type_10002, R_ACCESS_Y_10137_wire_constant, tmp_var);
      EQ_u3_u1_10138_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10264_inst
    process(write_sreg_type_10215) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(write_sreg_type_10215, R_ACCESS_TBR_10263_wire_constant, tmp_var);
      EQ_u3_u1_10264_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10273_inst
    process(write_sreg_type_10215) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(write_sreg_type_10215, R_ACCESS_WIM_10272_wire_constant, tmp_var);
      EQ_u3_u1_10273_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10282_inst
    process(write_sreg_type_10215) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(write_sreg_type_10215, R_ACCESS_ASR_10281_wire_constant, tmp_var);
      EQ_u3_u1_10282_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10291_inst
    process(write_sreg_type_10215) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(write_sreg_type_10215, R_ACCESS_Y_10290_wire_constant, tmp_var);
      EQ_u3_u1_10291_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10706_inst
    process(AND_u3_u3_10704_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u3_u3_10704_wire, konst_10705_wire_constant, tmp_var);
      speculative_psr_lock_locks_available_for_bypass_10707 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_10718_inst
    process(AND_u3_u3_10716_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u3_u3_10716_wire, konst_10717_wire_constant, tmp_var);
      speculative_psr_locks_available_for_sending_cc_10719 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_10546_inst
    process(resolved_asr_read_id_10535, resolved_asr_write_id_10541) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(resolved_asr_read_id_10535, resolved_asr_write_id_10541, tmp_var);
      EQ_u5_u1_10546_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_11319_inst
    process(PREFETCH_READ_CWP_9799, next_cwp_11179) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(PREFETCH_READ_CWP_9799, next_cwp_11179, tmp_var);
      match_with_prefetch_11320 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_11667_inst
    process(ccu_rid_9898, PREFETCH_RS1_9803) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_rid_9898, PREFETCH_RS1_9803, tmp_var);
      EQ_u5_u1_11667_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_11674_inst
    process(ccu_rid_9898, PREFETCH_ASR_9807) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(ccu_rid_9898, PREFETCH_ASR_9807, tmp_var);
      EQ_u5_u1_11674_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_10977_inst
    process(write_psr_10203) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(write_psr_10203, konst_10976_wire_constant, tmp_var);
      NEQ_u3_u1_10977_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_12182_inst
    process(write_psr_10203) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(write_psr_10203, konst_12181_wire_constant, tmp_var);
      NEQ_u3_u1_12182_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_11270_inst
    process(LSCREDITS_9726) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(LSCREDITS_9726, konst_11269_wire_constant, tmp_var);
      NEQ_u4_u1_11270_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_11277_inst
    process(CCCREDITS_9730) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(CCCREDITS_9730, konst_11276_wire_constant, tmp_var);
      NEQ_u4_u1_11277_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_11284_inst
    process(RS1CREDITS_9734) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(RS1CREDITS_9734, konst_11283_wire_constant, tmp_var);
      NEQ_u4_u1_11284_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u4_u1_11291_inst
    process(IUCREDITS_9738) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(IUCREDITS_9738, konst_11290_wire_constant, tmp_var);
      NEQ_u4_u1_11291_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_10340_inst
    process(ccu_cwp_10326, CWP_10320) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(ccu_cwp_10326, CWP_10320, tmp_var);
      NEQ_u5_u1_10340_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_10355_inst
    process(iu_cwp_10332, CWP_10320) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(iu_cwp_10332, CWP_10320, tmp_var);
      NEQ_u5_u1_10355_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_10346_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10346_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10387_inst
    process(ccu_update_psr_in_window_10343) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_update_psr_in_window_10343, tmp_var);
      NOT_u1_u1_10387_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10412_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10412_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10424_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10424_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10439_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10439_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10450_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10450_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10462_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10462_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10476_inst
    process(write_registers_10227) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_registers_10227, tmp_var);
      NOT_u1_u1_10476_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10601_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10601_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10604_inst
    process(read_asr_10113) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_asr_10113, tmp_var);
      NOT_u1_u1_10604_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10618_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_10618_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10622_inst
    process(write_asr_10284) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_asr_10284, tmp_var);
      NOT_u1_u1_10622_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_10874_inst
    process(read_send_rs1_to_sc_9942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_rs1_to_sc_9942, tmp_var);
      NOT_u1_u1_10874_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11136_inst
    process(ccu_write_read_bar_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_read_bar_9898, tmp_var);
      NOT_u1_u1_11136_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11163_inst
    process(BITSEL_u5_u1_11162_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", BITSEL_u5_u1_11162_wire, tmp_var);
      NOT_u1_u1_11163_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11323_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11323_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11326_inst
    process(is_a_window_register_read_access_11315) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", is_a_window_register_read_access_11315, tmp_var);
      NOT_u1_u1_11326_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11333_inst
    process(read_send_to_ls_9934) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_to_ls_9934, tmp_var);
      NOT_u1_u1_11333_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11343_inst
    process(read_send_cc_to_sc_9938) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_cc_to_sc_9938, tmp_var);
      NOT_u1_u1_11343_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11347_inst
    process(read_send_rs1_to_sc_9942) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_rs1_to_sc_9942, tmp_var);
      NOT_u1_u1_11347_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11354_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11354_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11368_inst
    process(read_send_to_ls_9934) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_to_ls_9934, tmp_var);
      NOT_u1_u1_11368_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11371_inst
    process(read_send_cc_to_sc_9938) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_send_cc_to_sc_9938, tmp_var);
      NOT_u1_u1_11371_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11388_inst
    process(read_rs1_response_sent_9606) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_rs1_response_sent_9606, tmp_var);
      NOT_u1_u1_11388_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11390_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11390_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11404_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11404_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11431_inst
    process(send_read_response_to_ls_11378) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_read_response_to_ls_11378, tmp_var);
      NOT_u1_u1_11431_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11439_inst
    process(ls_credit_return_9633) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ls_credit_return_9633, tmp_var);
      NOT_u1_u1_11439_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11459_inst
    process(send_read_cc_response_11413) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_read_cc_response_11413, tmp_var);
      NOT_u1_u1_11459_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11467_inst
    process(cc_credit_return_9621) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", cc_credit_return_9621, tmp_var);
      NOT_u1_u1_11467_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11487_inst
    process(send_read_rs1_response_11397) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_read_rs1_response_11397, tmp_var);
      NOT_u1_u1_11487_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11495_inst
    process(rs1_credit_return_9627) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", rs1_credit_return_9627, tmp_var);
      NOT_u1_u1_11495_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11515_inst
    process(send_read_response_to_exec_11373) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", send_read_response_to_exec_11373, tmp_var);
      NOT_u1_u1_11515_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11523_inst
    process(iu_credit_return_9639) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", iu_credit_return_9639, tmp_var);
      NOT_u1_u1_11523_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11556_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11556_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11560_inst
    process(write_registers_10227) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_registers_10227, tmp_var);
      NOT_u1_u1_11560_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11669_inst
    process(ccu_write_read_bar_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_read_bar_9898, tmp_var);
      NOT_u1_u1_11669_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11686_inst
    process(ccu_iu_reg_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_iu_reg_9898, tmp_var);
      NOT_u1_u1_11686_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11702_inst
    process(ccu_write_read_bar_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_write_read_bar_9898, tmp_var);
      NOT_u1_u1_11702_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11927_inst
    process(read_command_valid_10022) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", read_command_valid_10022, tmp_var);
      NOT_u1_u1_11927_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11933_inst
    process(write_command_valid_10231) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", write_command_valid_10231, tmp_var);
      NOT_u1_u1_11933_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_11939_inst
    process(ccu_command_valid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ccu_command_valid_9898, tmp_var);
      NOT_u1_u1_11939_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_12053_inst
    process(next_ccu_write_12035) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", next_ccu_write_12035, tmp_var);
      NOT_u1_u1_12053_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_12064_inst
    process(next_ccu_write_12035) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", next_ccu_write_12035, tmp_var);
      NOT_u1_u1_12064_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_10358_inst
    OR_u1_u1_10358_wire <= (AND_u1_u1_10356_wire or is_save_10175);
    -- flow through binary operator OR_u1_u1_10360_inst
    OR_u1_u1_10360_wire <= (OR_u1_u1_10358_wire or is_restore_10179);
    -- flow through binary operator OR_u1_u1_10379_inst
    WU_START_10380 <= (ccu_update_psr_in_window_10343 or iu_update_psr_in_window_10363);
    -- flow through binary operator OR_u1_u1_10419_inst
    ASR_READ_START_10420 <= (ccu_read_asr_9898 or AND_u1_u1_10418_wire);
    -- flow through binary operator OR_u1_u1_10429_inst
    AASR_WRITE_START_10430 <= (ccu_write_asr_9898 or AND_u1_u1_10428_wire);
    -- flow through binary operator OR_u1_u1_10434_inst
    start_asr_access_10435 <= (ASR_READ_START_10420 or AASR_WRITE_START_10430);
    -- flow through binary operator OR_u1_u1_10466_inst
    OR_u1_u1_10466_wire <= (read_asr_10113 or lock_asr_10122);
    -- flow through binary operator OR_u1_u1_10478_inst
    OR_u1_u1_10478_wire <= (NOT_u1_u1_10476_wire or IU_ASR_WRITE_START_10441);
    -- flow through binary operator OR_u1_u1_10558_inst
    update_asr_read_locks_10559 <= (update_asr_locks_due_to_read_10472 or update_asr_locks_due_to_write_10480);
    -- flow through binary operator OR_u1_u1_10877_inst
    OR_u1_u1_10877_wire <= (iu_bypass_possible_10831 or ls_bypass_possible_10871);
    -- flow through binary operator OR_u1_u1_10951_inst
    write_gpr_flag_10952 <= (do_write_gpr_from_iu_10938 or do_write_gpr_from_ccu_10947);
    -- flow through binary operator OR_u1_u1_11005_inst
    OR_u1_u1_11005_wire <= (is_save_10175 or is_restore_10179);
    -- flow through binary operator OR_u1_u1_11164_inst
    OR_u1_u1_11164_wire <= (double_gpr_flag_10957 or NOT_u1_u1_11163_wire);
    -- flow through binary operator OR_u1_u1_11173_inst
    OR_u1_u1_11173_wire <= (double_gpr_flag_10957 or BITSEL_u5_u1_11172_wire);
    -- flow through binary operator OR_u1_u1_11251_inst
    OR_u1_u1_11251_wire <= (read_rd_h_9966 or BITSEL_u5_u1_11250_wire);
    -- flow through binary operator OR_u1_u1_11272_inst
    have_ls_credit_11273 <= (NEQ_u4_u1_11270_wire or ls_credit_return_9633);
    -- flow through binary operator OR_u1_u1_11279_inst
    have_cc_credit_11280 <= (NEQ_u4_u1_11277_wire or cc_credit_return_9621);
    -- flow through binary operator OR_u1_u1_11286_inst
    have_rs1_credit_11287 <= (NEQ_u4_u1_11284_wire or rs1_credit_return_9627);
    -- flow through binary operator OR_u1_u1_11293_inst
    have_iu_credit_11294 <= (NEQ_u4_u1_11291_wire or iu_credit_return_9639);
    -- flow through binary operator OR_u1_u1_11306_inst
    OR_u1_u1_11306_wire <= (AND_u1_u1_11300_wire or AND_u1_u1_11305_wire);
    -- flow through binary operator OR_u1_u1_11309_inst
    OR_u1_u1_11309_wire <= (read_rd_h_9966 or read_rd_l_9970);
    -- flow through binary operator OR_u1_u1_11314_inst
    is_a_window_register_read_access_11315 <= (OR_u1_u1_11306_wire or AND_u1_u1_11313_wire);
    -- flow through binary operator OR_u1_u1_11327_inst
    OR_u1_u1_11327_wire <= (match_with_prefetch_11320 or NOT_u1_u1_11326_wire);
    -- flow through binary operator OR_u1_u1_11335_inst
    OR_u1_u1_11335_wire <= (NOT_u1_u1_11333_wire or have_ls_credit_11273);
    -- flow through binary operator OR_u1_u1_11339_inst
    OR_u1_u1_11339_wire <= (read_send_to_ls_9934 or read_send_cc_to_sc_9938);
    -- flow through binary operator OR_u1_u1_11341_inst
    OR_u1_u1_11341_wire <= (OR_u1_u1_11339_wire or have_iu_credit_11294);
    -- flow through binary operator OR_u1_u1_11349_inst
    OR_u1_u1_11349_wire <= (NOT_u1_u1_11347_wire or have_rs1_credit_11287);
    -- flow through binary operator OR_u1_u1_11357_inst
    OR_u1_u1_11357_wire <= (bypass_possible_10879 or all_locks_available_11127);
    -- flow through binary operator OR_u1_u1_11361_inst
    OR_u1_u1_11361_wire <= (send_asr_read_response_11266 or AND_u1_u1_11360_wire);
    -- flow through binary operator OR_u1_u1_11407_inst
    OR_u1_u1_11407_wire <= (bypass_cc_possible_10931 or all_send_cc_locks_available_11130);
    -- flow through binary operator OR_u1_u1_11417_inst
    send_read_response_base_11418 <= (send_read_response_to_exec_or_ls_11364 or send_read_cc_response_11413);
    -- flow through binary operator OR_u1_u1_11562_inst
    send_asr_write_response_11563 <= (IU_ASR_WRITE_START_10441 or AND_u1_u1_11561_wire);
    -- flow through binary operator OR_u1_u1_11567_inst
    send_write_response_11568 <= (send_asr_write_response_11563 or iu_non_asr_clear_locks_is_active_10625);
    -- flow through binary operator OR_u1_u1_11683_inst
    OR_u1_u1_11683_wire <= (ccu_write_read_bar_9898 or ccu_rid_match_with_prefetch_11679);
    -- flow through binary operator OR_u1_u1_11687_inst
    OR_u1_u1_11687_wire <= (match_with_prefetch_11320 or NOT_u1_u1_11686_wire);
    -- flow through binary operator OR_u1_u1_11692_inst
    OR_u1_u1_11692_wire <= (ULT_u5_u1_11690_wire or ccu_write_read_bar_9898);
    -- flow through binary operator OR_u1_u1_11693_inst
    OR_u1_u1_11693_wire <= (OR_u1_u1_11687_wire or OR_u1_u1_11692_wire);
    -- flow through binary operator OR_u1_u1_11697_inst
    OR_u1_u1_11697_wire <= (CCU_WU_START_10383 or CCU_ASR_WRITE_START_10446);
    -- flow through binary operator OR_u1_u1_11699_inst
    OR_u1_u1_11699_wire <= (OR_u1_u1_11697_wire or CCU_ASR_READ_START_10457);
    -- flow through binary operator OR_u1_u1_11707_inst
    OR_u1_u1_11707_wire <= (AND_u1_u1_11703_wire or AND_u1_u1_11706_wire);
    -- flow through binary operator OR_u1_u1_11708_inst
    OR_u1_u1_11708_wire <= (OR_u1_u1_11699_wire or OR_u1_u1_11707_wire);
    -- flow through binary operator OR_u1_u1_11929_inst
    get_read_command_11930 <= (NOT_u1_u1_11927_wire or send_read_response_base_11418);
    -- flow through binary operator OR_u1_u1_11935_inst
    get_write_command_11936 <= (NOT_u1_u1_11933_wire or send_write_response_11568);
    -- flow through binary operator OR_u1_u1_11941_inst
    get_ccu_command_11942 <= (NOT_u1_u1_11939_wire or send_ccu_response_11712);
    -- flow through binary operator OR_u32_u32_11747_inst
    OR_u32_u32_11747_wire <= (MUX_11740_wire or MUX_11746_wire);
    -- flow through binary operator OR_u32_u32_11752_inst
    OR_u32_u32_11752_wire <= (OR_u32_u32_11747_wire or MUX_11751_wire);
    -- flow through binary operator OR_u32_u32_11765_inst
    OR_u32_u32_11765_wire <= (MUX_11758_wire or MUX_11764_wire);
    -- flow through binary operator OR_u32_u32_11772_inst
    OR_u32_u32_11772_wire <= (OR_u32_u32_11765_wire or MUX_11771_wire);
    -- flow through binary operator OR_u32_u32_11773_inst
    ccu_response_11774 <= (OR_u32_u32_11752_wire or OR_u32_u32_11772_wire);
    -- flow through binary operator OR_u32_u32_11784_inst
    OR_u32_u32_11784_wire <= (MUX_11779_wire or MUX_11783_wire);
    -- flow through binary operator OR_u32_u32_11793_inst
    OR_u32_u32_11793_wire <= (MUX_11788_wire or MUX_11792_wire);
    -- flow through binary operator OR_u32_u32_11794_inst
    read_sreg_value_11795 <= (OR_u32_u32_11784_wire or OR_u32_u32_11793_wire);
    -- flow through binary operator OR_u4_u4_11447_inst
    OR_u4_u4_11447_wire <= (MUX_11437_wire or MUX_11446_wire);
    -- flow through binary operator OR_u4_u4_11454_inst
    next_lSCREDITS_11455 <= (OR_u4_u4_11447_wire or MUX_11453_wire);
    -- flow through binary operator OR_u4_u4_11475_inst
    OR_u4_u4_11475_wire <= (MUX_11465_wire or MUX_11474_wire);
    -- flow through binary operator OR_u4_u4_11482_inst
    next_CCCREDITS_11483 <= (OR_u4_u4_11475_wire or MUX_11481_wire);
    -- flow through binary operator OR_u4_u4_11503_inst
    OR_u4_u4_11503_wire <= (MUX_11493_wire or MUX_11502_wire);
    -- flow through binary operator OR_u4_u4_11510_inst
    next_RS1CREDITS_11511 <= (OR_u4_u4_11503_wire or MUX_11509_wire);
    -- flow through binary operator OR_u4_u4_11531_inst
    OR_u4_u4_11531_wire <= (MUX_11521_wire or MUX_11530_wire);
    -- flow through binary operator OR_u4_u4_11538_inst
    next_IUCREDITS_11539 <= (OR_u4_u4_11531_wire or MUX_11537_wire);
    -- flow through binary operator SUB_u4_u4_11444_inst
    SUB_u4_u4_11444_wire <= std_logic_vector(unsigned(LSCREDITS_9726) - unsigned(konst_11443_wire_constant));
    -- flow through binary operator SUB_u4_u4_11472_inst
    SUB_u4_u4_11472_wire <= std_logic_vector(unsigned(CCCREDITS_9730) - unsigned(konst_11471_wire_constant));
    -- flow through binary operator SUB_u4_u4_11500_inst
    SUB_u4_u4_11500_wire <= std_logic_vector(unsigned(RS1CREDITS_9734) - unsigned(konst_11499_wire_constant));
    -- flow through binary operator SUB_u4_u4_11528_inst
    SUB_u4_u4_11528_wire <= std_logic_vector(unsigned(IUCREDITS_9738) - unsigned(konst_11527_wire_constant));
    -- flow through binary operator SUB_u5_u5_10368_inst
    SUB_u5_u5_10368_wire <= std_logic_vector(unsigned(CWP_10320) - unsigned(konst_10367_wire_constant));
    -- flow through binary operator SUB_u8_u8_9819_inst
    DIFF_9820 <= std_logic_vector(unsigned(CCOUNTER_8_9815) - unsigned(COUNTER_FROM_IU_REGS_ACCESS_9824));
    -- flow through binary operator UGT_u5_u1_11299_inst
    process(rs1_9954) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(rs1_9954, konst_11298_wire_constant, tmp_var);
      UGT_u5_u1_11299_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u5_u1_11304_inst
    process(rs2_9962) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(rs2_9962, konst_11303_wire_constant, tmp_var);
      UGT_u5_u1_11304_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u5_u1_11312_inst
    process(read_rd_9982) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(read_rd_9982, konst_11311_wire_constant, tmp_var);
      UGT_u5_u1_11312_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u5_u1_11690_inst
    process(ccu_rid_9898) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(ccu_rid_9898, konst_11689_wire_constant, tmp_var);
      ULT_u5_u1_11690_wire <= tmp_var; --
    end process;
    -- flow through binary operator XOR_u8_u8_11592_inst
    XOR_u8_u8_11592_wire <= (wr_rd_val_high_signature_11575 xor wr_rd_val_low_signature_11578);
    -- flow through binary operator XOR_u8_u8_11605_inst
    XOR_u8_u8_11605_wire <= (MUX_11600_wire xor MUX_11604_wire);
    -- flow through binary operator XOR_u8_u8_11614_inst
    XOR_u8_u8_11614_wire <= (MUX_11609_wire xor MUX_11613_wire);
    -- flow through binary operator XOR_u8_u8_11615_inst
    write_reg_signature_11616 <= (XOR_u8_u8_11605_wire xor XOR_u8_u8_11614_wire);
    -- read from input-signal CORE_ID
    RPIPE_CORE_ID_9491_wire <= CORE_ID;
    -- shared inport operator group (1) : RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst 
    InportGroup_1: Block -- 
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
      reqL_unguarded(0) <= RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_0;
      RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_req_1;
      RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_9547_wire <= data_out(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_read_1_gI: SplitGuardInterface generic map(name => "NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_read_1: InputPort_P2P -- 
        generic map ( name => "NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_read_1", data_width => 93,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req(0),
          oack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack(0),
          odata => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data(92 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- read from input-signal THREAD_ID
    RPIPE_THREAD_ID_9494_wire <= THREAD_ID;
    -- read from input-signal THREAD_ID
    RPIPE_THREAD_ID_9607_wire <= THREAD_ID;
    -- shared inport operator group (4) : RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst 
    InportGroup_4: Block -- 
      signal data_out: std_logic_vector(41 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_0;
      RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_req_1;
      RPIPE_ccu_to_teu_iunit_register_access_command_9561_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_ccu_command_11942(0);
      RPIPE_ccu_to_teu_iunit_register_access_command_9561_wire <= data_out(41 downto 0);
      ccu_to_teu_iunit_register_access_command_read_4_gI: SplitGuardInterface generic map(name => "ccu_to_teu_iunit_register_access_command_read_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ccu_to_teu_iunit_register_access_command_read_4: InputPort_P2P -- 
        generic map ( name => "ccu_to_teu_iunit_register_access_command_read_4", data_width => 42,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ccu_to_teu_iunit_register_access_command_pipe_read_req(0),
          oack => ccu_to_teu_iunit_register_access_command_pipe_read_ack(0),
          odata => ccu_to_teu_iunit_register_access_command_pipe_read_data(41 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 4
    -- shared inport operator group (5) : RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst 
    InportGroup_5: Block -- 
      signal data_out: std_logic_vector(16 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_0;
      RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_req_1;
      RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_iunit_exec_bypass_cc_signal_to_register_file_9544_wire <= data_out(16 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_read_5_gI: SplitGuardInterface generic map(name => "noblock_iunit_exec_bypass_cc_signal_to_register_file_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_iunit_exec_bypass_cc_signal_to_register_file_read_5: InputPort_P2P -- 
        generic map ( name => "noblock_iunit_exec_bypass_cc_signal_to_register_file_read_5", data_width => 17,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req(0),
          oack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack(0),
          odata => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data(16 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- shared inport operator group (6) : RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst 
    InportGroup_6: Block -- 
      signal data_out: std_logic_vector(82 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_0;
      RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_req_1;
      RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_iunit_exec_bypass_signal_to_register_file_9519_wire <= data_out(82 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_read_6_gI: SplitGuardInterface generic map(name => "noblock_iunit_exec_bypass_signal_to_register_file_read_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_iunit_exec_bypass_signal_to_register_file_read_6: InputPort_P2P -- 
        generic map ( name => "noblock_iunit_exec_bypass_signal_to_register_file_read_6", data_width => 83,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  0)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req(0),
          oack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack(0),
          odata => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data(82 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 6
    -- shared inport operator group (7) : RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst 
    InportGroup_7: Block -- 
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
      reqL_unguarded(0) <= RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_0;
      RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_req_1;
      RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_iunit_exec_to_regfile_credit_return_9510_wire <= data_out(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_read_7_gI: SplitGuardInterface generic map(name => "noblock_iunit_exec_to_regfile_credit_return_read_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_iunit_exec_to_regfile_credit_return_read_7: InputPort_P2P -- 
        generic map ( name => "noblock_iunit_exec_to_regfile_credit_return_read_7", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_iunit_exec_to_regfile_credit_return_pipe_read_req(0),
          oack => noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack(0),
          odata => noblock_iunit_exec_to_regfile_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 7
    -- shared inport operator group (8) : RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst 
    InportGroup_8: Block -- 
      signal data_out: std_logic_vector(372 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_0;
      RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_req_1;
      RPIPE_noblock_iunit_writeback_in_args_pipe_9515_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_writeback_info_12285(0);
      RPIPE_noblock_iunit_writeback_in_args_pipe_9515_wire <= data_out(372 downto 0);
      noblock_iunit_writeback_in_args_pipe_read_8_gI: SplitGuardInterface generic map(name => "noblock_iunit_writeback_in_args_pipe_read_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_iunit_writeback_in_args_pipe_read_8: InputPort_P2P -- 
        generic map ( name => "noblock_iunit_writeback_in_args_pipe_read_8", data_width => 373,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_iunit_writeback_in_args_pipe_pipe_read_req(0),
          oack => noblock_iunit_writeback_in_args_pipe_pipe_read_ack(0),
          odata => noblock_iunit_writeback_in_args_pipe_pipe_read_data(372 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 8
    -- shared inport operator group (9) : RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst 
    InportGroup_9: Block -- 
      signal data_out: std_logic_vector(58 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_0;
      RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_req_1;
      RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= get_read_command_11930(0);
      RPIPE_noblock_teu_idispatch_to_iunit_register_file_read_access_command_9555_wire <= data_out(58 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_read_9_gI: SplitGuardInterface generic map(name => "noblock_teu_idispatch_to_iunit_register_file_read_access_command_read_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_read_9: InputPort_P2P -- 
        generic map ( name => "noblock_teu_idispatch_to_iunit_register_file_read_access_command_read_9", data_width => 59,    bypass_flag => true,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req(0),
          oack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack(0),
          odata => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data(58 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 9
    -- shared inport operator group (10) : RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst 
    InportGroup_10: Block -- 
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
      reqL_unguarded(0) <= RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_0;
      RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_req_1;
      RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_loadstore_to_iunit_regfile_credit_return_9501_wire <= data_out(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_read_10_gI: SplitGuardInterface generic map(name => "noblock_teu_loadstore_to_iunit_regfile_credit_return_read_10_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_loadstore_to_iunit_regfile_credit_return_read_10: InputPort_P2P -- 
        generic map ( name => "noblock_teu_loadstore_to_iunit_regfile_credit_return_read_10", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req(0),
          oack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack(0),
          odata => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 10
    -- shared inport operator group (11) : RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst 
    InportGroup_11: Block -- 
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
      reqL_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_0;
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_req_1;
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_9504_wire <= data_out(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_read_11_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_read_11_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_read_11: InputPort_P2P -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_read_11", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req(0),
          oack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack(0),
          odata => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 11
    -- shared inport operator group (12) : RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst 
    InportGroup_12: Block -- 
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
      reqL_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_0;
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_req_1;
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_9507_wire <= data_out(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_read_12_gI: SplitGuardInterface generic map(name => "noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_read_12_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_read_12: InputPort_P2P -- 
        generic map ( name => "noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_read_12", data_width => 1,    bypass_flag => false,   	nonblocking_read_flag => true,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req(0),
          oack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack(0),
          odata => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 12
    -- shared outport operator group (0) : WPIPE_iunit_register_file_read_access_response_12304_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(141 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_iunit_register_file_read_access_response_12304_inst_req_0;
      WPIPE_iunit_register_file_read_access_response_12304_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_iunit_register_file_read_access_response_12304_inst_req_1;
      WPIPE_iunit_register_file_read_access_response_12304_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_read_response_to_exec_11373(0);
      data_in <= read_response_to_exec_11883;
      iunit_register_file_read_access_response_write_0_gI: SplitGuardInterface generic map(name => "iunit_register_file_read_access_response_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      iunit_register_file_read_access_response_write_0: OutputPortRevised -- 
        generic map ( name => "iunit_register_file_read_access_response", data_width => 142, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => iunit_register_file_read_access_response_pipe_write_req(0),
          oack => iunit_register_file_read_access_response_pipe_write_ack(0),
          odata => iunit_register_file_read_access_response_pipe_write_data(141 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(16 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_0;
      WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_req_1;
      WPIPE_teu_iunit_cc_to_stream_corrector_12318_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_read_cc_response_11413(0);
      data_in <= read_cc_response_11910;
      teu_iunit_cc_to_stream_corrector_write_1_gI: SplitGuardInterface generic map(name => "teu_iunit_cc_to_stream_corrector_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iunit_cc_to_stream_corrector_write_1: OutputPortRevised -- 
        generic map ( name => "teu_iunit_cc_to_stream_corrector", data_width => 17, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iunit_cc_to_stream_corrector_pipe_write_req(0),
          oack => teu_iunit_cc_to_stream_corrector_pipe_write_ack(0),
          odata => teu_iunit_cc_to_stream_corrector_pipe_write_data(16 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_teu_iunit_register_file_to_loadstore_12311_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(141 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_0;
      WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_req_1;
      WPIPE_teu_iunit_register_file_to_loadstore_12311_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_read_response_to_ls_11378(0);
      data_in <= read_response_to_ls_11858;
      teu_iunit_register_file_to_loadstore_write_2_gI: SplitGuardInterface generic map(name => "teu_iunit_register_file_to_loadstore_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iunit_register_file_to_loadstore_write_2: OutputPortRevised -- 
        generic map ( name => "teu_iunit_register_file_to_loadstore", data_width => 142, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iunit_register_file_to_loadstore_pipe_write_req(0),
          oack => teu_iunit_register_file_to_loadstore_pipe_write_ack(0),
          odata => teu_iunit_register_file_to_loadstore_pipe_write_data(141 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst 
    OutportGroup_3: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_0;
      WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_req_1;
      WPIPE_teu_iunit_rs1_to_stream_corrector_12325_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_read_rs1_response_11397(0);
      data_in <= read_rs1_response_11913;
      teu_iunit_rs1_to_stream_corrector_write_3_gI: SplitGuardInterface generic map(name => "teu_iunit_rs1_to_stream_corrector_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iunit_rs1_to_stream_corrector_write_3: OutputPortRevised -- 
        generic map ( name => "teu_iunit_rs1_to_stream_corrector", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iunit_rs1_to_stream_corrector_pipe_write_req(0),
          oack => teu_iunit_rs1_to_stream_corrector_pipe_write_ack(0),
          odata => teu_iunit_rs1_to_stream_corrector_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_teu_iunit_to_iretire_12287_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(95 downto 0);
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
      sample_req_unguarded(0) <= WPIPE_teu_iunit_to_iretire_12287_inst_req_0;
      WPIPE_teu_iunit_to_iretire_12287_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_iunit_to_iretire_12287_inst_req_1;
      WPIPE_teu_iunit_to_iretire_12287_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_to_iretire_12282(0);
      data_in <= response_to_iretire_12282;
      teu_iunit_to_iretire_write_4_gI: SplitGuardInterface generic map(name => "teu_iunit_to_iretire_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_iunit_to_iretire_write_4: OutputPortRevised -- 
        generic map ( name => "teu_iunit_to_iretire", data_width => 96, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_iunit_to_iretire_pipe_write_req(0),
          oack => teu_iunit_to_iretire_pipe_write_ack(0),
          odata => teu_iunit_to_iretire_pipe_write_data(95 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst 
    OutportGroup_5: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_0;
      WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_req_1;
      WPIPE_teu_to_ccu_iunit_register_access_response_12338_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= send_ccu_response_12609_delayed_1_0_12336(0);
      data_in <= ccu_response_buffered_12333;
      teu_to_ccu_iunit_register_access_response_write_5_gI: SplitGuardInterface generic map(name => "teu_to_ccu_iunit_register_access_response_write_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      teu_to_ccu_iunit_register_access_response_write_5: OutputPortRevised -- 
        generic map ( name => "teu_to_ccu_iunit_register_access_response", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => teu_to_ccu_iunit_register_access_response_pipe_write_req(0),
          oack => teu_to_ccu_iunit_register_access_response_pipe_write_ack(0),
          odata => teu_to_ccu_iunit_register_access_response_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    operator_asr_update_10616_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= call_asr_update_expr_9539_inst_req_0;
      call_asr_update_expr_9539_inst_ack_0<= sample_ack(0);
      update_req(0) <= call_asr_update_expr_9539_inst_req_1;
      call_asr_update_expr_9539_inst_ack_1<= update_ack(0);
      call_asr_update_expr_9539_inst: asr_update_Operator  port map ( -- 
        sample_req => sample_req(0), 
        sample_ack => sample_ack(0), 
        update_req => update_req(0), 
        update_ack => update_ack(0), 
        core_id => sampled_core_id_9492,
        thread_id => sampled_thread_id_9495,
        access_cmd => asr_access_command_12270,
        read_val => call_asr_update_expr_9539_wire,
        clk => clk, reset => reset  
        -- 
      );-- 
    end block;
    operator_iu_registers_3r_1w_port_register_file_10614_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_0;
      call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_0<= sample_ack(0);
      update_req(0) <= call_iu_registers_3r_1w_port_register_file_expr_9532_inst_req_1;
      call_iu_registers_3r_1w_port_register_file_expr_9532_inst_ack_1<= update_ack(0);
      call_iu_registers_3r_1w_port_register_file_expr_9532_inst: iu_registers_3r_1w_port_register_file_Operator  port map ( -- 
        sample_req => sample_req(0), 
        sample_ack => sample_ack(0), 
        update_req => update_req(0), 
        update_ack => update_ack(0), 
        rs1 => rs1_next_12210,
        rs2 => rs2_next_12214,
        read_rd => read_rd_next_12218,
        read_cwp => next_read_cwp_12222,
        write_gpr_even => write_gpr_even_12230,
        write_gpr_odd => write_gpr_odd_12234,
        write_rd => write_gpr_rd_id_12238,
        write_gpr_value_even => write_gpr_value_even_12242,
        write_gpr_value_odd => write_gpr_value_odd_12246,
        write_cwp => write_cwp_12226,
        reg_pair_values => call_iu_registers_3r_1w_port_register_file_expr_9532_wire,
        clk => clk, reset => reset  
        -- 
      );-- 
    end block;
    volatile_operator_update_asr_locks_10808: update_asr_locks_Volatile port map(clear_lock => write_asr_10284, clear_rid => wwrite_asr_id_10223, test_lock => read_asr_10113, set_lock => lock_asr_10122, test_set_rid => read_asr_id_10006, asr_read_locks => asr_read_locks_9771, asr_locks_available => speculative_asr_locks_available_10399, post_clear_asr_locks => post_clear_asr_read_locks_10399, post_test_and_set_asr_locks => post_test_and_set_asr_read_locks_10399); 
    volatile_operator_test_and_set_psr_locks_10809: test_and_set_psr_locks_Volatile port map(test_locks => read_psr_9986, set_locks => lock_psr_9990, psr_read_locks => psr_read_locks_9775, psr_read_lock_available => psr_locks_available_to_start_asr_access_10405, next_psr_read_locks => sacrifical_new_psr_locks_10405); 
    volatile_operator_update_register_read_locks_10863: update_register_read_locks_Volatile port map(clear_all_locks => clear_all_locks_10645, clear_rd => write_10183, c_double => double_flag_10187, c_rd => write_rd_10191, set_all_locks => read_lock_all_regs_9946, test_rs1 => read_rs1_9950, rs1 => rs1_9954, test_rs2 => read_rs2_9958, rs2 => rs2_9962, test_rd => read_rd_l_9970, t_double => read_rd_h_9966, t_rd => read_rd_9982, set_rd => lock_rd_l_9978, s_double => lock_rd_h_9974, s_rd => read_rd_9982, reg_read_locks => reg_read_locks_9767, all_reg_lock_locks_available_for_bypass => speculative_reg_lock_locks_available_for_bypass_10674, all_reg_locks_available => speculative_reg_locks_available_10674, rs1_read_lock_available => rs1_read_lock_available_10674, rs1_has_one_pending_write => rs1_has_one_pending_write_10674, rs2_read_lock_available => rs2_read_lock_available_10674, rs2_has_one_pending_write => rs2_has_one_pending_write_10674, rd_h_read_lock_available => rd_h_read_lock_available_10674, rd_h_has_one_pending_write => rd_h_has_one_pending_write_10674, rd_l_read_lock_available => rd_l_read_lock_available_10674, rd_l_has_one_pending_write => rd_l_has_one_pending_write_10674, post_clear_reg_read_locks => post_clear_reg_read_locks_10674, post_set_reg_read_locks => post_test_and_set_reg_read_locks_10674); 
    volatile_operator_clear_psr_locks_10864: clear_psr_locks_Volatile port map(clear_locks => write_psr_10203, psr_read_locks => psr_read_locks_9775, next_psr_read_locks => post_clear_psr_read_locks_10690); 
    volatile_operator_test_and_set_psr_locks_10865: test_and_set_psr_locks_Volatile port map(test_locks => read_psr_9986, set_locks => lock_psr_9990, psr_read_locks => post_clear_psr_read_locks_10690, psr_read_lock_available => speculative_psr_locks_available_10696, next_psr_read_locks => post_test_and_set_psr_read_locks_10696); 
    volatile_operator_clear_psr_locks_10866: clear_psr_locks_Volatile port map(clear_locks => write_psr_10203, psr_read_locks => copy_of_psr_read_locks_9779, next_psr_read_locks => post_clear_copy_of_psr_read_locks_10700); 
    volatile_operator_clear_single_bit_lock_10872: clear_single_bit_lock_Volatile port map(clear_lock => write_tbr_10266, old_lock_value => tbr_read_lock_9787, new_lock_value => post_clear_tbr_read_lock_10731); 
    volatile_operator_test_and_set_single_bit_lock_10873: test_and_set_single_bit_lock_Volatile port map(test_lock => read_tbr_10077, set_lock => lock_tbr_10086, old_lock_value => post_clear_tbr_read_lock_10731, lock_available => speculative_tbr_read_lock_available_10737, new_lock_value => post_test_and_set_tbr_read_lock_10737); 
    volatile_operator_clear_single_bit_lock_10874: clear_single_bit_lock_Volatile port map(clear_lock => write_wim_10275, old_lock_value => wim_read_lock_9783, new_lock_value => post_clear_wim_read_lock_10747); 
    volatile_operator_test_and_set_single_bit_lock_10875: test_and_set_single_bit_lock_Volatile port map(test_lock => read_wim_10095, set_lock => lock_wim_10104, old_lock_value => post_clear_wim_read_lock_10747, lock_available => speculative_wim_read_lock_available_10753, new_lock_value => post_test_and_set_wim_read_lock_10753); 
    volatile_operator_clear_y_lock_10876: clear_y_lock_Volatile port map(clear_lock => write_y_10293, old_lock_value => y_read_lock_9791, new_lock_value => post_clear_y_read_lock_10766); 
    volatile_operator_test_and_set_y_lock_10877: test_and_set_y_lock_Volatile port map(test_lock => read_y_10131, set_lock => lock_y_10140, old_lock_value => post_clear_y_read_lock_10766, lock_available => speculative_y_read_lock_available_10772, new_lock_value => post_test_and_set_y_read_lock_10772); 
    volatile_operator_bypass_possible_logic_10879: bypass_possible_logic_Volatile port map(read_thread_id => read_thread_id_9914, read_stream_id => read_stream_id_9918, read_slot_id => read_slot_id_9922, bypass_info => iu_bypass_info_9516, rs1_read_lock_available => rs1_read_lock_available_10674, rs1_has_one_pending_write => rs1_has_one_pending_write_10674, rs2_read_lock_available => rs2_read_lock_available_10674, rs2_has_one_pending_write => rs2_has_one_pending_write_10674, rd_h_read_lock_available => rd_h_read_lock_available_10674, rd_h_has_one_pending_write => rd_h_has_one_pending_write_10674, rd_l_read_lock_available => rd_l_read_lock_available_10674, rd_l_has_one_pending_write => rd_l_has_one_pending_write_10674, save_restore_lock => window_modify_lock_9795, rs1 => rs1_9954, rs2 => rs2_9962, read_rd => read_rd_9982, write_rd => write_rd_10191, speculative_lock_locks_available => speculative_lock_locks_available_for_bypass_10791, read_rs1 => read_rs1_9950, read_rs2 => read_rs2_9958, read_rd_h => read_rd_h_9966, read_rd_l => read_rd_l_9970, write_psr => write_psr_10203, read_psr => read_psr_9986, lock_psr => lock_psr_9990, psr_read_locks => psr_read_locks_9775, read_skip_iu => R_ZERO_1_10818_wire_constant, read_sreg => read_sreg_9994, read_lock_all_regs => read_lock_all_regs_9946, lock_sreg => lock_sreg_9998, bypass_active => iu_bypass_active_10831, bypass_rs1_possible => iu_bypass_rs1_possible_10831, bypass_rs2_possible => iu_bypass_rs2_possible_10831, bypass_rd_h_possible => iu_bypass_rd_h_possible_10831, bypass_rd_l_possible => iu_bypass_rd_l_possible_10831, bypass_psr_possible => iu_bypass_psr_possible_10831, bypass_possible => iu_bypass_possible_10831, bypass_info_rd_value => iu_bypass_info_rd_value_10831, bypass_info_psr_value => iu_bypass_info_psr_value_10831); 
    volatile_operator_bypass_possible_logic_10880: bypass_possible_logic_Volatile port map(read_thread_id => read_thread_id_9914, read_stream_id => read_stream_id_9918, read_slot_id => read_slot_id_9922, bypass_info => ls_bypass_info_9610, rs1_read_lock_available => rs1_read_lock_available_10674, rs1_has_one_pending_write => rs1_has_one_pending_write_10674, rs2_read_lock_available => rs2_read_lock_available_10674, rs2_has_one_pending_write => rs2_has_one_pending_write_10674, rd_h_read_lock_available => rd_h_read_lock_available_10674, rd_h_has_one_pending_write => rd_h_has_one_pending_write_10674, rd_l_read_lock_available => rd_l_read_lock_available_10674, rd_l_has_one_pending_write => rd_l_has_one_pending_write_10674, save_restore_lock => window_modify_lock_9795, rs1 => rs1_9954, rs2 => rs2_9962, read_rd => read_rd_9982, write_rd => write_rd_10191, speculative_lock_locks_available => speculative_lock_locks_available_for_bypass_10791, read_rs1 => read_rs1_9950, read_rs2 => read_rs2_9958, read_rd_h => read_rd_h_9966, read_rd_l => read_rd_l_9970, write_psr => write_psr_10203, read_psr => read_psr_9986, lock_psr => lock_psr_9990, psr_read_locks => psr_read_locks_9775, read_skip_iu => R_ZERO_1_10858_wire_constant, read_sreg => read_sreg_9994, read_lock_all_regs => read_lock_all_regs_9946, lock_sreg => lock_sreg_9998, bypass_active => ls_bypass_active_10871, bypass_rs1_possible => ls_bypass_rs1_possible_10871, bypass_rs2_possible => ls_bypass_rs2_possible_10871, bypass_rd_h_possible => ls_bypass_rd_h_possible_10871, bypass_rd_l_possible => ls_bypass_rd_l_possible_10871, bypass_psr_possible => ls_bypass_psr_possible_10871, bypass_possible => ls_bypass_possible_10871, bypass_info_rd_value => ls_bypass_info_rd_value_10871, bypass_info_psr_value => ls_bypass_info_psr_value_10871); 
    volatile_operator_bypass_cc_possible_logic_10891: bypass_cc_possible_logic_Volatile port map(read_thread_id => read_thread_id_9914, read_stream_id => read_stream_id_9918, read_slot_id => read_slot_id_9922, bypass_cc_info => bypass_cc_info_9541, read_psr => read_psr_9986, cc_write_pending => cc_write_pending_10712, bypass_cc_active => bypass_cc_active_10931, bypass_cc_possible => bypass_cc_possible_10931, bypass_info_cc_value => bypass_info_cc_10931); 
    volatile_operator_calculate_next_psr_value_10907: calculate_next_psr_value_Volatile port map(write_psr => write_psr_10203, psr_value => wr_psr_value_10207, curr_psr_val => PSR_9751, new_psr_val => iu_to_be_written_next_PSR_10993); 
    volatile_operator_calculate_next_tbr_value_10920: calculate_next_tbr_value_Volatile port map(tbr_value => wwrite_sreg_value_10219, old_tbr_value => TBR_9759, new_tbr_value => iu_to_be_written_next_tbr_11047); 
    volatile_operator_calculate_next_wim_value_10927: calculate_next_wim_value_Volatile port map(wim_value => wwrite_sreg_value_10219, new_wim_value => iu_to_be_written_next_wim_11076); 
    volatile_operator_updateWriteToReadBypass_10958: updateWriteToReadBypass_Volatile port map(wr_even => wwrite_gpr_even_11166, wr_odd => wwrite_gpr_odd_11175, wr_reg_id => wwrite_gpr_rd_id_10963, wr_cwp => wwrite_cwp_11182, wr_value_even => wwrite_gpr_value_even_11150, wr_value_odd => wwrite_gpr_value_odd_11156, rd_reg_id => rs1_9954, rd_cwp => read_cwp_11185, read_pair_value => RS1_PAIR_VALUE_9832, updated_read_pair_value => updated_RS1_PAIR_VALUE_11196); 
    volatile_operator_updateWriteToReadBypass_10959: updateWriteToReadBypass_Volatile port map(wr_even => wwrite_gpr_even_11166, wr_odd => wwrite_gpr_odd_11175, wr_reg_id => wwrite_gpr_rd_id_10963, wr_cwp => wwrite_cwp_11182, wr_value_even => wwrite_gpr_value_even_11150, wr_value_odd => wwrite_gpr_value_odd_11156, rd_reg_id => rs2_9962, rd_cwp => read_cwp_11185, read_pair_value => RS2_PAIR_VALUE_9836, updated_read_pair_value => updated_RS2_PAIR_VALUE_11207); 
    volatile_operator_updateWriteToReadBypass_10960: updateWriteToReadBypass_Volatile port map(wr_even => wwrite_gpr_even_11166, wr_odd => wwrite_gpr_odd_11175, wr_reg_id => wwrite_gpr_rd_id_10963, wr_cwp => wwrite_cwp_11182, wr_value_even => wwrite_gpr_value_even_11150, wr_value_odd => wwrite_gpr_value_odd_11156, rd_reg_id => read_rd_9982, rd_cwp => read_cwp_11185, read_pair_value => READ_RD_PAIR_VALUE_9840, updated_read_pair_value => updated_READ_RD_PAIR_VALUE_11218); 
    volatile_operator_isValidBypassInfo_11038: isValidBypassInfo_Volatile port map(bypass_info => iu_bypass_info_9516, is_valid => iu_bypass_info_valid_11421); 
    volatile_operator_isValidBypassInfo_11039: isValidBypassInfo_Volatile port map(bypass_info => ls_bypass_info_9610, is_valid => ls_bypass_info_valid_11424); 
    volatile_operator_isValidBypassCCInfo_11040: isValidBypassCCInfo_Volatile port map(bypass_cc_info => bypass_cc_info_9541, is_valid => bypass_cc_info_valid_11427); 
    volatile_operator_signature_8_11098: signature_8_Volatile port map(A => wr_rd_val_high_10195, AS => wr_rd_val_high_signature_11575); 
    volatile_operator_signature_8_11099: signature_8_Volatile port map(A => wr_rd_val_low_10199, AS => wr_rd_val_low_signature_11578); 
    volatile_operator_signature_8_11100: signature_8_Volatile port map(A => next_WIM_11085, AS => write_wim_signature_11581); 
    volatile_operator_signature_8_11101: signature_8_Volatile port map(A => next_TBR_11056, AS => write_tbr_signature_11584); 
    volatile_operator_signature_8_11102: signature_8_Volatile port map(A => next_Y_11108, AS => write_y_signature_11587); 
    volatile_operator_analyze_ccu_command_for_asr_11232: analyze_ccu_command_for_asr_Volatile port map(ccu_command => ccu_command_used_to_access_regfile_12028, ccu_command_valid => next_ccu_valid_12035, ccu_write => next_ccu_write_12035, ccu_read_iu_reg => next_ccu_iu_reg_12035, ccu_read_asr => next_ccu_asr_12035, ccu_rid => next_ccu_rid_12035); 
    volatile_operator_extractReadRegs_11233: extractReadRegs_Volatile port map(read_command => read_command_used_to_access_regfile_12022, read_command_valid => read_command_for_access_valid_12049, read_asr_id => rread_asr_id_next_12049, rs1 => rrs1_next_12049, rs2 => rrs2_next_12049, read_rd => rread_rd_next_12049); 
    volatile_operator_construct_wb_message_to_iretire_11299: construct_wb_message_to_iretire_Volatile port map(write_command_valid => rfile_write_valid_9686, write_response_valid => send_write_response_11568, write_response => write_response_11733, fwd_to_retire_valid => fwd_to_retire_valid_9686, fwd_info_to_retire => fwd_info_to_retire_9686, psr_modified => psr_modified_12185, tbr_modified => tbr_modified_12190, ret_PSR => ret_PSR_12175, ret_TBR => ret_TBR_12178, send_to_iretire => send_to_iretire_12282, response_to_iretire => response_to_iretire_12282); 
    volatile_operator_expand_ls_bypass_10640: expand_ls_bypass_Volatile port map(ref_cpu_id => RPIPE_THREAD_ID_9607_wire, ls_bypass_info => dcache_bypass_info_9545, bypass_info => ls_bypass_info_9610); 
    volatile_operator_iu_writeback_core_10653: iu_writeback_core_Volatile port map(wb_in_args => iu_writeback_args_9511, wb_state => wb_state_9566, send_to_rfile => rfile_write_valid_9686, to_reg_wb => rfile_write_cmd_9686, iu2_to_retire => fwd_to_retire_valid_9686, to_wb_retire_stage => fwd_info_to_retire_9686, next_wb_state => next_wb_state_raw_9686); 
    volatile_operator_analyze_ccu_command_10694: analyze_ccu_command_Volatile port map(ccu_command => ccu_command_9594, ccu_command_valid => ccu_command_valid_9898, ccu_write_read_bar => ccu_write_read_bar_9898, ccu_reg_type => ccu_reg_type_9898, ccu_rid => ccu_rid_9898, ccu_rval => ccu_rval_9898, ccu_psr => ccu_psr_9898, ccu_tbr => ccu_tbr_9898, ccu_wim => ccu_wim_9898, ccu_asr => ccu_asr_9898, ccu_y => ccu_y_9898, ccu_iu_reg => ccu_iu_reg_9898, ccu_read_asr => ccu_read_asr_9898, ccu_write_asr => ccu_write_asr_9898); 
    -- 
  end Block; -- data_path
  -- 
end iu_registers_daemon_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity iu_writeback_core_Volatile is -- 
  port ( -- 
    wb_in_args : in  std_logic_vector(372 downto 0);
    wb_state : in  std_logic_vector(1 downto 0);
    send_to_rfile : out  std_logic_vector(0 downto 0);
    to_reg_wb : out  std_logic_vector(162 downto 0);
    iu2_to_retire : out  std_logic_vector(0 downto 0);
    to_wb_retire_stage : out  std_logic_vector(95 downto 0);
    next_wb_state : out  std_logic_vector(1 downto 0)-- 
  );
  -- 
end entity iu_writeback_core_Volatile;
architecture iu_writeback_core_Volatile_arch of iu_writeback_core_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(375-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal wb_in_args_buffer :  std_logic_vector(372 downto 0);
  signal wb_state_buffer :  std_logic_vector(1 downto 0);
  -- output port buffer signals
  signal send_to_rfile_buffer :  std_logic_vector(0 downto 0);
  signal to_reg_wb_buffer :  std_logic_vector(162 downto 0);
  signal iu2_to_retire_buffer :  std_logic_vector(0 downto 0);
  signal to_wb_retire_stage_buffer :  std_logic_vector(95 downto 0);
  signal next_wb_state_buffer :  std_logic_vector(1 downto 0);
  -- volatile/operator module components. 
  component decode_iunit_writeback_control_word_Volatile is -- 
    port ( -- 
      cw : in  std_logic_vector(24 downto 0);
      write_rd : out  std_logic_vector(0 downto 0);
      double_word : out  std_logic_vector(0 downto 0);
      write_rd_from_load_store : out  std_logic_vector(0 downto 0);
      write_rd_from_iunit : out  std_logic_vector(0 downto 0);
      write_rd_from_pc : out  std_logic_vector(0 downto 0);
      write_rd_from_sreg : out  std_logic_vector(0 downto 0);
      rd : out  std_logic_vector(4 downto 0);
      update_psr : out  std_logic_vector(2 downto 0);
      update_wim : out  std_logic_vector(0 downto 0);
      update_tbr : out  std_logic_vector(0 downto 0);
      update_y : out  std_logic_vector(0 downto 0);
      update_asr : out  std_logic_vector(0 downto 0);
      asr_id : out  std_logic_vector(4 downto 0);
      is_save : out  std_logic_vector(0 downto 0);
      is_restore : out  std_logic_vector(0 downto 0)-- 
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
  -- 
begin --  
  -- input handling ------------------------------------------------
  wb_in_args_buffer <= wb_in_args;
  wb_state_buffer <= wb_state;
  -- output handling  -------------------------------------------------------
  send_to_rfile <= send_to_rfile_buffer;
  to_reg_wb <= to_reg_wb_buffer;
  iu2_to_retire <= iu2_to_retire_buffer;
  to_wb_retire_stage <= to_wb_retire_stage_buffer;
  next_wb_state <= next_wb_state_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_8465_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8467_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8472_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8476_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8480_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8482_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8487_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8489_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8536_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8566_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8706_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8709_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8713_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u12_u14_8612_wire : std_logic_vector(13 downto 0);
    signal CONCAT_u14_u53_8620_wire : std_logic_vector(52 downto 0);
    signal CONCAT_u15_u16_8717_wire : std_logic_vector(15 downto 0);
    signal CONCAT_u1_u2_8611_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8615_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8662_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u2_8710_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u1_u4_8652_wire : std_logic_vector(3 downto 0);
    signal CONCAT_u1_u5_8693_wire : std_logic_vector(4 downto 0);
    signal CONCAT_u2_u39_8619_wire : std_logic_vector(38 downto 0);
    signal CONCAT_u2_u3_8714_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u32_u35_8623_wire : std_logic_vector(34 downto 0);
    signal CONCAT_u32_u37_8659_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u35_u67_8625_wire : std_logic_vector(66 downto 0);
    signal CONCAT_u37_u39_8663_wire : std_logic_vector(38 downto 0);
    signal CONCAT_u38_u70_8700_wire : std_logic_vector(69 downto 0);
    signal CONCAT_u3_u19_8718_wire : std_logic_vector(18 downto 0);
    signal CONCAT_u4_u6_8606_wire : std_logic_vector(5 downto 0);
    signal CONCAT_u5_u37_8618_wire : std_logic_vector(36 downto 0);
    signal CONCAT_u5_u7_8695_wire : std_logic_vector(6 downto 0);
    signal CONCAT_u67_u71_8653_wire : std_logic_vector(70 downto 0);
    signal CONCAT_u6_u12_8608_wire : std_logic_vector(11 downto 0);
    signal CONCAT_u6_u38_8698_wire : std_logic_vector(37 downto 0);
    signal CONCAT_u71_u110_8664_wire : std_logic_vector(109 downto 0);
    signal CONCAT_u7_u77_8701_wire : std_logic_vector(76 downto 0);
    signal EQ_u3_u1_8453_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8513_wire : std_logic_vector(0 downto 0);
    signal MUX_8561_wire : std_logic_vector(31 downto 0);
    signal MUX_8569_wire : std_logic_vector(31 downto 0);
    signal MUX_8574_wire : std_logic_vector(31 downto 0);
    signal MUX_8578_wire : std_logic_vector(31 downto 0);
    signal MUX_8636_wire : std_logic_vector(2 downto 0);
    signal MUX_8640_wire : std_logic_vector(2 downto 0);
    signal MUX_8645_wire : std_logic_vector(2 downto 0);
    signal MUX_8649_wire : std_logic_vector(2 downto 0);
    signal MUX_8657_wire : std_logic_vector(31 downto 0);
    signal NEQ_u3_u1_8705_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8463_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8470_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8478_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8485_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8506_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8534_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8461_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8468_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8475_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8483_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8490_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8496_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8565_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8628_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8631_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8632_wire : std_logic_vector(0 downto 0);
    signal OR_u32_u32_8570_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8579_wire : std_logic_vector(31 downto 0);
    signal OR_u3_u3_8641_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_8650_wire : std_logic_vector(2 downto 0);
    signal OR_u3_u3_8651_wire : std_logic_vector(2 downto 0);
    signal R_ACCESS_ASR_8647_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_TBR_8638_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_WIM_8634_wire_constant : std_logic_vector(2 downto 0);
    signal R_ACCESS_Y_8643_wire_constant : std_logic_vector(2 downto 0);
    signal R_ONE_1_8661_wire_constant : std_logic_vector(0 downto 0);
    signal R_TERMINATES_STREAM_8512_wire_constant : std_logic_vector(2 downto 0);
    signal R_TERMINATES_THREAD_8452_wire_constant : std_logic_vector(2 downto 0);
    signal alu_result_8425 : std_logic_vector(31 downto 0);
    signal annul_from_sc_8333 : std_logic_vector(0 downto 0);
    signal asr_id_8295 : std_logic_vector(4 downto 0);
    signal break_stream_8515 : std_logic_vector(0 downto 0);
    signal break_thread_8499 : std_logic_vector(0 downto 0);
    signal cu1_to_iu2_8254 : std_logic_vector(0 downto 0);
    signal debug_bp_hit_8222 : std_logic_vector(0 downto 0);
    signal decode_trap_bit_8218 : std_logic_vector(0 downto 0);
    signal double_word_8295 : std_logic_vector(0 downto 0);
    signal exec_error_8365 : std_logic_vector(0 downto 0);
    signal exec_trap_8369 : std_logic_vector(0 downto 0);
    signal fast_alu_result_8409 : std_logic_vector(31 downto 0);
    signal fast_psr_val_8405 : std_logic_vector(31 downto 0);
    signal fast_update_psr_8401 : std_logic_vector(0 downto 0);
    signal fast_y_val_8413 : std_logic_vector(31 downto 0);
    signal from_dispatch_8139 : std_logic_vector(83 downto 0);
    signal from_exec_8177 : std_logic_vector(113 downto 0);
    signal from_exec_fast_alu_result_8182 : std_logic_vector(96 downto 0);
    signal from_fu_8172 : std_logic_vector(0 downto 0);
    signal from_ls_8168 : std_logic_vector(65 downto 0);
    signal from_sc_8163 : std_logic_vector(5 downto 0);
    signal fu1_to_iu2_8250 : std_logic_vector(0 downto 0);
    signal fu_trap_8440 : std_logic_vector(0 downto 0);
    signal get_from_fu_8151 : std_logic_vector(0 downto 0);
    signal get_from_iu1_8155 : std_logic_vector(0 downto 0);
    signal get_from_iu1_fast_8159 : std_logic_vector(0 downto 0);
    signal get_from_ls_8147 : std_logic_vector(0 downto 0);
    signal get_from_sc_8143 : std_logic_vector(0 downto 0);
    signal ignore_instr_8448 : std_logic_vector(0 downto 0);
    signal instruction_can_be_executed_8526 : std_logic_vector(0 downto 0);
    signal is_restore_8295 : std_logic_vector(0 downto 0);
    signal is_save_8295 : std_logic_vector(0 downto 0);
    signal issue_restore_8587 : std_logic_vector(0 downto 0);
    signal issue_save_8584 : std_logic_vector(0 downto 0);
    signal issue_update_asr_8602 : std_logic_vector(0 downto 0);
    signal issue_update_psr_8590 : std_logic_vector(2 downto 0);
    signal issue_update_tbr_8593 : std_logic_vector(0 downto 0);
    signal issue_update_wim_8596 : std_logic_vector(0 downto 0);
    signal issue_update_y_8599 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_8238 : std_logic_vector(0 downto 0);
    signal iu1_to_iu2_fast_8234 : std_logic_vector(0 downto 0);
    signal iunit_traps_8373 : std_logic_vector(14 downto 0);
    signal kill_thread_now_8502 : std_logic_vector(0 downto 0);
    signal konst_8560_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8568_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8573_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8577_wire_constant : std_logic_vector(31 downto 0);
    signal konst_8635_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8639_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8644_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8648_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8704_wire_constant : std_logic_vector(2 downto 0);
    signal ls_dbg_wp_hit_8343 : std_logic_vector(0 downto 0);
    signal ls_to_iu2_8246 : std_logic_vector(0 downto 0);
    signal ls_trap_or_error_8347 : std_logic_vector(0 downto 0);
    signal ls_word_h_8351 : std_logic_vector(31 downto 0);
    signal ls_word_l_8355 : std_logic_vector(31 downto 0);
    signal mae_trap_8214 : std_logic_vector(0 downto 0);
    signal pc_8262 : std_logic_vector(31 downto 0);
    signal psr_val_8437 : std_logic_vector(31 downto 0);
    signal rd_8295 : std_logic_vector(4 downto 0);
    signal rd_value_high_8556 : std_logic_vector(31 downto 0);
    signal rd_value_low_8581 : std_logic_vector(31 downto 0);
    signal resolved_y_8431 : std_logic_vector(31 downto 0);
    signal sc_annul_8316 : std_logic_vector(0 downto 0);
    signal sc_break_thread_8455 : std_logic_vector(0 downto 0);
    signal sc_instr_class_8328 : std_logic_vector(2 downto 0);
    signal sc_stream_head_8320 : std_logic_vector(0 downto 0);
    signal sc_thread_head_8324 : std_logic_vector(0 downto 0);
    signal sc_to_iu2_8242 : std_logic_vector(0 downto 0);
    signal skip_iu_from_dispatch_8258 : std_logic_vector(0 downto 0);
    signal skip_iu_from_exec_8377 : std_logic_vector(0 downto 0);
    signal slot_id_from_dispatch_8198 : std_logic_vector(5 downto 0);
    signal slow_alu_result_8389 : std_logic_vector(31 downto 0);
    signal slow_psr_val_8381 : std_logic_vector(31 downto 0);
    signal slow_y_val_8385 : std_logic_vector(31 downto 0);
    signal stream_head_8206 : std_logic_vector(0 downto 0);
    signal stream_id_from_dispatch_8194 : std_logic_vector(1 downto 0);
    signal terminate_thread_8508 : std_logic_vector(0 downto 0);
    signal thread_head_8202 : std_logic_vector(0 downto 0);
    signal thread_id_from_dispatch_8190 : std_logic_vector(3 downto 0);
    signal update_asr_8295 : std_logic_vector(0 downto 0);
    signal update_psr_8295 : std_logic_vector(2 downto 0);
    signal update_tbr_8295 : std_logic_vector(0 downto 0);
    signal update_wim_8295 : std_logic_vector(0 downto 0);
    signal update_y_8295 : std_logic_vector(0 downto 0);
    signal upstream_trap_8492 : std_logic_vector(0 downto 0);
    signal uses_iu2_8226 : std_logic_vector(0 downto 0);
    signal valid_from_dispatch_8186 : std_logic_vector(0 downto 0);
    signal write_rd_8295 : std_logic_vector(0 downto 0);
    signal write_rd_from_iunit_8295 : std_logic_vector(0 downto 0);
    signal write_rd_from_load_store_8295 : std_logic_vector(0 downto 0);
    signal write_rd_from_pc_8295 : std_logic_vector(0 downto 0);
    signal write_rd_from_sreg_8295 : std_logic_vector(0 downto 0);
    signal write_rd_high_8553 : std_logic_vector(0 downto 0);
    signal write_rd_low_8548 : std_logic_vector(0 downto 0);
    signal write_registers_8539 : std_logic_vector(0 downto 0);
    signal writeback_control_word_8210 : std_logic_vector(24 downto 0);
    -- 
  begin -- 
    R_ACCESS_ASR_8647_wire_constant <= "101";
    R_ACCESS_TBR_8638_wire_constant <= "010";
    R_ACCESS_WIM_8634_wire_constant <= "011";
    R_ACCESS_Y_8643_wire_constant <= "100";
    R_ONE_1_8661_wire_constant <= "1";
    R_TERMINATES_STREAM_8512_wire_constant <= "011";
    R_TERMINATES_THREAD_8452_wire_constant <= "111";
    konst_8560_wire_constant <= "00000000000000000000000000000000";
    konst_8568_wire_constant <= "00000000000000000000000000000000";
    konst_8573_wire_constant <= "00000000000000000000000000000000";
    konst_8577_wire_constant <= "00000000000000000000000000000000";
    konst_8635_wire_constant <= "000";
    konst_8639_wire_constant <= "000";
    konst_8644_wire_constant <= "000";
    konst_8648_wire_constant <= "000";
    konst_8704_wire_constant <= "000";
    -- flow-through select operator MUX_8424_inst
    alu_result_8425 <= fast_alu_result_8409 when (iu1_to_iu2_fast_8234(0) /=  '0') else slow_alu_result_8389;
    -- flow-through select operator MUX_8430_inst
    resolved_y_8431 <= fast_y_val_8413 when (iu1_to_iu2_fast_8234(0) /=  '0') else slow_y_val_8385;
    -- flow-through select operator MUX_8436_inst
    psr_val_8437 <= fast_psr_val_8405 when (iu1_to_iu2_fast_8234(0) /=  '0') else slow_psr_val_8381;
    -- flow-through select operator MUX_8561_inst
    MUX_8561_wire <= alu_result_8425 when (iu1_to_iu2_fast_8234(0) /=  '0') else konst_8560_wire_constant;
    -- flow-through select operator MUX_8569_inst
    MUX_8569_wire <= alu_result_8425 when (AND_u1_u1_8566_wire(0) /=  '0') else konst_8568_wire_constant;
    -- flow-through select operator MUX_8574_inst
    MUX_8574_wire <= ls_word_l_8355 when (write_rd_from_load_store_8295(0) /=  '0') else konst_8573_wire_constant;
    -- flow-through select operator MUX_8578_inst
    MUX_8578_wire <= pc_8262 when (write_rd_from_pc_8295(0) /=  '0') else konst_8577_wire_constant;
    -- flow-through select operator MUX_8636_inst
    MUX_8636_wire <= R_ACCESS_WIM_8634_wire_constant when (issue_update_wim_8596(0) /=  '0') else konst_8635_wire_constant;
    -- flow-through select operator MUX_8640_inst
    MUX_8640_wire <= R_ACCESS_TBR_8638_wire_constant when (issue_update_tbr_8593(0) /=  '0') else konst_8639_wire_constant;
    -- flow-through select operator MUX_8645_inst
    MUX_8645_wire <= R_ACCESS_Y_8643_wire_constant when (issue_update_y_8599(0) /=  '0') else konst_8644_wire_constant;
    -- flow-through select operator MUX_8649_inst
    MUX_8649_wire <= R_ACCESS_ASR_8647_wire_constant when (issue_update_asr_8602(0) /=  '0') else konst_8648_wire_constant;
    -- flow-through select operator MUX_8657_inst
    MUX_8657_wire <= resolved_y_8431 when (issue_update_y_8599(0) /=  '0') else alu_result_8425;
    -- flow-through slice operator slice_8138_inst
    from_dispatch_8139 <= wb_in_args_buffer(372 downto 289);
    -- flow-through slice operator slice_8142_inst
    get_from_sc_8143 <= wb_in_args_buffer(288 downto 288);
    -- flow-through slice operator slice_8146_inst
    get_from_ls_8147 <= wb_in_args_buffer(287 downto 287);
    -- flow-through slice operator slice_8150_inst
    get_from_fu_8151 <= wb_in_args_buffer(286 downto 286);
    -- flow-through slice operator slice_8154_inst
    get_from_iu1_8155 <= wb_in_args_buffer(285 downto 285);
    -- flow-through slice operator slice_8158_inst
    get_from_iu1_fast_8159 <= wb_in_args_buffer(284 downto 284);
    -- flow-through slice operator slice_8162_inst
    from_sc_8163 <= wb_in_args_buffer(283 downto 278);
    -- flow-through slice operator slice_8167_inst
    from_ls_8168 <= wb_in_args_buffer(277 downto 212);
    -- flow-through slice operator slice_8171_inst
    from_fu_8172 <= wb_in_args_buffer(211 downto 211);
    -- flow-through slice operator slice_8176_inst
    from_exec_8177 <= wb_in_args_buffer(210 downto 97);
    -- flow-through slice operator slice_8181_inst
    from_exec_fast_alu_result_8182 <= wb_in_args_buffer(96 downto 0);
    -- flow-through slice operator slice_8185_inst
    valid_from_dispatch_8186 <= from_dispatch_8139(83 downto 83);
    -- flow-through slice operator slice_8189_inst
    thread_id_from_dispatch_8190 <= from_dispatch_8139(82 downto 79);
    -- flow-through slice operator slice_8193_inst
    stream_id_from_dispatch_8194 <= from_dispatch_8139(78 downto 77);
    -- flow-through slice operator slice_8197_inst
    slot_id_from_dispatch_8198 <= from_dispatch_8139(76 downto 71);
    -- flow-through slice operator slice_8201_inst
    thread_head_8202 <= from_dispatch_8139(70 downto 70);
    -- flow-through slice operator slice_8205_inst
    stream_head_8206 <= from_dispatch_8139(69 downto 69);
    -- flow-through slice operator slice_8209_inst
    writeback_control_word_8210 <= from_dispatch_8139(68 downto 44);
    -- flow-through slice operator slice_8213_inst
    mae_trap_8214 <= from_dispatch_8139(43 downto 43);
    -- flow-through slice operator slice_8217_inst
    decode_trap_bit_8218 <= from_dispatch_8139(42 downto 42);
    -- flow-through slice operator slice_8221_inst
    debug_bp_hit_8222 <= from_dispatch_8139(41 downto 41);
    -- flow-through slice operator slice_8225_inst
    uses_iu2_8226 <= from_dispatch_8139(40 downto 40);
    -- flow-through slice operator slice_8229_inst
    iu2_to_retire_buffer <= from_dispatch_8139(39 downto 39);
    -- flow-through slice operator slice_8233_inst
    iu1_to_iu2_fast_8234 <= from_dispatch_8139(38 downto 38);
    -- flow-through slice operator slice_8237_inst
    iu1_to_iu2_8238 <= from_dispatch_8139(37 downto 37);
    -- flow-through slice operator slice_8241_inst
    sc_to_iu2_8242 <= from_dispatch_8139(36 downto 36);
    -- flow-through slice operator slice_8245_inst
    ls_to_iu2_8246 <= from_dispatch_8139(35 downto 35);
    -- flow-through slice operator slice_8249_inst
    fu1_to_iu2_8250 <= from_dispatch_8139(34 downto 34);
    -- flow-through slice operator slice_8253_inst
    cu1_to_iu2_8254 <= from_dispatch_8139(33 downto 33);
    -- flow-through slice operator slice_8257_inst
    skip_iu_from_dispatch_8258 <= from_dispatch_8139(32 downto 32);
    -- flow-through slice operator slice_8261_inst
    pc_8262 <= from_dispatch_8139(31 downto 0);
    -- flow-through slice operator slice_8315_inst
    sc_annul_8316 <= from_sc_8163(5 downto 5);
    -- flow-through slice operator slice_8319_inst
    sc_stream_head_8320 <= from_sc_8163(4 downto 4);
    -- flow-through slice operator slice_8323_inst
    sc_thread_head_8324 <= from_sc_8163(3 downto 3);
    -- flow-through slice operator slice_8327_inst
    sc_instr_class_8328 <= from_sc_8163(2 downto 0);
    -- flow-through slice operator slice_8342_inst
    ls_dbg_wp_hit_8343 <= from_ls_8168(65 downto 65);
    -- flow-through slice operator slice_8346_inst
    ls_trap_or_error_8347 <= from_ls_8168(64 downto 64);
    -- flow-through slice operator slice_8350_inst
    ls_word_h_8351 <= from_ls_8168(63 downto 32);
    -- flow-through slice operator slice_8354_inst
    ls_word_l_8355 <= from_ls_8168(31 downto 0);
    -- flow-through slice operator slice_8364_inst
    exec_error_8365 <= from_exec_8177(113 downto 113);
    -- flow-through slice operator slice_8368_inst
    exec_trap_8369 <= from_exec_8177(112 downto 112);
    -- flow-through slice operator slice_8372_inst
    iunit_traps_8373 <= from_exec_8177(111 downto 97);
    -- flow-through slice operator slice_8376_inst
    skip_iu_from_exec_8377 <= from_exec_8177(96 downto 96);
    -- flow-through slice operator slice_8380_inst
    slow_psr_val_8381 <= from_exec_8177(95 downto 64);
    -- flow-through slice operator slice_8384_inst
    slow_y_val_8385 <= from_exec_8177(63 downto 32);
    -- flow-through slice operator slice_8388_inst
    slow_alu_result_8389 <= from_exec_8177(31 downto 0);
    -- flow-through slice operator slice_8400_inst
    fast_update_psr_8401 <= from_exec_fast_alu_result_8182(96 downto 96);
    -- flow-through slice operator slice_8404_inst
    fast_psr_val_8405 <= from_exec_fast_alu_result_8182(95 downto 64);
    -- flow-through slice operator slice_8408_inst
    fast_alu_result_8409 <= from_exec_fast_alu_result_8182(63 downto 32);
    -- flow-through slice operator slice_8412_inst
    fast_y_val_8413 <= from_exec_fast_alu_result_8182(31 downto 0);
    -- interlock W_fu_trap_8438_inst
    process(from_fu_8172) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := from_fu_8172(0 downto 0);
      fu_trap_8440 <= tmp_var; -- 
    end process;
    -- interlock W_issue_restore_8585_inst
    process(is_restore_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_restore_8295(0 downto 0);
      issue_restore_8587 <= tmp_var; -- 
    end process;
    -- interlock W_issue_save_8582_inst
    process(is_save_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := is_save_8295(0 downto 0);
      issue_save_8584 <= tmp_var; -- 
    end process;
    -- interlock W_issue_update_asr_8600_inst
    process(update_asr_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_asr_8295(0 downto 0);
      issue_update_asr_8602 <= tmp_var; -- 
    end process;
    -- interlock W_issue_update_psr_8588_inst
    process(update_psr_8295) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 2 downto 0) := update_psr_8295(2 downto 0);
      issue_update_psr_8590 <= tmp_var; -- 
    end process;
    -- interlock W_issue_update_tbr_8591_inst
    process(update_tbr_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_tbr_8295(0 downto 0);
      issue_update_tbr_8593 <= tmp_var; -- 
    end process;
    -- interlock W_issue_update_wim_8594_inst
    process(update_wim_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_wim_8295(0 downto 0);
      issue_update_wim_8596 <= tmp_var; -- 
    end process;
    -- interlock W_issue_update_y_8597_inst
    process(update_y_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := update_y_8295(0 downto 0);
      issue_update_y_8599 <= tmp_var; -- 
    end process;
    -- interlock W_kill_thread_now_8500_inst
    process(upstream_trap_8492) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := upstream_trap_8492(0 downto 0);
      kill_thread_now_8502 <= tmp_var; -- 
    end process;
    -- interlock W_rd_value_high_8554_inst
    process(ls_word_h_8351) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 31 downto 0) := ls_word_h_8351(31 downto 0);
      rd_value_high_8556 <= tmp_var; -- 
    end process;
    -- interlock W_send_to_rfile_8667_inst
    process(uses_iu2_8226) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := uses_iu2_8226(0 downto 0);
      send_to_rfile_buffer <= tmp_var; -- 
    end process;
    -- interlock W_write_rd_low_8546_inst
    process(write_rd_8295) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 0 downto 0) := write_rd_8295(0 downto 0);
      write_rd_low_8548 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_8332_inst
    annul_from_sc_8333 <= (sc_to_iu2_8242 and sc_annul_8316);
    -- flow through binary operator AND_u1_u1_8454_inst
    sc_break_thread_8455 <= (sc_to_iu2_8242 and EQ_u3_u1_8453_wire);
    -- flow through binary operator AND_u1_u1_8465_inst
    AND_u1_u1_8465_wire <= (NOT_u1_u1_8463_wire and valid_from_dispatch_8186);
    -- flow through binary operator AND_u1_u1_8467_inst
    AND_u1_u1_8467_wire <= (AND_u1_u1_8465_wire and decode_trap_bit_8218);
    -- flow through binary operator AND_u1_u1_8472_inst
    AND_u1_u1_8472_wire <= (NOT_u1_u1_8470_wire and iu1_to_iu2_8238);
    -- flow through binary operator AND_u1_u1_8476_inst
    AND_u1_u1_8476_wire <= (AND_u1_u1_8472_wire and OR_u1_u1_8475_wire);
    -- flow through binary operator AND_u1_u1_8480_inst
    AND_u1_u1_8480_wire <= (NOT_u1_u1_8478_wire and ls_to_iu2_8246);
    -- flow through binary operator AND_u1_u1_8482_inst
    AND_u1_u1_8482_wire <= (AND_u1_u1_8480_wire and ls_trap_or_error_8347);
    -- flow through binary operator AND_u1_u1_8487_inst
    AND_u1_u1_8487_wire <= (NOT_u1_u1_8485_wire and fu1_to_iu2_8250);
    -- flow through binary operator AND_u1_u1_8489_inst
    AND_u1_u1_8489_wire <= (AND_u1_u1_8487_wire and fu_trap_8440);
    -- flow through binary operator AND_u1_u1_8507_inst
    terminate_thread_8508 <= (break_thread_8499 and NOT_u1_u1_8506_wire);
    -- flow through binary operator AND_u1_u1_8514_inst
    break_stream_8515 <= (sc_to_iu2_8242 and EQ_u3_u1_8513_wire);
    -- flow through binary operator AND_u1_u1_8536_inst
    AND_u1_u1_8536_wire <= (NOT_u1_u1_8534_wire and uses_iu2_8226);
    -- flow through binary operator AND_u1_u1_8538_inst
    write_registers_8539 <= (AND_u1_u1_8536_wire and instruction_can_be_executed_8526);
    -- flow through binary operator AND_u1_u1_8552_inst
    write_rd_high_8553 <= (write_rd_from_load_store_8295 and double_word_8295);
    -- flow through binary operator AND_u1_u1_8566_inst
    AND_u1_u1_8566_wire <= (iu1_to_iu2_8238 and OR_u1_u1_8565_wire);
    -- flow through binary operator AND_u1_u1_8706_inst
    AND_u1_u1_8706_wire <= (iu1_to_iu2_8238 and NEQ_u3_u1_8705_wire);
    -- flow through binary operator AND_u1_u1_8709_inst
    AND_u1_u1_8709_wire <= (iu1_to_iu2_8238 and exec_error_8365);
    -- flow through binary operator AND_u1_u1_8713_inst
    AND_u1_u1_8713_wire <= (iu1_to_iu2_8238 and exec_trap_8369);
    -- flow through binary operator CONCAT_u12_u14_8612_inst
    process(CONCAT_u6_u12_8608_wire, CONCAT_u1_u2_8611_wire) -- 
      variable tmp_var : std_logic_vector(13 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u12_8608_wire, CONCAT_u1_u2_8611_wire, tmp_var);
      CONCAT_u12_u14_8612_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u14_u53_8620_inst
    process(CONCAT_u12_u14_8612_wire, CONCAT_u2_u39_8619_wire) -- 
      variable tmp_var : std_logic_vector(52 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u12_u14_8612_wire, CONCAT_u2_u39_8619_wire, tmp_var);
      CONCAT_u14_u53_8620_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u15_u16_8717_inst
    process(iunit_traps_8373, skip_iu_from_dispatch_8258) -- 
      variable tmp_var : std_logic_vector(15 downto 0); -- 
    begin -- 
      ApConcat_proc(iunit_traps_8373, skip_iu_from_dispatch_8258, tmp_var);
      CONCAT_u15_u16_8717_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8611_inst
    process(issue_save_8584, issue_restore_8587) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(issue_save_8584, issue_restore_8587, tmp_var);
      CONCAT_u1_u2_8611_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8615_inst
    process(write_rd_low_8548, write_rd_high_8553) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_rd_low_8548, write_rd_high_8553, tmp_var);
      CONCAT_u1_u2_8615_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8662_inst
    process(write_registers_8539) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(write_registers_8539, R_ONE_1_8661_wire_constant, tmp_var);
      CONCAT_u1_u2_8662_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_8710_inst
    process(AND_u1_u1_8706_wire, AND_u1_u1_8709_wire) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(AND_u1_u1_8706_wire, AND_u1_u1_8709_wire, tmp_var);
      CONCAT_u1_u2_8710_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u4_8652_inst
    process(OR_u1_u1_8632_wire, OR_u3_u3_8651_wire) -- 
      variable tmp_var : std_logic_vector(3 downto 0); -- 
    begin -- 
      ApConcat_proc(OR_u1_u1_8632_wire, OR_u3_u3_8651_wire, tmp_var);
      CONCAT_u1_u4_8652_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u5_8693_inst
    process(send_to_rfile_buffer, thread_id_from_dispatch_8190) -- 
      variable tmp_var : std_logic_vector(4 downto 0); -- 
    begin -- 
      ApConcat_proc(send_to_rfile_buffer, thread_id_from_dispatch_8190, tmp_var);
      CONCAT_u1_u5_8693_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u39_8619_inst
    process(CONCAT_u1_u2_8615_wire, CONCAT_u5_u37_8618_wire) -- 
      variable tmp_var : std_logic_vector(38 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8615_wire, CONCAT_u5_u37_8618_wire, tmp_var);
      CONCAT_u2_u39_8619_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_8714_inst
    process(CONCAT_u1_u2_8710_wire, AND_u1_u1_8713_wire) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_8710_wire, AND_u1_u1_8713_wire, tmp_var);
      CONCAT_u2_u3_8714_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u35_8623_inst
    process(rd_value_low_8581, issue_update_psr_8590) -- 
      variable tmp_var : std_logic_vector(34 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_value_low_8581, issue_update_psr_8590, tmp_var);
      CONCAT_u32_u35_8623_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u32_u37_8659_inst
    process(MUX_8657_wire, asr_id_8295) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_8657_wire, asr_id_8295, tmp_var);
      CONCAT_u32_u37_8659_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u35_u67_8625_inst
    process(CONCAT_u32_u35_8623_wire, psr_val_8437) -- 
      variable tmp_var : std_logic_vector(66 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u35_8623_wire, psr_val_8437, tmp_var);
      CONCAT_u35_u67_8625_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u37_u39_8663_inst
    process(CONCAT_u32_u37_8659_wire, CONCAT_u1_u2_8662_wire) -- 
      variable tmp_var : std_logic_vector(38 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u32_u37_8659_wire, CONCAT_u1_u2_8662_wire, tmp_var);
      CONCAT_u37_u39_8663_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u38_u70_8700_inst
    process(CONCAT_u6_u38_8698_wire, psr_val_8437) -- 
      variable tmp_var : std_logic_vector(69 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u38_8698_wire, psr_val_8437, tmp_var);
      CONCAT_u38_u70_8700_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u3_u19_8718_inst
    process(CONCAT_u2_u3_8714_wire, CONCAT_u15_u16_8717_wire) -- 
      variable tmp_var : std_logic_vector(18 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u2_u3_8714_wire, CONCAT_u15_u16_8717_wire, tmp_var);
      CONCAT_u3_u19_8718_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u4_u6_8606_inst
    process(thread_id_from_dispatch_8190, stream_id_from_dispatch_8194) -- 
      variable tmp_var : std_logic_vector(5 downto 0); -- 
    begin -- 
      ApConcat_proc(thread_id_from_dispatch_8190, stream_id_from_dispatch_8194, tmp_var);
      CONCAT_u4_u6_8606_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u53_u163_8665_inst
    process(CONCAT_u14_u53_8620_wire, CONCAT_u71_u110_8664_wire) -- 
      variable tmp_var : std_logic_vector(162 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u14_u53_8620_wire, CONCAT_u71_u110_8664_wire, tmp_var);
      to_reg_wb_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u37_8618_inst
    process(rd_8295, rd_value_high_8556) -- 
      variable tmp_var : std_logic_vector(36 downto 0); -- 
    begin -- 
      ApConcat_proc(rd_8295, rd_value_high_8556, tmp_var);
      CONCAT_u5_u37_8618_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u5_u7_8695_inst
    process(CONCAT_u1_u5_8693_wire, stream_id_from_dispatch_8194) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u5_8693_wire, stream_id_from_dispatch_8194, tmp_var);
      CONCAT_u5_u7_8695_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u67_u71_8653_inst
    process(CONCAT_u35_u67_8625_wire, CONCAT_u1_u4_8652_wire) -- 
      variable tmp_var : std_logic_vector(70 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u35_u67_8625_wire, CONCAT_u1_u4_8652_wire, tmp_var);
      CONCAT_u67_u71_8653_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u12_8608_inst
    process(CONCAT_u4_u6_8606_wire, slot_id_from_dispatch_8198) -- 
      variable tmp_var : std_logic_vector(11 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u4_u6_8606_wire, slot_id_from_dispatch_8198, tmp_var);
      CONCAT_u6_u12_8608_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u38_8698_inst
    process(slot_id_from_dispatch_8198, pc_8262) -- 
      variable tmp_var : std_logic_vector(37 downto 0); -- 
    begin -- 
      ApConcat_proc(slot_id_from_dispatch_8198, pc_8262, tmp_var);
      CONCAT_u6_u38_8698_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u71_u110_8664_inst
    process(CONCAT_u67_u71_8653_wire, CONCAT_u37_u39_8663_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u67_u71_8653_wire, CONCAT_u37_u39_8663_wire, tmp_var);
      CONCAT_u71_u110_8664_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u77_u96_8719_inst
    process(CONCAT_u7_u77_8701_wire, CONCAT_u3_u19_8718_wire) -- 
      variable tmp_var : std_logic_vector(95 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u7_u77_8701_wire, CONCAT_u3_u19_8718_wire, tmp_var);
      to_wb_retire_stage_buffer <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u7_u77_8701_inst
    process(CONCAT_u5_u7_8695_wire, CONCAT_u38_u70_8700_wire) -- 
      variable tmp_var : std_logic_vector(76 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u5_u7_8695_wire, CONCAT_u38_u70_8700_wire, tmp_var);
      CONCAT_u7_u77_8701_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8453_inst
    process(sc_instr_class_8328) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_8328, R_TERMINATES_THREAD_8452_wire_constant, tmp_var);
      EQ_u3_u1_8453_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8513_inst
    process(sc_instr_class_8328) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(sc_instr_class_8328, R_TERMINATES_STREAM_8512_wire_constant, tmp_var);
      EQ_u3_u1_8513_wire <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u3_u1_8705_inst
    process(issue_update_psr_8590) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(issue_update_psr_8590, konst_8704_wire_constant, tmp_var);
      NEQ_u3_u1_8705_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_8463_inst
    process(ignore_instr_8448) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8448, tmp_var);
      NOT_u1_u1_8463_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8470_inst
    process(ignore_instr_8448) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8448, tmp_var);
      NOT_u1_u1_8470_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8478_inst
    process(ignore_instr_8448) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8448, tmp_var);
      NOT_u1_u1_8478_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8485_inst
    process(ignore_instr_8448) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8448, tmp_var);
      NOT_u1_u1_8485_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8506_inst
    process(upstream_trap_8492) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", upstream_trap_8492, tmp_var);
      NOT_u1_u1_8506_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8534_inst
    process(ignore_instr_8448) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", ignore_instr_8448, tmp_var);
      NOT_u1_u1_8534_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8447_inst
    ignore_instr_8448 <= (skip_iu_from_dispatch_8258 or sc_annul_8316);
    -- flow through binary operator OR_u1_u1_8461_inst
    OR_u1_u1_8461_wire <= (mae_trap_8214 or debug_bp_hit_8222);
    -- flow through binary operator OR_u1_u1_8468_inst
    OR_u1_u1_8468_wire <= (OR_u1_u1_8461_wire or AND_u1_u1_8467_wire);
    -- flow through binary operator OR_u1_u1_8475_inst
    OR_u1_u1_8475_wire <= (exec_error_8365 or exec_trap_8369);
    -- flow through binary operator OR_u1_u1_8483_inst
    OR_u1_u1_8483_wire <= (AND_u1_u1_8476_wire or AND_u1_u1_8482_wire);
    -- flow through binary operator OR_u1_u1_8490_inst
    OR_u1_u1_8490_wire <= (OR_u1_u1_8483_wire or AND_u1_u1_8489_wire);
    -- flow through binary operator OR_u1_u1_8491_inst
    upstream_trap_8492 <= (OR_u1_u1_8468_wire or OR_u1_u1_8490_wire);
    -- flow through binary operator OR_u1_u1_8496_inst
    OR_u1_u1_8496_wire <= (upstream_trap_8492 or sc_break_thread_8455);
    -- flow through binary operator OR_u1_u1_8498_inst
    break_thread_8499 <= (OR_u1_u1_8496_wire or ls_dbg_wp_hit_8343);
    -- flow through binary operator OR_u1_u1_8565_inst
    OR_u1_u1_8565_wire <= (write_rd_from_sreg_8295 or write_rd_from_iunit_8295);
    -- flow through binary operator OR_u1_u1_8628_inst
    OR_u1_u1_8628_wire <= (issue_update_wim_8596 or issue_update_tbr_8593);
    -- flow through binary operator OR_u1_u1_8631_inst
    OR_u1_u1_8631_wire <= (issue_update_y_8599 or issue_update_asr_8602);
    -- flow through binary operator OR_u1_u1_8632_inst
    OR_u1_u1_8632_wire <= (OR_u1_u1_8628_wire or OR_u1_u1_8631_wire);
    -- flow through binary operator OR_u32_u32_8570_inst
    OR_u32_u32_8570_wire <= (MUX_8561_wire or MUX_8569_wire);
    -- flow through binary operator OR_u32_u32_8579_inst
    OR_u32_u32_8579_wire <= (MUX_8574_wire or MUX_8578_wire);
    -- flow through binary operator OR_u32_u32_8580_inst
    rd_value_low_8581 <= (OR_u32_u32_8570_wire or OR_u32_u32_8579_wire);
    -- flow through binary operator OR_u3_u3_8641_inst
    OR_u3_u3_8641_wire <= (MUX_8636_wire or MUX_8640_wire);
    -- flow through binary operator OR_u3_u3_8650_inst
    OR_u3_u3_8650_wire <= (MUX_8645_wire or MUX_8649_wire);
    -- flow through binary operator OR_u3_u3_8651_inst
    OR_u3_u3_8651_wire <= (OR_u3_u3_8641_wire or OR_u3_u3_8650_wire);
    volatile_operator_decode_iunit_writeback_control_word_8291: decode_iunit_writeback_control_word_Volatile port map(cw => writeback_control_word_8210, write_rd => write_rd_8295, double_word => double_word_8295, write_rd_from_load_store => write_rd_from_load_store_8295, write_rd_from_iunit => write_rd_from_iunit_8295, write_rd_from_pc => write_rd_from_pc_8295, write_rd_from_sreg => write_rd_from_sreg_8295, rd => rd_8295, update_psr => update_psr_8295, update_wim => update_wim_8295, update_tbr => update_tbr_8295, update_y => update_y_8295, update_asr => update_asr_8295, asr_id => asr_id_8295, is_save => is_save_8295, is_restore => is_restore_8295); 
    volatile_operator_writeback_fsm_8344: writeback_fsm_Volatile port map(wb_state => wb_state_buffer, valid_bit => valid_from_dispatch_8186, thread_head => thread_head_8202, stream_head => stream_head_8206, break_thread => break_thread_8499, terminate_thread => terminate_thread_8508, kill_thread_now => kill_thread_now_8502, break_stream => break_stream_8515, next_wb_state => next_wb_state_buffer, instr_can_execute => instruction_can_be_executed_8526); 
    -- 
  end Block; -- data_path
  -- 
end iu_writeback_core_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity pad16To32_Volatile is -- 
  port ( -- 
    signed_type : in  std_logic_vector(0 downto 0);
    hw : in  std_logic_vector(15 downto 0);
    w : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity pad16To32_Volatile;
architecture pad16To32_Volatile_arch of pad16To32_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(17-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal hw_buffer :  std_logic_vector(15 downto 0);
  -- output port buffer signals
  signal w_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  signed_type_buffer <= signed_type;
  hw_buffer <= hw;
  -- output handling  -------------------------------------------------------
  w <= w_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_6584_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u16_u1_6583_wire : std_logic_vector(0 downto 0);
    signal NOT_u16_u16_6587_wire_constant : std_logic_vector(15 downto 0);
    signal konst_6582_wire_constant : std_logic_vector(15 downto 0);
    signal pad_hw_6591 : std_logic_vector(15 downto 0);
    signal type_cast_6589_wire_constant : std_logic_vector(15 downto 0);
    -- 
  begin -- 
    NOT_u16_u16_6587_wire_constant <= "1111111111111111";
    konst_6582_wire_constant <= "0000000000001111";
    type_cast_6589_wire_constant <= "0000000000000000";
    -- flow-through select operator MUX_6590_inst
    pad_hw_6591 <= NOT_u16_u16_6587_wire_constant when (AND_u1_u1_6584_wire(0) /=  '0') else type_cast_6589_wire_constant;
    -- flow through binary operator AND_u1_u1_6584_inst
    AND_u1_u1_6584_wire <= (signed_type_buffer and BITSEL_u16_u1_6583_wire);
    -- flow through binary operator BITSEL_u16_u1_6583_inst
    process(hw_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(hw_buffer, konst_6582_wire_constant, tmp_var);
      BITSEL_u16_u1_6583_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u16_u32_6595_inst
    process(pad_hw_6591, hw_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(pad_hw_6591, hw_buffer, tmp_var);
      w_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end pad16To32_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity pad8To32_Volatile is -- 
  port ( -- 
    signed_type : in  std_logic_vector(0 downto 0);
    b : in  std_logic_vector(7 downto 0);
    w : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity pad8To32_Volatile;
architecture pad8To32_Volatile_arch of pad8To32_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(9-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal signed_type_buffer :  std_logic_vector(0 downto 0);
  signal b_buffer :  std_logic_vector(7 downto 0);
  -- output port buffer signals
  signal w_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  signed_type_buffer <= signed_type;
  b_buffer <= b;
  -- output handling  -------------------------------------------------------
  w <= w_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_6607_wire : std_logic_vector(0 downto 0);
    signal BITSEL_u8_u1_6606_wire : std_logic_vector(0 downto 0);
    signal NOT_u24_u24_6610_wire_constant : std_logic_vector(23 downto 0);
    signal konst_6605_wire_constant : std_logic_vector(7 downto 0);
    signal pad_b_6614 : std_logic_vector(23 downto 0);
    signal type_cast_6612_wire_constant : std_logic_vector(23 downto 0);
    -- 
  begin -- 
    NOT_u24_u24_6610_wire_constant <= "111111111111111111111111";
    konst_6605_wire_constant <= "00000111";
    type_cast_6612_wire_constant <= "000000000000000000000000";
    -- flow-through select operator MUX_6613_inst
    pad_b_6614 <= NOT_u24_u24_6610_wire_constant when (AND_u1_u1_6607_wire(0) /=  '0') else type_cast_6612_wire_constant;
    -- flow through binary operator AND_u1_u1_6607_inst
    AND_u1_u1_6607_wire <= (signed_type_buffer and BITSEL_u8_u1_6606_wire);
    -- flow through binary operator BITSEL_u8_u1_6606_inst
    process(b_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(b_buffer, konst_6605_wire_constant, tmp_var);
      BITSEL_u8_u1_6606_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u24_u32_6618_inst
    process(pad_b_6614, b_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApConcat_proc(pad_b_6614, b_buffer, tmp_var);
      w_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end pad8To32_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
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
    signal XOR_u8_u8_9429_wire : std_logic_vector(7 downto 0);
    signal XOR_u8_u8_9434_wire : std_logic_vector(7 downto 0);
    signal slice_9426_wire : std_logic_vector(7 downto 0);
    signal slice_9428_wire : std_logic_vector(7 downto 0);
    signal slice_9431_wire : std_logic_vector(7 downto 0);
    signal slice_9433_wire : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    -- flow-through slice operator slice_9426_inst
    slice_9426_wire <= A_buffer(7 downto 0);
    -- flow-through slice operator slice_9428_inst
    slice_9428_wire <= A_buffer(15 downto 8);
    -- flow-through slice operator slice_9431_inst
    slice_9431_wire <= A_buffer(23 downto 16);
    -- flow-through slice operator slice_9433_inst
    slice_9433_wire <= A_buffer(31 downto 24);
    -- flow through binary operator XOR_u8_u8_9429_inst
    XOR_u8_u8_9429_wire <= (slice_9426_wire xor slice_9428_wire);
    -- flow through binary operator XOR_u8_u8_9434_inst
    XOR_u8_u8_9434_wire <= (slice_9431_wire xor slice_9433_wire);
    -- flow through binary operator XOR_u8_u8_9435_inst
    AS_buffer <= (XOR_u8_u8_9429_wire xor XOR_u8_u8_9434_wire);
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity testBit16_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(15 downto 0);
    sel : in  std_logic_vector(3 downto 0);
    b : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity testBit16_Volatile;
architecture testBit16_Volatile_arch of testBit16_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(20-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(15 downto 0);
  signal sel_buffer :  std_logic_vector(3 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component testBit8_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(7 downto 0);
      sel : in  std_logic_vector(2 downto 0);
      b : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u4_u1_6977_wire : std_logic_vector(0 downto 0);
    signal aH_6957 : std_logic_vector(7 downto 0);
    signal aL_6961 : std_logic_vector(7 downto 0);
    signal bH_6969 : std_logic_vector(0 downto 0);
    signal bL_6973 : std_logic_vector(0 downto 0);
    signal konst_6976_wire_constant : std_logic_vector(3 downto 0);
    signal s3_6965 : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_6976_wire_constant <= "0011";
    -- flow-through select operator MUX_6980_inst
    b_buffer <= bH_6969 when (BITSEL_u4_u1_6977_wire(0) /=  '0') else bL_6973;
    -- flow-through slice operator slice_6956_inst
    aH_6957 <= a_buffer(15 downto 8);
    -- flow-through slice operator slice_6960_inst
    aL_6961 <= a_buffer(7 downto 0);
    -- flow-through slice operator slice_6964_inst
    s3_6965 <= sel_buffer(2 downto 0);
    -- flow through binary operator BITSEL_u4_u1_6977_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_6976_wire_constant, tmp_var);
      BITSEL_u4_u1_6977_wire <= tmp_var; --
    end process;
    volatile_operator_testBit8_5715: testBit8_Volatile port map(a => aH_6957, sel => s3_6965, b => bH_6969); 
    volatile_operator_testBit8_5716: testBit8_Volatile port map(a => aL_6961, sel => s3_6965, b => bL_6973); 
    -- 
  end Block; -- data_path
  -- 
end testBit16_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity testBit2_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(1 downto 0);
    sel : in  std_logic_vector(0 downto 0);
    b : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity testBit2_Volatile;
architecture testBit2_Volatile_arch of testBit2_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(3-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(1 downto 0);
  signal sel_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal a0_6875 : std_logic_vector(0 downto 0);
    signal a1_6871 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    -- flow-through select operator MUX_6880_inst
    b_buffer <= a1_6871 when (sel_buffer(0) /=  '0') else a0_6875;
    -- flow-through slice operator slice_6870_inst
    a1_6871 <= a_buffer(1 downto 1);
    -- flow-through slice operator slice_6874_inst
    a0_6875 <= a_buffer(0 downto 0);
    -- 
  end Block; -- data_path
  -- 
end testBit2_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity testBit32_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(31 downto 0);
    sel : in  std_logic_vector(4 downto 0);
    b : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity testBit32_Volatile;
architecture testBit32_Volatile_arch of testBit32_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(37-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(31 downto 0);
  signal sel_buffer :  std_logic_vector(4 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component testBit16_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(15 downto 0);
      sel : in  std_logic_vector(3 downto 0);
      b : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u5_u1_7010_wire : std_logic_vector(0 downto 0);
    signal aH_6990 : std_logic_vector(15 downto 0);
    signal aL_6994 : std_logic_vector(15 downto 0);
    signal bH_7002 : std_logic_vector(0 downto 0);
    signal bL_7006 : std_logic_vector(0 downto 0);
    signal konst_7009_wire_constant : std_logic_vector(4 downto 0);
    signal s4_6998 : std_logic_vector(3 downto 0);
    -- 
  begin -- 
    konst_7009_wire_constant <= "00100";
    -- flow-through select operator MUX_7013_inst
    b_buffer <= bH_7002 when (BITSEL_u5_u1_7010_wire(0) /=  '0') else bL_7006;
    -- flow-through slice operator slice_6989_inst
    aH_6990 <= a_buffer(31 downto 16);
    -- flow-through slice operator slice_6993_inst
    aL_6994 <= a_buffer(15 downto 0);
    -- flow-through slice operator slice_6997_inst
    s4_6998 <= sel_buffer(3 downto 0);
    -- flow through binary operator BITSEL_u5_u1_7010_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_7009_wire_constant, tmp_var);
      BITSEL_u5_u1_7010_wire <= tmp_var; --
    end process;
    volatile_operator_testBit16_5738: testBit16_Volatile port map(a => aH_6990, sel => s4_6998, b => bH_7002); 
    volatile_operator_testBit16_5739: testBit16_Volatile port map(a => aL_6994, sel => s4_6998, b => bL_7006); 
    -- 
  end Block; -- data_path
  -- 
end testBit32_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity testBit4_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(3 downto 0);
    sel : in  std_logic_vector(1 downto 0);
    b : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity testBit4_Volatile;
architecture testBit4_Volatile_arch of testBit4_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(6-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(3 downto 0);
  signal sel_buffer :  std_logic_vector(1 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component testBit2_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(1 downto 0);
      sel : in  std_logic_vector(0 downto 0);
      b : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u2_u1_6911_wire : std_logic_vector(0 downto 0);
    signal aH_6890 : std_logic_vector(1 downto 0);
    signal aL_6894 : std_logic_vector(1 downto 0);
    signal bH_6903 : std_logic_vector(0 downto 0);
    signal bL_6907 : std_logic_vector(0 downto 0);
    signal konst_6897_wire_constant : std_logic_vector(1 downto 0);
    signal konst_6910_wire_constant : std_logic_vector(1 downto 0);
    signal s1_6899 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_6897_wire_constant <= "00";
    konst_6910_wire_constant <= "01";
    -- flow-through select operator MUX_6914_inst
    b_buffer <= bH_6903 when (BITSEL_u2_u1_6911_wire(0) /=  '0') else bL_6907;
    -- flow-through slice operator slice_6889_inst
    aH_6890 <= a_buffer(3 downto 2);
    -- flow-through slice operator slice_6893_inst
    aL_6894 <= a_buffer(1 downto 0);
    -- flow through binary operator BITSEL_u2_u1_6898_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_6897_wire_constant, tmp_var);
      s1_6899 <= tmp_var; --
    end process;
    -- flow through binary operator BITSEL_u2_u1_6911_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_6910_wire_constant, tmp_var);
      BITSEL_u2_u1_6911_wire <= tmp_var; --
    end process;
    volatile_operator_testBit2_5669: testBit2_Volatile port map(a => aH_6890, sel => s1_6899, b => bH_6903); 
    volatile_operator_testBit2_5670: testBit2_Volatile port map(a => aL_6894, sel => s1_6899, b => bL_6907); 
    -- 
  end Block; -- data_path
  -- 
end testBit4_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity testBit8_Volatile is -- 
  port ( -- 
    a : in  std_logic_vector(7 downto 0);
    sel : in  std_logic_vector(2 downto 0);
    b : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity testBit8_Volatile;
architecture testBit8_Volatile_arch of testBit8_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(11-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal a_buffer :  std_logic_vector(7 downto 0);
  signal sel_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal b_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  component testBit4_Volatile is -- 
    port ( -- 
      a : in  std_logic_vector(3 downto 0);
      sel : in  std_logic_vector(1 downto 0);
      b : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  a_buffer <= a;
  sel_buffer <= sel;
  -- output handling  -------------------------------------------------------
  b <= b_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u3_u1_6944_wire : std_logic_vector(0 downto 0);
    signal aH_6924 : std_logic_vector(3 downto 0);
    signal aL_6928 : std_logic_vector(3 downto 0);
    signal bH_6936 : std_logic_vector(0 downto 0);
    signal bL_6940 : std_logic_vector(0 downto 0);
    signal konst_6943_wire_constant : std_logic_vector(2 downto 0);
    signal s2_6932 : std_logic_vector(1 downto 0);
    -- 
  begin -- 
    konst_6943_wire_constant <= "010";
    -- flow-through select operator MUX_6947_inst
    b_buffer <= bH_6936 when (BITSEL_u3_u1_6944_wire(0) /=  '0') else bL_6940;
    -- flow-through slice operator slice_6923_inst
    aH_6924 <= a_buffer(7 downto 4);
    -- flow-through slice operator slice_6927_inst
    aL_6928 <= a_buffer(3 downto 0);
    -- flow-through slice operator slice_6931_inst
    s2_6932 <= sel_buffer(1 downto 0);
    -- flow through binary operator BITSEL_u3_u1_6944_inst
    process(sel_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(sel_buffer, konst_6943_wire_constant, tmp_var);
      BITSEL_u3_u1_6944_wire <= tmp_var; --
    end process;
    volatile_operator_testBit4_5692: testBit4_Volatile port map(a => aH_6924, sel => s2_6932, b => bH_6936); 
    volatile_operator_testBit4_5693: testBit4_Volatile port map(a => aL_6928, sel => s2_6932, b => bL_6940); 
    -- 
  end Block; -- data_path
  -- 
end testBit8_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity test_and_set_psr_locks_Volatile is -- 
  port ( -- 
    test_locks : in  std_logic_vector(2 downto 0);
    set_locks : in  std_logic_vector(2 downto 0);
    psr_read_locks : in  std_logic_vector(2 downto 0);
    psr_read_lock_available : out  std_logic_vector(0 downto 0);
    next_psr_read_locks : out  std_logic_vector(2 downto 0)-- 
  );
  -- 
end entity test_and_set_psr_locks_Volatile;
architecture test_and_set_psr_locks_Volatile_arch of test_and_set_psr_locks_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(9-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal test_locks_buffer :  std_logic_vector(2 downto 0);
  signal set_locks_buffer :  std_logic_vector(2 downto 0);
  signal psr_read_locks_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal psr_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal next_psr_read_locks_buffer :  std_logic_vector(2 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  test_locks_buffer <= test_locks;
  set_locks_buffer <= set_locks;
  psr_read_locks_buffer <= psr_read_locks;
  -- output handling  -------------------------------------------------------
  psr_read_lock_available <= psr_read_lock_available_buffer;
  next_psr_read_locks <= next_psr_read_locks_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u3_u3_8792_wire : std_logic_vector(2 downto 0);
    signal AND_u3_u3_8797_wire : std_logic_vector(2 downto 0);
    signal EQ_u3_u1_8794_wire : std_logic_vector(0 downto 0);
    signal EQ_u3_u1_8799_wire : std_logic_vector(0 downto 0);
    signal konst_8793_wire_constant : std_logic_vector(2 downto 0);
    signal konst_8798_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    konst_8793_wire_constant <= "000";
    konst_8798_wire_constant <= "000";
    -- flow through binary operator AND_u1_u1_8800_inst
    psr_read_lock_available_buffer <= (EQ_u3_u1_8794_wire and EQ_u3_u1_8799_wire);
    -- flow through binary operator AND_u3_u3_8792_inst
    AND_u3_u3_8792_wire <= (psr_read_locks_buffer and test_locks_buffer);
    -- flow through binary operator AND_u3_u3_8797_inst
    AND_u3_u3_8797_wire <= (psr_read_locks_buffer and set_locks_buffer);
    -- flow through binary operator EQ_u3_u1_8794_inst
    process(AND_u3_u3_8792_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u3_u3_8792_wire, konst_8793_wire_constant, tmp_var);
      EQ_u3_u1_8794_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u3_u1_8799_inst
    process(AND_u3_u3_8797_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u3_u3_8797_wire, konst_8798_wire_constant, tmp_var);
      EQ_u3_u1_8799_wire <= tmp_var; --
    end process;
    -- flow through binary operator OR_u3_u3_8805_inst
    next_psr_read_locks_buffer <= (psr_read_locks_buffer or set_locks_buffer);
    -- 
  end Block; -- data_path
  -- 
end test_and_set_psr_locks_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity test_and_set_single_bit_lock_Volatile is -- 
  port ( -- 
    test_lock : in  std_logic_vector(0 downto 0);
    set_lock : in  std_logic_vector(0 downto 0);
    old_lock_value : in  std_logic_vector(0 downto 0);
    lock_available : out  std_logic_vector(0 downto 0);
    new_lock_value : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity test_and_set_single_bit_lock_Volatile;
architecture test_and_set_single_bit_lock_Volatile_arch of test_and_set_single_bit_lock_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(3-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal test_lock_buffer :  std_logic_vector(0 downto 0);
  signal set_lock_buffer :  std_logic_vector(0 downto 0);
  signal old_lock_value_buffer :  std_logic_vector(0 downto 0);
  -- output port buffer signals
  signal lock_available_buffer :  std_logic_vector(0 downto 0);
  signal new_lock_value_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  test_lock_buffer <= test_lock;
  set_lock_buffer <= set_lock;
  old_lock_value_buffer <= old_lock_value;
  -- output handling  -------------------------------------------------------
  lock_available <= lock_available_buffer;
  new_lock_value <= new_lock_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal NOT_u1_u1_9316_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_9314_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_9317_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9322_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_9317_wire_constant <= "1";
    R_ONE_1_9322_wire_constant <= "1";
    -- flow-through select operator MUX_9318_inst
    lock_available_buffer <= NOT_u1_u1_9316_wire when (OR_u1_u1_9314_wire(0) /=  '0') else R_ONE_1_9317_wire_constant;
    -- flow-through select operator MUX_9324_inst
    new_lock_value_buffer <= R_ONE_1_9322_wire_constant when (set_lock_buffer(0) /=  '0') else old_lock_value_buffer;
    -- unary operator NOT_u1_u1_9316_inst
    process(old_lock_value_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", old_lock_value_buffer, tmp_var);
      NOT_u1_u1_9316_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_9314_inst
    OR_u1_u1_9314_wire <= (set_lock_buffer or test_lock_buffer);
    -- 
  end Block; -- data_path
  -- 
end test_and_set_single_bit_lock_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity test_and_set_y_lock_Volatile is -- 
  port ( -- 
    test_lock : in  std_logic_vector(0 downto 0);
    set_lock : in  std_logic_vector(0 downto 0);
    old_lock_value : in  std_logic_vector(2 downto 0);
    lock_available : out  std_logic_vector(0 downto 0);
    new_lock_value : out  std_logic_vector(2 downto 0)-- 
  );
  -- 
end entity test_and_set_y_lock_Volatile;
architecture test_and_set_y_lock_Volatile_arch of test_and_set_y_lock_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(5-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal test_lock_buffer :  std_logic_vector(0 downto 0);
  signal set_lock_buffer :  std_logic_vector(0 downto 0);
  signal old_lock_value_buffer :  std_logic_vector(2 downto 0);
  -- output port buffer signals
  signal lock_available_buffer :  std_logic_vector(0 downto 0);
  signal new_lock_value_buffer :  std_logic_vector(2 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  test_lock_buffer <= test_lock;
  set_lock_buffer <= set_lock;
  old_lock_value_buffer <= old_lock_value;
  -- output handling  -------------------------------------------------------
  lock_available <= lock_available_buffer;
  new_lock_value <= new_lock_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal ADD_u3_u3_9350_wire : std_logic_vector(2 downto 0);
    signal EQ_u3_u1_9337_wire : std_logic_vector(0 downto 0);
    signal MUX_9343_wire : std_logic_vector(0 downto 0);
    signal R_ONE_1_9342_wire_constant : std_logic_vector(0 downto 0);
    signal ULT_u3_u1_9341_wire : std_logic_vector(0 downto 0);
    signal konst_9336_wire_constant : std_logic_vector(2 downto 0);
    signal konst_9340_wire_constant : std_logic_vector(2 downto 0);
    signal konst_9349_wire_constant : std_logic_vector(2 downto 0);
    -- 
  begin -- 
    R_ONE_1_9342_wire_constant <= "1";
    konst_9336_wire_constant <= "000";
    konst_9340_wire_constant <= "111";
    konst_9349_wire_constant <= "001";
    -- flow-through select operator MUX_9343_inst
    MUX_9343_wire <= ULT_u3_u1_9341_wire when (set_lock_buffer(0) /=  '0') else R_ONE_1_9342_wire_constant;
    -- flow-through select operator MUX_9344_inst
    lock_available_buffer <= EQ_u3_u1_9337_wire when (test_lock_buffer(0) /=  '0') else MUX_9343_wire;
    -- flow-through select operator MUX_9352_inst
    new_lock_value_buffer <= ADD_u3_u3_9350_wire when (set_lock_buffer(0) /=  '0') else old_lock_value_buffer;
    -- flow through binary operator ADD_u3_u3_9350_inst
    ADD_u3_u3_9350_wire <= std_logic_vector(unsigned(old_lock_value_buffer) + unsigned(konst_9349_wire_constant));
    -- flow through binary operator EQ_u3_u1_9337_inst
    process(old_lock_value_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(old_lock_value_buffer, konst_9336_wire_constant, tmp_var);
      EQ_u3_u1_9337_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u3_u1_9341_inst
    process(old_lock_value_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(old_lock_value_buffer, konst_9340_wire_constant, tmp_var);
      ULT_u3_u1_9341_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end test_and_set_y_lock_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity updateWriteToReadBypass_Volatile is -- 
  port ( -- 
    wr_even : in  std_logic_vector(0 downto 0);
    wr_odd : in  std_logic_vector(0 downto 0);
    wr_reg_id : in  std_logic_vector(4 downto 0);
    wr_cwp : in  std_logic_vector(4 downto 0);
    wr_value_even : in  std_logic_vector(31 downto 0);
    wr_value_odd : in  std_logic_vector(31 downto 0);
    rd_reg_id : in  std_logic_vector(4 downto 0);
    rd_cwp : in  std_logic_vector(4 downto 0);
    read_pair_value : in  std_logic_vector(63 downto 0);
    updated_read_pair_value : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity updateWriteToReadBypass_Volatile;
architecture updateWriteToReadBypass_Volatile_arch of updateWriteToReadBypass_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(150-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal wr_even_buffer :  std_logic_vector(0 downto 0);
  signal wr_odd_buffer :  std_logic_vector(0 downto 0);
  signal wr_reg_id_buffer :  std_logic_vector(4 downto 0);
  signal wr_cwp_buffer :  std_logic_vector(4 downto 0);
  signal wr_value_even_buffer :  std_logic_vector(31 downto 0);
  signal wr_value_odd_buffer :  std_logic_vector(31 downto 0);
  signal rd_reg_id_buffer :  std_logic_vector(4 downto 0);
  signal rd_cwp_buffer :  std_logic_vector(4 downto 0);
  signal read_pair_value_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal updated_read_pair_value_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  component calculate_address_Volatile is -- 
    port ( -- 
      reg_id : in  std_logic_vector(4 downto 0);
      cwp : in  std_logic_vector(4 downto 0);
      reg_address : out  std_logic_vector(6 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  wr_even_buffer <= wr_even;
  wr_odd_buffer <= wr_odd;
  wr_reg_id_buffer <= wr_reg_id;
  wr_cwp_buffer <= wr_cwp;
  wr_value_even_buffer <= wr_value_even;
  wr_value_odd_buffer <= wr_value_odd;
  rd_reg_id_buffer <= rd_reg_id;
  rd_cwp_buffer <= rd_cwp;
  read_pair_value_buffer <= read_pair_value;
  -- output handling  -------------------------------------------------------
  updated_read_pair_value <= updated_read_pair_value_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_9386_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9388_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9397_wire : std_logic_vector(0 downto 0);
    signal NEQ_u5_u1_9384_wire : std_logic_vector(0 downto 0);
    signal call_calculate_address_expr_9369_wire : std_logic_vector(6 downto 0);
    signal call_calculate_address_expr_9374_wire : std_logic_vector(6 downto 0);
    signal konst_9383_wire_constant : std_logic_vector(4 downto 0);
    signal match_9380 : std_logic_vector(0 downto 0);
    signal r_even_val_9393 : std_logic_vector(31 downto 0);
    signal r_odd_val_9402 : std_logic_vector(31 downto 0);
    signal rd_reg_pair_id_9375 : std_logic_vector(6 downto 0);
    signal slice_9391_wire : std_logic_vector(31 downto 0);
    signal slice_9400_wire : std_logic_vector(31 downto 0);
    signal wr_reg_pair_id_9370 : std_logic_vector(6 downto 0);
    -- 
  begin -- 
    konst_9383_wire_constant <= "00000";
    -- flow-through select operator MUX_9392_inst
    r_even_val_9393 <= wr_value_even_buffer when (AND_u1_u1_9388_wire(0) /=  '0') else slice_9391_wire;
    -- flow-through select operator MUX_9401_inst
    r_odd_val_9402 <= wr_value_odd_buffer when (AND_u1_u1_9397_wire(0) /=  '0') else slice_9400_wire;
    -- flow-through slice operator slice_9391_inst
    slice_9391_wire <= read_pair_value_buffer(63 downto 32);
    -- flow-through slice operator slice_9400_inst
    slice_9400_wire <= read_pair_value_buffer(31 downto 0);
    -- interlock W_rd_reg_pair_id_9371_inst
    process(call_calculate_address_expr_9374_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 6 downto 0) := call_calculate_address_expr_9374_wire(6 downto 0);
      rd_reg_pair_id_9375 <= tmp_var; -- 
    end process;
    -- interlock W_wr_reg_pair_id_9366_inst
    process(call_calculate_address_expr_9369_wire) -- 
      variable tmp_var : std_logic_vector(6 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 6 downto 0) := call_calculate_address_expr_9369_wire(6 downto 0);
      wr_reg_pair_id_9370 <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u1_u1_9386_inst
    AND_u1_u1_9386_wire <= (NEQ_u5_u1_9384_wire and wr_even_buffer);
    -- flow through binary operator AND_u1_u1_9388_inst
    AND_u1_u1_9388_wire <= (AND_u1_u1_9386_wire and match_9380);
    -- flow through binary operator AND_u1_u1_9397_inst
    AND_u1_u1_9397_wire <= (wr_odd_buffer and match_9380);
    -- flow through binary operator CONCAT_u32_u64_9406_inst
    process(r_even_val_9393, r_odd_val_9402) -- 
      variable tmp_var : std_logic_vector(63 downto 0); -- 
    begin -- 
      ApConcat_proc(r_even_val_9393, r_odd_val_9402, tmp_var);
      updated_read_pair_value_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u7_u1_9379_inst
    process(wr_reg_pair_id_9370, rd_reg_pair_id_9375) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wr_reg_pair_id_9370, rd_reg_pair_id_9375, tmp_var);
      match_9380 <= tmp_var; --
    end process;
    -- flow through binary operator NEQ_u5_u1_9384_inst
    process(wr_reg_id_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntNe_proc(wr_reg_id_buffer, konst_9383_wire_constant, tmp_var);
      NEQ_u5_u1_9384_wire <= tmp_var; --
    end process;
    volatile_operator_calculate_address_8905: calculate_address_Volatile port map(reg_id => wr_reg_id_buffer, cwp => wr_cwp_buffer, reg_address => call_calculate_address_expr_9369_wire); 
    volatile_operator_calculate_address_8907: calculate_address_Volatile port map(reg_id => rd_reg_id_buffer, cwp => rd_cwp_buffer, reg_address => call_calculate_address_expr_9374_wire); 
    -- 
  end Block; -- data_path
  -- 
end updateWriteToReadBypass_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity update_asr_locks_Volatile is -- 
  port ( -- 
    clear_lock : in  std_logic_vector(0 downto 0);
    clear_rid : in  std_logic_vector(4 downto 0);
    test_lock : in  std_logic_vector(0 downto 0);
    set_lock : in  std_logic_vector(0 downto 0);
    test_set_rid : in  std_logic_vector(4 downto 0);
    asr_read_locks : in  std_logic_vector(31 downto 0);
    asr_locks_available : out  std_logic_vector(0 downto 0);
    post_clear_asr_locks : out  std_logic_vector(31 downto 0);
    post_test_and_set_asr_locks : out  std_logic_vector(31 downto 0)-- 
  );
  -- 
end entity update_asr_locks_Volatile;
architecture update_asr_locks_Volatile_arch of update_asr_locks_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(45-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal clear_lock_buffer :  std_logic_vector(0 downto 0);
  signal clear_rid_buffer :  std_logic_vector(4 downto 0);
  signal test_lock_buffer :  std_logic_vector(0 downto 0);
  signal set_lock_buffer :  std_logic_vector(0 downto 0);
  signal test_set_rid_buffer :  std_logic_vector(4 downto 0);
  signal asr_read_locks_buffer :  std_logic_vector(31 downto 0);
  -- output port buffer signals
  signal asr_locks_available_buffer :  std_logic_vector(0 downto 0);
  signal post_clear_asr_locks_buffer :  std_logic_vector(31 downto 0);
  signal post_test_and_set_asr_locks_buffer :  std_logic_vector(31 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  clear_lock_buffer <= clear_lock;
  clear_rid_buffer <= clear_rid;
  test_lock_buffer <= test_lock;
  set_lock_buffer <= set_lock;
  test_set_rid_buffer <= test_set_rid;
  asr_read_locks_buffer <= asr_read_locks;
  -- output handling  -------------------------------------------------------
  asr_locks_available <= asr_locks_available_buffer;
  post_clear_asr_locks <= post_clear_asr_locks_buffer;
  post_test_and_set_asr_locks <= post_test_and_set_asr_locks_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u32_u32_8756_wire : std_logic_vector(31 downto 0);
    signal AND_u32_u32_8772_wire : std_logic_vector(31 downto 0);
    signal EQ_u32_u1_8774_wire : std_logic_vector(0 downto 0);
    signal NOT_u32_u32_8755_wire : std_logic_vector(31 downto 0);
    signal OR_u32_u32_8764_wire : std_logic_vector(31 downto 0);
    signal R_ONE_1_8775_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_32_8740_wire_constant : std_logic_vector(31 downto 0);
    signal R_ONE_32_8746_wire_constant : std_logic_vector(31 downto 0);
    signal cmask_8744 : std_logic_vector(31 downto 0);
    signal konst_8773_wire_constant : std_logic_vector(31 downto 0);
    signal rmask_8750 : std_logic_vector(31 downto 0);
    signal type_cast_8742_wire : std_logic_vector(31 downto 0);
    signal type_cast_8748_wire : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    R_ONE_1_8775_wire_constant <= "1";
    R_ONE_32_8740_wire_constant <= "00000000000000000000000000000001";
    R_ONE_32_8746_wire_constant <= "00000000000000000000000000000001";
    konst_8773_wire_constant <= "00000000000000000000000000000000";
    -- flow-through select operator MUX_8758_inst
    post_clear_asr_locks_buffer <= AND_u32_u32_8756_wire when (clear_lock_buffer(0) /=  '0') else asr_read_locks_buffer;
    -- flow-through select operator MUX_8766_inst
    post_test_and_set_asr_locks_buffer <= OR_u32_u32_8764_wire when (set_lock_buffer(0) /=  '0') else post_clear_asr_locks_buffer;
    -- flow-through select operator MUX_8776_inst
    asr_locks_available_buffer <= EQ_u32_u1_8774_wire when (test_lock_buffer(0) /=  '0') else R_ONE_1_8775_wire_constant;
    -- interlock type_cast_8742_inst
    process(clear_rid_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := clear_rid_buffer(4 downto 0);
      type_cast_8742_wire <= tmp_var; -- 
    end process;
    -- interlock type_cast_8748_inst
    process(test_set_rid_buffer) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 4 downto 0) := test_set_rid_buffer(4 downto 0);
      type_cast_8748_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator AND_u32_u32_8756_inst
    AND_u32_u32_8756_wire <= (asr_read_locks_buffer and NOT_u32_u32_8755_wire);
    -- flow through binary operator AND_u32_u32_8772_inst
    AND_u32_u32_8772_wire <= (post_clear_asr_locks_buffer and rmask_8750);
    -- flow through binary operator EQ_u32_u1_8774_inst
    process(AND_u32_u32_8772_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(AND_u32_u32_8772_wire, konst_8773_wire_constant, tmp_var);
      EQ_u32_u1_8774_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u32_u32_8755_inst
    process(cmask_8744) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", cmask_8744, tmp_var);
      NOT_u32_u32_8755_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u32_u32_8764_inst
    OR_u32_u32_8764_wire <= (post_clear_asr_locks_buffer or rmask_8750);
    -- flow through binary operator SHL_u32_u32_8743_inst
    process(R_ONE_32_8740_wire_constant, type_cast_8742_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(R_ONE_32_8740_wire_constant, type_cast_8742_wire, tmp_var);
      cmask_8744 <= tmp_var; --
    end process;
    -- flow through binary operator SHL_u32_u32_8749_inst
    process(R_ONE_32_8746_wire_constant, type_cast_8748_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntSHL_proc(R_ONE_32_8746_wire_constant, type_cast_8748_wire, tmp_var);
      rmask_8750 <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end update_asr_locks_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity update_register_read_locks_Volatile is -- 
  port ( -- 
    clear_all_locks : in  std_logic_vector(0 downto 0);
    clear_rd : in  std_logic_vector(0 downto 0);
    c_double : in  std_logic_vector(0 downto 0);
    c_rd : in  std_logic_vector(4 downto 0);
    set_all_locks : in  std_logic_vector(0 downto 0);
    test_rs1 : in  std_logic_vector(0 downto 0);
    rs1 : in  std_logic_vector(4 downto 0);
    test_rs2 : in  std_logic_vector(0 downto 0);
    rs2 : in  std_logic_vector(4 downto 0);
    test_rd : in  std_logic_vector(0 downto 0);
    t_double : in  std_logic_vector(0 downto 0);
    t_rd : in  std_logic_vector(4 downto 0);
    set_rd : in  std_logic_vector(0 downto 0);
    s_double : in  std_logic_vector(0 downto 0);
    s_rd : in  std_logic_vector(4 downto 0);
    reg_read_locks : in  std_logic_vector(63 downto 0);
    all_reg_lock_locks_available_for_bypass : out  std_logic_vector(0 downto 0);
    all_reg_locks_available : out  std_logic_vector(0 downto 0);
    rs1_read_lock_available : out  std_logic_vector(0 downto 0);
    rs1_has_one_pending_write : out  std_logic_vector(0 downto 0);
    rs2_read_lock_available : out  std_logic_vector(0 downto 0);
    rs2_has_one_pending_write : out  std_logic_vector(0 downto 0);
    rd_h_read_lock_available : out  std_logic_vector(0 downto 0);
    rd_h_has_one_pending_write : out  std_logic_vector(0 downto 0);
    rd_l_read_lock_available : out  std_logic_vector(0 downto 0);
    rd_l_has_one_pending_write : out  std_logic_vector(0 downto 0);
    post_clear_reg_read_locks : out  std_logic_vector(63 downto 0);
    post_set_reg_read_locks : out  std_logic_vector(63 downto 0)-- 
  );
  -- 
end entity update_register_read_locks_Volatile;
architecture update_register_read_locks_Volatile_arch of update_register_read_locks_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(99-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal clear_all_locks_buffer :  std_logic_vector(0 downto 0);
  signal clear_rd_buffer :  std_logic_vector(0 downto 0);
  signal c_double_buffer :  std_logic_vector(0 downto 0);
  signal c_rd_buffer :  std_logic_vector(4 downto 0);
  signal set_all_locks_buffer :  std_logic_vector(0 downto 0);
  signal test_rs1_buffer :  std_logic_vector(0 downto 0);
  signal rs1_buffer :  std_logic_vector(4 downto 0);
  signal test_rs2_buffer :  std_logic_vector(0 downto 0);
  signal rs2_buffer :  std_logic_vector(4 downto 0);
  signal test_rd_buffer :  std_logic_vector(0 downto 0);
  signal t_double_buffer :  std_logic_vector(0 downto 0);
  signal t_rd_buffer :  std_logic_vector(4 downto 0);
  signal set_rd_buffer :  std_logic_vector(0 downto 0);
  signal s_double_buffer :  std_logic_vector(0 downto 0);
  signal s_rd_buffer :  std_logic_vector(4 downto 0);
  signal reg_read_locks_buffer :  std_logic_vector(63 downto 0);
  -- output port buffer signals
  signal all_reg_lock_locks_available_for_bypass_buffer :  std_logic_vector(0 downto 0);
  signal all_reg_locks_available_buffer :  std_logic_vector(0 downto 0);
  signal rs1_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rs1_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rs2_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rs2_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rd_h_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rd_h_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal rd_l_read_lock_available_buffer :  std_logic_vector(0 downto 0);
  signal rd_l_has_one_pending_write_buffer :  std_logic_vector(0 downto 0);
  signal post_clear_reg_read_locks_buffer :  std_logic_vector(63 downto 0);
  signal post_set_reg_read_locks_buffer :  std_logic_vector(63 downto 0);
  -- volatile/operator module components. 
  component extract_reg_lock_2_Volatile is -- 
    port ( -- 
      reg_read_locks : in  std_logic_vector(63 downto 0);
      rid : in  std_logic_vector(4 downto 0);
      b : out  std_logic_vector(1 downto 0)-- 
    );
    -- 
  end component; 
  component insert_reg_lock_2_Volatile is -- 
    port ( -- 
      reg_read_locks : in  std_logic_vector(63 downto 0);
      rid : in  std_logic_vector(4 downto 0);
      b : in  std_logic_vector(1 downto 0);
      next_locks : out  std_logic_vector(63 downto 0)-- 
    );
    -- 
  end component; 
  -- 
begin --  
  -- input handling ------------------------------------------------
  clear_all_locks_buffer <= clear_all_locks;
  clear_rd_buffer <= clear_rd;
  c_double_buffer <= c_double;
  c_rd_buffer <= c_rd;
  set_all_locks_buffer <= set_all_locks;
  test_rs1_buffer <= test_rs1;
  rs1_buffer <= rs1;
  test_rs2_buffer <= test_rs2;
  rs2_buffer <= rs2;
  test_rd_buffer <= test_rd;
  t_double_buffer <= t_double;
  t_rd_buffer <= t_rd;
  set_rd_buffer <= set_rd;
  s_double_buffer <= s_double;
  s_rd_buffer <= s_rd;
  reg_read_locks_buffer <= reg_read_locks;
  -- output handling  -------------------------------------------------------
  all_reg_lock_locks_available_for_bypass <= all_reg_lock_locks_available_for_bypass_buffer;
  all_reg_locks_available <= all_reg_locks_available_buffer;
  rs1_read_lock_available <= rs1_read_lock_available_buffer;
  rs1_has_one_pending_write <= rs1_has_one_pending_write_buffer;
  rs2_read_lock_available <= rs2_read_lock_available_buffer;
  rs2_has_one_pending_write <= rs2_has_one_pending_write_buffer;
  rd_h_read_lock_available <= rd_h_read_lock_available_buffer;
  rd_h_has_one_pending_write <= rd_h_has_one_pending_write_buffer;
  rd_l_read_lock_available <= rd_l_read_lock_available_buffer;
  rd_l_has_one_pending_write <= rd_l_has_one_pending_write_buffer;
  post_clear_reg_read_locks <= post_clear_reg_read_locks_buffer;
  post_set_reg_read_locks <= post_set_reg_read_locks_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_8939_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8944_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8959_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8964_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8981_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9265_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9268_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9269_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9272_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_9274_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_9153_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_9166_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_9184_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_9197_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_8938_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_8943_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_8958_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_8963_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9051_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9055_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9067_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9071_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9083_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9087_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9099_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9103_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9115_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9119_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9131_wire : std_logic_vector(0 downto 0);
    signal EQ_u5_u1_9135_wire : std_logic_vector(0 downto 0);
    signal EQ_u64_u1_8975_wire : std_logic_vector(0 downto 0);
    signal EQ_u64_u1_9259_wire : std_logic_vector(0 downto 0);
    signal MUX_9007_wire : std_logic_vector(1 downto 0);
    signal MUX_9018_wire : std_logic_vector(1 downto 0);
    signal MUX_9040_wire : std_logic_vector(63 downto 0);
    signal MUX_9041_wire : std_logic_vector(63 downto 0);
    signal MUX_9058_wire : std_logic_vector(1 downto 0);
    signal MUX_9059_wire : std_logic_vector(1 downto 0);
    signal MUX_9074_wire : std_logic_vector(1 downto 0);
    signal MUX_9075_wire : std_logic_vector(1 downto 0);
    signal MUX_9090_wire : std_logic_vector(1 downto 0);
    signal MUX_9091_wire : std_logic_vector(1 downto 0);
    signal MUX_9106_wire : std_logic_vector(1 downto 0);
    signal MUX_9107_wire : std_logic_vector(1 downto 0);
    signal MUX_9122_wire : std_logic_vector(1 downto 0);
    signal MUX_9123_wire : std_logic_vector(1 downto 0);
    signal MUX_9138_wire : std_logic_vector(1 downto 0);
    signal MUX_9139_wire : std_logic_vector(1 downto 0);
    signal MUX_9289_wire : std_logic_vector(63 downto 0);
    signal MUX_9290_wire : std_logic_vector(63 downto 0);
    signal MUX_9291_wire : std_logic_vector(63 downto 0);
    signal NOT_u1_u1_8972_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_9256_wire : std_logic_vector(0 downto 0);
    signal NOT_u64_u64_9279_wire_constant : std_logic_vector(63 downto 0);
    signal NOT_u64_u64_9283_wire_constant : std_logic_vector(63 downto 0);
    signal OR_u1_u1_8945_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8946_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8965_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8966_wire : std_logic_vector(0 downto 0);
    signal OR_u5_u5_8858_wire : std_logic_vector(4 downto 0);
    signal OR_u5_u5_8892_wire : std_logic_vector(4 downto 0);
    signal OR_u5_u5_8913_wire : std_logic_vector(4 downto 0);
    signal R_ONE_1_8947_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_8967_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9154_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9167_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9185_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9198_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9211_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_9219_wire_constant : std_logic_vector(0 downto 0);
    signal UGT_u2_u1_9004_wire : std_logic_vector(0 downto 0);
    signal UGT_u2_u1_9015_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_8934_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_8954_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_9210_wire : std_logic_vector(0 downto 0);
    signal ULT_u2_u1_9218_wire : std_logic_vector(0 downto 0);
    signal c_rd_b_h_8874 : std_logic_vector(1 downto 0);
    signal c_rd_b_h_decr_8999 : std_logic_vector(1 downto 0);
    signal c_rd_b_l_8870 : std_logic_vector(1 downto 0);
    signal c_rd_b_l_decr_8994 : std_logic_vector(1 downto 0);
    signal c_rd_h_8866 : std_logic_vector(4 downto 0);
    signal c_rd_l_8861 : std_logic_vector(4 downto 0);
    signal clear_rd_h_8989 : std_logic_vector(0 downto 0);
    signal konst_8857_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8864_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8885_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8891_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8906_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8912_wire_constant : std_logic_vector(4 downto 0);
    signal konst_8933_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8953_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8974_wire_constant : std_logic_vector(63 downto 0);
    signal konst_8992_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8997_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9003_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9006_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9014_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9017_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9034_wire_constant : std_logic_vector(63 downto 0);
    signal konst_9048_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9064_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9080_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9096_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9112_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9128_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9152_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9159_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9165_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9172_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9183_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9190_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9196_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9203_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9209_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9217_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9224_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9229_wire_constant : std_logic_vector(1 downto 0);
    signal konst_9258_wire_constant : std_logic_vector(63 downto 0);
    signal next_c_rd_b_h_9021 : std_logic_vector(1 downto 0);
    signal next_c_rd_b_l_9010 : std_logic_vector(1 downto 0);
    signal next_s_rd_h_bits_9243 : std_logic_vector(1 downto 0);
    signal next_s_rd_l_bits_9237 : std_logic_vector(1 downto 0);
    signal post_clear_reg_read_locks_0_9026 : std_logic_vector(63 downto 0);
    signal post_clear_reg_read_locks_1_9031 : std_logic_vector(63 downto 0);
    signal post_clear_rs1_bits_9061 : std_logic_vector(1 downto 0);
    signal post_clear_rs2_bits_9077 : std_logic_vector(1 downto 0);
    signal post_clear_s_rd_h_bits_9125 : std_logic_vector(1 downto 0);
    signal post_clear_s_rd_h_bits_incr_9231 : std_logic_vector(1 downto 0);
    signal post_clear_s_rd_l_bits_9141 : std_logic_vector(1 downto 0);
    signal post_clear_s_rd_l_bits_incr_9226 : std_logic_vector(1 downto 0);
    signal post_clear_t_rd_h_bits_9093 : std_logic_vector(1 downto 0);
    signal post_clear_t_rd_l_bits_9109 : std_logic_vector(1 downto 0);
    signal post_set_rd_l_reg_read_locks_9248 : std_logic_vector(63 downto 0);
    signal post_set_rd_reg_read_locks_9253 : std_logic_vector(63 downto 0);
    signal rd_h_write_lock_available_9221 : std_logic_vector(0 downto 0);
    signal rd_l_write_lock_available_9213 : std_logic_vector(0 downto 0);
    signal rs1_bits_8878 : std_logic_vector(1 downto 0);
    signal rs2_bits_8882 : std_logic_vector(1 downto 0);
    signal s_rd_h_8908 : std_logic_vector(4 downto 0);
    signal s_rd_h_bits_8920 : std_logic_vector(1 downto 0);
    signal s_rd_h_write_lock_available_for_bypass_8969 : std_logic_vector(0 downto 0);
    signal s_rd_l_8916 : std_logic_vector(4 downto 0);
    signal s_rd_l_bits_8924 : std_logic_vector(1 downto 0);
    signal s_rd_l_write_lock_available_for_bypass_8949 : std_logic_vector(0 downto 0);
    signal set_all_locks_available_9261 : std_logic_vector(0 downto 0);
    signal set_all_locks_lock_available_for_bypass_8977 : std_logic_vector(0 downto 0);
    signal set_rd_h_8929 : std_logic_vector(0 downto 0);
    signal t_rd_h_8887 : std_logic_vector(4 downto 0);
    signal t_rd_h_bits_8899 : std_logic_vector(1 downto 0);
    signal t_rd_l_8895 : std_logic_vector(4 downto 0);
    signal t_rd_l_bits_8903 : std_logic_vector(1 downto 0);
    signal test_rd_h_9179 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    NOT_u64_u64_9279_wire_constant <= "1111111111111111111111111111111011111111111111111111111111111110";
    NOT_u64_u64_9283_wire_constant <= "1111111111111111111111111111111111111111111111111111111111111111";
    R_ONE_1_8947_wire_constant <= "1";
    R_ONE_1_8967_wire_constant <= "1";
    R_ONE_1_9154_wire_constant <= "1";
    R_ONE_1_9167_wire_constant <= "1";
    R_ONE_1_9185_wire_constant <= "1";
    R_ONE_1_9198_wire_constant <= "1";
    R_ONE_1_9211_wire_constant <= "1";
    R_ONE_1_9219_wire_constant <= "1";
    konst_8857_wire_constant <= "00001";
    konst_8864_wire_constant <= "11110";
    konst_8885_wire_constant <= "11110";
    konst_8891_wire_constant <= "00001";
    konst_8906_wire_constant <= "11110";
    konst_8912_wire_constant <= "00001";
    konst_8933_wire_constant <= "11";
    konst_8953_wire_constant <= "11";
    konst_8974_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_8992_wire_constant <= "01";
    konst_8997_wire_constant <= "01";
    konst_9003_wire_constant <= "00";
    konst_9006_wire_constant <= "00";
    konst_9014_wire_constant <= "00";
    konst_9017_wire_constant <= "00";
    konst_9034_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    konst_9048_wire_constant <= "00";
    konst_9064_wire_constant <= "00";
    konst_9080_wire_constant <= "00";
    konst_9096_wire_constant <= "00";
    konst_9112_wire_constant <= "00";
    konst_9128_wire_constant <= "00";
    konst_9152_wire_constant <= "00";
    konst_9159_wire_constant <= "01";
    konst_9165_wire_constant <= "00";
    konst_9172_wire_constant <= "01";
    konst_9183_wire_constant <= "00";
    konst_9190_wire_constant <= "01";
    konst_9196_wire_constant <= "00";
    konst_9203_wire_constant <= "01";
    konst_9209_wire_constant <= "11";
    konst_9217_wire_constant <= "11";
    konst_9224_wire_constant <= "01";
    konst_9229_wire_constant <= "01";
    konst_9258_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000";
    -- flow-through select operator MUX_8860_inst
    c_rd_l_8861 <= OR_u5_u5_8858_wire when (c_double_buffer(0) /=  '0') else c_rd_buffer;
    -- flow-through select operator MUX_8894_inst
    t_rd_l_8895 <= OR_u5_u5_8892_wire when (t_double_buffer(0) /=  '0') else t_rd_buffer;
    -- flow-through select operator MUX_8915_inst
    s_rd_l_8916 <= OR_u5_u5_8913_wire when (s_double_buffer(0) /=  '0') else s_rd_buffer;
    -- flow-through select operator MUX_8948_inst
    s_rd_l_write_lock_available_for_bypass_8949 <= OR_u1_u1_8946_wire when (set_rd_buffer(0) /=  '0') else R_ONE_1_8947_wire_constant;
    -- flow-through select operator MUX_8968_inst
    s_rd_h_write_lock_available_for_bypass_8969 <= OR_u1_u1_8966_wire when (set_rd_h_8929(0) /=  '0') else R_ONE_1_8967_wire_constant;
    -- flow-through select operator MUX_9007_inst
    MUX_9007_wire <= c_rd_b_l_decr_8994 when (UGT_u2_u1_9004_wire(0) /=  '0') else konst_9006_wire_constant;
    -- flow-through select operator MUX_9009_inst
    next_c_rd_b_l_9010 <= MUX_9007_wire when (clear_rd_buffer(0) /=  '0') else c_rd_b_l_8870;
    -- flow-through select operator MUX_9018_inst
    MUX_9018_wire <= c_rd_b_h_decr_8999 when (UGT_u2_u1_9015_wire(0) /=  '0') else konst_9017_wire_constant;
    -- flow-through select operator MUX_9020_inst
    next_c_rd_b_h_9021 <= MUX_9018_wire when (clear_rd_h_8989(0) /=  '0') else c_rd_b_h_8874;
    -- flow-through select operator MUX_9040_inst
    MUX_9040_wire <= post_clear_reg_read_locks_0_9026 when (clear_rd_buffer(0) /=  '0') else reg_read_locks_buffer;
    -- flow-through select operator MUX_9041_inst
    MUX_9041_wire <= post_clear_reg_read_locks_1_9031 when (clear_rd_h_8989(0) /=  '0') else MUX_9040_wire;
    -- flow-through select operator MUX_9042_inst
    post_clear_reg_read_locks_buffer <= konst_9034_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9041_wire;
    -- flow-through select operator MUX_9058_inst
    MUX_9058_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9055_wire(0) /=  '0') else rs1_bits_8878;
    -- flow-through select operator MUX_9059_inst
    MUX_9059_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9051_wire(0) /=  '0') else MUX_9058_wire;
    -- flow-through select operator MUX_9060_inst
    post_clear_rs1_bits_9061 <= konst_9048_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9059_wire;
    -- flow-through select operator MUX_9074_inst
    MUX_9074_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9071_wire(0) /=  '0') else rs2_bits_8882;
    -- flow-through select operator MUX_9075_inst
    MUX_9075_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9067_wire(0) /=  '0') else MUX_9074_wire;
    -- flow-through select operator MUX_9076_inst
    post_clear_rs2_bits_9077 <= konst_9064_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9075_wire;
    -- flow-through select operator MUX_9090_inst
    MUX_9090_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9087_wire(0) /=  '0') else t_rd_h_bits_8899;
    -- flow-through select operator MUX_9091_inst
    MUX_9091_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9083_wire(0) /=  '0') else MUX_9090_wire;
    -- flow-through select operator MUX_9092_inst
    post_clear_t_rd_h_bits_9093 <= konst_9080_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9091_wire;
    -- flow-through select operator MUX_9106_inst
    MUX_9106_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9103_wire(0) /=  '0') else t_rd_l_bits_8903;
    -- flow-through select operator MUX_9107_inst
    MUX_9107_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9099_wire(0) /=  '0') else MUX_9106_wire;
    -- flow-through select operator MUX_9108_inst
    post_clear_t_rd_l_bits_9109 <= konst_9096_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9107_wire;
    -- flow-through select operator MUX_9122_inst
    MUX_9122_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9119_wire(0) /=  '0') else s_rd_h_bits_8920;
    -- flow-through select operator MUX_9123_inst
    MUX_9123_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9115_wire(0) /=  '0') else MUX_9122_wire;
    -- flow-through select operator MUX_9124_inst
    post_clear_s_rd_h_bits_9125 <= konst_9112_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9123_wire;
    -- flow-through select operator MUX_9138_inst
    MUX_9138_wire <= next_c_rd_b_h_9021 when (EQ_u5_u1_9135_wire(0) /=  '0') else s_rd_l_bits_8924;
    -- flow-through select operator MUX_9139_inst
    MUX_9139_wire <= next_c_rd_b_l_9010 when (EQ_u5_u1_9131_wire(0) /=  '0') else MUX_9138_wire;
    -- flow-through select operator MUX_9140_inst
    post_clear_s_rd_l_bits_9141 <= konst_9128_wire_constant when (clear_all_locks_buffer(0) /=  '0') else MUX_9139_wire;
    -- flow-through select operator MUX_9155_inst
    rs1_read_lock_available_buffer <= EQ_u2_u1_9153_wire when (test_rs1_buffer(0) /=  '0') else R_ONE_1_9154_wire_constant;
    -- flow-through select operator MUX_9168_inst
    rs2_read_lock_available_buffer <= EQ_u2_u1_9166_wire when (test_rs2_buffer(0) /=  '0') else R_ONE_1_9167_wire_constant;
    -- flow-through select operator MUX_9186_inst
    rd_h_read_lock_available_buffer <= EQ_u2_u1_9184_wire when (test_rd_h_9179(0) /=  '0') else R_ONE_1_9185_wire_constant;
    -- flow-through select operator MUX_9199_inst
    rd_l_read_lock_available_buffer <= EQ_u2_u1_9197_wire when (test_rd_buffer(0) /=  '0') else R_ONE_1_9198_wire_constant;
    -- flow-through select operator MUX_9212_inst
    rd_l_write_lock_available_9213 <= ULT_u2_u1_9210_wire when (set_rd_buffer(0) /=  '0') else R_ONE_1_9211_wire_constant;
    -- flow-through select operator MUX_9220_inst
    rd_h_write_lock_available_9221 <= ULT_u2_u1_9218_wire when (set_rd_h_8929(0) /=  '0') else R_ONE_1_9219_wire_constant;
    -- flow-through select operator MUX_9236_inst
    next_s_rd_l_bits_9237 <= post_clear_s_rd_l_bits_incr_9226 when (set_rd_buffer(0) /=  '0') else post_clear_s_rd_l_bits_9141;
    -- flow-through select operator MUX_9242_inst
    next_s_rd_h_bits_9243 <= post_clear_s_rd_h_bits_incr_9231 when (set_rd_h_8929(0) /=  '0') else post_clear_s_rd_h_bits_9125;
    -- flow-through select operator MUX_9289_inst
    MUX_9289_wire <= post_set_rd_l_reg_read_locks_9248 when (set_rd_buffer(0) /=  '0') else post_clear_reg_read_locks_buffer;
    -- flow-through select operator MUX_9290_inst
    MUX_9290_wire <= post_set_rd_reg_read_locks_9253 when (set_rd_h_8929(0) /=  '0') else MUX_9289_wire;
    -- flow-through select operator MUX_9291_inst
    MUX_9291_wire <= NOT_u64_u64_9283_wire_constant when (set_all_locks_buffer(0) /=  '0') else MUX_9290_wire;
    -- flow through binary operator ADD_u2_u2_9225_inst
    post_clear_s_rd_l_bits_incr_9226 <= std_logic_vector(unsigned(post_clear_s_rd_l_bits_9141) + unsigned(konst_9224_wire_constant));
    -- flow through binary operator ADD_u2_u2_9230_inst
    post_clear_s_rd_h_bits_incr_9231 <= std_logic_vector(unsigned(post_clear_s_rd_h_bits_9125) + unsigned(konst_9229_wire_constant));
    -- flow through binary operator AND_u1_u1_8928_inst
    set_rd_h_8929 <= (set_rd_buffer and s_double_buffer);
    -- flow through binary operator AND_u1_u1_8939_inst
    AND_u1_u1_8939_wire <= (clear_rd_h_8989 and EQ_u5_u1_8938_wire);
    -- flow through binary operator AND_u1_u1_8944_inst
    AND_u1_u1_8944_wire <= (clear_rd_buffer and EQ_u5_u1_8943_wire);
    -- flow through binary operator AND_u1_u1_8959_inst
    AND_u1_u1_8959_wire <= (clear_rd_h_8989 and EQ_u5_u1_8958_wire);
    -- flow through binary operator AND_u1_u1_8964_inst
    AND_u1_u1_8964_wire <= (clear_rd_buffer and EQ_u5_u1_8963_wire);
    -- flow through binary operator AND_u1_u1_8981_inst
    AND_u1_u1_8981_wire <= (set_all_locks_lock_available_for_bypass_8977 and s_rd_h_write_lock_available_for_bypass_8969);
    -- flow through binary operator AND_u1_u1_8983_inst
    all_reg_lock_locks_available_for_bypass_buffer <= (AND_u1_u1_8981_wire and s_rd_l_write_lock_available_for_bypass_8949);
    -- flow through binary operator AND_u1_u1_8988_inst
    clear_rd_h_8989 <= (clear_rd_buffer and c_double_buffer);
    -- flow through binary operator AND_u1_u1_9178_inst
    test_rd_h_9179 <= (test_rd_buffer and t_double_buffer);
    -- flow through binary operator AND_u1_u1_9265_inst
    AND_u1_u1_9265_wire <= (set_all_locks_available_9261 and rs1_read_lock_available_buffer);
    -- flow through binary operator AND_u1_u1_9268_inst
    AND_u1_u1_9268_wire <= (rs2_read_lock_available_buffer and rd_h_read_lock_available_buffer);
    -- flow through binary operator AND_u1_u1_9269_inst
    AND_u1_u1_9269_wire <= (AND_u1_u1_9265_wire and AND_u1_u1_9268_wire);
    -- flow through binary operator AND_u1_u1_9272_inst
    AND_u1_u1_9272_wire <= (rd_l_read_lock_available_buffer and rd_h_write_lock_available_9221);
    -- flow through binary operator AND_u1_u1_9274_inst
    AND_u1_u1_9274_wire <= (AND_u1_u1_9272_wire and rd_l_write_lock_available_9213);
    -- flow through binary operator AND_u1_u1_9275_inst
    all_reg_locks_available_buffer <= (AND_u1_u1_9269_wire and AND_u1_u1_9274_wire);
    -- flow through binary operator AND_u5_u5_8865_inst
    c_rd_h_8866 <= (c_rd_buffer and konst_8864_wire_constant);
    -- flow through binary operator AND_u5_u5_8886_inst
    t_rd_h_8887 <= (t_rd_buffer and konst_8885_wire_constant);
    -- flow through binary operator AND_u5_u5_8907_inst
    s_rd_h_8908 <= (s_rd_buffer and konst_8906_wire_constant);
    -- flow through binary operator AND_u64_u64_9292_inst
    post_set_reg_read_locks_buffer <= (MUX_9291_wire and NOT_u64_u64_9279_wire_constant);
    -- flow through binary operator EQ_u2_u1_9153_inst
    process(post_clear_rs1_bits_9061) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_rs1_bits_9061, konst_9152_wire_constant, tmp_var);
      EQ_u2_u1_9153_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9160_inst
    process(post_clear_rs1_bits_9061) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_rs1_bits_9061, konst_9159_wire_constant, tmp_var);
      rs1_has_one_pending_write_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9166_inst
    process(post_clear_rs2_bits_9077) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_rs2_bits_9077, konst_9165_wire_constant, tmp_var);
      EQ_u2_u1_9166_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9173_inst
    process(post_clear_rs2_bits_9077) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_rs2_bits_9077, konst_9172_wire_constant, tmp_var);
      rs2_has_one_pending_write_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9184_inst
    process(post_clear_t_rd_h_bits_9093) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_t_rd_h_bits_9093, konst_9183_wire_constant, tmp_var);
      EQ_u2_u1_9184_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9191_inst
    process(post_clear_t_rd_h_bits_9093) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_t_rd_h_bits_9093, konst_9190_wire_constant, tmp_var);
      rd_h_has_one_pending_write_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9197_inst
    process(post_clear_t_rd_l_bits_9109) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_t_rd_l_bits_9109, konst_9196_wire_constant, tmp_var);
      EQ_u2_u1_9197_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_9204_inst
    process(post_clear_t_rd_l_bits_9109) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_t_rd_l_bits_9109, konst_9203_wire_constant, tmp_var);
      rd_l_has_one_pending_write_buffer <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_8938_inst
    process(c_rd_h_8866, s_rd_l_8916) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(c_rd_h_8866, s_rd_l_8916, tmp_var);
      EQ_u5_u1_8938_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_8943_inst
    process(c_rd_l_8861, s_rd_l_8916) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(c_rd_l_8861, s_rd_l_8916, tmp_var);
      EQ_u5_u1_8943_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_8958_inst
    process(c_rd_h_8866, s_rd_h_8908) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(c_rd_h_8866, s_rd_h_8908, tmp_var);
      EQ_u5_u1_8958_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_8963_inst
    process(c_rd_l_8861, s_rd_h_8908) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(c_rd_l_8861, s_rd_h_8908, tmp_var);
      EQ_u5_u1_8963_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9051_inst
    process(rs1_buffer, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_buffer, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9051_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9055_inst
    process(rs1_buffer, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs1_buffer, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9055_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9067_inst
    process(rs2_buffer, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs2_buffer, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9067_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9071_inst
    process(rs2_buffer, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(rs2_buffer, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9071_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9083_inst
    process(t_rd_h_8887, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(t_rd_h_8887, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9083_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9087_inst
    process(t_rd_h_8887, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(t_rd_h_8887, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9087_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9099_inst
    process(t_rd_l_8895, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(t_rd_l_8895, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9099_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9103_inst
    process(t_rd_l_8895, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(t_rd_l_8895, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9103_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9115_inst
    process(s_rd_h_8908, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(s_rd_h_8908, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9115_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9119_inst
    process(s_rd_h_8908, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(s_rd_h_8908, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9119_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9131_inst
    process(s_rd_l_8916, c_rd_l_8861) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(s_rd_l_8916, c_rd_l_8861, tmp_var);
      EQ_u5_u1_9131_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u5_u1_9135_inst
    process(s_rd_l_8916, c_rd_h_8866) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(s_rd_l_8916, c_rd_h_8866, tmp_var);
      EQ_u5_u1_9135_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u64_u1_8975_inst
    process(reg_read_locks_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(reg_read_locks_buffer, konst_8974_wire_constant, tmp_var);
      EQ_u64_u1_8975_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u64_u1_9259_inst
    process(post_clear_reg_read_locks_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(post_clear_reg_read_locks_buffer, konst_9258_wire_constant, tmp_var);
      EQ_u64_u1_9259_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_8972_inst
    process(set_all_locks_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", set_all_locks_buffer, tmp_var);
      NOT_u1_u1_8972_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_9256_inst
    process(set_all_locks_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", set_all_locks_buffer, tmp_var);
      NOT_u1_u1_9256_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8945_inst
    OR_u1_u1_8945_wire <= (AND_u1_u1_8939_wire or AND_u1_u1_8944_wire);
    -- flow through binary operator OR_u1_u1_8946_inst
    OR_u1_u1_8946_wire <= (ULT_u2_u1_8934_wire or OR_u1_u1_8945_wire);
    -- flow through binary operator OR_u1_u1_8965_inst
    OR_u1_u1_8965_wire <= (AND_u1_u1_8959_wire or AND_u1_u1_8964_wire);
    -- flow through binary operator OR_u1_u1_8966_inst
    OR_u1_u1_8966_wire <= (ULT_u2_u1_8954_wire or OR_u1_u1_8965_wire);
    -- flow through binary operator OR_u1_u1_8976_inst
    set_all_locks_lock_available_for_bypass_8977 <= (NOT_u1_u1_8972_wire or EQ_u64_u1_8975_wire);
    -- flow through binary operator OR_u1_u1_9260_inst
    set_all_locks_available_9261 <= (NOT_u1_u1_9256_wire or EQ_u64_u1_9259_wire);
    -- flow through binary operator OR_u5_u5_8858_inst
    OR_u5_u5_8858_wire <= (c_rd_buffer or konst_8857_wire_constant);
    -- flow through binary operator OR_u5_u5_8892_inst
    OR_u5_u5_8892_wire <= (t_rd_buffer or konst_8891_wire_constant);
    -- flow through binary operator OR_u5_u5_8913_inst
    OR_u5_u5_8913_wire <= (s_rd_buffer or konst_8912_wire_constant);
    -- flow through binary operator SUB_u2_u2_8993_inst
    c_rd_b_l_decr_8994 <= std_logic_vector(unsigned(c_rd_b_l_8870) - unsigned(konst_8992_wire_constant));
    -- flow through binary operator SUB_u2_u2_8998_inst
    c_rd_b_h_decr_8999 <= std_logic_vector(unsigned(c_rd_b_h_8874) - unsigned(konst_8997_wire_constant));
    -- flow through binary operator UGT_u2_u1_9004_inst
    process(c_rd_b_l_8870) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(c_rd_b_l_8870, konst_9003_wire_constant, tmp_var);
      UGT_u2_u1_9004_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGT_u2_u1_9015_inst
    process(c_rd_b_h_8874) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUgt_proc(c_rd_b_h_8874, konst_9014_wire_constant, tmp_var);
      UGT_u2_u1_9015_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_8934_inst
    process(s_rd_l_bits_8924) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(s_rd_l_bits_8924, konst_8933_wire_constant, tmp_var);
      ULT_u2_u1_8934_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_8954_inst
    process(s_rd_h_bits_8920) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(s_rd_h_bits_8920, konst_8953_wire_constant, tmp_var);
      ULT_u2_u1_8954_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_9210_inst
    process(post_clear_s_rd_l_bits_9141) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(post_clear_s_rd_l_bits_9141, konst_9209_wire_constant, tmp_var);
      ULT_u2_u1_9210_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULT_u2_u1_9218_inst
    process(post_clear_s_rd_h_bits_9125) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(post_clear_s_rd_h_bits_9125, konst_9217_wire_constant, tmp_var);
      ULT_u2_u1_9218_wire <= tmp_var; --
    end process;
    volatile_operator_extract_reg_lock_2_8710: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => c_rd_l_8861, b => c_rd_b_l_8870); 
    volatile_operator_extract_reg_lock_2_8711: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => c_rd_h_8866, b => c_rd_b_h_8874); 
    volatile_operator_extract_reg_lock_2_8712: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => rs1_buffer, b => rs1_bits_8878); 
    volatile_operator_extract_reg_lock_2_8713: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => rs2_buffer, b => rs2_bits_8882); 
    volatile_operator_extract_reg_lock_2_8717: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => t_rd_h_8887, b => t_rd_h_bits_8899); 
    volatile_operator_extract_reg_lock_2_8718: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => t_rd_l_8895, b => t_rd_l_bits_8903); 
    volatile_operator_extract_reg_lock_2_8722: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => s_rd_h_8908, b => s_rd_h_bits_8920); 
    volatile_operator_extract_reg_lock_2_8723: extract_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => s_rd_l_8916, b => s_rd_l_bits_8924); 
    volatile_operator_insert_reg_lock_2_8755: insert_reg_lock_2_Volatile port map(reg_read_locks => reg_read_locks_buffer, rid => c_rd_l_8861, b => next_c_rd_b_l_9010, next_locks => post_clear_reg_read_locks_0_9026); 
    volatile_operator_insert_reg_lock_2_8756: insert_reg_lock_2_Volatile port map(reg_read_locks => post_clear_reg_read_locks_0_9026, rid => c_rd_h_8866, b => next_c_rd_b_h_9021, next_locks => post_clear_reg_read_locks_1_9031); 
    volatile_operator_insert_reg_lock_2_8811: insert_reg_lock_2_Volatile port map(reg_read_locks => post_clear_reg_read_locks_buffer, rid => s_rd_l_8916, b => next_s_rd_l_bits_9237, next_locks => post_set_rd_l_reg_read_locks_9248); 
    volatile_operator_insert_reg_lock_2_8812: insert_reg_lock_2_Volatile port map(reg_read_locks => post_set_rd_l_reg_read_locks_9248, rid => s_rd_h_8908, b => next_s_rd_h_bits_9243, next_locks => post_set_rd_reg_read_locks_9253); 
    -- 
  end Block; -- data_path
  -- 
end update_register_read_locks_Volatile_arch;
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
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
    signal AND_u1_u1_8032_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8036_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8055_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8059_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8099_wire : std_logic_vector(0 downto 0);
    signal AND_u1_u1_8113_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_7993_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8009_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8026_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8049_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8077_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8086_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8096_wire : std_logic_vector(0 downto 0);
    signal EQ_u2_u1_8110_wire : std_logic_vector(0 downto 0);
    signal MUX_8002_wire : std_logic_vector(1 downto 0);
    signal MUX_8003_wire : std_logic_vector(1 downto 0);
    signal MUX_8004_wire : std_logic_vector(1 downto 0);
    signal MUX_8006_wire : std_logic_vector(1 downto 0);
    signal MUX_8018_wire : std_logic_vector(1 downto 0);
    signal MUX_8019_wire : std_logic_vector(1 downto 0);
    signal MUX_8020_wire : std_logic_vector(1 downto 0);
    signal MUX_8022_wire : std_logic_vector(1 downto 0);
    signal MUX_8041_wire : std_logic_vector(1 downto 0);
    signal MUX_8042_wire : std_logic_vector(1 downto 0);
    signal MUX_8043_wire : std_logic_vector(1 downto 0);
    signal MUX_8044_wire : std_logic_vector(1 downto 0);
    signal MUX_8046_wire : std_logic_vector(1 downto 0);
    signal MUX_8064_wire : std_logic_vector(1 downto 0);
    signal MUX_8065_wire : std_logic_vector(1 downto 0);
    signal MUX_8066_wire : std_logic_vector(1 downto 0);
    signal MUX_8067_wire : std_logic_vector(1 downto 0);
    signal MUX_8069_wire : std_logic_vector(1 downto 0);
    signal MUX_8081_wire : std_logic_vector(0 downto 0);
    signal MUX_8083_wire : std_logic_vector(0 downto 0);
    signal MUX_8090_wire : std_logic_vector(0 downto 0);
    signal MUX_8092_wire : std_logic_vector(0 downto 0);
    signal MUX_8104_wire : std_logic_vector(0 downto 0);
    signal MUX_8105_wire : std_logic_vector(0 downto 0);
    signal MUX_8107_wire : std_logic_vector(0 downto 0);
    signal MUX_8118_wire : std_logic_vector(0 downto 0);
    signal MUX_8119_wire : std_logic_vector(0 downto 0);
    signal MUX_8121_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_7995_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8011_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8028_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_8051_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8093_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8122_wire : std_logic_vector(0 downto 0);
    signal OR_u1_u1_8123_wire : std_logic_vector(0 downto 0);
    signal OR_u2_u2_8023_wire : std_logic_vector(1 downto 0);
    signal OR_u2_u2_8070_wire : std_logic_vector(1 downto 0);
    signal R_ONE_1_8080_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_8089_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_8102_wire_constant : std_logic_vector(0 downto 0);
    signal R_ONE_1_8116_wire_constant : std_logic_vector(0 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8000_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8016_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8025_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8029_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8037_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8040_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8060_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_MISPREDICTED_STREAM_8095_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8001_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8008_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8012_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8017_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8039_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8062_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_NORMAL_8085_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_7992_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_7996_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_RESET_8076_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_7998_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8014_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8033_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8048_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8052_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8056_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8063_wire_constant : std_logic_vector(1 downto 0);
    signal R_WB_TRAPPED_8109_wire_constant : std_logic_vector(1 downto 0);
    signal R_ZERO_1_8079_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8088_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8100_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8103_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8114_wire_constant : std_logic_vector(0 downto 0);
    signal R_ZERO_1_8117_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8005_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8021_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8045_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8068_wire_constant : std_logic_vector(1 downto 0);
    signal konst_8082_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8091_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8106_wire_constant : std_logic_vector(0 downto 0);
    signal konst_8120_wire_constant : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    R_ONE_1_8080_wire_constant <= "1";
    R_ONE_1_8089_wire_constant <= "1";
    R_ONE_1_8102_wire_constant <= "1";
    R_ONE_1_8116_wire_constant <= "1";
    R_WB_MISPREDICTED_STREAM_8000_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8016_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8025_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8029_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8037_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8040_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8060_wire_constant <= "10";
    R_WB_MISPREDICTED_STREAM_8095_wire_constant <= "10";
    R_WB_NORMAL_8001_wire_constant <= "01";
    R_WB_NORMAL_8008_wire_constant <= "01";
    R_WB_NORMAL_8012_wire_constant <= "01";
    R_WB_NORMAL_8017_wire_constant <= "01";
    R_WB_NORMAL_8039_wire_constant <= "01";
    R_WB_NORMAL_8062_wire_constant <= "01";
    R_WB_NORMAL_8085_wire_constant <= "01";
    R_WB_RESET_7992_wire_constant <= "00";
    R_WB_RESET_7996_wire_constant <= "00";
    R_WB_RESET_8076_wire_constant <= "00";
    R_WB_TRAPPED_7998_wire_constant <= "11";
    R_WB_TRAPPED_8014_wire_constant <= "11";
    R_WB_TRAPPED_8033_wire_constant <= "11";
    R_WB_TRAPPED_8048_wire_constant <= "11";
    R_WB_TRAPPED_8052_wire_constant <= "11";
    R_WB_TRAPPED_8056_wire_constant <= "11";
    R_WB_TRAPPED_8063_wire_constant <= "11";
    R_WB_TRAPPED_8109_wire_constant <= "11";
    R_ZERO_1_8079_wire_constant <= "0";
    R_ZERO_1_8088_wire_constant <= "0";
    R_ZERO_1_8100_wire_constant <= "0";
    R_ZERO_1_8103_wire_constant <= "0";
    R_ZERO_1_8114_wire_constant <= "0";
    R_ZERO_1_8117_wire_constant <= "0";
    konst_8005_wire_constant <= "00";
    konst_8021_wire_constant <= "00";
    konst_8045_wire_constant <= "00";
    konst_8068_wire_constant <= "00";
    konst_8082_wire_constant <= "0";
    konst_8091_wire_constant <= "0";
    konst_8106_wire_constant <= "0";
    konst_8120_wire_constant <= "0";
    -- flow-through select operator MUX_8002_inst
    MUX_8002_wire <= R_WB_MISPREDICTED_STREAM_8000_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_8001_wire_constant;
    -- flow-through select operator MUX_8003_inst
    MUX_8003_wire <= R_WB_TRAPPED_7998_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_8002_wire;
    -- flow-through select operator MUX_8004_inst
    MUX_8004_wire <= R_WB_RESET_7996_wire_constant when (NOT_u1_u1_7995_wire(0) /=  '0') else MUX_8003_wire;
    -- flow-through select operator MUX_8006_inst
    MUX_8006_wire <= MUX_8004_wire when (EQ_u2_u1_7993_wire(0) /=  '0') else konst_8005_wire_constant;
    -- flow-through select operator MUX_8018_inst
    MUX_8018_wire <= R_WB_MISPREDICTED_STREAM_8016_wire_constant when (break_stream_buffer(0) /=  '0') else R_WB_NORMAL_8017_wire_constant;
    -- flow-through select operator MUX_8019_inst
    MUX_8019_wire <= R_WB_TRAPPED_8014_wire_constant when (break_thread_buffer(0) /=  '0') else MUX_8018_wire;
    -- flow-through select operator MUX_8020_inst
    MUX_8020_wire <= R_WB_NORMAL_8012_wire_constant when (NOT_u1_u1_8011_wire(0) /=  '0') else MUX_8019_wire;
    -- flow-through select operator MUX_8022_inst
    MUX_8022_wire <= MUX_8020_wire when (EQ_u2_u1_8009_wire(0) /=  '0') else konst_8021_wire_constant;
    -- flow-through select operator MUX_8041_inst
    MUX_8041_wire <= R_WB_NORMAL_8039_wire_constant when (stream_head_buffer(0) /=  '0') else R_WB_MISPREDICTED_STREAM_8040_wire_constant;
    -- flow-through select operator MUX_8042_inst
    MUX_8042_wire <= R_WB_MISPREDICTED_STREAM_8037_wire_constant when (AND_u1_u1_8036_wire(0) /=  '0') else MUX_8041_wire;
    -- flow-through select operator MUX_8043_inst
    MUX_8043_wire <= R_WB_TRAPPED_8033_wire_constant when (AND_u1_u1_8032_wire(0) /=  '0') else MUX_8042_wire;
    -- flow-through select operator MUX_8044_inst
    MUX_8044_wire <= R_WB_MISPREDICTED_STREAM_8029_wire_constant when (NOT_u1_u1_8028_wire(0) /=  '0') else MUX_8043_wire;
    -- flow-through select operator MUX_8046_inst
    MUX_8046_wire <= MUX_8044_wire when (EQ_u2_u1_8026_wire(0) /=  '0') else konst_8045_wire_constant;
    -- flow-through select operator MUX_8064_inst
    MUX_8064_wire <= R_WB_NORMAL_8062_wire_constant when (thread_head_buffer(0) /=  '0') else R_WB_TRAPPED_8063_wire_constant;
    -- flow-through select operator MUX_8065_inst
    MUX_8065_wire <= R_WB_MISPREDICTED_STREAM_8060_wire_constant when (AND_u1_u1_8059_wire(0) /=  '0') else MUX_8064_wire;
    -- flow-through select operator MUX_8066_inst
    MUX_8066_wire <= R_WB_TRAPPED_8056_wire_constant when (AND_u1_u1_8055_wire(0) /=  '0') else MUX_8065_wire;
    -- flow-through select operator MUX_8067_inst
    MUX_8067_wire <= R_WB_TRAPPED_8052_wire_constant when (NOT_u1_u1_8051_wire(0) /=  '0') else MUX_8066_wire;
    -- flow-through select operator MUX_8069_inst
    MUX_8069_wire <= MUX_8067_wire when (EQ_u2_u1_8049_wire(0) /=  '0') else konst_8068_wire_constant;
    -- flow-through select operator MUX_8081_inst
    MUX_8081_wire <= R_ZERO_1_8079_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_8080_wire_constant;
    -- flow-through select operator MUX_8083_inst
    MUX_8083_wire <= MUX_8081_wire when (EQ_u2_u1_8077_wire(0) /=  '0') else konst_8082_wire_constant;
    -- flow-through select operator MUX_8090_inst
    MUX_8090_wire <= R_ZERO_1_8088_wire_constant when (kill_thread_now_buffer(0) /=  '0') else R_ONE_1_8089_wire_constant;
    -- flow-through select operator MUX_8092_inst
    MUX_8092_wire <= MUX_8090_wire when (EQ_u2_u1_8086_wire(0) /=  '0') else konst_8091_wire_constant;
    -- flow-through select operator MUX_8104_inst
    MUX_8104_wire <= R_ONE_1_8102_wire_constant when (stream_head_buffer(0) /=  '0') else R_ZERO_1_8103_wire_constant;
    -- flow-through select operator MUX_8105_inst
    MUX_8105_wire <= R_ZERO_1_8100_wire_constant when (AND_u1_u1_8099_wire(0) /=  '0') else MUX_8104_wire;
    -- flow-through select operator MUX_8107_inst
    MUX_8107_wire <= MUX_8105_wire when (EQ_u2_u1_8096_wire(0) /=  '0') else konst_8106_wire_constant;
    -- flow-through select operator MUX_8118_inst
    MUX_8118_wire <= R_ONE_1_8116_wire_constant when (thread_head_buffer(0) /=  '0') else R_ZERO_1_8117_wire_constant;
    -- flow-through select operator MUX_8119_inst
    MUX_8119_wire <= R_ZERO_1_8114_wire_constant when (AND_u1_u1_8113_wire(0) /=  '0') else MUX_8118_wire;
    -- flow-through select operator MUX_8121_inst
    MUX_8121_wire <= MUX_8119_wire when (EQ_u2_u1_8110_wire(0) /=  '0') else konst_8120_wire_constant;
    -- flow through binary operator AND_u1_u1_8032_inst
    AND_u1_u1_8032_wire <= (stream_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_8036_inst
    AND_u1_u1_8036_wire <= (stream_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_8055_inst
    AND_u1_u1_8055_wire <= (thread_head_buffer and break_thread_buffer);
    -- flow through binary operator AND_u1_u1_8059_inst
    AND_u1_u1_8059_wire <= (thread_head_buffer and break_stream_buffer);
    -- flow through binary operator AND_u1_u1_8099_inst
    AND_u1_u1_8099_wire <= (stream_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_8113_inst
    AND_u1_u1_8113_wire <= (thread_head_buffer and kill_thread_now_buffer);
    -- flow through binary operator AND_u1_u1_8124_inst
    instr_can_execute_buffer <= (valid_bit_buffer and OR_u1_u1_8123_wire);
    -- flow through binary operator EQ_u2_u1_7993_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_7992_wire_constant, tmp_var);
      EQ_u2_u1_7993_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8009_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_8008_wire_constant, tmp_var);
      EQ_u2_u1_8009_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8026_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_8025_wire_constant, tmp_var);
      EQ_u2_u1_8026_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8049_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_8048_wire_constant, tmp_var);
      EQ_u2_u1_8049_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8077_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_RESET_8076_wire_constant, tmp_var);
      EQ_u2_u1_8077_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8086_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_NORMAL_8085_wire_constant, tmp_var);
      EQ_u2_u1_8086_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8096_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_MISPREDICTED_STREAM_8095_wire_constant, tmp_var);
      EQ_u2_u1_8096_wire <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u2_u1_8110_inst
    process(wb_state_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(wb_state_buffer, R_WB_TRAPPED_8109_wire_constant, tmp_var);
      EQ_u2_u1_8110_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_7995_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_7995_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8011_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_8011_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8028_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_8028_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_8051_inst
    process(valid_bit_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", valid_bit_buffer, tmp_var);
      NOT_u1_u1_8051_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_8093_inst
    OR_u1_u1_8093_wire <= (MUX_8083_wire or MUX_8092_wire);
    -- flow through binary operator OR_u1_u1_8122_inst
    OR_u1_u1_8122_wire <= (MUX_8107_wire or MUX_8121_wire);
    -- flow through binary operator OR_u1_u1_8123_inst
    OR_u1_u1_8123_wire <= (OR_u1_u1_8093_wire or OR_u1_u1_8122_wire);
    -- flow through binary operator OR_u2_u2_8023_inst
    OR_u2_u2_8023_wire <= (MUX_8006_wire or MUX_8022_wire);
    -- flow through binary operator OR_u2_u2_8070_inst
    OR_u2_u2_8070_wire <= (MUX_8046_wire or MUX_8069_wire);
    -- flow through binary operator OR_u2_u2_8071_inst
    next_wb_state_buffer <= (OR_u2_u2_8023_wire or OR_u2_u2_8070_wire);
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
library iunit_registers;
use iunit_registers.iu_registers_global_package.all;
entity iu_registers is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    CORE_ID: in std_logic_vector(7 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_data: in std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_req : in std_logic_vector(0 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_write_ack : out std_logic_vector(0 downto 0);
    THREAD_ID: in std_logic_vector(7 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_write_data: in std_logic_vector(41 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
    ccu_to_teu_iunit_register_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    iunit_register_file_read_access_response_pipe_read_data: out std_logic_vector(141 downto 0);
    iunit_register_file_read_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
    iunit_register_file_read_access_response_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data: in std_logic_vector(16 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data: in std_logic_vector(82 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_write_data: in std_logic_vector(372 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_data: in std_logic_vector(58 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_data: in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_read_data: out std_logic_vector(16 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_iunit_cc_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_data: out std_logic_vector(141 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_iunit_register_file_to_loadstore_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_read_data: out std_logic_vector(31 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_iunit_rs1_to_stream_corrector_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_read_data: out std_logic_vector(95 downto 0);
    teu_iunit_to_iretire_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_iunit_to_iretire_pipe_read_ack : out std_logic_vector(0 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_read_data: out std_logic_vector(31 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_read_req : in std_logic_vector(0 downto 0);
    teu_to_ccu_iunit_register_access_response_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture iu_registers_arch  of iu_registers is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module analyze_ccu_command
  -- declarations related to module analyze_ccu_command_for_asr
  -- declarations related to module asr_update
  -- declarations related to module bypass_cc_possible_logic
  -- declarations related to module bypass_possible_logic
  -- declarations related to module calculate_address
  -- declarations related to module calculate_next_psr_value
  -- declarations related to module calculate_next_tbr_value
  -- declarations related to module calculate_next_wim_value
  -- declarations related to module check_if_bypass_cc_is_active
  -- declarations related to module check_if_bypass_is_active
  -- declarations related to module clear_psr_locks
  -- declarations related to module clear_single_bit_lock
  -- declarations related to module clear_y_lock
  -- declarations related to module construct_wb_message_to_iretire
  -- declarations related to module decode_iunit_writeback_control_word
  -- declarations related to module expand_ls_bypass
  -- declarations related to module extractReadRegs
  -- declarations related to module extract_into_registers
  -- declarations related to module extract_reg_lock_2
  -- declarations related to module insertBit16
  -- declarations related to module insertBit32
  -- declarations related to module insertBit4
  -- declarations related to module insertBit8
  -- declarations related to module insert_reg_lock_2
  -- declarations related to module isCcRead
  -- declarations related to module isValidBypassCCInfo
  -- declarations related to module isValidBypassInfo
  -- declarations related to module iu_registers_3r_1w_port_register_file
  -- declarations related to module iu_registers_daemon
  component iu_registers_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req : out  std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack : in   std_logic_vector(0 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data : in   std_logic_vector(92 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ccu_to_teu_iunit_register_access_command_pipe_read_data : in   std_logic_vector(41 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data : in   std_logic_vector(16 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data : in   std_logic_vector(82 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_data : in   std_logic_vector(372 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data : in   std_logic_vector(58 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data : in   std_logic_vector(0 downto 0);
      CORE_ID : in std_logic_vector(7 downto 0);
      THREAD_ID : in std_logic_vector(7 downto 0);
      iunit_register_file_read_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      iunit_register_file_read_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      iunit_register_file_read_access_response_pipe_write_data : out  std_logic_vector(141 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_cc_to_stream_corrector_pipe_write_data : out  std_logic_vector(16 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_register_file_to_loadstore_pipe_write_data : out  std_logic_vector(141 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_rs1_to_stream_corrector_pipe_write_data : out  std_logic_vector(31 downto 0);
      teu_iunit_to_iretire_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_iunit_to_iretire_pipe_write_data : out  std_logic_vector(95 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_req : out  std_logic_vector(0 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_ack : in   std_logic_vector(0 downto 0);
      teu_to_ccu_iunit_register_access_response_pipe_write_data : out  std_logic_vector(31 downto 0);
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
  -- argument signals for module iu_registers_daemon
  signal iu_registers_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal iu_registers_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal iu_registers_daemon_start_req : std_logic;
  signal iu_registers_daemon_start_ack : std_logic;
  signal iu_registers_daemon_fin_req   : std_logic;
  signal iu_registers_daemon_fin_ack : std_logic;
  -- declarations related to module iu_writeback_core
  -- declarations related to module pad16To32
  -- declarations related to module pad8To32
  -- declarations related to module signature_8
  -- declarations related to module testBit16
  -- declarations related to module testBit2
  -- declarations related to module testBit32
  -- declarations related to module testBit4
  -- declarations related to module testBit8
  -- declarations related to module test_and_set_psr_locks
  -- declarations related to module test_and_set_single_bit_lock
  -- declarations related to module test_and_set_y_lock
  -- declarations related to module updateWriteToReadBypass
  -- declarations related to module update_asr_locks
  -- declarations related to module update_register_read_locks
  -- declarations related to module writeback_fsm
  -- aggregate signals for read from pipe NOBLOCK_DCACHE_TO_CPU_IU_BYPASS
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data: std_logic_vector(92 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req: std_logic_vector(0 downto 0);
  signal NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ccu_to_teu_iunit_register_access_command
  signal ccu_to_teu_iunit_register_access_command_pipe_read_data: std_logic_vector(41 downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal ccu_to_teu_iunit_register_access_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe iunit_register_file_read_access_response
  signal iunit_register_file_read_access_response_pipe_write_data: std_logic_vector(141 downto 0);
  signal iunit_register_file_read_access_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal iunit_register_file_read_access_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_iunit_exec_bypass_cc_signal_to_register_file
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data: std_logic_vector(16 downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_iunit_exec_bypass_signal_to_register_file
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data: std_logic_vector(82 downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_iunit_exec_to_regfile_credit_return
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_iunit_writeback_in_args_pipe
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_data: std_logic_vector(372 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_idispatch_to_iunit_register_file_read_access_command
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data: std_logic_vector(58 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_loadstore_to_iunit_regfile_credit_return
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_iunit_cc_to_stream_corrector
  signal teu_iunit_cc_to_stream_corrector_pipe_write_data: std_logic_vector(16 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iunit_cc_to_stream_corrector_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_iunit_register_file_to_loadstore
  signal teu_iunit_register_file_to_loadstore_pipe_write_data: std_logic_vector(141 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iunit_register_file_to_loadstore_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_iunit_rs1_to_stream_corrector
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iunit_rs1_to_stream_corrector_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_iunit_to_iretire
  signal teu_iunit_to_iretire_pipe_write_data: std_logic_vector(95 downto 0);
  signal teu_iunit_to_iretire_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_iunit_to_iretire_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe teu_to_ccu_iunit_register_access_response
  signal teu_to_ccu_iunit_register_access_response_pipe_write_data: std_logic_vector(31 downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_write_req: std_logic_vector(0 downto 0);
  signal teu_to_ccu_iunit_register_access_response_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module iu_registers_daemon
  iu_registers_daemon_instance:iu_registers_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => iu_registers_daemon_start_req,
      start_ack => iu_registers_daemon_start_ack,
      fin_req => iu_registers_daemon_fin_req,
      fin_ack => iu_registers_daemon_fin_ack,
      clk => clk,
      reset => reset,
      CORE_ID => CORE_ID,
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack(0 downto 0),
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data(92 downto 0),
      THREAD_ID => THREAD_ID,
      ccu_to_teu_iunit_register_access_command_pipe_read_req => ccu_to_teu_iunit_register_access_command_pipe_read_req(0 downto 0),
      ccu_to_teu_iunit_register_access_command_pipe_read_ack => ccu_to_teu_iunit_register_access_command_pipe_read_ack(0 downto 0),
      ccu_to_teu_iunit_register_access_command_pipe_read_data => ccu_to_teu_iunit_register_access_command_pipe_read_data(41 downto 0),
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req(0 downto 0),
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack(0 downto 0),
      noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data(16 downto 0),
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req(0 downto 0),
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack(0 downto 0),
      noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data(82 downto 0),
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_req => noblock_iunit_exec_to_regfile_credit_return_pipe_read_req(0 downto 0),
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack(0 downto 0),
      noblock_iunit_exec_to_regfile_credit_return_pipe_read_data => noblock_iunit_exec_to_regfile_credit_return_pipe_read_data(0 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_read_req => noblock_iunit_writeback_in_args_pipe_pipe_read_req(0 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_read_ack => noblock_iunit_writeback_in_args_pipe_pipe_read_ack(0 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_read_data => noblock_iunit_writeback_in_args_pipe_pipe_read_data(372 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_req(0 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_ack(0 downto 0),
      noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data => noblock_teu_idispatch_to_iunit_register_file_read_access_command_pipe_read_data(58 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_req(0 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_ack(0 downto 0),
      noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data => noblock_teu_loadstore_to_iunit_regfile_credit_return_pipe_read_data(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_req(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_iunit_regfile_cc_credit_return_pipe_read_data(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_req(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_ack(0 downto 0),
      noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data => noblock_teu_stream_corrector_to_iunit_regfile_rs1_credit_return_pipe_read_data(0 downto 0),
      iunit_register_file_read_access_response_pipe_write_req => iunit_register_file_read_access_response_pipe_write_req(0 downto 0),
      iunit_register_file_read_access_response_pipe_write_ack => iunit_register_file_read_access_response_pipe_write_ack(0 downto 0),
      iunit_register_file_read_access_response_pipe_write_data => iunit_register_file_read_access_response_pipe_write_data(141 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_write_req => teu_iunit_cc_to_stream_corrector_pipe_write_req(0 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_write_ack => teu_iunit_cc_to_stream_corrector_pipe_write_ack(0 downto 0),
      teu_iunit_cc_to_stream_corrector_pipe_write_data => teu_iunit_cc_to_stream_corrector_pipe_write_data(16 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_write_req => teu_iunit_register_file_to_loadstore_pipe_write_req(0 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_write_ack => teu_iunit_register_file_to_loadstore_pipe_write_ack(0 downto 0),
      teu_iunit_register_file_to_loadstore_pipe_write_data => teu_iunit_register_file_to_loadstore_pipe_write_data(141 downto 0),
      teu_iunit_rs1_to_stream_corrector_pipe_write_req => teu_iunit_rs1_to_stream_corrector_pipe_write_req(0 downto 0),
      teu_iunit_rs1_to_stream_corrector_pipe_write_ack => teu_iunit_rs1_to_stream_corrector_pipe_write_ack(0 downto 0),
      teu_iunit_rs1_to_stream_corrector_pipe_write_data => teu_iunit_rs1_to_stream_corrector_pipe_write_data(31 downto 0),
      teu_iunit_to_iretire_pipe_write_req => teu_iunit_to_iretire_pipe_write_req(0 downto 0),
      teu_iunit_to_iretire_pipe_write_ack => teu_iunit_to_iretire_pipe_write_ack(0 downto 0),
      teu_iunit_to_iretire_pipe_write_data => teu_iunit_to_iretire_pipe_write_data(95 downto 0),
      teu_to_ccu_iunit_register_access_response_pipe_write_req => teu_to_ccu_iunit_register_access_response_pipe_write_req(0 downto 0),
      teu_to_ccu_iunit_register_access_response_pipe_write_ack => teu_to_ccu_iunit_register_access_response_pipe_write_ack(0 downto 0),
      teu_to_ccu_iunit_register_access_response_pipe_write_data => teu_to_ccu_iunit_register_access_response_pipe_write_data(31 downto 0),
      tag_in => iu_registers_daemon_tag_in,
      tag_out => iu_registers_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  iu_registers_daemon_tag_in <= (others => '0');
  iu_registers_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => iu_registers_daemon_start_req, start_ack => iu_registers_daemon_start_ack,  fin_req => iu_registers_daemon_fin_req,  fin_ack => iu_registers_daemon_fin_ack);
  -- input signal-pipe CORE_ID accessed directly. 
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
  -- input signal-pipe THREAD_ID accessed directly. 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  ccu_to_teu_iunit_register_access_command_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ccu_to_teu_iunit_register_access_command",
      num_reads => 1,
      num_writes => 1,
      data_width => 42,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => ccu_to_teu_iunit_register_access_command_pipe_read_req,
      read_ack => ccu_to_teu_iunit_register_access_command_pipe_read_ack,
      read_data => ccu_to_teu_iunit_register_access_command_pipe_read_data,
      write_req => ccu_to_teu_iunit_register_access_command_pipe_write_req,
      write_ack => ccu_to_teu_iunit_register_access_command_pipe_write_ack,
      write_data => ccu_to_teu_iunit_register_access_command_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  iunit_register_file_read_access_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe iunit_register_file_read_access_response",
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
      read_req => iunit_register_file_read_access_response_pipe_read_req,
      read_ack => iunit_register_file_read_access_response_pipe_read_ack,
      read_data => iunit_register_file_read_access_response_pipe_read_data,
      write_req => iunit_register_file_read_access_response_pipe_write_req,
      write_ack => iunit_register_file_read_access_response_pipe_write_ack,
      write_data => iunit_register_file_read_access_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_iunit_exec_bypass_cc_signal_to_register_file_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_bypass_cc_signal_to_register_file",
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
      read_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_req,
      read_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_ack,
      read_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_read_data,
      write_req => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_req,
      write_ack => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_ack,
      write_data => noblock_iunit_exec_bypass_cc_signal_to_register_file_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_iunit_exec_bypass_signal_to_register_file_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_bypass_signal_to_register_file",
      num_reads => 1,
      num_writes => 1,
      data_width => 83,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_req,
      read_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_ack,
      read_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_read_data,
      write_req => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_req,
      write_ack => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_ack,
      write_data => noblock_iunit_exec_bypass_signal_to_register_file_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_iunit_exec_to_regfile_credit_return_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_exec_to_regfile_credit_return",
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
      read_req => noblock_iunit_exec_to_regfile_credit_return_pipe_read_req,
      read_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_read_ack,
      read_data => noblock_iunit_exec_to_regfile_credit_return_pipe_read_data,
      write_req => noblock_iunit_exec_to_regfile_credit_return_pipe_write_req,
      write_ack => noblock_iunit_exec_to_regfile_credit_return_pipe_write_ack,
      write_data => noblock_iunit_exec_to_regfile_credit_return_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- non-blocking pipe... Input-ports must have non-blocking-flag => true
  noblock_iunit_writeback_in_args_pipe_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe noblock_iunit_writeback_in_args_pipe",
      num_reads => 1,
      num_writes => 1,
      data_width => 373,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => noblock_iunit_writeback_in_args_pipe_pipe_read_req,
      read_ack => noblock_iunit_writeback_in_args_pipe_pipe_read_ack,
      read_data => noblock_iunit_writeback_in_args_pipe_pipe_read_data,
      write_req => noblock_iunit_writeback_in_args_pipe_pipe_write_req,
      write_ack => noblock_iunit_writeback_in_args_pipe_pipe_write_ack,
      write_data => noblock_iunit_writeback_in_args_pipe_pipe_write_data,
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
  teu_to_ccu_iunit_register_access_response_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_to_ccu_iunit_register_access_response",
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
      read_req => teu_to_ccu_iunit_register_access_response_pipe_read_req,
      read_ack => teu_to_ccu_iunit_register_access_response_pipe_read_ack,
      read_data => teu_to_ccu_iunit_register_access_response_pipe_read_data,
      write_req => teu_to_ccu_iunit_register_access_response_pipe_write_req,
      write_ack => teu_to_ccu_iunit_register_access_response_pipe_write_ack,
      write_data => teu_to_ccu_iunit_register_access_response_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end iu_registers_arch;
