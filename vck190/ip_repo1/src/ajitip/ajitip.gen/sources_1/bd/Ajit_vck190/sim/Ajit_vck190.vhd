--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Sep  2 11:39:16 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target Ajit_vck190.bd
--Design      : Ajit_vck190
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ajit_vck190 is
  port (
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Ajit_vck190 : entity is "Ajit_vck190,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Ajit_vck190,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,da_axi_noc_cnt=1,da_board_cnt=8,da_cips_cnt=2,da_clkrst_cnt=15,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Ajit_vck190 : entity is "Ajit_vck190.hwdef";
end Ajit_vck190;

architecture STRUCTURE of Ajit_vck190 is
  component Ajit_vck190_fpga_top_0_1 is
  port (
    DEBUG_UART_RX : in STD_LOGIC;
    DEBUG_UART_TX : out STD_LOGIC;
    SERIAL_UART_RX : in STD_LOGIC;
    SERIAL_UART_TX : out STD_LOGIC;
    CPU_MODE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_clk : in STD_LOGIC
  );
  end component Ajit_vck190_fpga_top_0_1;
  component Ajit_vck190_axi_uartlite_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component Ajit_vck190_axi_uartlite_0_2;
  component Ajit_vck190_axi_uartlite_1_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component Ajit_vck190_axi_uartlite_1_2;
  component Ajit_vck190_versal_cips_0_3 is
  port (
    fpd_axi_noc_axi0_clk : out STD_LOGIC;
    pmc_axi_noc_axi0_clk : out STD_LOGIC;
    FPD_AXI_NOC_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_AXI_NOC_0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_AXI_NOC_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_AXI_NOC_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_AXI_NOC_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_AXI_NOC_0_awlock : out STD_LOGIC;
    FPD_AXI_NOC_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_AXI_NOC_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_AXI_NOC_0_awvalid : out STD_LOGIC;
    FPD_AXI_NOC_0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_AXI_NOC_0_awready : in STD_LOGIC;
    FPD_AXI_NOC_0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_AXI_NOC_0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_AXI_NOC_0_wlast : out STD_LOGIC;
    FPD_AXI_NOC_0_wvalid : out STD_LOGIC;
    FPD_AXI_NOC_0_wready : in STD_LOGIC;
    FPD_AXI_NOC_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_AXI_NOC_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_AXI_NOC_0_bvalid : in STD_LOGIC;
    FPD_AXI_NOC_0_bready : out STD_LOGIC;
    FPD_AXI_NOC_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_AXI_NOC_0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_AXI_NOC_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_AXI_NOC_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_AXI_NOC_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_AXI_NOC_0_arlock : out STD_LOGIC;
    FPD_AXI_NOC_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_AXI_NOC_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_AXI_NOC_0_arvalid : out STD_LOGIC;
    FPD_AXI_NOC_0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_AXI_NOC_0_arready : in STD_LOGIC;
    FPD_AXI_NOC_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_AXI_NOC_0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_AXI_NOC_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_AXI_NOC_0_rlast : in STD_LOGIC;
    FPD_AXI_NOC_0_rvalid : in STD_LOGIC;
    FPD_AXI_NOC_0_rready : out STD_LOGIC;
    FPD_AXI_NOC_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_AXI_NOC_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PMC_NOC_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PMC_NOC_AXI_0_arlock : out STD_LOGIC;
    PMC_NOC_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    PMC_NOC_AXI_0_arvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PMC_NOC_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PMC_NOC_AXI_0_awlock : out STD_LOGIC;
    PMC_NOC_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    PMC_NOC_AXI_0_awvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_bready : out STD_LOGIC;
    PMC_NOC_AXI_0_rready : out STD_LOGIC;
    PMC_NOC_AXI_0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    PMC_NOC_AXI_0_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_wlast : out STD_LOGIC;
    PMC_NOC_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PMC_NOC_AXI_0_wvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_arready : in STD_LOGIC;
    PMC_NOC_AXI_0_awready : in STD_LOGIC;
    PMC_NOC_AXI_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_buser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_bvalid : in STD_LOGIC;
    PMC_NOC_AXI_0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    PMC_NOC_AXI_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_rlast : in STD_LOGIC;
    PMC_NOC_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_ruser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    PMC_NOC_AXI_0_rvalid : in STD_LOGIC;
    PMC_NOC_AXI_0_wready : in STD_LOGIC;
    pl0_ref_clk : out STD_LOGIC
  );
  end component Ajit_vck190_versal_cips_0_3;
  component Ajit_vck190_rst_versal_cips_0_79M_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Ajit_vck190_rst_versal_cips_0_79M_3;
  component Ajit_vck190_mynoc_0 is
  port (
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    aclk1 : in STD_LOGIC
  );
  end component Ajit_vck190_mynoc_0;
  component Ajit_vck190_axi_uartlite_0_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component Ajit_vck190_axi_uartlite_0_smc_0;
  component Ajit_vck190_axi_uartlite_1_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component Ajit_vck190_axi_uartlite_1_smc_0;
  component Ajit_vck190_mynoc_1 is
  port (
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_buser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    aclk1 : in STD_LOGIC
  );
  end component Ajit_vck190_mynoc_1;
  signal axi_uartlite_0_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_uartlite_0_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_0_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_uartlite_0_tx : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_uartlite_1_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_uartlite_1_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_uartlite_1_tx : STD_LOGIC;
  signal fpga_top_0_CPU_MODE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fpga_top_0_DEBUG_UART_TX : STD_LOGIC;
  signal fpga_top_0_SERIAL_UART_TX : STD_LOGIC;
  signal mynoc1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mynoc1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc1_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mynoc1_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc1_M00_AXI_ARREADY : STD_LOGIC;
  signal mynoc1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc1_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal mynoc1_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mynoc1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc1_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mynoc1_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc1_M00_AXI_AWREADY : STD_LOGIC;
  signal mynoc1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc1_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal mynoc1_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_BVALID : STD_LOGIC;
  signal mynoc1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mynoc1_M00_AXI_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_RLAST : STD_LOGIC;
  signal mynoc1_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc1_M00_AXI_RVALID : STD_LOGIC;
  signal mynoc1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mynoc1_M00_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc1_M00_AXI_WREADY : STD_LOGIC;
  signal mynoc1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc1_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mynoc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mynoc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc_M00_AXI_ARREADY : STD_LOGIC;
  signal mynoc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal mynoc_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mynoc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mynoc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc_M00_AXI_AWREADY : STD_LOGIC;
  signal mynoc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mynoc_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal mynoc_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_BVALID : STD_LOGIC;
  signal mynoc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mynoc_M00_AXI_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_RLAST : STD_LOGIC;
  signal mynoc_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mynoc_M00_AXI_RVALID : STD_LOGIC;
  signal mynoc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mynoc_M00_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mynoc_M00_AXI_WREADY : STD_LOGIC;
  signal mynoc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mynoc_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_1 : STD_LOGIC;
  signal reset_clk_0_1 : STD_LOGIC;
  signal rst_versal_cips_0_79M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal versal_cips_0_FPD_AXI_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN : string;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WSTRB : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WVALID : signal is "true";
  signal versal_cips_0_fpd_axi_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_axi_noc_axi0_clk : signal is "true";
  signal versal_cips_0_pl0_ref_clk : STD_LOGIC;
  signal versal_cips_0_pmc_axi_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_pmc_axi_noc_axi0_clk : signal is "true";
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uartlite_0_smc_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_uartlite_0_smc_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_uartlite_1_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uartlite_1_smc_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_uartlite_1_smc_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_mynoc_M00_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mynoc_M00_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mynoc_S00_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_mynoc1_M00_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mynoc1_M00_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_versal_cips_0_79M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_versal_cips_0_79M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_versal_cips_0_79M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_versal_cips_0_79M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_versal_cips_0_PMC_NOC_AXI_0_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset_clk_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_CLK_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_clk_0 : signal is "XIL_INTERFACENAME RST.RESET_CLK_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  CPU_MODE_0(1 downto 0) <= fpga_top_0_CPU_MODE(1 downto 0);
  reset_0_1 <= reset_0;
  reset_clk_0_1 <= reset_clk_0;
axi_uartlite_0: component Ajit_vck190_axi_uartlite_0_2
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => fpga_top_0_SERIAL_UART_TX,
      s_axi_aclk => versal_cips_0_pl0_ref_clk,
      s_axi_araddr(3 downto 0) => axi_uartlite_0_smc_M00_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_versal_cips_0_79M_peripheral_aresetn(0),
      s_axi_arready => axi_uartlite_0_smc_M00_AXI_ARREADY,
      s_axi_arvalid => axi_uartlite_0_smc_M00_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_uartlite_0_smc_M00_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_uartlite_0_smc_M00_AXI_AWREADY,
      s_axi_awvalid => axi_uartlite_0_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_uartlite_0_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_uartlite_0_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_uartlite_0_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_uartlite_0_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_uartlite_0_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_uartlite_0_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_uartlite_0_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_uartlite_0_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_uartlite_0_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_uartlite_0_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_uartlite_0_smc_M00_AXI_WVALID,
      tx => axi_uartlite_0_tx
    );
