-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package iu_writeback_in_mux_global_package is -- 
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
  component iu_writeback_in_mux is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      iunit_exec_fast_alu_result_to_writeback_pipe_write_data: in std_logic_vector(108 downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
      iunit_exec_fast_alu_result_to_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
      iunit_exec_to_writeback_pipe_write_data: in std_logic_vector(125 downto 0);
      iunit_exec_to_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
      iunit_exec_to_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_data: out std_logic_vector(372 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_req : in std_logic_vector(0 downto 0);
      noblock_iunit_writeback_in_args_pipe_pipe_read_ack : out std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_data: in std_logic_vector(83 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
      noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_data: in std_logic_vector(12 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_fpunit_trap_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_loadstore_to_iunit_pipe_write_data: in std_logic_vector(77 downto 0);
      teu_loadstore_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_loadstore_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_data: in std_logic_vector(17 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
      teu_stream_corrector_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package iu_writeback_in_mux_global_package;
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
library iunit_writeback_in_mux;
use iunit_writeback_in_mux.iu_writeback_in_mux_global_package.all;
entity construct_to_wb_message_Volatile is -- 
  port ( -- 
    from_dispatch : in  std_logic_vector(83 downto 0);
    get_from_sc : in  std_logic_vector(0 downto 0);
    from_sc : in  std_logic_vector(17 downto 0);
    get_from_ls : in  std_logic_vector(0 downto 0);
    from_ls : in  std_logic_vector(77 downto 0);
    get_from_fu : in  std_logic_vector(0 downto 0);
    from_fu : in  std_logic_vector(12 downto 0);
    get_from_iu1 : in  std_logic_vector(0 downto 0);
    from_exec : in  std_logic_vector(125 downto 0);
    get_from_iu1_fast : in  std_logic_vector(0 downto 0);
    from_exec_fast : in  std_logic_vector(108 downto 0);
    to_wb : out  std_logic_vector(372 downto 0)-- 
  );
  -- 
end entity construct_to_wb_message_Volatile;
architecture construct_to_wb_message_Volatile_arch of construct_to_wb_message_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(433-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal from_dispatch_buffer :  std_logic_vector(83 downto 0);
  signal get_from_sc_buffer :  std_logic_vector(0 downto 0);
  signal from_sc_buffer :  std_logic_vector(17 downto 0);
  signal get_from_ls_buffer :  std_logic_vector(0 downto 0);
  signal from_ls_buffer :  std_logic_vector(77 downto 0);
  signal get_from_fu_buffer :  std_logic_vector(0 downto 0);
  signal from_fu_buffer :  std_logic_vector(12 downto 0);
  signal get_from_iu1_buffer :  std_logic_vector(0 downto 0);
  signal from_exec_buffer :  std_logic_vector(125 downto 0);
  signal get_from_iu1_fast_buffer :  std_logic_vector(0 downto 0);
  signal from_exec_fast_buffer :  std_logic_vector(108 downto 0);
  -- output port buffer signals
  signal to_wb_buffer :  std_logic_vector(372 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  from_dispatch_buffer <= from_dispatch;
  get_from_sc_buffer <= get_from_sc;
  from_sc_buffer <= from_sc;
  get_from_ls_buffer <= get_from_ls;
  from_ls_buffer <= from_ls;
  get_from_fu_buffer <= get_from_fu;
  from_fu_buffer <= from_fu;
  get_from_iu1_buffer <= get_from_iu1;
  from_exec_buffer <= from_exec;
  get_from_iu1_fast_buffer <= get_from_iu1_fast;
  from_exec_fast_buffer <= from_exec_fast;
  -- output handling  -------------------------------------------------------
  to_wb <= to_wb_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal BITSEL_u13_u1_1070_wire : std_logic_vector(0 downto 0);
    signal CONCAT_u114_u211_1076_wire : std_logic_vector(210 downto 0);
    signal CONCAT_u1_u2_1051_wire : std_logic_vector(1 downto 0);
    signal CONCAT_u2_u3_1053_wire : std_logic_vector(2 downto 0);
    signal CONCAT_u6_u72_1066_wire : std_logic_vector(71 downto 0);
    signal CONCAT_u72_u73_1073_wire : std_logic_vector(72 downto 0);
    signal CONCAT_u73_u284_1077_wire : std_logic_vector(283 downto 0);
    signal CONCAT_u84_u85_1046_wire : std_logic_vector(84 downto 0);
    signal CONCAT_u85_u86_1048_wire : std_logic_vector(85 downto 0);
    signal CONCAT_u86_u89_1054_wire : std_logic_vector(88 downto 0);
    signal MUX_1059_wire : std_logic_vector(5 downto 0);
    signal MUX_1065_wire : std_logic_vector(65 downto 0);
    signal MUX_1072_wire : std_logic_vector(0 downto 0);
    signal from_iu_fast_1042 : std_logic_vector(96 downto 0);
    signal from_iu_slow_1034 : std_logic_vector(113 downto 0);
    signal konst_1032_wire_constant : std_logic_vector(113 downto 0);
    signal konst_1040_wire_constant : std_logic_vector(96 downto 0);
    signal konst_1058_wire_constant : std_logic_vector(5 downto 0);
    signal konst_1064_wire_constant : std_logic_vector(65 downto 0);
    signal konst_1069_wire_constant : std_logic_vector(12 downto 0);
    signal konst_1071_wire_constant : std_logic_vector(0 downto 0);
    signal slice_1031_wire : std_logic_vector(113 downto 0);
    signal slice_1039_wire : std_logic_vector(96 downto 0);
    signal slice_1057_wire : std_logic_vector(5 downto 0);
    signal slice_1063_wire : std_logic_vector(65 downto 0);
    -- 
  begin -- 
    konst_1032_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_1040_wire_constant <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    konst_1058_wire_constant <= "000000";
    konst_1064_wire_constant <= "000000000000000000000000000000000000000000000000000000000000000000";
    konst_1069_wire_constant <= "0000000000000";
    konst_1071_wire_constant <= "0";
    -- flow-through select operator MUX_1033_inst
    from_iu_slow_1034 <= slice_1031_wire when (get_from_iu1_buffer(0) /=  '0') else konst_1032_wire_constant;
    -- flow-through select operator MUX_1041_inst
    from_iu_fast_1042 <= slice_1039_wire when (get_from_iu1_fast_buffer(0) /=  '0') else konst_1040_wire_constant;
    -- flow-through select operator MUX_1059_inst
    MUX_1059_wire <= slice_1057_wire when (get_from_sc_buffer(0) /=  '0') else konst_1058_wire_constant;
    -- flow-through select operator MUX_1065_inst
    MUX_1065_wire <= slice_1063_wire when (get_from_ls_buffer(0) /=  '0') else konst_1064_wire_constant;
    -- flow-through select operator MUX_1072_inst
    MUX_1072_wire <= BITSEL_u13_u1_1070_wire when (get_from_fu_buffer(0) /=  '0') else konst_1071_wire_constant;
    -- flow-through slice operator slice_1031_inst
    slice_1031_wire <= from_exec_buffer(113 downto 0);
    -- flow-through slice operator slice_1039_inst
    slice_1039_wire <= from_exec_fast_buffer(96 downto 0);
    -- flow-through slice operator slice_1057_inst
    slice_1057_wire <= from_sc_buffer(5 downto 0);
    -- flow-through slice operator slice_1063_inst
    slice_1063_wire <= from_ls_buffer(65 downto 0);
    -- flow through binary operator BITSEL_u13_u1_1070_inst
    process(from_fu_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(from_fu_buffer, konst_1069_wire_constant, tmp_var);
      BITSEL_u13_u1_1070_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u114_u211_1076_inst
    process(from_iu_slow_1034, from_iu_fast_1042) -- 
      variable tmp_var : std_logic_vector(210 downto 0); -- 
    begin -- 
      ApConcat_proc(from_iu_slow_1034, from_iu_fast_1042, tmp_var);
      CONCAT_u114_u211_1076_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u1_u2_1051_inst
    process(get_from_fu_buffer, get_from_iu1_buffer) -- 
      variable tmp_var : std_logic_vector(1 downto 0); -- 
    begin -- 
      ApConcat_proc(get_from_fu_buffer, get_from_iu1_buffer, tmp_var);
      CONCAT_u1_u2_1051_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u2_u3_1053_inst
    process(CONCAT_u1_u2_1051_wire, get_from_iu1_fast_buffer) -- 
      variable tmp_var : std_logic_vector(2 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u1_u2_1051_wire, get_from_iu1_fast_buffer, tmp_var);
      CONCAT_u2_u3_1053_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u6_u72_1066_inst
    process(MUX_1059_wire, MUX_1065_wire) -- 
      variable tmp_var : std_logic_vector(71 downto 0); -- 
    begin -- 
      ApConcat_proc(MUX_1059_wire, MUX_1065_wire, tmp_var);
      CONCAT_u6_u72_1066_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u72_u73_1073_inst
    process(CONCAT_u6_u72_1066_wire, MUX_1072_wire) -- 
      variable tmp_var : std_logic_vector(72 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u6_u72_1066_wire, MUX_1072_wire, tmp_var);
      CONCAT_u72_u73_1073_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u73_u284_1077_inst
    process(CONCAT_u72_u73_1073_wire, CONCAT_u114_u211_1076_wire) -- 
      variable tmp_var : std_logic_vector(283 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u72_u73_1073_wire, CONCAT_u114_u211_1076_wire, tmp_var);
      CONCAT_u73_u284_1077_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u84_u85_1046_inst
    process(from_dispatch_buffer, get_from_sc_buffer) -- 
      variable tmp_var : std_logic_vector(84 downto 0); -- 
    begin -- 
      ApConcat_proc(from_dispatch_buffer, get_from_sc_buffer, tmp_var);
      CONCAT_u84_u85_1046_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u85_u86_1048_inst
    process(CONCAT_u84_u85_1046_wire, get_from_ls_buffer) -- 
      variable tmp_var : std_logic_vector(85 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u84_u85_1046_wire, get_from_ls_buffer, tmp_var);
      CONCAT_u85_u86_1048_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u86_u89_1054_inst
    process(CONCAT_u85_u86_1048_wire, CONCAT_u2_u3_1053_wire) -- 
      variable tmp_var : std_logic_vector(88 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u85_u86_1048_wire, CONCAT_u2_u3_1053_wire, tmp_var);
      CONCAT_u86_u89_1054_wire <= tmp_var; --
    end process;
    -- flow through binary operator CONCAT_u89_u373_1078_inst
    process(CONCAT_u86_u89_1054_wire, CONCAT_u73_u284_1077_wire) -- 
      variable tmp_var : std_logic_vector(372 downto 0); -- 
    begin -- 
      ApConcat_proc(CONCAT_u86_u89_1054_wire, CONCAT_u73_u284_1077_wire, tmp_var);
      to_wb_buffer <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end construct_to_wb_message_Volatile_arch;
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
library iunit_writeback_in_mux;
use iunit_writeback_in_mux.iu_writeback_in_mux_global_package.all;
entity iu_writeback_in_mux is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    iunit_exec_fast_alu_result_to_writeback_pipe_write_data: in std_logic_vector(108 downto 0);
    iunit_exec_fast_alu_result_to_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
    iunit_exec_fast_alu_result_to_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
    iunit_exec_to_writeback_pipe_write_data: in std_logic_vector(125 downto 0);
    iunit_exec_to_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
    iunit_exec_to_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_data: out std_logic_vector(372 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_req : in std_logic_vector(0 downto 0);
    noblock_iunit_writeback_in_args_pipe_pipe_read_ack : out std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_data: in std_logic_vector(83 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_req : in std_logic_vector(0 downto 0);
    noblock_teu_idispatch_to_iunit_writeback_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_data: in std_logic_vector(12 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_fpunit_trap_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_loadstore_to_iunit_pipe_write_data: in std_logic_vector(77 downto 0);
    teu_loadstore_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_loadstore_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_data: in std_logic_vector(17 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_req : in std_logic_vector(0 downto 0);
    teu_stream_corrector_to_iunit_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture iu_writeback_in_mux_arch  of iu_writeback_in_mux is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module construct_to_wb_message
  -- declarations related to module iunit_writeback_in_mux_daemon
  -- argument signals for module iunit_writeback_in_mux_daemon
  signal iunit_writeback_in_mux_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal iunit_writeback_in_mux_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal iunit_writeback_in_mux_daemon_start_req : std_logic;
  signal iunit_writeback_in_mux_daemon_start_ack : std_logic;
  signal iunit_writeback_in_mux_daemon_fin_req   : std_logic;
  signal iunit_writeback_in_mux_daemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe iunit_exec_fast_alu_result_to_writeback
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_data: std_logic_vector(108 downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_req: std_logic_vector(0 downto 0);
  signal iunit_exec_fast_alu_result_to_writeback_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe iunit_exec_to_writeback
  signal iunit_exec_to_writeback_pipe_read_data: std_logic_vector(125 downto 0);
  signal iunit_exec_to_writeback_pipe_read_req: std_logic_vector(0 downto 0);
  signal iunit_exec_to_writeback_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe noblock_iunit_writeback_in_args_pipe
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_data: std_logic_vector(372 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal noblock_iunit_writeback_in_args_pipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe noblock_teu_idispatch_to_iunit_writeback
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_data: std_logic_vector(83 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_req: std_logic_vector(0 downto 0);
  signal noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_fpunit_trap_to_iunit
  signal teu_fpunit_trap_to_iunit_pipe_read_data: std_logic_vector(12 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_fpunit_trap_to_iunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_loadstore_to_iunit
  signal teu_loadstore_to_iunit_pipe_read_data: std_logic_vector(77 downto 0);
  signal teu_loadstore_to_iunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_loadstore_to_iunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe teu_stream_corrector_to_iunit
  signal teu_stream_corrector_to_iunit_pipe_read_data: std_logic_vector(17 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_read_req: std_logic_vector(0 downto 0);
  signal teu_stream_corrector_to_iunit_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module iunit_writeback_in_mux_daemon
  iunit_writeback_in_mux_daemon_instance:iunit_writeback_in_mux_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => iunit_writeback_in_mux_daemon_start_req,
      start_ack => iunit_writeback_in_mux_daemon_start_ack,
      fin_req => iunit_writeback_in_mux_daemon_fin_req,
      fin_ack => iunit_writeback_in_mux_daemon_fin_ack,
      clk => clk,
      reset => reset,
      iunit_exec_fast_alu_result_to_writeback_pipe_read_req => iunit_exec_fast_alu_result_to_writeback_pipe_read_req(0 downto 0),
      iunit_exec_fast_alu_result_to_writeback_pipe_read_ack => iunit_exec_fast_alu_result_to_writeback_pipe_read_ack(0 downto 0),
      iunit_exec_fast_alu_result_to_writeback_pipe_read_data => iunit_exec_fast_alu_result_to_writeback_pipe_read_data(108 downto 0),
      iunit_exec_to_writeback_pipe_read_req => iunit_exec_to_writeback_pipe_read_req(0 downto 0),
      iunit_exec_to_writeback_pipe_read_ack => iunit_exec_to_writeback_pipe_read_ack(0 downto 0),
      iunit_exec_to_writeback_pipe_read_data => iunit_exec_to_writeback_pipe_read_data(125 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_req => noblock_teu_idispatch_to_iunit_writeback_pipe_read_req(0 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack => noblock_teu_idispatch_to_iunit_writeback_pipe_read_ack(0 downto 0),
      noblock_teu_idispatch_to_iunit_writeback_pipe_read_data => noblock_teu_idispatch_to_iunit_writeback_pipe_read_data(83 downto 0),
      teu_loadstore_to_iunit_pipe_read_req => teu_loadstore_to_iunit_pipe_read_req(0 downto 0),
      teu_loadstore_to_iunit_pipe_read_ack => teu_loadstore_to_iunit_pipe_read_ack(0 downto 0),
      teu_loadstore_to_iunit_pipe_read_data => teu_loadstore_to_iunit_pipe_read_data(77 downto 0),
      teu_fpunit_trap_to_iunit_pipe_read_req => teu_fpunit_trap_to_iunit_pipe_read_req(0 downto 0),
      teu_fpunit_trap_to_iunit_pipe_read_ack => teu_fpunit_trap_to_iunit_pipe_read_ack(0 downto 0),
      teu_fpunit_trap_to_iunit_pipe_read_data => teu_fpunit_trap_to_iunit_pipe_read_data(12 downto 0),
      teu_stream_corrector_to_iunit_pipe_read_req => teu_stream_corrector_to_iunit_pipe_read_req(0 downto 0),
      teu_stream_corrector_to_iunit_pipe_read_ack => teu_stream_corrector_to_iunit_pipe_read_ack(0 downto 0),
      teu_stream_corrector_to_iunit_pipe_read_data => teu_stream_corrector_to_iunit_pipe_read_data(17 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_write_req => noblock_iunit_writeback_in_args_pipe_pipe_write_req(0 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_write_ack => noblock_iunit_writeback_in_args_pipe_pipe_write_ack(0 downto 0),
      noblock_iunit_writeback_in_args_pipe_pipe_write_data => noblock_iunit_writeback_in_args_pipe_pipe_write_data(372 downto 0),
      tag_in => iunit_writeback_in_mux_daemon_tag_in,
      tag_out => iunit_writeback_in_mux_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  iunit_writeback_in_mux_daemon_tag_in <= (others => '0');
  iunit_writeback_in_mux_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => iunit_writeback_in_mux_daemon_start_req, start_ack => iunit_writeback_in_mux_daemon_start_ack,  fin_req => iunit_writeback_in_mux_daemon_fin_req,  fin_ack => iunit_writeback_in_mux_daemon_fin_ack);
  iunit_exec_fast_alu_result_to_writeback_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe iunit_exec_fast_alu_result_to_writeback",
      num_reads => 1,
      num_writes => 1,
      data_width => 109,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => iunit_exec_fast_alu_result_to_writeback_pipe_read_req,
      read_ack => iunit_exec_fast_alu_result_to_writeback_pipe_read_ack,
      read_data => iunit_exec_fast_alu_result_to_writeback_pipe_read_data,
      write_req => iunit_exec_fast_alu_result_to_writeback_pipe_write_req,
      write_ack => iunit_exec_fast_alu_result_to_writeback_pipe_write_ack,
      write_data => iunit_exec_fast_alu_result_to_writeback_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  iunit_exec_to_writeback_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe iunit_exec_to_writeback",
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
      read_req => iunit_exec_to_writeback_pipe_read_req,
      read_ack => iunit_exec_to_writeback_pipe_read_ack,
      read_data => iunit_exec_to_writeback_pipe_read_data,
      write_req => iunit_exec_to_writeback_pipe_write_req,
      write_ack => iunit_exec_to_writeback_pipe_write_ack,
      write_data => iunit_exec_to_writeback_pipe_write_data,
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
  teu_fpunit_trap_to_iunit_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe teu_fpunit_trap_to_iunit",
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
      read_req => teu_fpunit_trap_to_iunit_pipe_read_req,
      read_ack => teu_fpunit_trap_to_iunit_pipe_read_ack,
      read_data => teu_fpunit_trap_to_iunit_pipe_read_data,
      write_req => teu_fpunit_trap_to_iunit_pipe_write_req,
      write_ack => teu_fpunit_trap_to_iunit_pipe_write_ack,
      write_data => teu_fpunit_trap_to_iunit_pipe_write_data,
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
  -- gated clock generators 
  -- 
end iu_writeback_in_mux_arch;
