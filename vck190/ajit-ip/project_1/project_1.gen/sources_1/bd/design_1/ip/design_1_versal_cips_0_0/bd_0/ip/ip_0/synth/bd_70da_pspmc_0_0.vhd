-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:pspmc:1.4
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_70da_pspmc_0_0 IS
  PORT (
    pl0_ref_clk : OUT STD_LOGIC;
    fpd_axi_noc_axi1_clk : OUT STD_LOGIC;
    fpd_axi_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_axi_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_axi_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi1_awlock : OUT STD_LOGIC;
    fpd_axi_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi1_awvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_axi_noc_axi1_awready : IN STD_LOGIC;
    fpd_axi_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_axi_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi1_wlast : OUT STD_LOGIC;
    fpd_axi_noc_axi1_wvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi1_wready : IN STD_LOGIC;
    fpd_axi_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi1_bvalid : IN STD_LOGIC;
    fpd_axi_noc_axi1_bready : OUT STD_LOGIC;
    fpd_axi_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_axi_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_axi_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi1_arlock : OUT STD_LOGIC;
    fpd_axi_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi1_arvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_axi_noc_axi1_arready : IN STD_LOGIC;
    fpd_axi_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_axi_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi1_rlast : IN STD_LOGIC;
    fpd_axi_noc_axi1_rvalid : IN STD_LOGIC;
    fpd_axi_noc_axi1_rready : OUT STD_LOGIC;
    fpd_axi_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_axi_noc_axi0_clk : OUT STD_LOGIC;
    pmc_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    pmc_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pmc_noc_axi0_arlock : OUT STD_LOGIC;
    pmc_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    pmc_noc_axi0_arvalid : OUT STD_LOGIC;
    pmc_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    pmc_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pmc_noc_axi0_awlock : OUT STD_LOGIC;
    pmc_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    pmc_noc_axi0_awvalid : OUT STD_LOGIC;
    pmc_noc_axi0_bready : OUT STD_LOGIC;
    pmc_noc_axi0_rready : OUT STD_LOGIC;
    pmc_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    pmc_noc_axi0_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_wlast : OUT STD_LOGIC;
    pmc_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    pmc_noc_axi0_wvalid : OUT STD_LOGIC;
    pmc_noc_axi0_arready : IN STD_LOGIC;
    pmc_noc_axi0_awready : IN STD_LOGIC;
    pmc_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_bvalid : IN STD_LOGIC;
    pmc_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    pmc_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_rlast : IN STD_LOGIC;
    pmc_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    pmc_noc_axi0_rvalid : IN STD_LOGIC;
    pmc_noc_axi0_wready : IN STD_LOGIC;
    lpd_gpio_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    lpd_gpio_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    lpd_gpio_t : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    cpm_osc_clk_div2 : OUT STD_LOGIC;
    m_axi0_ps_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi0_ps_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi0_ps_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi0_ps_arlock : IN STD_LOGIC;
    m_axi0_ps_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi0_ps_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_arready : OUT STD_LOGIC;
    m_axi0_ps_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi0_ps_aruser : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi0_ps_arvalid : IN STD_LOGIC;
    m_axi0_ps_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi0_ps_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi0_ps_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi0_ps_awlock : IN STD_LOGIC;
    m_axi0_ps_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi0_ps_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_awready : OUT STD_LOGIC;
    m_axi0_ps_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi0_ps_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi0_ps_awuser : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi0_ps_awvalid : IN STD_LOGIC;
    m_axi0_ps_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_bready : IN STD_LOGIC;
    m_axi0_ps_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi0_ps_buser : OUT STD_LOGIC;
    m_axi0_ps_bvalid : OUT STD_LOGIC;
    m_axi0_ps_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi0_ps_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_rlast : OUT STD_LOGIC;
    m_axi0_ps_rready : IN STD_LOGIC;
    m_axi0_ps_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi0_ps_ruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    m_axi0_ps_rvalid : OUT STD_LOGIC;
    m_axi0_ps_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi0_ps_wid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_wlast : IN STD_LOGIC;
    m_axi0_ps_wready : OUT STD_LOGIC;
    m_axi0_ps_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi0_ps_wuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    m_axi0_ps_wvalid : IN STD_LOGIC;
    m_axi1_ps_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi1_ps_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi1_ps_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi1_ps_arlock : IN STD_LOGIC;
    m_axi1_ps_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi1_ps_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_arready : OUT STD_LOGIC;
    m_axi1_ps_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi1_ps_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    m_axi1_ps_arvalid : IN STD_LOGIC;
    m_axi1_ps_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi1_ps_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi1_ps_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi1_ps_awlock : IN STD_LOGIC;
    m_axi1_ps_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi1_ps_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_awready : OUT STD_LOGIC;
    m_axi1_ps_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi1_ps_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi1_ps_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    m_axi1_ps_awvalid : IN STD_LOGIC;
    m_axi1_ps_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_bready : IN STD_LOGIC;
    m_axi1_ps_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi1_ps_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_bvalid : OUT STD_LOGIC;
    m_axi1_ps_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi1_ps_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_rlast : OUT STD_LOGIC;
    m_axi1_ps_rready : IN STD_LOGIC;
    m_axi1_ps_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi1_ps_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    m_axi1_ps_rvalid : OUT STD_LOGIC;
    m_axi1_ps_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi1_ps_wid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_wlast : IN STD_LOGIC;
    m_axi1_ps_wready : OUT STD_LOGIC;
    m_axi1_ps_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi1_ps_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    m_axi1_ps_wvalid : IN STD_LOGIC;
    cpmps_corr_irq : IN STD_LOGIC;
    cpmps_misc_irq : IN STD_LOGIC;
    cpmps_uncorr_irq : IN STD_LOGIC;
    s_axi_cfg_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axi_cfg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_cfg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_cfg_arlock : OUT STD_LOGIC;
    s_axi_cfg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_cfg_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_arready : IN STD_LOGIC;
    s_axi_cfg_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_cfg_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_arvalid : OUT STD_LOGIC;
    s_axi_cfg_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axi_cfg_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_cfg_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_cfg_awlock : OUT STD_LOGIC;
    s_axi_cfg_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_cfg_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_awready : IN STD_LOGIC;
    s_axi_cfg_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_cfg_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_awvalid : OUT STD_LOGIC;
    s_axi_cfg_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_bready : OUT STD_LOGIC;
    s_axi_cfg_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_cfg_buser : IN STD_LOGIC;
    s_axi_cfg_bvalid : IN STD_LOGIC;
    s_axi_cfg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_cfg_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_rlast : IN STD_LOGIC;
    s_axi_cfg_rready : OUT STD_LOGIC;
    s_axi_cfg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_cfg_ruser : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_cfg_rvalid : IN STD_LOGIC;
    s_axi_cfg_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_cfg_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_cfg_wlast : OUT STD_LOGIC;
    s_axi_cfg_wready : IN STD_LOGIC;
    s_axi_cfg_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_cfg_wuser : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_cfg_wvalid : OUT STD_LOGIC;
    xpipe0_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe2_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe3_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe4_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe5_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe6_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe7_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe8_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe9_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe10_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe11_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe12_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe13_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe14_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe15_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_phystatus : IN STD_LOGIC;
    xpipe2_phystatus : IN STD_LOGIC;
    xpipe3_phystatus : IN STD_LOGIC;
    xpipe4_phystatus : IN STD_LOGIC;
    xpipe5_phystatus : IN STD_LOGIC;
    xpipe6_phystatus : IN STD_LOGIC;
    xpipe7_phystatus : IN STD_LOGIC;
    xpipe8_phystatus : IN STD_LOGIC;
    xpipe9_phystatus : IN STD_LOGIC;
    xpipe10_phystatus : IN STD_LOGIC;
    xpipe11_phystatus : IN STD_LOGIC;
    xpipe12_phystatus : IN STD_LOGIC;
    xpipe13_phystatus : IN STD_LOGIC;
    xpipe14_phystatus : IN STD_LOGIC;
    xpipe15_phystatus : IN STD_LOGIC;
    xpipe0_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe2_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe3_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe4_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe5_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe6_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe7_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe8_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe9_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe10_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe11_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe12_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe13_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe14_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe15_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe0_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe1_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe2_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe3_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe4_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe5_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe6_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe7_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe8_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe9_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe10_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe11_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe12_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe13_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe14_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe15_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe0_rx_datavalid : IN STD_LOGIC;
    xpipe1_rx_datavalid : IN STD_LOGIC;
    xpipe2_rx_datavalid : IN STD_LOGIC;
    xpipe3_rx_datavalid : IN STD_LOGIC;
    xpipe4_rx_datavalid : IN STD_LOGIC;
    xpipe5_rx_datavalid : IN STD_LOGIC;
    xpipe6_rx_datavalid : IN STD_LOGIC;
    xpipe7_rx_datavalid : IN STD_LOGIC;
    xpipe8_rx_datavalid : IN STD_LOGIC;
    xpipe9_rx_datavalid : IN STD_LOGIC;
    xpipe10_rx_datavalid : IN STD_LOGIC;
    xpipe11_rx_datavalid : IN STD_LOGIC;
    xpipe12_rx_datavalid : IN STD_LOGIC;
    xpipe13_rx_datavalid : IN STD_LOGIC;
    xpipe14_rx_datavalid : IN STD_LOGIC;
    xpipe15_rx_datavalid : IN STD_LOGIC;
    xpipe0_rx_elecidle : IN STD_LOGIC;
    xpipe1_rx_elecidle : IN STD_LOGIC;
    xpipe2_rx_elecidle : IN STD_LOGIC;
    xpipe3_rx_elecidle : IN STD_LOGIC;
    xpipe4_rx_elecidle : IN STD_LOGIC;
    xpipe5_rx_elecidle : IN STD_LOGIC;
    xpipe6_rx_elecidle : IN STD_LOGIC;
    xpipe7_rx_elecidle : IN STD_LOGIC;
    xpipe8_rx_elecidle : IN STD_LOGIC;
    xpipe9_rx_elecidle : IN STD_LOGIC;
    xpipe10_rx_elecidle : IN STD_LOGIC;
    xpipe11_rx_elecidle : IN STD_LOGIC;
    xpipe12_rx_elecidle : IN STD_LOGIC;
    xpipe13_rx_elecidle : IN STD_LOGIC;
    xpipe14_rx_elecidle : IN STD_LOGIC;
    xpipe15_rx_elecidle : IN STD_LOGIC;
    xpipe0_rx_polarity : OUT STD_LOGIC;
    xpipe1_rx_polarity : OUT STD_LOGIC;
    xpipe2_rx_polarity : OUT STD_LOGIC;
    xpipe3_rx_polarity : OUT STD_LOGIC;
    xpipe4_rx_polarity : OUT STD_LOGIC;
    xpipe5_rx_polarity : OUT STD_LOGIC;
    xpipe6_rx_polarity : OUT STD_LOGIC;
    xpipe7_rx_polarity : OUT STD_LOGIC;
    xpipe8_rx_polarity : OUT STD_LOGIC;
    xpipe9_rx_polarity : OUT STD_LOGIC;
    xpipe10_rx_polarity : OUT STD_LOGIC;
    xpipe11_rx_polarity : OUT STD_LOGIC;
    xpipe12_rx_polarity : OUT STD_LOGIC;
    xpipe13_rx_polarity : OUT STD_LOGIC;
    xpipe14_rx_polarity : OUT STD_LOGIC;
    xpipe15_rx_polarity : OUT STD_LOGIC;
    xpipe0_rx_startblock : IN STD_LOGIC;
    xpipe1_rx_startblock : IN STD_LOGIC;
    xpipe2_rx_startblock : IN STD_LOGIC;
    xpipe3_rx_startblock : IN STD_LOGIC;
    xpipe4_rx_startblock : IN STD_LOGIC;
    xpipe5_rx_startblock : IN STD_LOGIC;
    xpipe6_rx_startblock : IN STD_LOGIC;
    xpipe7_rx_startblock : IN STD_LOGIC;
    xpipe8_rx_startblock : IN STD_LOGIC;
    xpipe9_rx_startblock : IN STD_LOGIC;
    xpipe10_rx_startblock : IN STD_LOGIC;
    xpipe11_rx_startblock : IN STD_LOGIC;
    xpipe12_rx_startblock : IN STD_LOGIC;
    xpipe13_rx_startblock : IN STD_LOGIC;
    xpipe14_rx_startblock : IN STD_LOGIC;
    xpipe15_rx_startblock : IN STD_LOGIC;
    xpipe0_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe1_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe2_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe3_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe4_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe5_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe6_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe7_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe8_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe9_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe10_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe11_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe12_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe13_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe14_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe15_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe0_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe2_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe3_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe4_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe5_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe6_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe7_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe8_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe9_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe10_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe11_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe12_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe13_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe14_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe15_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe0_rx_termination : OUT STD_LOGIC;
    xpipe1_rx_termination : OUT STD_LOGIC;
    xpipe2_rx_termination : OUT STD_LOGIC;
    xpipe3_rx_termination : OUT STD_LOGIC;
    xpipe4_rx_termination : OUT STD_LOGIC;
    xpipe5_rx_termination : OUT STD_LOGIC;
    xpipe6_rx_termination : OUT STD_LOGIC;
    xpipe7_rx_termination : OUT STD_LOGIC;
    xpipe8_rx_termination : OUT STD_LOGIC;
    xpipe9_rx_termination : OUT STD_LOGIC;
    xpipe10_rx_termination : OUT STD_LOGIC;
    xpipe11_rx_termination : OUT STD_LOGIC;
    xpipe12_rx_termination : OUT STD_LOGIC;
    xpipe13_rx_termination : OUT STD_LOGIC;
    xpipe14_rx_termination : OUT STD_LOGIC;
    xpipe15_rx_termination : OUT STD_LOGIC;
    xpipe0_rx_valid : IN STD_LOGIC;
    xpipe1_rx_valid : IN STD_LOGIC;
    xpipe2_rx_valid : IN STD_LOGIC;
    xpipe3_rx_valid : IN STD_LOGIC;
    xpipe4_rx_valid : IN STD_LOGIC;
    xpipe5_rx_valid : IN STD_LOGIC;
    xpipe6_rx_valid : IN STD_LOGIC;
    xpipe7_rx_valid : IN STD_LOGIC;
    xpipe8_rx_valid : IN STD_LOGIC;
    xpipe9_rx_valid : IN STD_LOGIC;
    xpipe10_rx_valid : IN STD_LOGIC;
    xpipe11_rx_valid : IN STD_LOGIC;
    xpipe12_rx_valid : IN STD_LOGIC;
    xpipe13_rx_valid : IN STD_LOGIC;
    xpipe14_rx_valid : IN STD_LOGIC;
    xpipe15_rx_valid : IN STD_LOGIC;
    xpipe0_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe2_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe3_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe4_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe5_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe6_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe7_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe8_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe9_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe10_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe11_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe12_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe13_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe14_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe15_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe0_tx_compliance : OUT STD_LOGIC;
    xpipe1_tx_compliance : OUT STD_LOGIC;
    xpipe2_tx_compliance : OUT STD_LOGIC;
    xpipe3_tx_compliance : OUT STD_LOGIC;
    xpipe4_tx_compliance : OUT STD_LOGIC;
    xpipe5_tx_compliance : OUT STD_LOGIC;
    xpipe6_tx_compliance : OUT STD_LOGIC;
    xpipe7_tx_compliance : OUT STD_LOGIC;
    xpipe8_tx_compliance : OUT STD_LOGIC;
    xpipe9_tx_compliance : OUT STD_LOGIC;
    xpipe10_tx_compliance : OUT STD_LOGIC;
    xpipe11_tx_compliance : OUT STD_LOGIC;
    xpipe12_tx_compliance : OUT STD_LOGIC;
    xpipe13_tx_compliance : OUT STD_LOGIC;
    xpipe14_tx_compliance : OUT STD_LOGIC;
    xpipe15_tx_compliance : OUT STD_LOGIC;
    xpipe0_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe1_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe2_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe3_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe4_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe5_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe6_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe7_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe8_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe9_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe10_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe11_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe12_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe13_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe14_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe15_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    xpipe0_tx_datavalid : OUT STD_LOGIC;
    xpipe1_tx_datavalid : OUT STD_LOGIC;
    xpipe2_tx_datavalid : OUT STD_LOGIC;
    xpipe3_tx_datavalid : OUT STD_LOGIC;
    xpipe4_tx_datavalid : OUT STD_LOGIC;
    xpipe5_tx_datavalid : OUT STD_LOGIC;
    xpipe6_tx_datavalid : OUT STD_LOGIC;
    xpipe7_tx_datavalid : OUT STD_LOGIC;
    xpipe8_tx_datavalid : OUT STD_LOGIC;
    xpipe9_tx_datavalid : OUT STD_LOGIC;
    xpipe10_tx_datavalid : OUT STD_LOGIC;
    xpipe11_tx_datavalid : OUT STD_LOGIC;
    xpipe12_tx_datavalid : OUT STD_LOGIC;
    xpipe13_tx_datavalid : OUT STD_LOGIC;
    xpipe14_tx_datavalid : OUT STD_LOGIC;
    xpipe15_tx_datavalid : OUT STD_LOGIC;
    xpipe0_tx_deemph : OUT STD_LOGIC;
    xpipe1_tx_deemph : OUT STD_LOGIC;
    xpipe2_tx_deemph : OUT STD_LOGIC;
    xpipe3_tx_deemph : OUT STD_LOGIC;
    xpipe4_tx_deemph : OUT STD_LOGIC;
    xpipe5_tx_deemph : OUT STD_LOGIC;
    xpipe6_tx_deemph : OUT STD_LOGIC;
    xpipe7_tx_deemph : OUT STD_LOGIC;
    xpipe8_tx_deemph : OUT STD_LOGIC;
    xpipe9_tx_deemph : OUT STD_LOGIC;
    xpipe10_tx_deemph : OUT STD_LOGIC;
    xpipe11_tx_deemph : OUT STD_LOGIC;
    xpipe12_tx_deemph : OUT STD_LOGIC;
    xpipe13_tx_deemph : OUT STD_LOGIC;
    xpipe14_tx_deemph : OUT STD_LOGIC;
    xpipe15_tx_deemph : OUT STD_LOGIC;
    xpipe0_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe1_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe2_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe3_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe4_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe5_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe6_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe7_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe8_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe9_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe10_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe11_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe12_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe13_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe14_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe15_tx_detectrxloopback : OUT STD_LOGIC;
    xpipe0_tx_elecidle : OUT STD_LOGIC;
    xpipe1_tx_elecidle : OUT STD_LOGIC;
    xpipe2_tx_elecidle : OUT STD_LOGIC;
    xpipe3_tx_elecidle : OUT STD_LOGIC;
    xpipe4_tx_elecidle : OUT STD_LOGIC;
    xpipe5_tx_elecidle : OUT STD_LOGIC;
    xpipe6_tx_elecidle : OUT STD_LOGIC;
    xpipe7_tx_elecidle : OUT STD_LOGIC;
    xpipe8_tx_elecidle : OUT STD_LOGIC;
    xpipe9_tx_elecidle : OUT STD_LOGIC;
    xpipe10_tx_elecidle : OUT STD_LOGIC;
    xpipe11_tx_elecidle : OUT STD_LOGIC;
    xpipe12_tx_elecidle : OUT STD_LOGIC;
    xpipe13_tx_elecidle : OUT STD_LOGIC;
    xpipe14_tx_elecidle : OUT STD_LOGIC;
    xpipe15_tx_elecidle : OUT STD_LOGIC;
    xpipe0_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe1_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe2_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe3_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe4_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe5_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe6_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe7_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe8_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe9_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe10_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe11_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe12_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe13_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe14_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe15_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    xpipe0_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe1_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe2_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe3_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe4_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe5_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe6_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe7_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe8_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe9_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe10_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe11_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe12_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe13_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe14_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe15_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    xpipe0_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe1_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe2_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe3_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe4_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe5_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe6_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe7_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe8_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe9_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe10_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe11_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe12_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe13_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe14_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe15_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe0_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe1_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe2_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe3_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe4_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe5_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe6_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe7_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe8_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe9_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe10_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe11_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe12_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe13_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe14_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe15_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    xpipe0_tx_startblock : OUT STD_LOGIC;
    xpipe1_tx_startblock : OUT STD_LOGIC;
    xpipe2_tx_startblock : OUT STD_LOGIC;
    xpipe3_tx_startblock : OUT STD_LOGIC;
    xpipe4_tx_startblock : OUT STD_LOGIC;
    xpipe5_tx_startblock : OUT STD_LOGIC;
    xpipe6_tx_startblock : OUT STD_LOGIC;
    xpipe7_tx_startblock : OUT STD_LOGIC;
    xpipe8_tx_startblock : OUT STD_LOGIC;
    xpipe9_tx_startblock : OUT STD_LOGIC;
    xpipe10_tx_startblock : OUT STD_LOGIC;
    xpipe11_tx_startblock : OUT STD_LOGIC;
    xpipe12_tx_startblock : OUT STD_LOGIC;
    xpipe13_tx_startblock : OUT STD_LOGIC;
    xpipe14_tx_startblock : OUT STD_LOGIC;
    xpipe15_tx_startblock : OUT STD_LOGIC;
    xpipe0_tx_swing : OUT STD_LOGIC;
    xpipe1_tx_swing : OUT STD_LOGIC;
    xpipe2_tx_swing : OUT STD_LOGIC;
    xpipe3_tx_swing : OUT STD_LOGIC;
    xpipe4_tx_swing : OUT STD_LOGIC;
    xpipe5_tx_swing : OUT STD_LOGIC;
    xpipe6_tx_swing : OUT STD_LOGIC;
    xpipe7_tx_swing : OUT STD_LOGIC;
    xpipe8_tx_swing : OUT STD_LOGIC;
    xpipe9_tx_swing : OUT STD_LOGIC;
    xpipe10_tx_swing : OUT STD_LOGIC;
    xpipe11_tx_swing : OUT STD_LOGIC;
    xpipe12_tx_swing : OUT STD_LOGIC;
    xpipe13_tx_swing : OUT STD_LOGIC;
    xpipe14_tx_swing : OUT STD_LOGIC;
    xpipe15_tx_swing : OUT STD_LOGIC;
    xpipe0_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe1_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe2_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe3_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe4_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe5_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe6_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe7_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe8_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe9_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe10_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe11_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe12_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe13_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe14_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe15_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe0_rx_datavalid : IN STD_LOGIC;
    hsdp_xpipe1_rx_datavalid : IN STD_LOGIC;
    hsdp_xpipe2_rx_datavalid : IN STD_LOGIC;
    hsdp_xpipe0_rx_gearboxslip : OUT STD_LOGIC;
    hsdp_xpipe1_rx_gearboxslip : OUT STD_LOGIC;
    hsdp_xpipe2_rx_gearboxslip : OUT STD_LOGIC;
    hsdp_xpipe0_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe1_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe2_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe0_rx_headervalid : IN STD_LOGIC;
    hsdp_xpipe1_rx_headervalid : IN STD_LOGIC;
    hsdp_xpipe2_rx_headervalid : IN STD_LOGIC;
    hsdp_xpipe0_rx_pcsreset : OUT STD_LOGIC;
    hsdp_xpipe1_rx_pcsreset : OUT STD_LOGIC;
    hsdp_xpipe2_rx_pcsreset : OUT STD_LOGIC;
    hsdp_xpipe0_rx_resetdone : IN STD_LOGIC;
    hsdp_xpipe1_rx_resetdone : IN STD_LOGIC;
    hsdp_xpipe2_rx_resetdone : IN STD_LOGIC;
    hsdp_xpipe0_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe1_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe2_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    hsdp_xpipe0_tx_resetdone : IN STD_LOGIC;
    hsdp_xpipe1_tx_resetdone : IN STD_LOGIC;
    hsdp_xpipe2_tx_resetdone : IN STD_LOGIC;
    hsdp_xpipe0_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    hsdp_xpipe1_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    hsdp_xpipe2_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    hsdp_gt_rxoutclk : IN STD_LOGIC;
    hsdp_gt_txusrclk : OUT STD_LOGIC;
    phy_ready_frbot : OUT STD_LOGIC;
    phy_ready_tobot : IN STD_LOGIC;
    link0_xpipe_bufgtce : IN STD_LOGIC;
    link1_xpipe_bufgtce : IN STD_LOGIC;
    link0_xpipe_bufgtcemask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    link1_xpipe_bufgtcemask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    link0_xpipe_bufgtdiv : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    link1_xpipe_bufgtdiv : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    link0_xpipe_bufgtrst : IN STD_LOGIC;
    link1_xpipe_bufgtrst : IN STD_LOGIC;
    link0_xpipe_bufgtrstmask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    link1_xpipe_bufgtrstmask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    link0_xpipe_gtoutclk : IN STD_LOGIC;
    link1_xpipe_gtoutclk : IN STD_LOGIC;
    link0_xpipe_gtpipeclk : OUT STD_LOGIC;
    link1_xpipe_gtpipeclk : OUT STD_LOGIC;
    link0_xpipe_pcielinkreachtarget : OUT STD_LOGIC;
    link1_xpipe_pcielinkreachtarget : OUT STD_LOGIC;
    link0_xpipe_pcieltssmstate : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    link1_xpipe_pcieltssmstate : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    link0_xpipe_pcieperstn : OUT STD_LOGIC;
    link1_xpipe_pcieperstn : OUT STD_LOGIC;
    link0_xpipe_phyesmadaptationsave : OUT STD_LOGIC;
    link1_xpipe_phyesmadaptationsave : OUT STD_LOGIC;
    link0_xpipe_phyready : IN STD_LOGIC;
    link1_xpipe_phyready : IN STD_LOGIC;
    link0_xpipe_piperate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    link1_xpipe_piperate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_pcie_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axi_pcie_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_pcie_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_pcie_arlock : OUT STD_LOGIC;
    s_axi_pcie_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_pcie_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_arready : IN STD_LOGIC;
    s_axi_pcie_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_pcie_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_pcie_arvalid : OUT STD_LOGIC;
    s_axi_pcie_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axi_pcie_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_pcie_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_pcie_awlock : OUT STD_LOGIC;
    s_axi_pcie_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_pcie_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_awready : IN STD_LOGIC;
    s_axi_pcie_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_pcie_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_pcie_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_pcie_awvalid : OUT STD_LOGIC;
    s_axi_pcie_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_bready : OUT STD_LOGIC;
    s_axi_pcie_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_pcie_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_bvalid : IN STD_LOGIC;
    s_axi_pcie_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_pcie_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_rlast : IN STD_LOGIC;
    s_axi_pcie_rready : OUT STD_LOGIC;
    s_axi_pcie_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_pcie_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s_axi_pcie_rvalid : IN STD_LOGIC;
    s_axi_pcie_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_pcie_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_wlast : OUT STD_LOGIC;
    s_axi_pcie_wready : IN STD_LOGIC;
    s_axi_pcie_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_pcie_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    s_axi_pcie_wvalid : OUT STD_LOGIC;
    cpm_pcr_apb_en : OUT STD_LOGIC;
    cpm_pcr_dis_npi_clk : OUT STD_LOGIC;
    cpm_pcr_fabric_en : OUT STD_LOGIC;
    cpm_pcr_gate_reg : OUT STD_LOGIC;
    cpm_pcr_hold_state : OUT STD_LOGIC;
    cpm_pcr_init_state : OUT STD_LOGIC;
    cpm_pcr_mem_clr : OUT STD_LOGIC;
    cpm_pcr_o_disable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcr_pcomplete : OUT STD_LOGIC;
    cpm_pcr_pwr_dn : OUT STD_LOGIC;
    cpm_pcr_scan_clr : OUT STD_LOGIC;
    cpm_pcr_start_bisr : OUT STD_LOGIC;
    cpm_pcr_start_cal : OUT STD_LOGIC;
    cpm_pcr_tristate : OUT STD_LOGIC;
    xpipe_q0_rxmargin_req_ack : IN STD_LOGIC;
    xpipe_q1_rxmargin_req_ack : IN STD_LOGIC;
    xpipe_q2_rxmargin_req_ack : IN STD_LOGIC;
    xpipe_q3_rxmargin_req_ack : IN STD_LOGIC;
    xpipe_q0_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q1_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q2_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q3_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q0_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q1_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q2_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q3_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q0_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q1_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q2_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q3_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q0_rxmargin_req_req : OUT STD_LOGIC;
    xpipe_q1_rxmargin_req_req : OUT STD_LOGIC;
    xpipe_q2_rxmargin_req_req : OUT STD_LOGIC;
    xpipe_q3_rxmargin_req_req : OUT STD_LOGIC;
    xpipe_q0_rxmargin_res_ack : OUT STD_LOGIC;
    xpipe_q1_rxmargin_res_ack : OUT STD_LOGIC;
    xpipe_q2_rxmargin_res_ack : OUT STD_LOGIC;
    xpipe_q3_rxmargin_res_ack : OUT STD_LOGIC;
    xpipe_q0_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q1_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q2_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q3_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    xpipe_q0_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q1_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q2_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q3_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    xpipe_q0_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q1_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q2_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q3_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xpipe_q0_rxmargin_res_req : IN STD_LOGIC;
    xpipe_q1_rxmargin_res_req : IN STD_LOGIC;
    xpipe_q2_rxmargin_res_req : IN STD_LOGIC;
    xpipe_q3_rxmargin_res_req : IN STD_LOGIC;
    lpd_refclk_in : OUT STD_LOGIC;
    lpd_switch_timeout_cnt : OUT STD_LOGIC;
    lpd_swclk : OUT STD_LOGIC;
    perst0n : OUT STD_LOGIC;
    perst1n : OUT STD_LOGIC
  );
