library ieee;
use ieee.std_logic_1164.all;
package munit_no_mmu_Type_Package is -- 
  -- 
end package;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-->>>>>
library munit_lib;
use munit_lib.munit_no_mmu_Type_Package.all;
--<<<<<
-->>>>>
library munit_dcache;
library munit_icache;
library munit_dummy_mmu;
library munit_mmu_mux;
--<<<<<
entity munit_no_mmu is -- 
  port( -- 
    CACHE_STALL_ENABLE : in std_logic_vector(0 downto 0);
    CORE_BUS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    CORE_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    CORE_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    INVALIDATE_REQUEST_pipe_write_data : in std_logic_vector(29 downto 0);
    INVALIDATE_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    INVALIDATE_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_data : in std_logic_vector(142 downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : in std_logic_vector(120 downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_data : in std_logic_vector(40 downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_data : in std_logic_vector(0 downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_CPU_to_MMU_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CORE_BUS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    CORE_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    CORE_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
    DCACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
    DCACHE_to_CPU_response_pipe_read_data : out std_logic_vector(71 downto 0);
    DCACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
    DCACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_data : out std_logic_vector(71 downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_req  : in std_logic_vector(0  downto 0);
    DCACHE_to_CPU_slow_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ICACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
    ICACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
    ICACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ICACHE_to_CPU_response_pipe_read_data : out std_logic_vector(89 downto 0);
    ICACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
    ICACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
    MMU_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
    MMU_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
    MMU_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity munit_no_mmu;
architecture struct of munit_no_mmu is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal DCACHE_to_MMU_request_pipe_write_data: std_logic_vector(119 downto 0);
  signal DCACHE_to_MMU_request_pipe_write_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_MMU_request_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DCACHE_to_MMU_request_pipe_read_data: std_logic_vector(119 downto 0);
  signal DCACHE_to_MMU_request_pipe_read_req : std_logic_vector(0  downto 0);
  signal DCACHE_to_MMU_request_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_MMU_request_pipe_write_data: std_logic_vector(47 downto 0);
  signal ICACHE_to_MMU_request_pipe_write_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_MMU_request_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ICACHE_to_MMU_request_pipe_read_data: std_logic_vector(47 downto 0);
  signal ICACHE_to_MMU_request_pipe_read_req : std_logic_vector(0  downto 0);
  signal ICACHE_to_MMU_request_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : std_logic_vector(0  downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : std_logic_vector(0  downto 0);
  signal MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req : std_logic_vector(0  downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req : std_logic_vector(0  downto 0);
  signal MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MMU_to_DCACHE_response_pipe_write_data: std_logic_vector(74 downto 0);
  signal MMU_to_DCACHE_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal MMU_to_DCACHE_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MMU_to_DCACHE_response_pipe_read_data: std_logic_vector(74 downto 0);
  signal MMU_to_DCACHE_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal MMU_to_DCACHE_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MMU_to_ICACHE_response_pipe_write_data: std_logic_vector(92 downto 0);
  signal MMU_to_ICACHE_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal MMU_to_ICACHE_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MMU_to_ICACHE_response_pipe_read_data: std_logic_vector(92 downto 0);
  signal MMU_to_ICACHE_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal MMU_to_ICACHE_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data: std_logic_vector(121 downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data: std_logic_vector(0 downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data: std_logic_vector(26 downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req : std_logic_vector(0  downto 0);
  signal NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack : std_logic_vector(0  downto 0);
  component dcache is -- 
    port( -- 
      CACHE_STALL_ENABLE : in std_logic_vector(0 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : in std_logic_vector(26 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MMU_to_DCACHE_response_pipe_write_data : in std_logic_vector(74 downto 0);
      MMU_to_DCACHE_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_to_DCACHE_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_data : in std_logic_vector(142 downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data : in std_logic_vector(120 downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : in std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_read_data : out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_data : out std_logic_vector(71 downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_CPU_slow_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      DCACHE_to_MMU_request_pipe_read_data : out std_logic_vector(119 downto 0);
      DCACHE_to_MMU_request_pipe_read_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_MMU_request_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data : out std_logic_vector(92 downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for dcache_inst :  dcache -- 
    use entity munit_dcache.dcache; -- 
  --<<<<<
  component icache is -- 
    port( -- 
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data : in std_logic_vector(26 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MMU_to_ICACHE_response_pipe_write_data : in std_logic_vector(92 downto 0);
      MMU_to_ICACHE_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      MMU_to_ICACHE_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_data : in std_logic_vector(40 downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data : in std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_read_data : out std_logic_vector(89 downto 0);
      ICACHE_to_CPU_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_CPU_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_MMU_request_pipe_read_data : out std_logic_vector(47 downto 0);
      ICACHE_to_MMU_request_pipe_read_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_MMU_request_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for icache_inst :  icache -- 
    use entity munit_icache.icache; -- 
  --<<<<<
  component dummy_mmu is -- 
    port( -- 
      CORE_BUS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      INVALIDATE_REQUEST_pipe_write_data : in std_logic_vector(29 downto 0);
      INVALIDATE_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      INVALIDATE_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data : in std_logic_vector(121 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_data : in std_logic_vector(0 downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CPU_to_MMU_reset_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data : out std_logic_vector(26 downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data : out std_logic_vector(26 downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_read_data : out std_logic_vector(0 downto 0);
      MMU_to_CPU_reset_ack_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_to_CPU_reset_ack_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_to_DCACHE_response_pipe_read_data : out std_logic_vector(74 downto 0);
      MMU_to_DCACHE_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_to_DCACHE_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MMU_to_ICACHE_response_pipe_read_data : out std_logic_vector(92 downto 0);
      MMU_to_ICACHE_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      MMU_to_ICACHE_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data : out std_logic_vector(0 downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data : out std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data : out std_logic_vector(26 downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for mmu_inst :  dummy_mmu -- 
    use entity munit_dummy_mmu.dummy_mmu; -- 
  --<<<<<
  component mmu_mux is -- 
    port( -- 
      DCACHE_to_MMU_request_pipe_write_data : in std_logic_vector(119 downto 0);
      DCACHE_to_MMU_request_pipe_write_req  : in std_logic_vector(0  downto 0);
      DCACHE_to_MMU_request_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ICACHE_to_MMU_request_pipe_write_data : in std_logic_vector(47 downto 0);
      ICACHE_to_MMU_request_pipe_write_req  : in std_logic_vector(0  downto 0);
      ICACHE_to_MMU_request_pipe_write_ack  : out std_logic_vector(0  downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data : out std_logic_vector(121 downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for mmu_mux_inst :  mmu_mux -- 
    use entity munit_mmu_mux.mmu_mux; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  dcache_inst: dcache
  port map ( --
    CACHE_STALL_ENABLE => CACHE_STALL_ENABLE,
    DCACHE_to_CPU_reset_ack_pipe_read_data => DCACHE_to_CPU_reset_ack_pipe_read_data,
    DCACHE_to_CPU_reset_ack_pipe_read_req => DCACHE_to_CPU_reset_ack_pipe_read_req,
    DCACHE_to_CPU_reset_ack_pipe_read_ack => DCACHE_to_CPU_reset_ack_pipe_read_ack,
    DCACHE_to_CPU_response_pipe_read_data => DCACHE_to_CPU_response_pipe_read_data,
    DCACHE_to_CPU_response_pipe_read_req => DCACHE_to_CPU_response_pipe_read_req,
    DCACHE_to_CPU_response_pipe_read_ack => DCACHE_to_CPU_response_pipe_read_ack,
    DCACHE_to_CPU_slow_response_pipe_read_data => DCACHE_to_CPU_slow_response_pipe_read_data,
    DCACHE_to_CPU_slow_response_pipe_read_req => DCACHE_to_CPU_slow_response_pipe_read_req,
    DCACHE_to_CPU_slow_response_pipe_read_ack => DCACHE_to_CPU_slow_response_pipe_read_ack,
    DCACHE_to_MMU_request_pipe_read_data => DCACHE_to_MMU_request_pipe_write_data,
    DCACHE_to_MMU_request_pipe_read_req => DCACHE_to_MMU_request_pipe_write_ack,
    DCACHE_to_MMU_request_pipe_read_ack => DCACHE_to_MMU_request_pipe_write_req,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
    MMU_to_DCACHE_response_pipe_write_data => MMU_to_DCACHE_response_pipe_read_data,
    MMU_to_DCACHE_response_pipe_write_req => MMU_to_DCACHE_response_pipe_read_ack,
    MMU_to_DCACHE_response_pipe_write_ack => MMU_to_DCACHE_response_pipe_read_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_command_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_command_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_command_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_reset_pipe_write_ack,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_data,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_req,
    NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack => NOBLOCK_CPU_to_DCACHE_slow_command_pipe_write_ack,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_data,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_req,
    NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_FU_BYPASS_pipe_read_ack,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_data,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_req,
    NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack => NOBLOCK_DCACHE_TO_CPU_IU_BYPASS_pipe_read_ack,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  icache_inst: icache
  port map ( --
    ICACHE_to_CPU_reset_ack_pipe_read_data => ICACHE_to_CPU_reset_ack_pipe_read_data,
    ICACHE_to_CPU_reset_ack_pipe_read_req => ICACHE_to_CPU_reset_ack_pipe_read_req,
    ICACHE_to_CPU_reset_ack_pipe_read_ack => ICACHE_to_CPU_reset_ack_pipe_read_ack,
    ICACHE_to_CPU_response_pipe_read_data => ICACHE_to_CPU_response_pipe_read_data,
    ICACHE_to_CPU_response_pipe_read_req => ICACHE_to_CPU_response_pipe_read_req,
    ICACHE_to_CPU_response_pipe_read_ack => ICACHE_to_CPU_response_pipe_read_ack,
    ICACHE_to_MMU_request_pipe_read_data => ICACHE_to_MMU_request_pipe_write_data,
    ICACHE_to_MMU_request_pipe_read_req => ICACHE_to_MMU_request_pipe_write_ack,
    ICACHE_to_MMU_request_pipe_read_ack => ICACHE_to_MMU_request_pipe_write_req,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
    MMU_to_ICACHE_response_pipe_write_data => MMU_to_ICACHE_response_pipe_read_data,
    MMU_to_ICACHE_response_pipe_write_req => MMU_to_ICACHE_response_pipe_read_ack,
    MMU_to_ICACHE_response_pipe_write_ack => MMU_to_ICACHE_response_pipe_read_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_data => NOBLOCK_CPU_to_ICACHE_command_pipe_write_data,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_req => NOBLOCK_CPU_to_ICACHE_command_pipe_write_req,
    NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack => NOBLOCK_CPU_to_ICACHE_command_pipe_write_ack,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_data,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_req,
    NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack => NOBLOCK_CPU_to_ICACHE_reset_pipe_write_ack,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  mmu_inst: dummy_mmu
  port map ( --
    CORE_BUS_REQUEST_pipe_read_data => CORE_BUS_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_read_req => CORE_BUS_REQUEST_pipe_read_req,
    CORE_BUS_REQUEST_pipe_read_ack => CORE_BUS_REQUEST_pipe_read_ack,
    CORE_BUS_RESPONSE_pipe_write_data => CORE_BUS_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_write_req => CORE_BUS_RESPONSE_pipe_write_req,
    CORE_BUS_RESPONSE_pipe_write_ack => CORE_BUS_RESPONSE_pipe_write_ack,
    INVALIDATE_REQUEST_pipe_write_data => INVALIDATE_REQUEST_pipe_write_data,
    INVALIDATE_REQUEST_pipe_write_req => INVALIDATE_REQUEST_pipe_write_req,
    INVALIDATE_REQUEST_pipe_write_ack => INVALIDATE_REQUEST_pipe_write_ack,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
    MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
    MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
    MMU_to_CPU_reset_ack_pipe_read_data => MMU_to_CPU_reset_ack_pipe_read_data,
    MMU_to_CPU_reset_ack_pipe_read_req => MMU_to_CPU_reset_ack_pipe_read_req,
    MMU_to_CPU_reset_ack_pipe_read_ack => MMU_to_CPU_reset_ack_pipe_read_ack,
    MMU_to_DCACHE_response_pipe_read_data => MMU_to_DCACHE_response_pipe_write_data,
    MMU_to_DCACHE_response_pipe_read_req => MMU_to_DCACHE_response_pipe_write_ack,
    MMU_to_DCACHE_response_pipe_read_ack => MMU_to_DCACHE_response_pipe_write_req,
    MMU_to_ICACHE_response_pipe_read_data => MMU_to_ICACHE_response_pipe_write_data,
    MMU_to_ICACHE_response_pipe_read_req => MMU_to_ICACHE_response_pipe_write_ack,
    MMU_to_ICACHE_response_pipe_read_ack => MMU_to_ICACHE_response_pipe_write_req,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_data => NOBLOCK_CPU_to_MMU_reset_pipe_write_data,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_req => NOBLOCK_CPU_to_MMU_reset_pipe_write_req,
    NOBLOCK_CPU_to_MMU_reset_pipe_write_ack => NOBLOCK_CPU_to_MMU_reset_pipe_write_ack,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack,
    NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
    NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
    NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  mmu_mux_inst: mmu_mux
  port map ( --
    DCACHE_to_MMU_request_pipe_write_data => DCACHE_to_MMU_request_pipe_read_data,
    DCACHE_to_MMU_request_pipe_write_req => DCACHE_to_MMU_request_pipe_read_ack,
    DCACHE_to_MMU_request_pipe_write_ack => DCACHE_to_MMU_request_pipe_read_req,
    ICACHE_to_MMU_request_pipe_write_data => ICACHE_to_MMU_request_pipe_read_data,
    ICACHE_to_MMU_request_pipe_write_req => ICACHE_to_MMU_request_pipe_read_ack,
    ICACHE_to_MMU_request_pipe_write_ack => ICACHE_to_MMU_request_pipe_read_req,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_data => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_data,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_req => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_ack,
    NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_read_ack => NOBLOCK_CACHE_TO_MMU_REQUEST_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  DCACHE_to_MMU_request_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DCACHE_to_MMU_request",
      num_reads => 1,
      num_writes => 1,
      data_width => 120,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => DCACHE_to_MMU_request_pipe_read_req,
      read_ack => DCACHE_to_MMU_request_pipe_read_ack,
      read_data => DCACHE_to_MMU_request_pipe_read_data,
      write_req => DCACHE_to_MMU_request_pipe_write_req,
      write_ack => DCACHE_to_MMU_request_pipe_write_ack,
      write_data => DCACHE_to_MMU_request_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ICACHE_to_MMU_request_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ICACHE_to_MMU_request",
      num_reads => 1,
      num_writes => 1,
      data_width => 48,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ICACHE_to_MMU_request_pipe_read_req,
      read_ack => ICACHE_to_MMU_request_pipe_read_ack,
      read_data => ICACHE_to_MMU_request_pipe_read_data,
      write_req => ICACHE_to_MMU_request_pipe_write_req,
      write_ack => ICACHE_to_MMU_request_pipe_write_ack,
      write_data => ICACHE_to_MMU_request_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
      read_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
      read_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
      write_req => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
      write_ack => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
      write_data => MMU_TO_DCACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_req,
      read_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_ack,
      read_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_read_data,
      write_req => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_req,
      write_ack => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_ack,
      write_data => MMU_TO_ICACHE_SYNONYM_INVALIDATE_PIPE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MMU_to_DCACHE_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_DCACHE_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 75,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MMU_to_DCACHE_response_pipe_read_req,
      read_ack => MMU_to_DCACHE_response_pipe_read_ack,
      read_data => MMU_to_DCACHE_response_pipe_read_data,
      write_req => MMU_to_DCACHE_response_pipe_write_req,
      write_ack => MMU_to_DCACHE_response_pipe_write_ack,
      write_data => MMU_to_DCACHE_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MMU_to_ICACHE_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MMU_to_ICACHE_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 93,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MMU_to_ICACHE_response_pipe_read_req,
      read_ack => MMU_to_ICACHE_response_pipe_read_ack,
      read_data => MMU_to_ICACHE_response_pipe_read_data,
      write_req => MMU_to_ICACHE_response_pipe_write_req,
      write_ack => MMU_to_ICACHE_response_pipe_write_ack,
      write_data => MMU_to_ICACHE_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe NOBLOCK_CACHE_TO_MMU_REQUEST depth set to 0 since it is a P2P pipe.
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_CACHE_TO_MMU_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_CACHE_TO_MMU_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 122,
      lifo_mode => false,
      signal_mode => false,
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
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_INVALIDATE_SLOT_RETURN_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_INVALIDATE_SLOT_RETURN",
      num_reads => 1,
      num_writes => 1,
      data_width => 1,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 4 --
    )
    port map( -- 
      read_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_req,
      read_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_ack,
      read_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_read_data,
      write_req => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_req,
      write_ack => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_ack,
      write_data => NOBLOCK_INVALIDATE_SLOT_RETURN_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 4 --
    )
    port map( -- 
      read_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
      read_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
      read_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
      write_req => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
      write_ack => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
      write_data => NOBLOCK_MMU_TO_DCACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE",
      num_reads => 1,
      num_writes => 1,
      data_width => 27,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 4 --
    )
    port map( -- 
      read_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_req,
      read_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_ack,
      read_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_read_data,
      write_req => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_req,
      write_ack => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_ack,
      write_data => NOBLOCK_MMU_TO_ICACHE_COHERENCE_INVALIDATE_PIPE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