axi_uartlite_0_smc: component Ajit_vck190_axi_uartlite_0_smc_0
     port map (
      M00_AXI_araddr(3 downto 0) => axi_uartlite_0_smc_M00_AXI_ARADDR(3 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_axi_uartlite_0_smc_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => axi_uartlite_0_smc_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_uartlite_0_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(3 downto 0) => axi_uartlite_0_smc_M00_AXI_AWADDR(3 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_axi_uartlite_0_smc_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => axi_uartlite_0_smc_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_uartlite_0_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_uartlite_0_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_uartlite_0_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_uartlite_0_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_uartlite_0_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_uartlite_0_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_uartlite_0_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_uartlite_0_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_uartlite_0_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_uartlite_0_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_uartlite_0_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_uartlite_0_smc_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => mynoc_M00_AXI_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => mynoc_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => mynoc_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => mynoc_M00_AXI_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => mynoc_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => mynoc_M00_AXI_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => mynoc_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => mynoc_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => mynoc_M00_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => mynoc_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => mynoc_M00_AXI_ARUSER(17 downto 0),
      S00_AXI_arvalid => mynoc_M00_AXI_ARVALID(0),
      S00_AXI_awaddr(63 downto 0) => mynoc_M00_AXI_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => mynoc_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => mynoc_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => mynoc_M00_AXI_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => mynoc_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => mynoc_M00_AXI_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => mynoc_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => mynoc_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => mynoc_M00_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => mynoc_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => mynoc_M00_AXI_AWUSER(17 downto 0),
      S00_AXI_awvalid => mynoc_M00_AXI_AWVALID(0),
      S00_AXI_bid(1 downto 0) => mynoc_M00_AXI_BID(1 downto 0),
      S00_AXI_bready => mynoc_M00_AXI_BREADY(0),
      S00_AXI_bresp(1 downto 0) => mynoc_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => mynoc_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => mynoc_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rid(1 downto 0) => mynoc_M00_AXI_RID(1 downto 0),
      S00_AXI_rlast => mynoc_M00_AXI_RLAST,
      S00_AXI_rready => mynoc_M00_AXI_RREADY(0),
      S00_AXI_rresp(1 downto 0) => mynoc_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => mynoc_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => mynoc_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => mynoc_M00_AXI_WLAST(0),
      S00_AXI_wready => mynoc_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => mynoc_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => mynoc_M00_AXI_WVALID(0),
      aclk => versal_cips_0_pl0_ref_clk,
      aresetn => rst_versal_cips_0_79M_peripheral_aresetn(0)
    );
axi_uartlite_1: component Ajit_vck190_axi_uartlite_1_2
     port map (
      interrupt => NLW_axi_uartlite_1_interrupt_UNCONNECTED,
      rx => fpga_top_0_DEBUG_UART_TX,
      s_axi_aclk => versal_cips_0_pl0_ref_clk,
      s_axi_araddr(3 downto 0) => axi_uartlite_1_smc_M00_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_versal_cips_0_79M_peripheral_aresetn(0),
      s_axi_arready => axi_uartlite_1_smc_M00_AXI_ARREADY,
      s_axi_arvalid => axi_uartlite_1_smc_M00_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_uartlite_1_smc_M00_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_uartlite_1_smc_M00_AXI_AWREADY,
      s_axi_awvalid => axi_uartlite_1_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_uartlite_1_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_uartlite_1_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_uartlite_1_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_uartlite_1_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_uartlite_1_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_uartlite_1_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_uartlite_1_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_uartlite_1_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_uartlite_1_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_uartlite_1_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_uartlite_1_smc_M00_AXI_WVALID,
      tx => axi_uartlite_1_tx
    );
axi_uartlite_1_smc: component Ajit_vck190_axi_uartlite_1_smc_0
     port map (
      M00_AXI_araddr(3 downto 0) => axi_uartlite_1_smc_M00_AXI_ARADDR(3 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_axi_uartlite_1_smc_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => axi_uartlite_1_smc_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_uartlite_1_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(3 downto 0) => axi_uartlite_1_smc_M00_AXI_AWADDR(3 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_axi_uartlite_1_smc_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => axi_uartlite_1_smc_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_uartlite_1_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_uartlite_1_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_uartlite_1_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_uartlite_1_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_uartlite_1_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_uartlite_1_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_uartlite_1_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_uartlite_1_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_uartlite_1_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_uartlite_1_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_uartlite_1_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_uartlite_1_smc_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => mynoc1_M00_AXI_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => mynoc1_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => mynoc1_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => mynoc1_M00_AXI_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => mynoc1_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => mynoc1_M00_AXI_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => mynoc1_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => mynoc1_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => mynoc1_M00_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => mynoc1_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => mynoc1_M00_AXI_ARUSER(17 downto 0),
      S00_AXI_arvalid => mynoc1_M00_AXI_ARVALID(0),
      S00_AXI_awaddr(63 downto 0) => mynoc1_M00_AXI_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => mynoc1_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => mynoc1_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => mynoc1_M00_AXI_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => mynoc1_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => mynoc1_M00_AXI_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => mynoc1_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => mynoc1_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => mynoc1_M00_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => mynoc1_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => mynoc1_M00_AXI_AWUSER(17 downto 0),
      S00_AXI_awvalid => mynoc1_M00_AXI_AWVALID(0),
      S00_AXI_bid(1 downto 0) => mynoc1_M00_AXI_BID(1 downto 0),
      S00_AXI_bready => mynoc1_M00_AXI_BREADY(0),
      S00_AXI_bresp(1 downto 0) => mynoc1_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => mynoc1_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => mynoc1_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rid(1 downto 0) => mynoc1_M00_AXI_RID(1 downto 0),
      S00_AXI_rlast => mynoc1_M00_AXI_RLAST,
      S00_AXI_rready => mynoc1_M00_AXI_RREADY(0),
      S00_AXI_rresp(1 downto 0) => mynoc1_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => mynoc1_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => mynoc1_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => mynoc1_M00_AXI_WLAST(0),
      S00_AXI_wready => mynoc1_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => mynoc1_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => mynoc1_M00_AXI_WVALID(0),
      aclk => versal_cips_0_pl0_ref_clk,
      aresetn => rst_versal_cips_0_79M_peripheral_aresetn(0)
    );
fpga_top_0: component Ajit_vck190_fpga_top_0_1
     port map (
      CPU_MODE(1 downto 0) => fpga_top_0_CPU_MODE(1 downto 0),
      DEBUG_UART_RX => axi_uartlite_1_tx,
      DEBUG_UART_TX => fpga_top_0_DEBUG_UART_TX,
      SERIAL_UART_RX => axi_uartlite_0_tx,
      SERIAL_UART_TX => fpga_top_0_SERIAL_UART_TX,
      clk_n => versal_cips_0_pl0_ref_clk,
      clk_p => versal_cips_0_pl0_ref_clk,
      reset => reset_0_1,
      reset_clk => reset_clk_0_1
    );
mynoc: component Ajit_vck190_mynoc_0
     port map (
      M00_AXI_araddr(63 downto 0) => mynoc_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => mynoc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => mynoc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => mynoc_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => mynoc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => mynoc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => mynoc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => mynoc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready(0) => mynoc_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => NLW_mynoc_M00_AXI_arregion_UNCONNECTED(3 downto 0),
      M00_AXI_arsize(2 downto 0) => mynoc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(17 downto 0) => mynoc_M00_AXI_ARUSER(17 downto 0),
      M00_AXI_arvalid(0) => mynoc_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(63 downto 0) => mynoc_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => mynoc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => mynoc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => mynoc_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => mynoc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => mynoc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => mynoc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => mynoc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready(0) => mynoc_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => NLW_mynoc_M00_AXI_awregion_UNCONNECTED(3 downto 0),
      M00_AXI_awsize(2 downto 0) => mynoc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(17 downto 0) => mynoc_M00_AXI_AWUSER(17 downto 0),
      M00_AXI_awvalid(0) => mynoc_M00_AXI_AWVALID(0),
      M00_AXI_bid(1 downto 0) => mynoc_M00_AXI_BID(1 downto 0),
      M00_AXI_bready(0) => mynoc_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => mynoc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => mynoc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => mynoc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(1 downto 0) => mynoc_M00_AXI_RID(1 downto 0),
      M00_AXI_rlast(0) => mynoc_M00_AXI_RLAST,
      M00_AXI_rready(0) => mynoc_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => mynoc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => mynoc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => mynoc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast(0) => mynoc_M00_AXI_WLAST(0),
      M00_AXI_wready(0) => mynoc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => mynoc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => mynoc_M00_AXI_WVALID(0),
      S00_AXI_araddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => versal_cips_0_FPD_AXI_NOC_0_ARLOCK,
      S00_AXI_arprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARQOS(3 downto 0),
      S00_AXI_arready(0) => versal_cips_0_FPD_AXI_NOC_0_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => B"0000",
      S00_AXI_arsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARUSER(17 downto 0),
      S00_AXI_arvalid(0) => versal_cips_0_FPD_AXI_NOC_0_ARVALID,
      S00_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => versal_cips_0_FPD_AXI_NOC_0_AWLOCK,
      S00_AXI_awprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWQOS(3 downto 0),
      S00_AXI_awready(0) => versal_cips_0_FPD_AXI_NOC_0_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => B"0000",
      S00_AXI_awsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWUSER(17 downto 0),
      S00_AXI_awvalid(0) => versal_cips_0_FPD_AXI_NOC_0_AWVALID,
      S00_AXI_bid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BID(15 downto 0),
      S00_AXI_bready(0) => versal_cips_0_FPD_AXI_NOC_0_BREADY,
      S00_AXI_bresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => versal_cips_0_FPD_AXI_NOC_0_BVALID(0),
      S00_AXI_rdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RID(15 downto 0),
      S00_AXI_rlast(0) => versal_cips_0_FPD_AXI_NOC_0_RLAST(0),
      S00_AXI_rready(0) => versal_cips_0_FPD_AXI_NOC_0_RREADY,
      S00_AXI_rresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RRESP(1 downto 0),
      S00_AXI_ruser(16 downto 0) => NLW_mynoc_S00_AXI_ruser_UNCONNECTED(16 downto 0),
      S00_AXI_rvalid(0) => versal_cips_0_FPD_AXI_NOC_0_RVALID(0),
      S00_AXI_wdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WDATA(127 downto 0),
      S00_AXI_wlast(0) => versal_cips_0_FPD_AXI_NOC_0_WLAST,
      S00_AXI_wready(0) => versal_cips_0_FPD_AXI_NOC_0_WREADY(0),
      S00_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WSTRB(15 downto 0),
      S00_AXI_wuser(16 downto 0) => B"00000000000000000",
      S00_AXI_wvalid(0) => versal_cips_0_FPD_AXI_NOC_0_WVALID,
      aclk0 => versal_cips_0_fpd_axi_noc_axi0_clk,
      aclk1 => versal_cips_0_pl0_ref_clk
    );
mynoc1: component Ajit_vck190_mynoc_1
     port map (
      M00_AXI_araddr(63 downto 0) => mynoc1_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => mynoc1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => mynoc1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => mynoc1_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => mynoc1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => mynoc1_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => mynoc1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => mynoc1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready(0) => mynoc1_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => NLW_mynoc1_M00_AXI_arregion_UNCONNECTED(3 downto 0),
      M00_AXI_arsize(2 downto 0) => mynoc1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(17 downto 0) => mynoc1_M00_AXI_ARUSER(17 downto 0),
      M00_AXI_arvalid(0) => mynoc1_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(63 downto 0) => mynoc1_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => mynoc1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => mynoc1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => mynoc1_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => mynoc1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => mynoc1_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => mynoc1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => mynoc1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready(0) => mynoc1_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => NLW_mynoc1_M00_AXI_awregion_UNCONNECTED(3 downto 0),
      M00_AXI_awsize(2 downto 0) => mynoc1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(17 downto 0) => mynoc1_M00_AXI_AWUSER(17 downto 0),
      M00_AXI_awvalid(0) => mynoc1_M00_AXI_AWVALID(0),
      M00_AXI_bid(1 downto 0) => mynoc1_M00_AXI_BID(1 downto 0),
      M00_AXI_bready(0) => mynoc1_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => mynoc1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => mynoc1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => mynoc1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(1 downto 0) => mynoc1_M00_AXI_RID(1 downto 0),
      M00_AXI_rlast(0) => mynoc1_M00_AXI_RLAST,
      M00_AXI_rready(0) => mynoc1_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => mynoc1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => mynoc1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => mynoc1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast(0) => mynoc1_M00_AXI_WLAST(0),
      M00_AXI_wready(0) => mynoc1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => mynoc1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => mynoc1_M00_AXI_WVALID(0),
      S00_AXI_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      S00_AXI_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      S00_AXI_arready(0) => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      S00_AXI_arvalid(0) => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      S00_AXI_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      S00_AXI_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      S00_AXI_awready(0) => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      S00_AXI_awvalid(0) => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      S00_AXI_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      S00_AXI_bready(0) => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      S00_AXI_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      S00_AXI_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      S00_AXI_bvalid(0) => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      S00_AXI_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      S00_AXI_rlast(0) => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      S00_AXI_rready(0) => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      S00_AXI_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      S00_AXI_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      S00_AXI_rvalid(0) => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      S00_AXI_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      S00_AXI_wlast(0) => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      S00_AXI_wready(0) => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      S00_AXI_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      S00_AXI_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      S00_AXI_wvalid(0) => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      aclk0 => versal_cips_0_pl0_ref_clk,
      aclk1 => versal_cips_0_pmc_axi_noc_axi0_clk
    );
rst_versal_cips_0_79M: component Ajit_vck190_rst_versal_cips_0_79M_3
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_versal_cips_0_79M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_0_1,
      interconnect_aresetn(0) => NLW_rst_versal_cips_0_79M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_versal_cips_0_79M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_versal_cips_0_79M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_versal_cips_0_79M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => versal_cips_0_pl0_ref_clk
    );
versal_cips_0: component Ajit_vck190_versal_cips_0_3
     port map (
      FPD_AXI_NOC_0_araddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARADDR(63 downto 0),
      FPD_AXI_NOC_0_arburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARBURST(1 downto 0),
      FPD_AXI_NOC_0_arcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARCACHE(3 downto 0),
      FPD_AXI_NOC_0_arid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARID(15 downto 0),
      FPD_AXI_NOC_0_arlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARLEN(7 downto 0),
      FPD_AXI_NOC_0_arlock => versal_cips_0_FPD_AXI_NOC_0_ARLOCK,
      FPD_AXI_NOC_0_arprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARPROT(2 downto 0),
      FPD_AXI_NOC_0_arqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARQOS(3 downto 0),
      FPD_AXI_NOC_0_arready => versal_cips_0_FPD_AXI_NOC_0_ARREADY(0),
      FPD_AXI_NOC_0_arsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARSIZE(2 downto 0),
      FPD_AXI_NOC_0_aruser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARUSER(17 downto 0),
      FPD_AXI_NOC_0_arvalid => versal_cips_0_FPD_AXI_NOC_0_ARVALID,
      FPD_AXI_NOC_0_awaddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWADDR(63 downto 0),
      FPD_AXI_NOC_0_awburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWBURST(1 downto 0),
      FPD_AXI_NOC_0_awcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWCACHE(3 downto 0),
      FPD_AXI_NOC_0_awid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWID(15 downto 0),
      FPD_AXI_NOC_0_awlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWLEN(7 downto 0),
      FPD_AXI_NOC_0_awlock => versal_cips_0_FPD_AXI_NOC_0_AWLOCK,
      FPD_AXI_NOC_0_awprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWPROT(2 downto 0),
      FPD_AXI_NOC_0_awqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWQOS(3 downto 0),
      FPD_AXI_NOC_0_awready => versal_cips_0_FPD_AXI_NOC_0_AWREADY(0),
      FPD_AXI_NOC_0_awsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWSIZE(2 downto 0),
      FPD_AXI_NOC_0_awuser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWUSER(17 downto 0),
      FPD_AXI_NOC_0_awvalid => versal_cips_0_FPD_AXI_NOC_0_AWVALID,
      FPD_AXI_NOC_0_bid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BID(15 downto 0),
      FPD_AXI_NOC_0_bready => versal_cips_0_FPD_AXI_NOC_0_BREADY,
      FPD_AXI_NOC_0_bresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BRESP(1 downto 0),
      FPD_AXI_NOC_0_bvalid => versal_cips_0_FPD_AXI_NOC_0_BVALID(0),
      FPD_AXI_NOC_0_rdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RDATA(127 downto 0),
      FPD_AXI_NOC_0_rid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RID(15 downto 0),
      FPD_AXI_NOC_0_rlast => versal_cips_0_FPD_AXI_NOC_0_RLAST(0),
      FPD_AXI_NOC_0_rready => versal_cips_0_FPD_AXI_NOC_0_RREADY,
      FPD_AXI_NOC_0_rresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RRESP(1 downto 0),
      FPD_AXI_NOC_0_rvalid => versal_cips_0_FPD_AXI_NOC_0_RVALID(0),
      FPD_AXI_NOC_0_wdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WDATA(127 downto 0),
      FPD_AXI_NOC_0_wlast => versal_cips_0_FPD_AXI_NOC_0_WLAST,
      FPD_AXI_NOC_0_wready => versal_cips_0_FPD_AXI_NOC_0_WREADY(0),
      FPD_AXI_NOC_0_wstrb(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WSTRB(15 downto 0),
      FPD_AXI_NOC_0_wvalid => versal_cips_0_FPD_AXI_NOC_0_WVALID,
      PMC_NOC_AXI_0_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      PMC_NOC_AXI_0_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      PMC_NOC_AXI_0_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      PMC_NOC_AXI_0_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      PMC_NOC_AXI_0_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      PMC_NOC_AXI_0_arlock => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      PMC_NOC_AXI_0_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      PMC_NOC_AXI_0_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      PMC_NOC_AXI_0_arready => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      PMC_NOC_AXI_0_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      PMC_NOC_AXI_0_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      PMC_NOC_AXI_0_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      PMC_NOC_AXI_0_arvalid => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      PMC_NOC_AXI_0_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      PMC_NOC_AXI_0_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      PMC_NOC_AXI_0_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      PMC_NOC_AXI_0_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      PMC_NOC_AXI_0_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      PMC_NOC_AXI_0_awlock => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      PMC_NOC_AXI_0_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      PMC_NOC_AXI_0_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      PMC_NOC_AXI_0_awready => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      PMC_NOC_AXI_0_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      PMC_NOC_AXI_0_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      PMC_NOC_AXI_0_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      PMC_NOC_AXI_0_awvalid => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      PMC_NOC_AXI_0_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      PMC_NOC_AXI_0_bready => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      PMC_NOC_AXI_0_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      PMC_NOC_AXI_0_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      PMC_NOC_AXI_0_bvalid => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      PMC_NOC_AXI_0_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      PMC_NOC_AXI_0_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      PMC_NOC_AXI_0_rlast => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      PMC_NOC_AXI_0_rready => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      PMC_NOC_AXI_0_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      PMC_NOC_AXI_0_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      PMC_NOC_AXI_0_rvalid => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      PMC_NOC_AXI_0_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      PMC_NOC_AXI_0_wid(15 downto 0) => NLW_versal_cips_0_PMC_NOC_AXI_0_wid_UNCONNECTED(15 downto 0),
      PMC_NOC_AXI_0_wlast => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      PMC_NOC_AXI_0_wready => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      PMC_NOC_AXI_0_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      PMC_NOC_AXI_0_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      PMC_NOC_AXI_0_wvalid => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      fpd_axi_noc_axi0_clk => versal_cips_0_fpd_axi_noc_axi0_clk,
      pl0_ref_clk => versal_cips_0_pl0_ref_clk,
      pmc_axi_noc_axi0_clk => versal_cips_0_pmc_axi_noc_axi0_clk
    );
end STRUCTURE;