END bd_70da_pspmc_0_0;

ARCHITECTURE bd_70da_pspmc_0_0_arch OF bd_70da_pspmc_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_70da_pspmc_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pspmc_v1_4_0_pspmc IS
    GENERIC (
      C_M_AXI_GP0_DATA_WIDTH : INTEGER;
      C_M_AXI_GP2_DATA_WIDTH : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP0 : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP2 : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP4 : INTEGER;
      C_S_AXI_GP0_DATA_WIDTH : INTEGER;
      C_S_AXI_GP2_DATA_WIDTH : INTEGER;
      C_S_AXI_GP4_DATA_WIDTH : INTEGER;
      C_S_AXI_ACP_DATA_WIDTH : INTEGER;
      C_S_AXI_ACE_DATA_WIDTH : INTEGER;
      C_PS_NOC_CCI_DATA_WIDTH : INTEGER;
      C_PS_NOC_NCI_DATA_WIDTH : INTEGER;
      C_NOC_PS_CCI_DATA_WIDTH : INTEGER;
      C_PS_NOC_PMC_DATA_WIDTH : INTEGER;
      C_NOC_PS_PMC_DATA_WIDTH : INTEGER;
      C_PS_NOC_RPU_DATA_WIDTH : INTEGER;
      C_PS_EMIO_GPIO_WIDTH : INTEGER;
      C_PMC_EMIO_GPIO_WIDTH : INTEGER;
      C_PMC_GPO_WIDTH : INTEGER;
      C_PMC_GPI_WIDTH : INTEGER;
      C_PL_SEM_GPO_ENABLE : INTEGER;
      C_PMC_NOC_ADDR_WIDTH : INTEGER;
      C_PMC_NOC_DATA_WIDTH : INTEGER;
      C_NOC_PMC_ADDR_WIDTH : INTEGER;
      C_NOC_PMC_DATA_WIDTH : INTEGER;
      C_XDEVICE : STRING;
      C_SIM_DEVICE : STRING;
      C_SPP_PSPMC_TO_CORE_WIDTH : INTEGER;
      C_SPP_PSPMC_FROM_CORE_WIDTH : INTEGER;
      C_NUM_F2P0_INTR_INPUTS : STRING;
      C_NUM_F2P1_INTR_INPUTS : STRING;
      C_PMCPL_CLK0_BUF : INTEGER;
      C_PMCPL_CLK1_BUF : INTEGER;
      C_PMCPL_CLK2_BUF : INTEGER;
      C_PMCPL_CLK3_BUF : INTEGER;
      C_PMCPL_IRO_CLK_BUF : INTEGER;
      C_ACE_LITE : INTEGER;
      C_PS_USE_S_AXI_GP2 : INTEGER;
      C_AXI4_EXT_USER_BITS : INTEGER;
      C_SUBCORE_NAME : STRING;
      C_VIP_SUBCORE_NAME : STRING;
      C_CORE_NAME : STRING;
      C_SD0_DATA_WIDTH : INTEGER;
      C_SD1_DATA_WIDTH : INTEGER;
      C_PS_TRACE_WIDTH : INTEGER;
      C_PS_TRACE_PERIPHERAL : INTEGER;
      C_PS_USE_STARTUP : INTEGER;
      C_PS_USE_CAPTURE : INTEGER;
      C_PS_USE_RPU_INTERRUPT : INTEGER;
      C_PS_PCIE_EP_RESET1_IO : STRING;
      C_PS_PCIE_EP_RESET2_IO : STRING;
      C_PS_TIE_MJTAG_TCK_TO_GND : INTEGER;
      C_LPD_GPIO_EMIO_ENABLE : INTEGER;
      C_PMC_GPIO_EMIO_ENABLE : INTEGER;
      C_PS_I2C0_PERIPHERAL_ENABLE : INTEGER;
      C_PS_I2C1_PERIPHERAL_ENABLE : INTEGER;
      C_GEM0_TSU_INC_CTRL : INTEGER;
      C_GEM_TSU_ENABLE : INTEGER
    );
    PORT (
      pl0_ref_clk : OUT STD_LOGIC;
      fpd_axi_noc_axi1_clk : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_awlock : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_awvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi1_awready : IN STD_LOGIC;
      fpd_axi_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_wlast : OUT STD_LOGIC;
      fpd_axi_noc_axi1_wvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_wready : IN STD_LOGIC;
      fpd_axi_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_bvalid : IN STD_LOGIC;
      fpd_axi_noc_axi1_bready : OUT STD_LOGIC;
      fpd_axi_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_arlock : OUT STD_LOGIC;
      fpd_axi_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_arvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi1_arready : IN STD_LOGIC;
      fpd_axi_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_rlast : IN STD_LOGIC;
      fpd_axi_noc_axi1_rvalid : IN STD_LOGIC;
      fpd_axi_noc_axi1_rready : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_axi_noc_axi0_clk : OUT STD_LOGIC;
      pmc_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pmc_noc_axi0_arlock : OUT STD_LOGIC;
      pmc_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      pmc_noc_axi0_arvalid : OUT STD_LOGIC;
      pmc_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pmc_noc_axi0_awlock : OUT STD_LOGIC;
      pmc_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      pmc_noc_axi0_awvalid : OUT STD_LOGIC;
      pmc_noc_axi0_bready : OUT STD_LOGIC;
      pmc_noc_axi0_rready : OUT STD_LOGIC;
      pmc_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      pmc_noc_axi0_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_wlast : OUT STD_LOGIC;
      pmc_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      pmc_noc_axi0_wvalid : OUT STD_LOGIC;
      pmc_noc_axi0_arready : IN STD_LOGIC;
      pmc_noc_axi0_awready : IN STD_LOGIC;
      pmc_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_bvalid : IN STD_LOGIC;
      pmc_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      pmc_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_rlast : IN STD_LOGIC;
      pmc_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      pmc_noc_axi0_rvalid : IN STD_LOGIC;
      pmc_noc_axi0_wready : IN STD_LOGIC;
      lpd_gpio_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      lpd_gpio_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      lpd_gpio_t : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      cpm_osc_clk_div2 : OUT STD_LOGIC;
      m_axi0_ps_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi0_ps_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi0_ps_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi0_ps_arlock : IN STD_LOGIC;
      m_axi0_ps_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi0_ps_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_arready : OUT STD_LOGIC;
      m_axi0_ps_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi0_ps_aruser : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi0_ps_arvalid : IN STD_LOGIC;
      m_axi0_ps_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi0_ps_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi0_ps_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi0_ps_awlock : IN STD_LOGIC;
      m_axi0_ps_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi0_ps_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_awready : OUT STD_LOGIC;
      m_axi0_ps_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi0_ps_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi0_ps_awuser : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi0_ps_awvalid : IN STD_LOGIC;
      m_axi0_ps_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_bready : IN STD_LOGIC;
      m_axi0_ps_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi0_ps_buser : OUT STD_LOGIC;
      m_axi0_ps_bvalid : OUT STD_LOGIC;
      m_axi0_ps_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi0_ps_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_rlast : OUT STD_LOGIC;
      m_axi0_ps_rready : IN STD_LOGIC;
      m_axi0_ps_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi0_ps_ruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      m_axi0_ps_rvalid : OUT STD_LOGIC;
      m_axi0_ps_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi0_ps_wid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_wlast : IN STD_LOGIC;
      m_axi0_ps_wready : OUT STD_LOGIC;
      m_axi0_ps_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi0_ps_wuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      m_axi0_ps_wvalid : IN STD_LOGIC;
      m_axi1_ps_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi1_ps_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi1_ps_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi1_ps_arlock : IN STD_LOGIC;
      m_axi1_ps_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi1_ps_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_arready : OUT STD_LOGIC;
      m_axi1_ps_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi1_ps_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      m_axi1_ps_arvalid : IN STD_LOGIC;
      m_axi1_ps_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi1_ps_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi1_ps_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi1_ps_awlock : IN STD_LOGIC;
      m_axi1_ps_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi1_ps_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_awready : OUT STD_LOGIC;
      m_axi1_ps_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi1_ps_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi1_ps_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      m_axi1_ps_awvalid : IN STD_LOGIC;
      m_axi1_ps_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_bready : IN STD_LOGIC;
      m_axi1_ps_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi1_ps_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_bvalid : OUT STD_LOGIC;
      m_axi1_ps_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi1_ps_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_rlast : OUT STD_LOGIC;
      m_axi1_ps_rready : IN STD_LOGIC;
      m_axi1_ps_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi1_ps_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      m_axi1_ps_rvalid : OUT STD_LOGIC;
      m_axi1_ps_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi1_ps_wid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_wlast : IN STD_LOGIC;
      m_axi1_ps_wready : OUT STD_LOGIC;
      m_axi1_ps_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi1_ps_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      m_axi1_ps_wvalid : IN STD_LOGIC;
      cpmps_corr_irq : IN STD_LOGIC;
      cpmps_misc_irq : IN STD_LOGIC;
      cpmps_uncorr_irq : IN STD_LOGIC;
      s_axi_cfg_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axi_cfg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_cfg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_cfg_arlock : OUT STD_LOGIC;
      s_axi_cfg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_cfg_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_arready : IN STD_LOGIC;
      s_axi_cfg_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_cfg_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_arvalid : OUT STD_LOGIC;
      s_axi_cfg_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axi_cfg_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_cfg_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_cfg_awlock : OUT STD_LOGIC;
      s_axi_cfg_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_cfg_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_awready : IN STD_LOGIC;
      s_axi_cfg_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_cfg_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_awvalid : OUT STD_LOGIC;
      s_axi_cfg_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_bready : OUT STD_LOGIC;
      s_axi_cfg_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_cfg_buser : IN STD_LOGIC;
      s_axi_cfg_bvalid : IN STD_LOGIC;
      s_axi_cfg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_cfg_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_rlast : IN STD_LOGIC;
      s_axi_cfg_rready : OUT STD_LOGIC;
      s_axi_cfg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_cfg_ruser : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_cfg_rvalid : IN STD_LOGIC;
      s_axi_cfg_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_cfg_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_cfg_wlast : OUT STD_LOGIC;
      s_axi_cfg_wready : IN STD_LOGIC;
      s_axi_cfg_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_cfg_wuser : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_cfg_wvalid : OUT STD_LOGIC;
      xpipe0_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe2_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe3_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe4_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe5_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe6_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe7_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe8_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe9_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe10_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe11_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe12_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe13_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe14_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe15_powerdown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_phystatus : IN STD_LOGIC;
      xpipe2_phystatus : IN STD_LOGIC;
      xpipe3_phystatus : IN STD_LOGIC;
      xpipe4_phystatus : IN STD_LOGIC;
      xpipe5_phystatus : IN STD_LOGIC;
      xpipe6_phystatus : IN STD_LOGIC;
      xpipe7_phystatus : IN STD_LOGIC;
      xpipe8_phystatus : IN STD_LOGIC;
      xpipe9_phystatus : IN STD_LOGIC;
      xpipe10_phystatus : IN STD_LOGIC;
      xpipe11_phystatus : IN STD_LOGIC;
      xpipe12_phystatus : IN STD_LOGIC;
      xpipe13_phystatus : IN STD_LOGIC;
      xpipe14_phystatus : IN STD_LOGIC;
      xpipe15_phystatus : IN STD_LOGIC;
      xpipe0_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe2_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe3_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe4_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe5_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe6_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe7_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe8_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe9_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe10_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe11_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe12_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe13_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe14_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe15_rx_charisk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe0_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe1_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe2_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe3_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe4_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe5_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe6_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe7_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe8_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe9_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe10_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe11_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe12_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe13_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe14_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe15_rx_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe0_rx_datavalid : IN STD_LOGIC;
      xpipe1_rx_datavalid : IN STD_LOGIC;
      xpipe2_rx_datavalid : IN STD_LOGIC;
      xpipe3_rx_datavalid : IN STD_LOGIC;
      xpipe4_rx_datavalid : IN STD_LOGIC;
      xpipe5_rx_datavalid : IN STD_LOGIC;
      xpipe6_rx_datavalid : IN STD_LOGIC;
      xpipe7_rx_datavalid : IN STD_LOGIC;
      xpipe8_rx_datavalid : IN STD_LOGIC;
      xpipe9_rx_datavalid : IN STD_LOGIC;
      xpipe10_rx_datavalid : IN STD_LOGIC;
      xpipe11_rx_datavalid : IN STD_LOGIC;
      xpipe12_rx_datavalid : IN STD_LOGIC;
      xpipe13_rx_datavalid : IN STD_LOGIC;
      xpipe14_rx_datavalid : IN STD_LOGIC;
      xpipe15_rx_datavalid : IN STD_LOGIC;
      xpipe0_rx_elecidle : IN STD_LOGIC;
      xpipe1_rx_elecidle : IN STD_LOGIC;
      xpipe2_rx_elecidle : IN STD_LOGIC;
      xpipe3_rx_elecidle : IN STD_LOGIC;
      xpipe4_rx_elecidle : IN STD_LOGIC;
      xpipe5_rx_elecidle : IN STD_LOGIC;
      xpipe6_rx_elecidle : IN STD_LOGIC;
      xpipe7_rx_elecidle : IN STD_LOGIC;
      xpipe8_rx_elecidle : IN STD_LOGIC;
      xpipe9_rx_elecidle : IN STD_LOGIC;
      xpipe10_rx_elecidle : IN STD_LOGIC;
      xpipe11_rx_elecidle : IN STD_LOGIC;
      xpipe12_rx_elecidle : IN STD_LOGIC;
      xpipe13_rx_elecidle : IN STD_LOGIC;
      xpipe14_rx_elecidle : IN STD_LOGIC;
      xpipe15_rx_elecidle : IN STD_LOGIC;
      xpipe0_rx_polarity : OUT STD_LOGIC;
      xpipe1_rx_polarity : OUT STD_LOGIC;
      xpipe2_rx_polarity : OUT STD_LOGIC;
      xpipe3_rx_polarity : OUT STD_LOGIC;
      xpipe4_rx_polarity : OUT STD_LOGIC;
      xpipe5_rx_polarity : OUT STD_LOGIC;
      xpipe6_rx_polarity : OUT STD_LOGIC;
      xpipe7_rx_polarity : OUT STD_LOGIC;
      xpipe8_rx_polarity : OUT STD_LOGIC;
      xpipe9_rx_polarity : OUT STD_LOGIC;
      xpipe10_rx_polarity : OUT STD_LOGIC;
      xpipe11_rx_polarity : OUT STD_LOGIC;
      xpipe12_rx_polarity : OUT STD_LOGIC;
      xpipe13_rx_polarity : OUT STD_LOGIC;
      xpipe14_rx_polarity : OUT STD_LOGIC;
      xpipe15_rx_polarity : OUT STD_LOGIC;
      xpipe0_rx_startblock : IN STD_LOGIC;
      xpipe1_rx_startblock : IN STD_LOGIC;
      xpipe2_rx_startblock : IN STD_LOGIC;
      xpipe3_rx_startblock : IN STD_LOGIC;
      xpipe4_rx_startblock : IN STD_LOGIC;
      xpipe5_rx_startblock : IN STD_LOGIC;
      xpipe6_rx_startblock : IN STD_LOGIC;
      xpipe7_rx_startblock : IN STD_LOGIC;
      xpipe8_rx_startblock : IN STD_LOGIC;
      xpipe9_rx_startblock : IN STD_LOGIC;
      xpipe10_rx_startblock : IN STD_LOGIC;
      xpipe11_rx_startblock : IN STD_LOGIC;
      xpipe12_rx_startblock : IN STD_LOGIC;
      xpipe13_rx_startblock : IN STD_LOGIC;
      xpipe14_rx_startblock : IN STD_LOGIC;
      xpipe15_rx_startblock : IN STD_LOGIC;
      xpipe0_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe1_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe2_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe3_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe4_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe5_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe6_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe7_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe8_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe9_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe10_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe11_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe12_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe13_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe14_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe15_rx_status : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe0_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe2_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe3_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe4_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe5_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe6_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe7_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe8_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe9_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe10_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe11_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe12_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe13_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe14_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe15_rx_syncheader : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe0_rx_termination : OUT STD_LOGIC;
      xpipe1_rx_termination : OUT STD_LOGIC;
      xpipe2_rx_termination : OUT STD_LOGIC;
      xpipe3_rx_termination : OUT STD_LOGIC;
      xpipe4_rx_termination : OUT STD_LOGIC;
      xpipe5_rx_termination : OUT STD_LOGIC;
      xpipe6_rx_termination : OUT STD_LOGIC;
      xpipe7_rx_termination : OUT STD_LOGIC;
      xpipe8_rx_termination : OUT STD_LOGIC;
      xpipe9_rx_termination : OUT STD_LOGIC;
      xpipe10_rx_termination : OUT STD_LOGIC;
      xpipe11_rx_termination : OUT STD_LOGIC;
      xpipe12_rx_termination : OUT STD_LOGIC;
      xpipe13_rx_termination : OUT STD_LOGIC;
      xpipe14_rx_termination : OUT STD_LOGIC;
      xpipe15_rx_termination : OUT STD_LOGIC;
      xpipe0_rx_valid : IN STD_LOGIC;
      xpipe1_rx_valid : IN STD_LOGIC;
      xpipe2_rx_valid : IN STD_LOGIC;
      xpipe3_rx_valid : IN STD_LOGIC;
      xpipe4_rx_valid : IN STD_LOGIC;
      xpipe5_rx_valid : IN STD_LOGIC;
      xpipe6_rx_valid : IN STD_LOGIC;
      xpipe7_rx_valid : IN STD_LOGIC;
      xpipe8_rx_valid : IN STD_LOGIC;
      xpipe9_rx_valid : IN STD_LOGIC;
      xpipe10_rx_valid : IN STD_LOGIC;
      xpipe11_rx_valid : IN STD_LOGIC;
      xpipe12_rx_valid : IN STD_LOGIC;
      xpipe13_rx_valid : IN STD_LOGIC;
      xpipe14_rx_valid : IN STD_LOGIC;
      xpipe15_rx_valid : IN STD_LOGIC;
      xpipe0_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe2_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe3_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe4_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe5_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe6_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe7_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe8_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe9_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe10_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe11_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe12_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe13_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe14_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe15_tx_charisk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe0_tx_compliance : OUT STD_LOGIC;
      xpipe1_tx_compliance : OUT STD_LOGIC;
      xpipe2_tx_compliance : OUT STD_LOGIC;
      xpipe3_tx_compliance : OUT STD_LOGIC;
      xpipe4_tx_compliance : OUT STD_LOGIC;
      xpipe5_tx_compliance : OUT STD_LOGIC;
      xpipe6_tx_compliance : OUT STD_LOGIC;
      xpipe7_tx_compliance : OUT STD_LOGIC;
      xpipe8_tx_compliance : OUT STD_LOGIC;
      xpipe9_tx_compliance : OUT STD_LOGIC;
      xpipe10_tx_compliance : OUT STD_LOGIC;
      xpipe11_tx_compliance : OUT STD_LOGIC;
      xpipe12_tx_compliance : OUT STD_LOGIC;
      xpipe13_tx_compliance : OUT STD_LOGIC;
      xpipe14_tx_compliance : OUT STD_LOGIC;
      xpipe15_tx_compliance : OUT STD_LOGIC;
      xpipe0_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe1_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe2_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe3_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe4_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe5_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe6_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe7_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe8_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe9_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe10_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe11_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe12_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe13_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe14_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe15_tx_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      xpipe0_tx_datavalid : OUT STD_LOGIC;
      xpipe1_tx_datavalid : OUT STD_LOGIC;
      xpipe2_tx_datavalid : OUT STD_LOGIC;
      xpipe3_tx_datavalid : OUT STD_LOGIC;
      xpipe4_tx_datavalid : OUT STD_LOGIC;
      xpipe5_tx_datavalid : OUT STD_LOGIC;
      xpipe6_tx_datavalid : OUT STD_LOGIC;
      xpipe7_tx_datavalid : OUT STD_LOGIC;
      xpipe8_tx_datavalid : OUT STD_LOGIC;
      xpipe9_tx_datavalid : OUT STD_LOGIC;
      xpipe10_tx_datavalid : OUT STD_LOGIC;
      xpipe11_tx_datavalid : OUT STD_LOGIC;
      xpipe12_tx_datavalid : OUT STD_LOGIC;
      xpipe13_tx_datavalid : OUT STD_LOGIC;
      xpipe14_tx_datavalid : OUT STD_LOGIC;
      xpipe15_tx_datavalid : OUT STD_LOGIC;
      xpipe0_tx_deemph : OUT STD_LOGIC;
      xpipe1_tx_deemph : OUT STD_LOGIC;
      xpipe2_tx_deemph : OUT STD_LOGIC;
      xpipe3_tx_deemph : OUT STD_LOGIC;
      xpipe4_tx_deemph : OUT STD_LOGIC;
      xpipe5_tx_deemph : OUT STD_LOGIC;
      xpipe6_tx_deemph : OUT STD_LOGIC;
      xpipe7_tx_deemph : OUT STD_LOGIC;
      xpipe8_tx_deemph : OUT STD_LOGIC;
      xpipe9_tx_deemph : OUT STD_LOGIC;
      xpipe10_tx_deemph : OUT STD_LOGIC;
      xpipe11_tx_deemph : OUT STD_LOGIC;
      xpipe12_tx_deemph : OUT STD_LOGIC;
      xpipe13_tx_deemph : OUT STD_LOGIC;
      xpipe14_tx_deemph : OUT STD_LOGIC;
      xpipe15_tx_deemph : OUT STD_LOGIC;
      xpipe0_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe1_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe2_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe3_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe4_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe5_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe6_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe7_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe8_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe9_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe10_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe11_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe12_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe13_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe14_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe15_tx_detectrxloopback : OUT STD_LOGIC;
      xpipe0_tx_elecidle : OUT STD_LOGIC;
      xpipe1_tx_elecidle : OUT STD_LOGIC;
      xpipe2_tx_elecidle : OUT STD_LOGIC;
      xpipe3_tx_elecidle : OUT STD_LOGIC;
      xpipe4_tx_elecidle : OUT STD_LOGIC;
      xpipe5_tx_elecidle : OUT STD_LOGIC;
      xpipe6_tx_elecidle : OUT STD_LOGIC;
      xpipe7_tx_elecidle : OUT STD_LOGIC;
      xpipe8_tx_elecidle : OUT STD_LOGIC;
      xpipe9_tx_elecidle : OUT STD_LOGIC;
      xpipe10_tx_elecidle : OUT STD_LOGIC;
      xpipe11_tx_elecidle : OUT STD_LOGIC;
      xpipe12_tx_elecidle : OUT STD_LOGIC;
      xpipe13_tx_elecidle : OUT STD_LOGIC;
      xpipe14_tx_elecidle : OUT STD_LOGIC;
      xpipe15_tx_elecidle : OUT STD_LOGIC;
      xpipe0_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe1_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe2_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe3_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe4_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe5_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe6_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe7_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe8_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe9_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe10_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe11_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe12_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe13_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe14_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe15_tx_maincursor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      xpipe0_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe1_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe2_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe3_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe4_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe5_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe6_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe7_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe8_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe9_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe10_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe11_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe12_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe13_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe14_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe15_tx_margin : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      xpipe0_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe1_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe2_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe3_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe4_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe5_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe6_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe7_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe8_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe9_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe10_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe11_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe12_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe13_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe14_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe15_tx_postcursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe0_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe1_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe2_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe3_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe4_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe5_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe6_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe7_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe8_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe9_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe10_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe11_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe12_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe13_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe14_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe15_tx_precursor : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      xpipe0_tx_startblock : OUT STD_LOGIC;
      xpipe1_tx_startblock : OUT STD_LOGIC;
      xpipe2_tx_startblock : OUT STD_LOGIC;
      xpipe3_tx_startblock : OUT STD_LOGIC;
      xpipe4_tx_startblock : OUT STD_LOGIC;
      xpipe5_tx_startblock : OUT STD_LOGIC;
      xpipe6_tx_startblock : OUT STD_LOGIC;
      xpipe7_tx_startblock : OUT STD_LOGIC;
      xpipe8_tx_startblock : OUT STD_LOGIC;
      xpipe9_tx_startblock : OUT STD_LOGIC;
      xpipe10_tx_startblock : OUT STD_LOGIC;
      xpipe11_tx_startblock : OUT STD_LOGIC;
      xpipe12_tx_startblock : OUT STD_LOGIC;
      xpipe13_tx_startblock : OUT STD_LOGIC;
      xpipe14_tx_startblock : OUT STD_LOGIC;
      xpipe15_tx_startblock : OUT STD_LOGIC;
      xpipe0_tx_swing : OUT STD_LOGIC;
      xpipe1_tx_swing : OUT STD_LOGIC;
      xpipe2_tx_swing : OUT STD_LOGIC;
      xpipe3_tx_swing : OUT STD_LOGIC;
      xpipe4_tx_swing : OUT STD_LOGIC;
      xpipe5_tx_swing : OUT STD_LOGIC;
      xpipe6_tx_swing : OUT STD_LOGIC;
      xpipe7_tx_swing : OUT STD_LOGIC;
      xpipe8_tx_swing : OUT STD_LOGIC;
      xpipe9_tx_swing : OUT STD_LOGIC;
      xpipe10_tx_swing : OUT STD_LOGIC;
      xpipe11_tx_swing : OUT STD_LOGIC;
      xpipe12_tx_swing : OUT STD_LOGIC;
      xpipe13_tx_swing : OUT STD_LOGIC;
      xpipe14_tx_swing : OUT STD_LOGIC;
      xpipe15_tx_swing : OUT STD_LOGIC;
      xpipe0_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe1_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe2_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe3_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe4_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe5_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe6_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe7_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe8_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe9_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe10_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe11_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe12_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe13_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe14_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe15_tx_syncheader : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe0_rx_datavalid : IN STD_LOGIC;
      hsdp_xpipe1_rx_datavalid : IN STD_LOGIC;
      hsdp_xpipe2_rx_datavalid : IN STD_LOGIC;
      hsdp_xpipe0_rx_gearboxslip : OUT STD_LOGIC;
      hsdp_xpipe1_rx_gearboxslip : OUT STD_LOGIC;
      hsdp_xpipe2_rx_gearboxslip : OUT STD_LOGIC;
      hsdp_xpipe0_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe1_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe2_rx_header : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe0_rx_headervalid : IN STD_LOGIC;
      hsdp_xpipe1_rx_headervalid : IN STD_LOGIC;
      hsdp_xpipe2_rx_headervalid : IN STD_LOGIC;
      hsdp_xpipe0_rx_pcsreset : OUT STD_LOGIC;
      hsdp_xpipe1_rx_pcsreset : OUT STD_LOGIC;
      hsdp_xpipe2_rx_pcsreset : OUT STD_LOGIC;
      hsdp_xpipe0_rx_resetdone : IN STD_LOGIC;
      hsdp_xpipe1_rx_resetdone : IN STD_LOGIC;
      hsdp_xpipe2_rx_resetdone : IN STD_LOGIC;
      hsdp_xpipe0_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe1_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe2_tx_header : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp_xpipe0_tx_resetdone : IN STD_LOGIC;
      hsdp_xpipe1_tx_resetdone : IN STD_LOGIC;
      hsdp_xpipe2_tx_resetdone : IN STD_LOGIC;
      hsdp_xpipe0_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      hsdp_xpipe1_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      hsdp_xpipe2_tx_sequence : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      hsdp_gt_rxoutclk : IN STD_LOGIC;
      hsdp_gt_txusrclk : OUT STD_LOGIC;
      phy_ready_frbot : OUT STD_LOGIC;
      phy_ready_tobot : IN STD_LOGIC;
      link0_xpipe_bufgtce : IN STD_LOGIC;
      link1_xpipe_bufgtce : IN STD_LOGIC;
      link0_xpipe_bufgtcemask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      link1_xpipe_bufgtcemask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      link0_xpipe_bufgtdiv : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      link1_xpipe_bufgtdiv : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      link0_xpipe_bufgtrst : IN STD_LOGIC;
      link1_xpipe_bufgtrst : IN STD_LOGIC;
      link0_xpipe_bufgtrstmask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      link1_xpipe_bufgtrstmask : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      link0_xpipe_gtoutclk : IN STD_LOGIC;
      link1_xpipe_gtoutclk : IN STD_LOGIC;
      link0_xpipe_gtpipeclk : OUT STD_LOGIC;
      link1_xpipe_gtpipeclk : OUT STD_LOGIC;
      link0_xpipe_pcielinkreachtarget : OUT STD_LOGIC;
      link1_xpipe_pcielinkreachtarget : OUT STD_LOGIC;
      link0_xpipe_pcieltssmstate : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      link1_xpipe_pcieltssmstate : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      link0_xpipe_pcieperstn : OUT STD_LOGIC;
      link1_xpipe_pcieperstn : OUT STD_LOGIC;
      link0_xpipe_phyesmadaptationsave : OUT STD_LOGIC;
      link1_xpipe_phyesmadaptationsave : OUT STD_LOGIC;
      link0_xpipe_phyready : IN STD_LOGIC;
      link1_xpipe_phyready : IN STD_LOGIC;
      link0_xpipe_piperate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      link1_xpipe_piperate : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_pcie_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axi_pcie_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_pcie_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_pcie_arlock : OUT STD_LOGIC;
      s_axi_pcie_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_pcie_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_arready : IN STD_LOGIC;
      s_axi_pcie_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_pcie_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_pcie_arvalid : OUT STD_LOGIC;
      s_axi_pcie_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axi_pcie_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_pcie_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_pcie_awlock : OUT STD_LOGIC;
      s_axi_pcie_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_pcie_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_awready : IN STD_LOGIC;
      s_axi_pcie_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_pcie_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_pcie_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_pcie_awvalid : OUT STD_LOGIC;
      s_axi_pcie_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_bready : OUT STD_LOGIC;
      s_axi_pcie_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_pcie_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_bvalid : IN STD_LOGIC;
      s_axi_pcie_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_pcie_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_rlast : IN STD_LOGIC;
      s_axi_pcie_rready : OUT STD_LOGIC;
      s_axi_pcie_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_pcie_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      s_axi_pcie_rvalid : IN STD_LOGIC;
      s_axi_pcie_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_pcie_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_wlast : OUT STD_LOGIC;
      s_axi_pcie_wready : IN STD_LOGIC;
      s_axi_pcie_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_pcie_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      s_axi_pcie_wvalid : OUT STD_LOGIC;
      cpm_pcr_apb_en : OUT STD_LOGIC;
      cpm_pcr_dis_npi_clk : OUT STD_LOGIC;
      cpm_pcr_fabric_en : OUT STD_LOGIC;
      cpm_pcr_gate_reg : OUT STD_LOGIC;
      cpm_pcr_hold_state : OUT STD_LOGIC;
      cpm_pcr_init_state : OUT STD_LOGIC;
      cpm_pcr_mem_clr : OUT STD_LOGIC;
      cpm_pcr_o_disable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcr_pcomplete : OUT STD_LOGIC;
      cpm_pcr_pwr_dn : OUT STD_LOGIC;
      cpm_pcr_scan_clr : OUT STD_LOGIC;
      cpm_pcr_start_bisr : OUT STD_LOGIC;
      cpm_pcr_start_cal : OUT STD_LOGIC;
      cpm_pcr_tristate : OUT STD_LOGIC;
      xpipe_q0_rxmargin_req_ack : IN STD_LOGIC;
      xpipe_q1_rxmargin_req_ack : IN STD_LOGIC;
      xpipe_q2_rxmargin_req_ack : IN STD_LOGIC;
      xpipe_q3_rxmargin_req_ack : IN STD_LOGIC;
      xpipe_q0_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q1_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q2_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q3_rxmargin_req_cmd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q0_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q1_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q2_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q3_rxmargin_req_lanenum : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q0_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q1_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q2_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q3_rxmargin_req_payload : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q0_rxmargin_req_req : OUT STD_LOGIC;
      xpipe_q1_rxmargin_req_req : OUT STD_LOGIC;
      xpipe_q2_rxmargin_req_req : OUT STD_LOGIC;
      xpipe_q3_rxmargin_req_req : OUT STD_LOGIC;
      xpipe_q0_rxmargin_res_ack : OUT STD_LOGIC;
      xpipe_q1_rxmargin_res_ack : OUT STD_LOGIC;
      xpipe_q2_rxmargin_res_ack : OUT STD_LOGIC;
      xpipe_q3_rxmargin_res_ack : OUT STD_LOGIC;
      xpipe_q0_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q1_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q2_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q3_rxmargin_res_cmd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      xpipe_q0_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q1_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q2_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q3_rxmargin_res_lanenum : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      xpipe_q0_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q1_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q2_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q3_rxmargin_res_payload : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      xpipe_q0_rxmargin_res_req : IN STD_LOGIC;
      xpipe_q1_rxmargin_res_req : IN STD_LOGIC;
      xpipe_q2_rxmargin_res_req : IN STD_LOGIC;
      xpipe_q3_rxmargin_res_req : IN STD_LOGIC;
      lpd_refclk_in : OUT STD_LOGIC;
      lpd_switch_timeout_cnt : OUT STD_LOGIC;
      lpd_swclk : OUT STD_LOGIC;
      perst0n : OUT STD_LOGIC;
      perst1n : OUT STD_LOGIC
    );
  END COMPONENT pspmc_v1_4_0_pspmc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_70da_pspmc_0_0_arch: ARCHITECTURE IS "pspmc_v1_4_0_pspmc,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_70da_pspmc_0_0_arch : ARCHITECTURE IS "bd_70da_pspmc_0_0,pspmc_v1_4_0_pspmc,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bd_70da_pspmc_0_0_arch: ARCHITECTURE IS "bd_70da_pspmc_0_0,pspmc_v1_4_0_pspmc,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pspmc,x_ipVersion=1.4,x_ipCoreRevision=0,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_M_AXI_GP0_DATA_WIDTH=128,C_M_AXI_GP2_DATA_WIDTH=128,C_DIFF_RW_CLK_S_AXI_GP0=0,C_DIFF_RW_CLK_S_AXI_GP2=0,C_DIFF_RW_CLK_S_AXI_GP4=0,C_S_AXI_GP0_DATA_WIDTH=128,C_S_AXI_GP2_DATA_WIDTH=128,C_S_AXI_GP4_DATA_WIDTH=128,C_S_AXI_ACP_DATA_WIDTH=128,C_S_AXI_ACE_DATA_WIDTH=128,C_PS_NOC_CCI_DATA_WIDTH=128,C_PS_NOC_NCI_D" & 
"ATA_WIDTH=128,C_NOC_PS_CCI_DATA_WIDTH=128,C_PS_NOC_PMC_DATA_WIDTH=128,C_NOC_PS_PMC_DATA_WIDTH=128,C_PS_NOC_RPU_DATA_WIDTH=128,C_PS_EMIO_GPIO_WIDTH=32,C_PMC_EMIO_GPIO_WIDTH=64,C_PMC_GPO_WIDTH=32,C_PMC_GPI_WIDTH=32,C_PL_SEM_GPO_ENABLE=0,C_PMC_NOC_ADDR_WIDTH=64,C_PMC_NOC_DATA_WIDTH=128,C_NOC_PMC_ADDR_WIDTH=64,C_NOC_PMC_DATA_WIDTH=128,C_XDEVICE=xcvc1902,C_SIM_DEVICE=VERSAL_AI_CORE,C_SPP_PSPMC_TO_CORE_WIDTH=12000,C_SPP_PSPMC_FROM_CORE_WIDTH=12000,C_NUM_F2P0_INTR_INPUTS=1,C_NUM_F2P1_INTR_INPUTS=1,C_PM" & 
"CPL_CLK0_BUF=1,C_PMCPL_CLK1_BUF=1,C_PMCPL_CLK2_BUF=1,C_PMCPL_CLK3_BUF=1,C_PMCPL_IRO_CLK_BUF=1,C_ACE_LITE=0,C_PS_USE_S_AXI_GP2=0,C_AXI4_EXT_USER_BITS=0,C_SUBCORE_NAME=design_2_versal_cips_0_0_gt_quad_base,C_VIP_SUBCORE_NAME=versal_cips_ps_vip,C_CORE_NAME=design_2_versal_cips_0_0,C_SD0_DATA_WIDTH=4,C_SD1_DATA_WIDTH=4,C_PS_TRACE_WIDTH=2,C_PS_TRACE_PERIPHERAL=0,C_PS_USE_STARTUP=0,C_PS_USE_CAPTURE=0,C_PS_USE_RPU_INTERRUPT=0,C_PS_PCIE_EP_RESET1_IO=None,C_PS_PCIE_EP_RESET2_IO=None,C_PS_TIE_MJTAG_TCK_TO" & 
"_GND=1,C_LPD_GPIO_EMIO_ENABLE=1,C_PMC_GPIO_EMIO_ENABLE=0,C_PS_I2C0_PERIPHERAL_ENABLE=0,C_PS_I2C1_PERIPHERAL_ENABLE=0,C_GEM0_TSU_INC_CTRL=3,C_GEM_TSU_ENABLE=1}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF cpm_osc_clk_div2: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_osc_clk_div2";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_apb_en: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_apb_en";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_dis_npi_clk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_dis_npi_clk";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_fabric_en: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_fabric_en";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_gate_reg: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_gate_reg";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_hold_state: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_hold_state";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_init_state: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_init_state";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_mem_clr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_mem_clr";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_o_disable: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_o_disable";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_pcomplete: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_pcomplete";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_pwr_dn: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_pwr_dn";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_scan_clr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_scan_clr";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_start_bisr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_start_bisr";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_start_cal: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_start_cal";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcr_tristate: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpm_pcr_tristate";
  ATTRIBUTE X_INTERFACE_INFO OF cpmps_corr_irq: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpmps_corr_irq";
  ATTRIBUTE X_INTERFACE_INFO OF cpmps_misc_irq: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpmps_misc_irq";
  ATTRIBUTE X_INTERFACE_INFO OF cpmps_uncorr_irq: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM cpmps_uncorr_irq";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_axi_noc_axi1_awid: SIGNAL IS "XIL_INTERFACENAME FPD_AXI_NOC_1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_70da_pspmc_0_0_fpd_axi_noc_axi1_clk, NUM_READ" & 
"_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_nci, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, INDEX 1";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 BVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_axi_noc_axi1_clk: SIGNAL IS "XIL_INTERFACENAME fpd_axi_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_70da_pspmc_0_0_fpd_axi_noc_axi1_clk, ASSOCIATED_BUSIF FPD_AXI_NOC_1, INSERT_VIP 0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_axi_noc_axi1_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi1_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_gt_rxoutclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_gt_rxoutclk";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_gt_txusrclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_gt_txusrclk";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_gearboxslip: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_gearboxslip";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_headervalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_headervalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_pcsreset: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_pcsreset";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_rx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_rx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_tx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_tx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_tx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_tx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe0_tx_sequence: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe0_tx_sequence";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_gearboxslip: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_gearboxslip";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_headervalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_headervalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_pcsreset: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_pcsreset";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_rx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_rx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_tx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_tx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_tx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_tx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe1_tx_sequence: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe1_tx_sequence";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_gearboxslip: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_gearboxslip";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_headervalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_headervalid";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_pcsreset: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_pcsreset";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_rx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_rx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_tx_header: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_tx_header";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_tx_resetdone: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_tx_resetdone";
  ATTRIBUTE X_INTERFACE_INFO OF hsdp_xpipe2_tx_sequence: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM hsdp_xpipe2_tx_sequence";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_bufgtce: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_bufgtce";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_bufgtcemask: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_bufgtcemask";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_bufgtdiv: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_bufgtdiv";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_bufgtrst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_bufgtrst";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_bufgtrstmask: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_bufgtrstmask";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_gtoutclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_gtoutclk";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_gtpipeclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_gtpipeclk";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_pcielinkreachtarget: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_pcielinkreachtarget";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_pcieltssmstate: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_pcieltssmstate";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_pcieperstn: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_pcieperstn";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_phyesmadaptationsave: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_phyesmadaptationsave";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_phyready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_phyready";
  ATTRIBUTE X_INTERFACE_INFO OF link0_xpipe_piperate: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link0_xpipe_piperate";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_bufgtce: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_bufgtce";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_bufgtcemask: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_bufgtcemask";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_bufgtdiv: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_bufgtdiv";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_bufgtrst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_bufgtrst";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_bufgtrstmask: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_bufgtrstmask";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_gtoutclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_gtoutclk";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_gtpipeclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_gtpipeclk";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_pcielinkreachtarget: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_pcielinkreachtarget";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_pcieltssmstate: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_pcieltssmstate";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_pcieperstn: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_pcieperstn";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_phyesmadaptationsave: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_phyesmadaptationsave";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_phyready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_phyready";
  ATTRIBUTE X_INTERFACE_INFO OF link1_xpipe_piperate: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM link1_xpipe_piperate";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_gpio_i: SIGNAL IS "xilinx.com:interface:gpio:1.0 LPD_GPIO I";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_gpio_o: SIGNAL IS "xilinx.com:interface:gpio:1.0 LPD_GPIO O";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_gpio_t: SIGNAL IS "xilinx.com:interface:gpio:1.0 LPD_GPIO T";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_refclk_in: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM lpd_refclk_in";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_swclk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM lpd_swclk";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_switch_timeout_cnt: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM lpd_switch_timeout_cnt";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_araddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arburst";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arcache";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arlock";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arprot";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arqos";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arregion";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_aruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_aruser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_arvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awaddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awburst";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awcache";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awlock";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awprot";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awqos";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awregion";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awsize";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awuser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_awvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_bid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_bid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_bready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_bready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_bresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_bresp";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_buser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_buser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_bvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rresp";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_ruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_ruser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_rvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wstrb: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wuser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi0_ps_wvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi0_ps_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_araddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arburst";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arcache";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arlock";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arprot";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arqos";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arregion";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_aruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_aruser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_arvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awaddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awburst";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awcache";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awlock";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awprot";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awqos";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awregion";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awsize";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awuser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_awvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_bid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_bid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_bready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_bready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_bresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_bresp";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_buser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_buser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_bvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rresp";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_ruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_ruser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_rvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wid";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wstrb: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wuser";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi1_ps_wvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM m_axi1_ps_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF perst0n: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM perst0n";
  ATTRIBUTE X_INTERFACE_INFO OF perst1n: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM perst1n";
  ATTRIBUTE X_INTERFACE_INFO OF phy_ready_frbot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM phy_ready_frbot";
  ATTRIBUTE X_INTERFACE_INFO OF phy_ready_tobot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM phy_ready_tobot";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pl0_ref_clk: SIGNAL IS "XIL_INTERFACENAME PL0_REF_CLK, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_70da_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pl0_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 PL0_REF_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pmc_axi_noc_axi0_clk: SIGNAL IS "XIL_INTERFACENAME pmc_axi_noc_axi0_clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_70da_pspmc_0_0_pmc_axi_noc_axi0_clk, ASSOCIATED_BUSIF PMC_NOC_AXI_0, INSERT_VIP 0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_axi_noc_axi0_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 pmc_axi_noc_axi0_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pmc_noc_axi0_araddr: SIGNAL IS "XIL_INTERFACENAME PMC_NOC_AXI_0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_70da_pspmc_0_0_pmc_axi_noc_axi0_clk, NUM_R" & 
"EAD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_pmc, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, HD_TANDEM 0, INDEX 0, SLR_INDEX 0";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_araddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arburst";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arcache";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arlock";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arprot";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arqos";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arregion";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_aruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_aruser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_arvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awaddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awburst";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awcache";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awlock";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awprot";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awqos";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awregion";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awsize";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awuser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_awvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_bid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_bid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_bready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_bready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_bresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_bresp";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_buser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_buser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_bvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rresp";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_ruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_ruser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_rvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wstrb: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wuser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cfg_wvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_cfg_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_araddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arburst";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arcache";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arlock";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arprot";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arqos";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arregion";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_aruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_aruser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_arvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awaddr: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awburst: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awburst";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awcache: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awcache";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awlen: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awlock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awlock";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awprot: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awprot";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awqos: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awqos";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awregion: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awregion";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awsize: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awsize";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awuser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_awvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_bid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_bid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_bready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_bready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_bresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_bresp";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_buser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_buser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_bvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rresp: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rresp";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_ruser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_ruser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_rvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wdata: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wid";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wlast: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wready: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wready";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wstrb: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wuser: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wuser";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_pcie_wvalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM s_axi_pcie_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe0_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe0_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe10_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe10_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe11_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe11_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe12_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe12_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe13_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe13_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe14_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe14_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe15_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe15_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe1_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe1_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe2_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe2_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe3_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe3_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe4_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe4_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe5_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe5_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe6_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe6_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe7_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe7_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe8_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe8_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_phystatus: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_phystatus";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_powerdown: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_powerdown";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_polarity: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_polarity";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_status: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_status";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_termination: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_termination";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_rx_valid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_rx_valid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_charisk: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_charisk";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_compliance: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_compliance";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_data: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_data";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_datavalid: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_datavalid";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_deemph: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_deemph";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_detectrxloopback: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_detectrxloopback";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_elecidle: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_elecidle";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_maincursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_maincursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_margin: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_margin";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_postcursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_postcursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_precursor: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_precursor";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_startblock: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_startblock";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_swing: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_swing";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe9_tx_syncheader: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe9_tx_syncheader";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_req_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_req_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_req_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_req_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_req_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_req_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_req_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_req_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_req_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_req_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_res_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_res_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_res_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_res_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_res_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_res_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_res_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_res_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q0_rxmargin_res_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q0_rxmargin_res_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_req_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_req_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_req_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_req_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_req_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_req_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_req_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_req_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_req_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_req_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_res_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_res_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_res_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_res_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_res_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_res_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_res_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_res_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q1_rxmargin_res_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q1_rxmargin_res_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_req_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_req_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_req_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_req_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_req_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_req_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_req_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_req_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_req_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_req_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_res_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_res_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_res_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_res_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_res_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_res_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_res_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_res_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q2_rxmargin_res_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q2_rxmargin_res_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_req_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_req_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_req_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_req_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_req_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_req_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_req_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_req_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_req_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_req_req";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_res_ack: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_res_ack";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_res_cmd: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_res_cmd";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_res_lanenum: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_res_lanenum";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_res_payload: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_res_payload";
  ATTRIBUTE X_INTERFACE_INFO OF xpipe_q3_rxmargin_res_req: SIGNAL IS "xilinx.com:display_cpm4:ps_cpm:1.0 IF_PS_CPM xpipe_q3_rxmargin_res_req";
BEGIN
  U0 : pspmc_v1_4_0_pspmc
    GENERIC MAP (
      C_M_AXI_GP0_DATA_WIDTH => 128,
      C_M_AXI_GP2_DATA_WIDTH => 128,
      C_DIFF_RW_CLK_S_AXI_GP0 => 0,
      C_DIFF_RW_CLK_S_AXI_GP2 => 0,
      C_DIFF_RW_CLK_S_AXI_GP4 => 0,
      C_S_AXI_GP0_DATA_WIDTH => 128,
      C_S_AXI_GP2_DATA_WIDTH => 128,
      C_S_AXI_GP4_DATA_WIDTH => 128,
      C_S_AXI_ACP_DATA_WIDTH => 128,
      C_S_AXI_ACE_DATA_WIDTH => 128,
      C_PS_NOC_CCI_DATA_WIDTH => 128,
      C_PS_NOC_NCI_DATA_WIDTH => 128,
      C_NOC_PS_CCI_DATA_WIDTH => 128,
      C_PS_NOC_PMC_DATA_WIDTH => 128,
      C_NOC_PS_PMC_DATA_WIDTH => 128,
      C_PS_NOC_RPU_DATA_WIDTH => 128,
      C_PS_EMIO_GPIO_WIDTH => 32,
      C_PMC_EMIO_GPIO_WIDTH => 64,
      C_PMC_GPO_WIDTH => 32,
      C_PMC_GPI_WIDTH => 32,
      C_PL_SEM_GPO_ENABLE => 0,
      C_PMC_NOC_ADDR_WIDTH => 64,
      C_PMC_NOC_DATA_WIDTH => 128,
      C_NOC_PMC_ADDR_WIDTH => 64,
      C_NOC_PMC_DATA_WIDTH => 128,
      C_XDEVICE => "xcvc1902",
      C_SIM_DEVICE => "VERSAL_AI_CORE",
      C_SPP_PSPMC_TO_CORE_WIDTH => 12000,
      C_SPP_PSPMC_FROM_CORE_WIDTH => 12000,
      C_NUM_F2P0_INTR_INPUTS => "1",
      C_NUM_F2P1_INTR_INPUTS => "1",
      C_PMCPL_CLK0_BUF => 1,
      C_PMCPL_CLK1_BUF => 1,
      C_PMCPL_CLK2_BUF => 1,
      C_PMCPL_CLK3_BUF => 1,
      C_PMCPL_IRO_CLK_BUF => 1,
      C_ACE_LITE => 0,
      C_PS_USE_S_AXI_GP2 => 0,
      C_AXI4_EXT_USER_BITS => 0,
      C_SUBCORE_NAME => "design_2_versal_cips_0_0_gt_quad_base",
      C_VIP_SUBCORE_NAME => "versal_cips_ps_vip",
      C_CORE_NAME => "design_2_versal_cips_0_0",
      C_SD0_DATA_WIDTH => 4,
      C_SD1_DATA_WIDTH => 4,
      C_PS_TRACE_WIDTH => 2,
      C_PS_TRACE_PERIPHERAL => 0,
      C_PS_USE_STARTUP => 0,
      C_PS_USE_CAPTURE => 0,
      C_PS_USE_RPU_INTERRUPT => 0,
      C_PS_PCIE_EP_RESET1_IO => "None",
      C_PS_PCIE_EP_RESET2_IO => "None",
      C_PS_TIE_MJTAG_TCK_TO_GND => 1,
      C_LPD_GPIO_EMIO_ENABLE => 1,
      C_PMC_GPIO_EMIO_ENABLE => 0,
      C_PS_I2C0_PERIPHERAL_ENABLE => 0,
      C_PS_I2C1_PERIPHERAL_ENABLE => 0,
      C_GEM0_TSU_INC_CTRL => 3,
      C_GEM_TSU_ENABLE => 1
    )
    PORT MAP (
      pl0_ref_clk => pl0_ref_clk,
      fpd_axi_noc_axi1_clk => fpd_axi_noc_axi1_clk,
      fpd_axi_noc_axi1_awid => fpd_axi_noc_axi1_awid,
      fpd_axi_noc_axi1_awaddr => fpd_axi_noc_axi1_awaddr,
      fpd_axi_noc_axi1_awlen => fpd_axi_noc_axi1_awlen,
      fpd_axi_noc_axi1_awsize => fpd_axi_noc_axi1_awsize,
      fpd_axi_noc_axi1_awburst => fpd_axi_noc_axi1_awburst,
      fpd_axi_noc_axi1_awlock => fpd_axi_noc_axi1_awlock,
      fpd_axi_noc_axi1_awcache => fpd_axi_noc_axi1_awcache,
      fpd_axi_noc_axi1_awprot => fpd_axi_noc_axi1_awprot,
      fpd_axi_noc_axi1_awvalid => fpd_axi_noc_axi1_awvalid,
      fpd_axi_noc_axi1_awuser => fpd_axi_noc_axi1_awuser,
      fpd_axi_noc_axi1_awready => fpd_axi_noc_axi1_awready,
      fpd_axi_noc_axi1_wdata => fpd_axi_noc_axi1_wdata,
      fpd_axi_noc_axi1_wstrb => fpd_axi_noc_axi1_wstrb,
      fpd_axi_noc_axi1_wlast => fpd_axi_noc_axi1_wlast,
      fpd_axi_noc_axi1_wvalid => fpd_axi_noc_axi1_wvalid,
      fpd_axi_noc_axi1_wready => fpd_axi_noc_axi1_wready,
      fpd_axi_noc_axi1_bid => fpd_axi_noc_axi1_bid,
      fpd_axi_noc_axi1_bresp => fpd_axi_noc_axi1_bresp,
      fpd_axi_noc_axi1_bvalid => fpd_axi_noc_axi1_bvalid,
      fpd_axi_noc_axi1_bready => fpd_axi_noc_axi1_bready,
      fpd_axi_noc_axi1_arid => fpd_axi_noc_axi1_arid,
      fpd_axi_noc_axi1_araddr => fpd_axi_noc_axi1_araddr,
      fpd_axi_noc_axi1_arlen => fpd_axi_noc_axi1_arlen,
      fpd_axi_noc_axi1_arsize => fpd_axi_noc_axi1_arsize,
      fpd_axi_noc_axi1_arburst => fpd_axi_noc_axi1_arburst,
      fpd_axi_noc_axi1_arlock => fpd_axi_noc_axi1_arlock,
      fpd_axi_noc_axi1_arcache => fpd_axi_noc_axi1_arcache,
      fpd_axi_noc_axi1_arprot => fpd_axi_noc_axi1_arprot,
      fpd_axi_noc_axi1_arvalid => fpd_axi_noc_axi1_arvalid,
      fpd_axi_noc_axi1_aruser => fpd_axi_noc_axi1_aruser,
      fpd_axi_noc_axi1_arready => fpd_axi_noc_axi1_arready,
      fpd_axi_noc_axi1_rid => fpd_axi_noc_axi1_rid,
      fpd_axi_noc_axi1_rdata => fpd_axi_noc_axi1_rdata,
      fpd_axi_noc_axi1_rresp => fpd_axi_noc_axi1_rresp,
      fpd_axi_noc_axi1_rlast => fpd_axi_noc_axi1_rlast,
      fpd_axi_noc_axi1_rvalid => fpd_axi_noc_axi1_rvalid,
      fpd_axi_noc_axi1_rready => fpd_axi_noc_axi1_rready,
      fpd_axi_noc_axi1_awqos => fpd_axi_noc_axi1_awqos,
      fpd_axi_noc_axi1_arqos => fpd_axi_noc_axi1_arqos,
      pmc_axi_noc_axi0_clk => pmc_axi_noc_axi0_clk,
      pmc_noc_axi0_araddr => pmc_noc_axi0_araddr,
      pmc_noc_axi0_arburst => pmc_noc_axi0_arburst,
      pmc_noc_axi0_arcache => pmc_noc_axi0_arcache,
      pmc_noc_axi0_arid => pmc_noc_axi0_arid,
      pmc_noc_axi0_arlen => pmc_noc_axi0_arlen,
      pmc_noc_axi0_arlock => pmc_noc_axi0_arlock,
      pmc_noc_axi0_arprot => pmc_noc_axi0_arprot,
      pmc_noc_axi0_arqos => pmc_noc_axi0_arqos,
      pmc_noc_axi0_arregion => pmc_noc_axi0_arregion,
      pmc_noc_axi0_arsize => pmc_noc_axi0_arsize,
      pmc_noc_axi0_aruser => pmc_noc_axi0_aruser,
      pmc_noc_axi0_arvalid => pmc_noc_axi0_arvalid,
      pmc_noc_axi0_awaddr => pmc_noc_axi0_awaddr,
      pmc_noc_axi0_awburst => pmc_noc_axi0_awburst,
      pmc_noc_axi0_awcache => pmc_noc_axi0_awcache,
      pmc_noc_axi0_awid => pmc_noc_axi0_awid,
      pmc_noc_axi0_awlen => pmc_noc_axi0_awlen,
      pmc_noc_axi0_awlock => pmc_noc_axi0_awlock,
      pmc_noc_axi0_awprot => pmc_noc_axi0_awprot,
      pmc_noc_axi0_awqos => pmc_noc_axi0_awqos,
      pmc_noc_axi0_awregion => pmc_noc_axi0_awregion,
      pmc_noc_axi0_awsize => pmc_noc_axi0_awsize,
      pmc_noc_axi0_awuser => pmc_noc_axi0_awuser,
      pmc_noc_axi0_awvalid => pmc_noc_axi0_awvalid,
      pmc_noc_axi0_bready => pmc_noc_axi0_bready,
      pmc_noc_axi0_rready => pmc_noc_axi0_rready,
      pmc_noc_axi0_wdata => pmc_noc_axi0_wdata,
      pmc_noc_axi0_wid => pmc_noc_axi0_wid,
      pmc_noc_axi0_wlast => pmc_noc_axi0_wlast,
      pmc_noc_axi0_wstrb => pmc_noc_axi0_wstrb,
      pmc_noc_axi0_wuser => pmc_noc_axi0_wuser,
      pmc_noc_axi0_wvalid => pmc_noc_axi0_wvalid,
      pmc_noc_axi0_arready => pmc_noc_axi0_arready,
      pmc_noc_axi0_awready => pmc_noc_axi0_awready,
      pmc_noc_axi0_bid => pmc_noc_axi0_bid,
      pmc_noc_axi0_bresp => pmc_noc_axi0_bresp,
      pmc_noc_axi0_buser => pmc_noc_axi0_buser,
      pmc_noc_axi0_bvalid => pmc_noc_axi0_bvalid,
      pmc_noc_axi0_rdata => pmc_noc_axi0_rdata,
      pmc_noc_axi0_rid => pmc_noc_axi0_rid,
      pmc_noc_axi0_rlast => pmc_noc_axi0_rlast,
      pmc_noc_axi0_rresp => pmc_noc_axi0_rresp,
      pmc_noc_axi0_ruser => pmc_noc_axi0_ruser,
      pmc_noc_axi0_rvalid => pmc_noc_axi0_rvalid,
      pmc_noc_axi0_wready => pmc_noc_axi0_wready,
      lpd_gpio_o => lpd_gpio_o,
      lpd_gpio_i => lpd_gpio_i,
      lpd_gpio_t => lpd_gpio_t,
      cpm_osc_clk_div2 => cpm_osc_clk_div2,
      m_axi0_ps_araddr => m_axi0_ps_araddr,
      m_axi0_ps_arburst => m_axi0_ps_arburst,
      m_axi0_ps_arcache => m_axi0_ps_arcache,
      m_axi0_ps_arid => m_axi0_ps_arid,
      m_axi0_ps_arlen => m_axi0_ps_arlen,
      m_axi0_ps_arlock => m_axi0_ps_arlock,
      m_axi0_ps_arprot => m_axi0_ps_arprot,
      m_axi0_ps_arqos => m_axi0_ps_arqos,
      m_axi0_ps_arready => m_axi0_ps_arready,
      m_axi0_ps_arregion => m_axi0_ps_arregion,
      m_axi0_ps_arsize => m_axi0_ps_arsize,
      m_axi0_ps_aruser => m_axi0_ps_aruser,
      m_axi0_ps_arvalid => m_axi0_ps_arvalid,
      m_axi0_ps_awaddr => m_axi0_ps_awaddr,
      m_axi0_ps_awburst => m_axi0_ps_awburst,
      m_axi0_ps_awcache => m_axi0_ps_awcache,
      m_axi0_ps_awid => m_axi0_ps_awid,
      m_axi0_ps_awlen => m_axi0_ps_awlen,
      m_axi0_ps_awlock => m_axi0_ps_awlock,
      m_axi0_ps_awprot => m_axi0_ps_awprot,
      m_axi0_ps_awqos => m_axi0_ps_awqos,
      m_axi0_ps_awready => m_axi0_ps_awready,
      m_axi0_ps_awregion => m_axi0_ps_awregion,
      m_axi0_ps_awsize => m_axi0_ps_awsize,
      m_axi0_ps_awuser => m_axi0_ps_awuser,
      m_axi0_ps_awvalid => m_axi0_ps_awvalid,
      m_axi0_ps_bid => m_axi0_ps_bid,
      m_axi0_ps_bready => m_axi0_ps_bready,
      m_axi0_ps_bresp => m_axi0_ps_bresp,
      m_axi0_ps_buser => m_axi0_ps_buser,
      m_axi0_ps_bvalid => m_axi0_ps_bvalid,
      m_axi0_ps_rdata => m_axi0_ps_rdata,
      m_axi0_ps_rid => m_axi0_ps_rid,
      m_axi0_ps_rlast => m_axi0_ps_rlast,
      m_axi0_ps_rready => m_axi0_ps_rready,
      m_axi0_ps_rresp => m_axi0_ps_rresp,
      m_axi0_ps_ruser => m_axi0_ps_ruser,
      m_axi0_ps_rvalid => m_axi0_ps_rvalid,
      m_axi0_ps_wdata => m_axi0_ps_wdata,
      m_axi0_ps_wid => m_axi0_ps_wid,
      m_axi0_ps_wlast => m_axi0_ps_wlast,
      m_axi0_ps_wready => m_axi0_ps_wready,
      m_axi0_ps_wstrb => m_axi0_ps_wstrb,
      m_axi0_ps_wuser => m_axi0_ps_wuser,
      m_axi0_ps_wvalid => m_axi0_ps_wvalid,
      m_axi1_ps_araddr => m_axi1_ps_araddr,
      m_axi1_ps_arburst => m_axi1_ps_arburst,
      m_axi1_ps_arcache => m_axi1_ps_arcache,
      m_axi1_ps_arid => m_axi1_ps_arid,
      m_axi1_ps_arlen => m_axi1_ps_arlen,
      m_axi1_ps_arlock => m_axi1_ps_arlock,
      m_axi1_ps_arprot => m_axi1_ps_arprot,
      m_axi1_ps_arqos => m_axi1_ps_arqos,
      m_axi1_ps_arready => m_axi1_ps_arready,
      m_axi1_ps_arregion => m_axi1_ps_arregion,
      m_axi1_ps_arsize => m_axi1_ps_arsize,
      m_axi1_ps_aruser => m_axi1_ps_aruser,
      m_axi1_ps_arvalid => m_axi1_ps_arvalid,
      m_axi1_ps_awaddr => m_axi1_ps_awaddr,
      m_axi1_ps_awburst => m_axi1_ps_awburst,
      m_axi1_ps_awcache => m_axi1_ps_awcache,
      m_axi1_ps_awid => m_axi1_ps_awid,
      m_axi1_ps_awlen => m_axi1_ps_awlen,
      m_axi1_ps_awlock => m_axi1_ps_awlock,
      m_axi1_ps_awprot => m_axi1_ps_awprot,
      m_axi1_ps_awqos => m_axi1_ps_awqos,
      m_axi1_ps_awready => m_axi1_ps_awready,
      m_axi1_ps_awregion => m_axi1_ps_awregion,
      m_axi1_ps_awsize => m_axi1_ps_awsize,
      m_axi1_ps_awuser => m_axi1_ps_awuser,
      m_axi1_ps_awvalid => m_axi1_ps_awvalid,
      m_axi1_ps_bid => m_axi1_ps_bid,
      m_axi1_ps_bready => m_axi1_ps_bready,
      m_axi1_ps_bresp => m_axi1_ps_bresp,
      m_axi1_ps_buser => m_axi1_ps_buser,
      m_axi1_ps_bvalid => m_axi1_ps_bvalid,
      m_axi1_ps_rdata => m_axi1_ps_rdata,
      m_axi1_ps_rid => m_axi1_ps_rid,
      m_axi1_ps_rlast => m_axi1_ps_rlast,
      m_axi1_ps_rready => m_axi1_ps_rready,
      m_axi1_ps_rresp => m_axi1_ps_rresp,
      m_axi1_ps_ruser => m_axi1_ps_ruser,
      m_axi1_ps_rvalid => m_axi1_ps_rvalid,
      m_axi1_ps_wdata => m_axi1_ps_wdata,
      m_axi1_ps_wid => m_axi1_ps_wid,
      m_axi1_ps_wlast => m_axi1_ps_wlast,
      m_axi1_ps_wready => m_axi1_ps_wready,
      m_axi1_ps_wstrb => m_axi1_ps_wstrb,
      m_axi1_ps_wuser => m_axi1_ps_wuser,
      m_axi1_ps_wvalid => m_axi1_ps_wvalid,
      cpmps_corr_irq => cpmps_corr_irq,
      cpmps_misc_irq => cpmps_misc_irq,
      cpmps_uncorr_irq => cpmps_uncorr_irq,
      s_axi_cfg_araddr => s_axi_cfg_araddr,
      s_axi_cfg_arburst => s_axi_cfg_arburst,
      s_axi_cfg_arcache => s_axi_cfg_arcache,
      s_axi_cfg_arid => s_axi_cfg_arid,
      s_axi_cfg_arlen => s_axi_cfg_arlen,
      s_axi_cfg_arlock => s_axi_cfg_arlock,
      s_axi_cfg_arprot => s_axi_cfg_arprot,
      s_axi_cfg_arqos => s_axi_cfg_arqos,
      s_axi_cfg_arready => s_axi_cfg_arready,
      s_axi_cfg_arregion => s_axi_cfg_arregion,
      s_axi_cfg_arsize => s_axi_cfg_arsize,
      s_axi_cfg_aruser => s_axi_cfg_aruser,
      s_axi_cfg_arvalid => s_axi_cfg_arvalid,
      s_axi_cfg_awaddr => s_axi_cfg_awaddr,
      s_axi_cfg_awburst => s_axi_cfg_awburst,
      s_axi_cfg_awcache => s_axi_cfg_awcache,
      s_axi_cfg_awid => s_axi_cfg_awid,
      s_axi_cfg_awlen => s_axi_cfg_awlen,
      s_axi_cfg_awlock => s_axi_cfg_awlock,
      s_axi_cfg_awprot => s_axi_cfg_awprot,
      s_axi_cfg_awqos => s_axi_cfg_awqos,
      s_axi_cfg_awready => s_axi_cfg_awready,
      s_axi_cfg_awregion => s_axi_cfg_awregion,
      s_axi_cfg_awsize => s_axi_cfg_awsize,
      s_axi_cfg_awuser => s_axi_cfg_awuser,
      s_axi_cfg_awvalid => s_axi_cfg_awvalid,
      s_axi_cfg_bid => s_axi_cfg_bid,
      s_axi_cfg_bready => s_axi_cfg_bready,
      s_axi_cfg_bresp => s_axi_cfg_bresp,
      s_axi_cfg_buser => s_axi_cfg_buser,
      s_axi_cfg_bvalid => s_axi_cfg_bvalid,
      s_axi_cfg_rdata => s_axi_cfg_rdata,
      s_axi_cfg_rid => s_axi_cfg_rid,
      s_axi_cfg_rlast => s_axi_cfg_rlast,
      s_axi_cfg_rready => s_axi_cfg_rready,
      s_axi_cfg_rresp => s_axi_cfg_rresp,
      s_axi_cfg_ruser => s_axi_cfg_ruser,
      s_axi_cfg_rvalid => s_axi_cfg_rvalid,
      s_axi_cfg_wdata => s_axi_cfg_wdata,
      s_axi_cfg_wid => s_axi_cfg_wid,
      s_axi_cfg_wlast => s_axi_cfg_wlast,
      s_axi_cfg_wready => s_axi_cfg_wready,
      s_axi_cfg_wstrb => s_axi_cfg_wstrb,
      s_axi_cfg_wuser => s_axi_cfg_wuser,
      s_axi_cfg_wvalid => s_axi_cfg_wvalid,
      xpipe0_powerdown => xpipe0_powerdown,
      xpipe1_powerdown => xpipe1_powerdown,
      xpipe2_powerdown => xpipe2_powerdown,
      xpipe3_powerdown => xpipe3_powerdown,
      xpipe4_powerdown => xpipe4_powerdown,
      xpipe5_powerdown => xpipe5_powerdown,
      xpipe6_powerdown => xpipe6_powerdown,
      xpipe7_powerdown => xpipe7_powerdown,
      xpipe8_powerdown => xpipe8_powerdown,
      xpipe9_powerdown => xpipe9_powerdown,
      xpipe10_powerdown => xpipe10_powerdown,
      xpipe11_powerdown => xpipe11_powerdown,
      xpipe12_powerdown => xpipe12_powerdown,
      xpipe13_powerdown => xpipe13_powerdown,
      xpipe14_powerdown => xpipe14_powerdown,
      xpipe15_powerdown => xpipe15_powerdown,
      xpipe1_phystatus => xpipe1_phystatus,
      xpipe2_phystatus => xpipe2_phystatus,
      xpipe3_phystatus => xpipe3_phystatus,
      xpipe4_phystatus => xpipe4_phystatus,
      xpipe5_phystatus => xpipe5_phystatus,
      xpipe6_phystatus => xpipe6_phystatus,
      xpipe7_phystatus => xpipe7_phystatus,
      xpipe8_phystatus => xpipe8_phystatus,
      xpipe9_phystatus => xpipe9_phystatus,
      xpipe10_phystatus => xpipe10_phystatus,
      xpipe11_phystatus => xpipe11_phystatus,
      xpipe12_phystatus => xpipe12_phystatus,
      xpipe13_phystatus => xpipe13_phystatus,
      xpipe14_phystatus => xpipe14_phystatus,
      xpipe15_phystatus => xpipe15_phystatus,
      xpipe0_rx_charisk => xpipe0_rx_charisk,
      xpipe1_rx_charisk => xpipe1_rx_charisk,
      xpipe2_rx_charisk => xpipe2_rx_charisk,
      xpipe3_rx_charisk => xpipe3_rx_charisk,
      xpipe4_rx_charisk => xpipe4_rx_charisk,
      xpipe5_rx_charisk => xpipe5_rx_charisk,
      xpipe6_rx_charisk => xpipe6_rx_charisk,
      xpipe7_rx_charisk => xpipe7_rx_charisk,
      xpipe8_rx_charisk => xpipe8_rx_charisk,
      xpipe9_rx_charisk => xpipe9_rx_charisk,
      xpipe10_rx_charisk => xpipe10_rx_charisk,
      xpipe11_rx_charisk => xpipe11_rx_charisk,
      xpipe12_rx_charisk => xpipe12_rx_charisk,
      xpipe13_rx_charisk => xpipe13_rx_charisk,
      xpipe14_rx_charisk => xpipe14_rx_charisk,
      xpipe15_rx_charisk => xpipe15_rx_charisk,
      xpipe0_rx_data => xpipe0_rx_data,
      xpipe1_rx_data => xpipe1_rx_data,
      xpipe2_rx_data => xpipe2_rx_data,
      xpipe3_rx_data => xpipe3_rx_data,
      xpipe4_rx_data => xpipe4_rx_data,
      xpipe5_rx_data => xpipe5_rx_data,
      xpipe6_rx_data => xpipe6_rx_data,
      xpipe7_rx_data => xpipe7_rx_data,
      xpipe8_rx_data => xpipe8_rx_data,
      xpipe9_rx_data => xpipe9_rx_data,
      xpipe10_rx_data => xpipe10_rx_data,
      xpipe11_rx_data => xpipe11_rx_data,
      xpipe12_rx_data => xpipe12_rx_data,
      xpipe13_rx_data => xpipe13_rx_data,
      xpipe14_rx_data => xpipe14_rx_data,
      xpipe15_rx_data => xpipe15_rx_data,
      xpipe0_rx_datavalid => xpipe0_rx_datavalid,
      xpipe1_rx_datavalid => xpipe1_rx_datavalid,
      xpipe2_rx_datavalid => xpipe2_rx_datavalid,
      xpipe3_rx_datavalid => xpipe3_rx_datavalid,
      xpipe4_rx_datavalid => xpipe4_rx_datavalid,
      xpipe5_rx_datavalid => xpipe5_rx_datavalid,
      xpipe6_rx_datavalid => xpipe6_rx_datavalid,
      xpipe7_rx_datavalid => xpipe7_rx_datavalid,
      xpipe8_rx_datavalid => xpipe8_rx_datavalid,
      xpipe9_rx_datavalid => xpipe9_rx_datavalid,
      xpipe10_rx_datavalid => xpipe10_rx_datavalid,
      xpipe11_rx_datavalid => xpipe11_rx_datavalid,
      xpipe12_rx_datavalid => xpipe12_rx_datavalid,
      xpipe13_rx_datavalid => xpipe13_rx_datavalid,
      xpipe14_rx_datavalid => xpipe14_rx_datavalid,
      xpipe15_rx_datavalid => xpipe15_rx_datavalid,
      xpipe0_rx_elecidle => xpipe0_rx_elecidle,
      xpipe1_rx_elecidle => xpipe1_rx_elecidle,
      xpipe2_rx_elecidle => xpipe2_rx_elecidle,
      xpipe3_rx_elecidle => xpipe3_rx_elecidle,
      xpipe4_rx_elecidle => xpipe4_rx_elecidle,
      xpipe5_rx_elecidle => xpipe5_rx_elecidle,
      xpipe6_rx_elecidle => xpipe6_rx_elecidle,
      xpipe7_rx_elecidle => xpipe7_rx_elecidle,
      xpipe8_rx_elecidle => xpipe8_rx_elecidle,
      xpipe9_rx_elecidle => xpipe9_rx_elecidle,
      xpipe10_rx_elecidle => xpipe10_rx_elecidle,
      xpipe11_rx_elecidle => xpipe11_rx_elecidle,
      xpipe12_rx_elecidle => xpipe12_rx_elecidle,
      xpipe13_rx_elecidle => xpipe13_rx_elecidle,
      xpipe14_rx_elecidle => xpipe14_rx_elecidle,
      xpipe15_rx_elecidle => xpipe15_rx_elecidle,
      xpipe0_rx_polarity => xpipe0_rx_polarity,
      xpipe1_rx_polarity => xpipe1_rx_polarity,
      xpipe2_rx_polarity => xpipe2_rx_polarity,
      xpipe3_rx_polarity => xpipe3_rx_polarity,
      xpipe4_rx_polarity => xpipe4_rx_polarity,
      xpipe5_rx_polarity => xpipe5_rx_polarity,
      xpipe6_rx_polarity => xpipe6_rx_polarity,
      xpipe7_rx_polarity => xpipe7_rx_polarity,
      xpipe8_rx_polarity => xpipe8_rx_polarity,
      xpipe9_rx_polarity => xpipe9_rx_polarity,
      xpipe10_rx_polarity => xpipe10_rx_polarity,
      xpipe11_rx_polarity => xpipe11_rx_polarity,
      xpipe12_rx_polarity => xpipe12_rx_polarity,
      xpipe13_rx_polarity => xpipe13_rx_polarity,
      xpipe14_rx_polarity => xpipe14_rx_polarity,
      xpipe15_rx_polarity => xpipe15_rx_polarity,
      xpipe0_rx_startblock => xpipe0_rx_startblock,
      xpipe1_rx_startblock => xpipe1_rx_startblock,
      xpipe2_rx_startblock => xpipe2_rx_startblock,
      xpipe3_rx_startblock => xpipe3_rx_startblock,
      xpipe4_rx_startblock => xpipe4_rx_startblock,
      xpipe5_rx_startblock => xpipe5_rx_startblock,
      xpipe6_rx_startblock => xpipe6_rx_startblock,
      xpipe7_rx_startblock => xpipe7_rx_startblock,
      xpipe8_rx_startblock => xpipe8_rx_startblock,
      xpipe9_rx_startblock => xpipe9_rx_startblock,
      xpipe10_rx_startblock => xpipe10_rx_startblock,
      xpipe11_rx_startblock => xpipe11_rx_startblock,
      xpipe12_rx_startblock => xpipe12_rx_startblock,
      xpipe13_rx_startblock => xpipe13_rx_startblock,
      xpipe14_rx_startblock => xpipe14_rx_startblock,
      xpipe15_rx_startblock => xpipe15_rx_startblock,
      xpipe0_rx_status => xpipe0_rx_status,
      xpipe1_rx_status => xpipe1_rx_status,
      xpipe2_rx_status => xpipe2_rx_status,
      xpipe3_rx_status => xpipe3_rx_status,
      xpipe4_rx_status => xpipe4_rx_status,
      xpipe5_rx_status => xpipe5_rx_status,
      xpipe6_rx_status => xpipe6_rx_status,
      xpipe7_rx_status => xpipe7_rx_status,
      xpipe8_rx_status => xpipe8_rx_status,
      xpipe9_rx_status => xpipe9_rx_status,
      xpipe10_rx_status => xpipe10_rx_status,
      xpipe11_rx_status => xpipe11_rx_status,
      xpipe12_rx_status => xpipe12_rx_status,
      xpipe13_rx_status => xpipe13_rx_status,
      xpipe14_rx_status => xpipe14_rx_status,
      xpipe15_rx_status => xpipe15_rx_status,
      xpipe0_rx_syncheader => xpipe0_rx_syncheader,
      xpipe1_rx_syncheader => xpipe1_rx_syncheader,
      xpipe2_rx_syncheader => xpipe2_rx_syncheader,
      xpipe3_rx_syncheader => xpipe3_rx_syncheader,
      xpipe4_rx_syncheader => xpipe4_rx_syncheader,
      xpipe5_rx_syncheader => xpipe5_rx_syncheader,
      xpipe6_rx_syncheader => xpipe6_rx_syncheader,
      xpipe7_rx_syncheader => xpipe7_rx_syncheader,
      xpipe8_rx_syncheader => xpipe8_rx_syncheader,
      xpipe9_rx_syncheader => xpipe9_rx_syncheader,
      xpipe10_rx_syncheader => xpipe10_rx_syncheader,
      xpipe11_rx_syncheader => xpipe11_rx_syncheader,
      xpipe12_rx_syncheader => xpipe12_rx_syncheader,
      xpipe13_rx_syncheader => xpipe13_rx_syncheader,
      xpipe14_rx_syncheader => xpipe14_rx_syncheader,
      xpipe15_rx_syncheader => xpipe15_rx_syncheader,
      xpipe0_rx_termination => xpipe0_rx_termination,
      xpipe1_rx_termination => xpipe1_rx_termination,
      xpipe2_rx_termination => xpipe2_rx_termination,
      xpipe3_rx_termination => xpipe3_rx_termination,
      xpipe4_rx_termination => xpipe4_rx_termination,
      xpipe5_rx_termination => xpipe5_rx_termination,
      xpipe6_rx_termination => xpipe6_rx_termination,
      xpipe7_rx_termination => xpipe7_rx_termination,
      xpipe8_rx_termination => xpipe8_rx_termination,
      xpipe9_rx_termination => xpipe9_rx_termination,
      xpipe10_rx_termination => xpipe10_rx_termination,
      xpipe11_rx_termination => xpipe11_rx_termination,
      xpipe12_rx_termination => xpipe12_rx_termination,
      xpipe13_rx_termination => xpipe13_rx_termination,
      xpipe14_rx_termination => xpipe14_rx_termination,
      xpipe15_rx_termination => xpipe15_rx_termination,
      xpipe0_rx_valid => xpipe0_rx_valid,
      xpipe1_rx_valid => xpipe1_rx_valid,
      xpipe2_rx_valid => xpipe2_rx_valid,
      xpipe3_rx_valid => xpipe3_rx_valid,
      xpipe4_rx_valid => xpipe4_rx_valid,
      xpipe5_rx_valid => xpipe5_rx_valid,
      xpipe6_rx_valid => xpipe6_rx_valid,
      xpipe7_rx_valid => xpipe7_rx_valid,
      xpipe8_rx_valid => xpipe8_rx_valid,
      xpipe9_rx_valid => xpipe9_rx_valid,
      xpipe10_rx_valid => xpipe10_rx_valid,
      xpipe11_rx_valid => xpipe11_rx_valid,
      xpipe12_rx_valid => xpipe12_rx_valid,
      xpipe13_rx_valid => xpipe13_rx_valid,
      xpipe14_rx_valid => xpipe14_rx_valid,
      xpipe15_rx_valid => xpipe15_rx_valid,
      xpipe0_tx_charisk => xpipe0_tx_charisk,
      xpipe1_tx_charisk => xpipe1_tx_charisk,
      xpipe2_tx_charisk => xpipe2_tx_charisk,
      xpipe3_tx_charisk => xpipe3_tx_charisk,
      xpipe4_tx_charisk => xpipe4_tx_charisk,
      xpipe5_tx_charisk => xpipe5_tx_charisk,
      xpipe6_tx_charisk => xpipe6_tx_charisk,
      xpipe7_tx_charisk => xpipe7_tx_charisk,
      xpipe8_tx_charisk => xpipe8_tx_charisk,
      xpipe9_tx_charisk => xpipe9_tx_charisk,
      xpipe10_tx_charisk => xpipe10_tx_charisk,
      xpipe11_tx_charisk => xpipe11_tx_charisk,
      xpipe12_tx_charisk => xpipe12_tx_charisk,
      xpipe13_tx_charisk => xpipe13_tx_charisk,
      xpipe14_tx_charisk => xpipe14_tx_charisk,
      xpipe15_tx_charisk => xpipe15_tx_charisk,
      xpipe0_tx_compliance => xpipe0_tx_compliance,
      xpipe1_tx_compliance => xpipe1_tx_compliance,
      xpipe2_tx_compliance => xpipe2_tx_compliance,
      xpipe3_tx_compliance => xpipe3_tx_compliance,
      xpipe4_tx_compliance => xpipe4_tx_compliance,
      xpipe5_tx_compliance => xpipe5_tx_compliance,
      xpipe6_tx_compliance => xpipe6_tx_compliance,
      xpipe7_tx_compliance => xpipe7_tx_compliance,
      xpipe8_tx_compliance => xpipe8_tx_compliance,
      xpipe9_tx_compliance => xpipe9_tx_compliance,
      xpipe10_tx_compliance => xpipe10_tx_compliance,
      xpipe11_tx_compliance => xpipe11_tx_compliance,
      xpipe12_tx_compliance => xpipe12_tx_compliance,
      xpipe13_tx_compliance => xpipe13_tx_compliance,
      xpipe14_tx_compliance => xpipe14_tx_compliance,
      xpipe15_tx_compliance => xpipe15_tx_compliance,
      xpipe0_tx_data => xpipe0_tx_data,
      xpipe1_tx_data => xpipe1_tx_data,
      xpipe2_tx_data => xpipe2_tx_data,
      xpipe3_tx_data => xpipe3_tx_data,
      xpipe4_tx_data => xpipe4_tx_data,
      xpipe5_tx_data => xpipe5_tx_data,
      xpipe6_tx_data => xpipe6_tx_data,
      xpipe7_tx_data => xpipe7_tx_data,
      xpipe8_tx_data => xpipe8_tx_data,
      xpipe9_tx_data => xpipe9_tx_data,
      xpipe10_tx_data => xpipe10_tx_data,
      xpipe11_tx_data => xpipe11_tx_data,
      xpipe12_tx_data => xpipe12_tx_data,
      xpipe13_tx_data => xpipe13_tx_data,
      xpipe14_tx_data => xpipe14_tx_data,
      xpipe15_tx_data => xpipe15_tx_data,
      xpipe0_tx_datavalid => xpipe0_tx_datavalid,
      xpipe1_tx_datavalid => xpipe1_tx_datavalid,
      xpipe2_tx_datavalid => xpipe2_tx_datavalid,
      xpipe3_tx_datavalid => xpipe3_tx_datavalid,
      xpipe4_tx_datavalid => xpipe4_tx_datavalid,
      xpipe5_tx_datavalid => xpipe5_tx_datavalid,
      xpipe6_tx_datavalid => xpipe6_tx_datavalid,
      xpipe7_tx_datavalid => xpipe7_tx_datavalid,
      xpipe8_tx_datavalid => xpipe8_tx_datavalid,
      xpipe9_tx_datavalid => xpipe9_tx_datavalid,
      xpipe10_tx_datavalid => xpipe10_tx_datavalid,
      xpipe11_tx_datavalid => xpipe11_tx_datavalid,
      xpipe12_tx_datavalid => xpipe12_tx_datavalid,
      xpipe13_tx_datavalid => xpipe13_tx_datavalid,
      xpipe14_tx_datavalid => xpipe14_tx_datavalid,
      xpipe15_tx_datavalid => xpipe15_tx_datavalid,
      xpipe0_tx_deemph => xpipe0_tx_deemph,
      xpipe1_tx_deemph => xpipe1_tx_deemph,
      xpipe2_tx_deemph => xpipe2_tx_deemph,
      xpipe3_tx_deemph => xpipe3_tx_deemph,
      xpipe4_tx_deemph => xpipe4_tx_deemph,
      xpipe5_tx_deemph => xpipe5_tx_deemph,
      xpipe6_tx_deemph => xpipe6_tx_deemph,
      xpipe7_tx_deemph => xpipe7_tx_deemph,
      xpipe8_tx_deemph => xpipe8_tx_deemph,
      xpipe9_tx_deemph => xpipe9_tx_deemph,
      xpipe10_tx_deemph => xpipe10_tx_deemph,
      xpipe11_tx_deemph => xpipe11_tx_deemph,
      xpipe12_tx_deemph => xpipe12_tx_deemph,
      xpipe13_tx_deemph => xpipe13_tx_deemph,
      xpipe14_tx_deemph => xpipe14_tx_deemph,
      xpipe15_tx_deemph => xpipe15_tx_deemph,
      xpipe0_tx_detectrxloopback => xpipe0_tx_detectrxloopback,
      xpipe1_tx_detectrxloopback => xpipe1_tx_detectrxloopback,
      xpipe2_tx_detectrxloopback => xpipe2_tx_detectrxloopback,
      xpipe3_tx_detectrxloopback => xpipe3_tx_detectrxloopback,
      xpipe4_tx_detectrxloopback => xpipe4_tx_detectrxloopback,
      xpipe5_tx_detectrxloopback => xpipe5_tx_detectrxloopback,
      xpipe6_tx_detectrxloopback => xpipe6_tx_detectrxloopback,
      xpipe7_tx_detectrxloopback => xpipe7_tx_detectrxloopback,
      xpipe8_tx_detectrxloopback => xpipe8_tx_detectrxloopback,
      xpipe9_tx_detectrxloopback => xpipe9_tx_detectrxloopback,
      xpipe10_tx_detectrxloopback => xpipe10_tx_detectrxloopback,
      xpipe11_tx_detectrxloopback => xpipe11_tx_detectrxloopback,
      xpipe12_tx_detectrxloopback => xpipe12_tx_detectrxloopback,
      xpipe13_tx_detectrxloopback => xpipe13_tx_detectrxloopback,
      xpipe14_tx_detectrxloopback => xpipe14_tx_detectrxloopback,
      xpipe15_tx_detectrxloopback => xpipe15_tx_detectrxloopback,
      xpipe0_tx_elecidle => xpipe0_tx_elecidle,
      xpipe1_tx_elecidle => xpipe1_tx_elecidle,
      xpipe2_tx_elecidle => xpipe2_tx_elecidle,
      xpipe3_tx_elecidle => xpipe3_tx_elecidle,
      xpipe4_tx_elecidle => xpipe4_tx_elecidle,
      xpipe5_tx_elecidle => xpipe5_tx_elecidle,
      xpipe6_tx_elecidle => xpipe6_tx_elecidle,
      xpipe7_tx_elecidle => xpipe7_tx_elecidle,
      xpipe8_tx_elecidle => xpipe8_tx_elecidle,
      xpipe9_tx_elecidle => xpipe9_tx_elecidle,
      xpipe10_tx_elecidle => xpipe10_tx_elecidle,
      xpipe11_tx_elecidle => xpipe11_tx_elecidle,
      xpipe12_tx_elecidle => xpipe12_tx_elecidle,
      xpipe13_tx_elecidle => xpipe13_tx_elecidle,
      xpipe14_tx_elecidle => xpipe14_tx_elecidle,
      xpipe15_tx_elecidle => xpipe15_tx_elecidle,
      xpipe0_tx_maincursor => xpipe0_tx_maincursor,
      xpipe1_tx_maincursor => xpipe1_tx_maincursor,
      xpipe2_tx_maincursor => xpipe2_tx_maincursor,
      xpipe3_tx_maincursor => xpipe3_tx_maincursor,
      xpipe4_tx_maincursor => xpipe4_tx_maincursor,
      xpipe5_tx_maincursor => xpipe5_tx_maincursor,
      xpipe6_tx_maincursor => xpipe6_tx_maincursor,
      xpipe7_tx_maincursor => xpipe7_tx_maincursor,
      xpipe8_tx_maincursor => xpipe8_tx_maincursor,
      xpipe9_tx_maincursor => xpipe9_tx_maincursor,
      xpipe10_tx_maincursor => xpipe10_tx_maincursor,
      xpipe11_tx_maincursor => xpipe11_tx_maincursor,
      xpipe12_tx_maincursor => xpipe12_tx_maincursor,
      xpipe13_tx_maincursor => xpipe13_tx_maincursor,
      xpipe14_tx_maincursor => xpipe14_tx_maincursor,
      xpipe15_tx_maincursor => xpipe15_tx_maincursor,
      xpipe0_tx_margin => xpipe0_tx_margin,
      xpipe1_tx_margin => xpipe1_tx_margin,
      xpipe2_tx_margin => xpipe2_tx_margin,
      xpipe3_tx_margin => xpipe3_tx_margin,
      xpipe4_tx_margin => xpipe4_tx_margin,
      xpipe5_tx_margin => xpipe5_tx_margin,
      xpipe6_tx_margin => xpipe6_tx_margin,
      xpipe7_tx_margin => xpipe7_tx_margin,
      xpipe8_tx_margin => xpipe8_tx_margin,
      xpipe9_tx_margin => xpipe9_tx_margin,
      xpipe10_tx_margin => xpipe10_tx_margin,
      xpipe11_tx_margin => xpipe11_tx_margin,
      xpipe12_tx_margin => xpipe12_tx_margin,
      xpipe13_tx_margin => xpipe13_tx_margin,
      xpipe14_tx_margin => xpipe14_tx_margin,
      xpipe15_tx_margin => xpipe15_tx_margin,
      xpipe0_tx_postcursor => xpipe0_tx_postcursor,
      xpipe1_tx_postcursor => xpipe1_tx_postcursor,
      xpipe2_tx_postcursor => xpipe2_tx_postcursor,
      xpipe3_tx_postcursor => xpipe3_tx_postcursor,
      xpipe4_tx_postcursor => xpipe4_tx_postcursor,
      xpipe5_tx_postcursor => xpipe5_tx_postcursor,
      xpipe6_tx_postcursor => xpipe6_tx_postcursor,
      xpipe7_tx_postcursor => xpipe7_tx_postcursor,
      xpipe8_tx_postcursor => xpipe8_tx_postcursor,
      xpipe9_tx_postcursor => xpipe9_tx_postcursor,
      xpipe10_tx_postcursor => xpipe10_tx_postcursor,
      xpipe11_tx_postcursor => xpipe11_tx_postcursor,
      xpipe12_tx_postcursor => xpipe12_tx_postcursor,
      xpipe13_tx_postcursor => xpipe13_tx_postcursor,
      xpipe14_tx_postcursor => xpipe14_tx_postcursor,
      xpipe15_tx_postcursor => xpipe15_tx_postcursor,
      xpipe0_tx_precursor => xpipe0_tx_precursor,
      xpipe1_tx_precursor => xpipe1_tx_precursor,
      xpipe2_tx_precursor => xpipe2_tx_precursor,
      xpipe3_tx_precursor => xpipe3_tx_precursor,
      xpipe4_tx_precursor => xpipe4_tx_precursor,
      xpipe5_tx_precursor => xpipe5_tx_precursor,
      xpipe6_tx_precursor => xpipe6_tx_precursor,
      xpipe7_tx_precursor => xpipe7_tx_precursor,
      xpipe8_tx_precursor => xpipe8_tx_precursor,
      xpipe9_tx_precursor => xpipe9_tx_precursor,
      xpipe10_tx_precursor => xpipe10_tx_precursor,
      xpipe11_tx_precursor => xpipe11_tx_precursor,
      xpipe12_tx_precursor => xpipe12_tx_precursor,
      xpipe13_tx_precursor => xpipe13_tx_precursor,
      xpipe14_tx_precursor => xpipe14_tx_precursor,
      xpipe15_tx_precursor => xpipe15_tx_precursor,
      xpipe0_tx_startblock => xpipe0_tx_startblock,
      xpipe1_tx_startblock => xpipe1_tx_startblock,
      xpipe2_tx_startblock => xpipe2_tx_startblock,
      xpipe3_tx_startblock => xpipe3_tx_startblock,
      xpipe4_tx_startblock => xpipe4_tx_startblock,
      xpipe5_tx_startblock => xpipe5_tx_startblock,
      xpipe6_tx_startblock => xpipe6_tx_startblock,
      xpipe7_tx_startblock => xpipe7_tx_startblock,
      xpipe8_tx_startblock => xpipe8_tx_startblock,
      xpipe9_tx_startblock => xpipe9_tx_startblock,
      xpipe10_tx_startblock => xpipe10_tx_startblock,
      xpipe11_tx_startblock => xpipe11_tx_startblock,
      xpipe12_tx_startblock => xpipe12_tx_startblock,
      xpipe13_tx_startblock => xpipe13_tx_startblock,
      xpipe14_tx_startblock => xpipe14_tx_startblock,
      xpipe15_tx_startblock => xpipe15_tx_startblock,
      xpipe0_tx_swing => xpipe0_tx_swing,
      xpipe1_tx_swing => xpipe1_tx_swing,
      xpipe2_tx_swing => xpipe2_tx_swing,
      xpipe3_tx_swing => xpipe3_tx_swing,
      xpipe4_tx_swing => xpipe4_tx_swing,
      xpipe5_tx_swing => xpipe5_tx_swing,
      xpipe6_tx_swing => xpipe6_tx_swing,
      xpipe7_tx_swing => xpipe7_tx_swing,
      xpipe8_tx_swing => xpipe8_tx_swing,
      xpipe9_tx_swing => xpipe9_tx_swing,
      xpipe10_tx_swing => xpipe10_tx_swing,
      xpipe11_tx_swing => xpipe11_tx_swing,
      xpipe12_tx_swing => xpipe12_tx_swing,
      xpipe13_tx_swing => xpipe13_tx_swing,
      xpipe14_tx_swing => xpipe14_tx_swing,
      xpipe15_tx_swing => xpipe15_tx_swing,
      xpipe0_tx_syncheader => xpipe0_tx_syncheader,
      xpipe1_tx_syncheader => xpipe1_tx_syncheader,
      xpipe2_tx_syncheader => xpipe2_tx_syncheader,
      xpipe3_tx_syncheader => xpipe3_tx_syncheader,
      xpipe4_tx_syncheader => xpipe4_tx_syncheader,
      xpipe5_tx_syncheader => xpipe5_tx_syncheader,
      xpipe6_tx_syncheader => xpipe6_tx_syncheader,
      xpipe7_tx_syncheader => xpipe7_tx_syncheader,
      xpipe8_tx_syncheader => xpipe8_tx_syncheader,
      xpipe9_tx_syncheader => xpipe9_tx_syncheader,
      xpipe10_tx_syncheader => xpipe10_tx_syncheader,
      xpipe11_tx_syncheader => xpipe11_tx_syncheader,
      xpipe12_tx_syncheader => xpipe12_tx_syncheader,
      xpipe13_tx_syncheader => xpipe13_tx_syncheader,
      xpipe14_tx_syncheader => xpipe14_tx_syncheader,
      xpipe15_tx_syncheader => xpipe15_tx_syncheader,
      hsdp_xpipe0_rx_datavalid => hsdp_xpipe0_rx_datavalid,
      hsdp_xpipe1_rx_datavalid => hsdp_xpipe1_rx_datavalid,
      hsdp_xpipe2_rx_datavalid => hsdp_xpipe2_rx_datavalid,
      hsdp_xpipe0_rx_gearboxslip => hsdp_xpipe0_rx_gearboxslip,
      hsdp_xpipe1_rx_gearboxslip => hsdp_xpipe1_rx_gearboxslip,
      hsdp_xpipe2_rx_gearboxslip => hsdp_xpipe2_rx_gearboxslip,
      hsdp_xpipe0_rx_header => hsdp_xpipe0_rx_header,
      hsdp_xpipe1_rx_header => hsdp_xpipe1_rx_header,
      hsdp_xpipe2_rx_header => hsdp_xpipe2_rx_header,
      hsdp_xpipe0_rx_headervalid => hsdp_xpipe0_rx_headervalid,
      hsdp_xpipe1_rx_headervalid => hsdp_xpipe1_rx_headervalid,
      hsdp_xpipe2_rx_headervalid => hsdp_xpipe2_rx_headervalid,
      hsdp_xpipe0_rx_pcsreset => hsdp_xpipe0_rx_pcsreset,
      hsdp_xpipe1_rx_pcsreset => hsdp_xpipe1_rx_pcsreset,
      hsdp_xpipe2_rx_pcsreset => hsdp_xpipe2_rx_pcsreset,
      hsdp_xpipe0_rx_resetdone => hsdp_xpipe0_rx_resetdone,
      hsdp_xpipe1_rx_resetdone => hsdp_xpipe1_rx_resetdone,
      hsdp_xpipe2_rx_resetdone => hsdp_xpipe2_rx_resetdone,
      hsdp_xpipe0_tx_header => hsdp_xpipe0_tx_header,
      hsdp_xpipe1_tx_header => hsdp_xpipe1_tx_header,
      hsdp_xpipe2_tx_header => hsdp_xpipe2_tx_header,
      hsdp_xpipe0_tx_resetdone => hsdp_xpipe0_tx_resetdone,
      hsdp_xpipe1_tx_resetdone => hsdp_xpipe1_tx_resetdone,
      hsdp_xpipe2_tx_resetdone => hsdp_xpipe2_tx_resetdone,
      hsdp_xpipe0_tx_sequence => hsdp_xpipe0_tx_sequence,
      hsdp_xpipe1_tx_sequence => hsdp_xpipe1_tx_sequence,
      hsdp_xpipe2_tx_sequence => hsdp_xpipe2_tx_sequence,
      hsdp_gt_rxoutclk => hsdp_gt_rxoutclk,
      hsdp_gt_txusrclk => hsdp_gt_txusrclk,
      phy_ready_frbot => phy_ready_frbot,
      phy_ready_tobot => phy_ready_tobot,
      link0_xpipe_bufgtce => link0_xpipe_bufgtce,
      link1_xpipe_bufgtce => link1_xpipe_bufgtce,
      link0_xpipe_bufgtcemask => link0_xpipe_bufgtcemask,
      link1_xpipe_bufgtcemask => link1_xpipe_bufgtcemask,
      link0_xpipe_bufgtdiv => link0_xpipe_bufgtdiv,
      link1_xpipe_bufgtdiv => link1_xpipe_bufgtdiv,
      link0_xpipe_bufgtrst => link0_xpipe_bufgtrst,
      link1_xpipe_bufgtrst => link1_xpipe_bufgtrst,
      link0_xpipe_bufgtrstmask => link0_xpipe_bufgtrstmask,
      link1_xpipe_bufgtrstmask => link1_xpipe_bufgtrstmask,
      link0_xpipe_gtoutclk => link0_xpipe_gtoutclk,
      link1_xpipe_gtoutclk => link1_xpipe_gtoutclk,
      link0_xpipe_gtpipeclk => link0_xpipe_gtpipeclk,
      link1_xpipe_gtpipeclk => link1_xpipe_gtpipeclk,
      link0_xpipe_pcielinkreachtarget => link0_xpipe_pcielinkreachtarget,
      link1_xpipe_pcielinkreachtarget => link1_xpipe_pcielinkreachtarget,
      link0_xpipe_pcieltssmstate => link0_xpipe_pcieltssmstate,
      link1_xpipe_pcieltssmstate => link1_xpipe_pcieltssmstate,
      link0_xpipe_pcieperstn => link0_xpipe_pcieperstn,
      link1_xpipe_pcieperstn => link1_xpipe_pcieperstn,
      link0_xpipe_phyesmadaptationsave => link0_xpipe_phyesmadaptationsave,
      link1_xpipe_phyesmadaptationsave => link1_xpipe_phyesmadaptationsave,
      link0_xpipe_phyready => link0_xpipe_phyready,
      link1_xpipe_phyready => link1_xpipe_phyready,
      link0_xpipe_piperate => link0_xpipe_piperate,
      link1_xpipe_piperate => link1_xpipe_piperate,
      s_axi_pcie_araddr => s_axi_pcie_araddr,
      s_axi_pcie_arburst => s_axi_pcie_arburst,
      s_axi_pcie_arcache => s_axi_pcie_arcache,
      s_axi_pcie_arid => s_axi_pcie_arid,
      s_axi_pcie_arlen => s_axi_pcie_arlen,
      s_axi_pcie_arlock => s_axi_pcie_arlock,
      s_axi_pcie_arprot => s_axi_pcie_arprot,
      s_axi_pcie_arqos => s_axi_pcie_arqos,
      s_axi_pcie_arready => s_axi_pcie_arready,
      s_axi_pcie_arregion => s_axi_pcie_arregion,
      s_axi_pcie_arsize => s_axi_pcie_arsize,
      s_axi_pcie_aruser => s_axi_pcie_aruser,
      s_axi_pcie_arvalid => s_axi_pcie_arvalid,
      s_axi_pcie_awaddr => s_axi_pcie_awaddr,
      s_axi_pcie_awburst => s_axi_pcie_awburst,
      s_axi_pcie_awcache => s_axi_pcie_awcache,
      s_axi_pcie_awid => s_axi_pcie_awid,
      s_axi_pcie_awlen => s_axi_pcie_awlen,
      s_axi_pcie_awlock => s_axi_pcie_awlock,
      s_axi_pcie_awprot => s_axi_pcie_awprot,
      s_axi_pcie_awqos => s_axi_pcie_awqos,
      s_axi_pcie_awready => s_axi_pcie_awready,
      s_axi_pcie_awregion => s_axi_pcie_awregion,
      s_axi_pcie_awsize => s_axi_pcie_awsize,
      s_axi_pcie_awuser => s_axi_pcie_awuser,
      s_axi_pcie_awvalid => s_axi_pcie_awvalid,
      s_axi_pcie_bid => s_axi_pcie_bid,
      s_axi_pcie_bready => s_axi_pcie_bready,
      s_axi_pcie_bresp => s_axi_pcie_bresp,
      s_axi_pcie_buser => s_axi_pcie_buser,
      s_axi_pcie_bvalid => s_axi_pcie_bvalid,
      s_axi_pcie_rdata => s_axi_pcie_rdata,
      s_axi_pcie_rid => s_axi_pcie_rid,
      s_axi_pcie_rlast => s_axi_pcie_rlast,
      s_axi_pcie_rready => s_axi_pcie_rready,
      s_axi_pcie_rresp => s_axi_pcie_rresp,
      s_axi_pcie_ruser => s_axi_pcie_ruser,
      s_axi_pcie_rvalid => s_axi_pcie_rvalid,
      s_axi_pcie_wdata => s_axi_pcie_wdata,
      s_axi_pcie_wid => s_axi_pcie_wid,
      s_axi_pcie_wlast => s_axi_pcie_wlast,
      s_axi_pcie_wready => s_axi_pcie_wready,
      s_axi_pcie_wstrb => s_axi_pcie_wstrb,
      s_axi_pcie_wuser => s_axi_pcie_wuser,
      s_axi_pcie_wvalid => s_axi_pcie_wvalid,
      cpm_pcr_apb_en => cpm_pcr_apb_en,
      cpm_pcr_dis_npi_clk => cpm_pcr_dis_npi_clk,
      cpm_pcr_fabric_en => cpm_pcr_fabric_en,
      cpm_pcr_gate_reg => cpm_pcr_gate_reg,
      cpm_pcr_hold_state => cpm_pcr_hold_state,
      cpm_pcr_init_state => cpm_pcr_init_state,
      cpm_pcr_mem_clr => cpm_pcr_mem_clr,
      cpm_pcr_o_disable => cpm_pcr_o_disable,
      cpm_pcr_pcomplete => cpm_pcr_pcomplete,
      cpm_pcr_pwr_dn => cpm_pcr_pwr_dn,
      cpm_pcr_scan_clr => cpm_pcr_scan_clr,
      cpm_pcr_start_bisr => cpm_pcr_start_bisr,
      cpm_pcr_start_cal => cpm_pcr_start_cal,
      cpm_pcr_tristate => cpm_pcr_tristate,
      xpipe_q0_rxmargin_req_ack => xpipe_q0_rxmargin_req_ack,
      xpipe_q1_rxmargin_req_ack => xpipe_q1_rxmargin_req_ack,
      xpipe_q2_rxmargin_req_ack => xpipe_q2_rxmargin_req_ack,
      xpipe_q3_rxmargin_req_ack => xpipe_q3_rxmargin_req_ack,
      xpipe_q0_rxmargin_req_cmd => xpipe_q0_rxmargin_req_cmd,
      xpipe_q1_rxmargin_req_cmd => xpipe_q1_rxmargin_req_cmd,
      xpipe_q2_rxmargin_req_cmd => xpipe_q2_rxmargin_req_cmd,
      xpipe_q3_rxmargin_req_cmd => xpipe_q3_rxmargin_req_cmd,
      xpipe_q0_rxmargin_req_lanenum => xpipe_q0_rxmargin_req_lanenum,
      xpipe_q1_rxmargin_req_lanenum => xpipe_q1_rxmargin_req_lanenum,
      xpipe_q2_rxmargin_req_lanenum => xpipe_q2_rxmargin_req_lanenum,
      xpipe_q3_rxmargin_req_lanenum => xpipe_q3_rxmargin_req_lanenum,
      xpipe_q0_rxmargin_req_payload => xpipe_q0_rxmargin_req_payload,
      xpipe_q1_rxmargin_req_payload => xpipe_q1_rxmargin_req_payload,
      xpipe_q2_rxmargin_req_payload => xpipe_q2_rxmargin_req_payload,
      xpipe_q3_rxmargin_req_payload => xpipe_q3_rxmargin_req_payload,
      xpipe_q0_rxmargin_req_req => xpipe_q0_rxmargin_req_req,
      xpipe_q1_rxmargin_req_req => xpipe_q1_rxmargin_req_req,
      xpipe_q2_rxmargin_req_req => xpipe_q2_rxmargin_req_req,
      xpipe_q3_rxmargin_req_req => xpipe_q3_rxmargin_req_req,
      xpipe_q0_rxmargin_res_ack => xpipe_q0_rxmargin_res_ack,
      xpipe_q1_rxmargin_res_ack => xpipe_q1_rxmargin_res_ack,
      xpipe_q2_rxmargin_res_ack => xpipe_q2_rxmargin_res_ack,
      xpipe_q3_rxmargin_res_ack => xpipe_q3_rxmargin_res_ack,
      xpipe_q0_rxmargin_res_cmd => xpipe_q0_rxmargin_res_cmd,
      xpipe_q1_rxmargin_res_cmd => xpipe_q1_rxmargin_res_cmd,
      xpipe_q2_rxmargin_res_cmd => xpipe_q2_rxmargin_res_cmd,
      xpipe_q3_rxmargin_res_cmd => xpipe_q3_rxmargin_res_cmd,
      xpipe_q0_rxmargin_res_lanenum => xpipe_q0_rxmargin_res_lanenum,
      xpipe_q1_rxmargin_res_lanenum => xpipe_q1_rxmargin_res_lanenum,
      xpipe_q2_rxmargin_res_lanenum => xpipe_q2_rxmargin_res_lanenum,
      xpipe_q3_rxmargin_res_lanenum => xpipe_q3_rxmargin_res_lanenum,
      xpipe_q0_rxmargin_res_payload => xpipe_q0_rxmargin_res_payload,
      xpipe_q1_rxmargin_res_payload => xpipe_q1_rxmargin_res_payload,
      xpipe_q2_rxmargin_res_payload => xpipe_q2_rxmargin_res_payload,
      xpipe_q3_rxmargin_res_payload => xpipe_q3_rxmargin_res_payload,
      xpipe_q0_rxmargin_res_req => xpipe_q0_rxmargin_res_req,
      xpipe_q1_rxmargin_res_req => xpipe_q1_rxmargin_res_req,
      xpipe_q2_rxmargin_res_req => xpipe_q2_rxmargin_res_req,
      xpipe_q3_rxmargin_res_req => xpipe_q3_rxmargin_res_req,
      lpd_refclk_in => lpd_refclk_in,
      lpd_switch_timeout_cnt => lpd_switch_timeout_cnt,
      lpd_swclk => lpd_swclk,
      perst0n => perst0n,
      perst1n => perst1n
    );
END bd_70da_pspmc_0_0_arch;
