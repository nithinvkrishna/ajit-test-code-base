// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:versal_cips:3.4
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
(* DONT_TOUCH = "true" *)
module Ajit_vck190_versal_cips_0_3 (
  pl0_ref_clk,
  fpd_axi_noc_axi0_clk,
  pmc_axi_noc_axi0_clk,
  FPD_AXI_NOC_0_awid,
  FPD_AXI_NOC_0_awaddr,
  FPD_AXI_NOC_0_awlen,
  FPD_AXI_NOC_0_awsize,
  FPD_AXI_NOC_0_awburst,
  FPD_AXI_NOC_0_awlock,
  FPD_AXI_NOC_0_awcache,
  FPD_AXI_NOC_0_awprot,
  FPD_AXI_NOC_0_awvalid,
  FPD_AXI_NOC_0_awuser,
  FPD_AXI_NOC_0_awready,
  FPD_AXI_NOC_0_wdata,
  FPD_AXI_NOC_0_wstrb,
  FPD_AXI_NOC_0_wlast,
  FPD_AXI_NOC_0_wvalid,
  FPD_AXI_NOC_0_wready,
  FPD_AXI_NOC_0_bid,
  FPD_AXI_NOC_0_bresp,
  FPD_AXI_NOC_0_bvalid,
  FPD_AXI_NOC_0_bready,
  FPD_AXI_NOC_0_arid,
  FPD_AXI_NOC_0_araddr,
  FPD_AXI_NOC_0_arlen,
  FPD_AXI_NOC_0_arsize,
  FPD_AXI_NOC_0_arburst,
  FPD_AXI_NOC_0_arlock,
  FPD_AXI_NOC_0_arcache,
  FPD_AXI_NOC_0_arprot,
  FPD_AXI_NOC_0_arvalid,
  FPD_AXI_NOC_0_aruser,
  FPD_AXI_NOC_0_arready,
  FPD_AXI_NOC_0_rid,
  FPD_AXI_NOC_0_rdata,
  FPD_AXI_NOC_0_rresp,
  FPD_AXI_NOC_0_rlast,
  FPD_AXI_NOC_0_rvalid,
  FPD_AXI_NOC_0_rready,
  FPD_AXI_NOC_0_awqos,
  FPD_AXI_NOC_0_arqos,
  PMC_NOC_AXI_0_araddr,
  PMC_NOC_AXI_0_arburst,
  PMC_NOC_AXI_0_arcache,
  PMC_NOC_AXI_0_arid,
  PMC_NOC_AXI_0_arlen,
  PMC_NOC_AXI_0_arlock,
  PMC_NOC_AXI_0_arprot,
  PMC_NOC_AXI_0_arqos,
  PMC_NOC_AXI_0_arregion,
  PMC_NOC_AXI_0_arsize,
  PMC_NOC_AXI_0_aruser,
  PMC_NOC_AXI_0_arvalid,
  PMC_NOC_AXI_0_awaddr,
  PMC_NOC_AXI_0_awburst,
  PMC_NOC_AXI_0_awcache,
  PMC_NOC_AXI_0_awid,
  PMC_NOC_AXI_0_awlen,
  PMC_NOC_AXI_0_awlock,
  PMC_NOC_AXI_0_awprot,
  PMC_NOC_AXI_0_awqos,
  PMC_NOC_AXI_0_awregion,
  PMC_NOC_AXI_0_awsize,
  PMC_NOC_AXI_0_awuser,
  PMC_NOC_AXI_0_awvalid,
  PMC_NOC_AXI_0_bready,
  PMC_NOC_AXI_0_rready,
  PMC_NOC_AXI_0_wdata,
  PMC_NOC_AXI_0_wid,
  PMC_NOC_AXI_0_wlast,
  PMC_NOC_AXI_0_wstrb,
  PMC_NOC_AXI_0_wuser,
  PMC_NOC_AXI_0_wvalid,
  PMC_NOC_AXI_0_arready,
  PMC_NOC_AXI_0_awready,
  PMC_NOC_AXI_0_bid,
  PMC_NOC_AXI_0_bresp,
  PMC_NOC_AXI_0_buser,
  PMC_NOC_AXI_0_bvalid,
  PMC_NOC_AXI_0_rdata,
  PMC_NOC_AXI_0_rid,
  PMC_NOC_AXI_0_rlast,
  PMC_NOC_AXI_0_rresp,
  PMC_NOC_AXI_0_ruser,
  PMC_NOC_AXI_0_rvalid,
  PMC_NOC_AXI_0_wready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pl0_ref_clk, FREQ_HZ 79999199, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pl0_ref_clk CLK" *)
output wire pl0_ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.fpd_axi_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_fpd_axi_noc_axi0_clk, ASSOCIATED_BUSIF FPD_AXI_NOC_0, INSERT_VIP 0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.fpd_axi_noc_axi0_clk CLK" *)
output wire fpd_axi_noc_axi0_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pmc_axi_noc_axi0_clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_pmc_axi_noc_axi0_clk, ASSOCIATED_BUSIF PMC_NOC_AXI_0, INSERT_VIP 0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pmc_axi_noc_axi0_clk CLK" *)
output wire pmc_axi_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWID" *)
output wire [15 : 0] FPD_AXI_NOC_0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWADDR" *)
output wire [63 : 0] FPD_AXI_NOC_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLEN" *)
output wire [7 : 0] FPD_AXI_NOC_0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWSIZE" *)
output wire [2 : 0] FPD_AXI_NOC_0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWBURST" *)
output wire [1 : 0] FPD_AXI_NOC_0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLOCK" *)
output wire FPD_AXI_NOC_0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWCACHE" *)
output wire [3 : 0] FPD_AXI_NOC_0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWPROT" *)
output wire [2 : 0] FPD_AXI_NOC_0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWVALID" *)
output wire FPD_AXI_NOC_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWUSER" *)
output wire [17 : 0] FPD_AXI_NOC_0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWREADY" *)
input wire FPD_AXI_NOC_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WDATA" *)
output wire [127 : 0] FPD_AXI_NOC_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WSTRB" *)
output wire [15 : 0] FPD_AXI_NOC_0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WLAST" *)
output wire FPD_AXI_NOC_0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WVALID" *)
output wire FPD_AXI_NOC_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WREADY" *)
input wire FPD_AXI_NOC_0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BID" *)
input wire [15 : 0] FPD_AXI_NOC_0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BRESP" *)
input wire [1 : 0] FPD_AXI_NOC_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BVALID" *)
input wire FPD_AXI_NOC_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BREADY" *)
output wire FPD_AXI_NOC_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARID" *)
output wire [15 : 0] FPD_AXI_NOC_0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARADDR" *)
output wire [63 : 0] FPD_AXI_NOC_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLEN" *)
output wire [7 : 0] FPD_AXI_NOC_0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARSIZE" *)
output wire [2 : 0] FPD_AXI_NOC_0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARBURST" *)
output wire [1 : 0] FPD_AXI_NOC_0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLOCK" *)
output wire FPD_AXI_NOC_0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARCACHE" *)
output wire [3 : 0] FPD_AXI_NOC_0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARPROT" *)
output wire [2 : 0] FPD_AXI_NOC_0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARVALID" *)
output wire FPD_AXI_NOC_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARUSER" *)
output wire [17 : 0] FPD_AXI_NOC_0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARREADY" *)
input wire FPD_AXI_NOC_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RID" *)
input wire [15 : 0] FPD_AXI_NOC_0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RDATA" *)
input wire [127 : 0] FPD_AXI_NOC_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RRESP" *)
input wire [1 : 0] FPD_AXI_NOC_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RLAST" *)
input wire FPD_AXI_NOC_0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RVALID" *)
input wire FPD_AXI_NOC_0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RREADY" *)
output wire FPD_AXI_NOC_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWQOS" *)
output wire [3 : 0] FPD_AXI_NOC_0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_AXI_NOC_0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_fpd_axi_noc_axi0_clk, NUM_READ\
_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_nci, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, INDEX 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARQOS" *)
output wire [3 : 0] FPD_AXI_NOC_0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARADDR" *)
output wire [63 : 0] PMC_NOC_AXI_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARBURST" *)
output wire [1 : 0] PMC_NOC_AXI_0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARCACHE" *)
output wire [3 : 0] PMC_NOC_AXI_0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARID" *)
output wire [15 : 0] PMC_NOC_AXI_0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLEN" *)
output wire [7 : 0] PMC_NOC_AXI_0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLOCK" *)
output wire PMC_NOC_AXI_0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARPROT" *)
output wire [2 : 0] PMC_NOC_AXI_0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARQOS" *)
output wire [3 : 0] PMC_NOC_AXI_0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREGION" *)
output wire [3 : 0] PMC_NOC_AXI_0_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARSIZE" *)
output wire [2 : 0] PMC_NOC_AXI_0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARUSER" *)
output wire [17 : 0] PMC_NOC_AXI_0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARVALID" *)
output wire PMC_NOC_AXI_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWADDR" *)
output wire [63 : 0] PMC_NOC_AXI_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWBURST" *)
output wire [1 : 0] PMC_NOC_AXI_0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWCACHE" *)
output wire [3 : 0] PMC_NOC_AXI_0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWID" *)
output wire [15 : 0] PMC_NOC_AXI_0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLEN" *)
output wire [7 : 0] PMC_NOC_AXI_0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLOCK" *)
output wire PMC_NOC_AXI_0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWPROT" *)
output wire [2 : 0] PMC_NOC_AXI_0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWQOS" *)
output wire [3 : 0] PMC_NOC_AXI_0_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREGION" *)
output wire [3 : 0] PMC_NOC_AXI_0_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWSIZE" *)
output wire [2 : 0] PMC_NOC_AXI_0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWUSER" *)
output wire [17 : 0] PMC_NOC_AXI_0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWVALID" *)
output wire PMC_NOC_AXI_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BREADY" *)
output wire PMC_NOC_AXI_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RREADY" *)
output wire PMC_NOC_AXI_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WDATA" *)
output wire [127 : 0] PMC_NOC_AXI_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WID" *)
output wire [15 : 0] PMC_NOC_AXI_0_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WLAST" *)
output wire PMC_NOC_AXI_0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WSTRB" *)
output wire [15 : 0] PMC_NOC_AXI_0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WUSER" *)
output wire [16 : 0] PMC_NOC_AXI_0_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WVALID" *)
output wire PMC_NOC_AXI_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREADY" *)
input wire PMC_NOC_AXI_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREADY" *)
input wire PMC_NOC_AXI_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BID" *)
input wire [15 : 0] PMC_NOC_AXI_0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BRESP" *)
input wire [1 : 0] PMC_NOC_AXI_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BUSER" *)
input wire [15 : 0] PMC_NOC_AXI_0_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BVALID" *)
input wire PMC_NOC_AXI_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RDATA" *)
input wire [127 : 0] PMC_NOC_AXI_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RID" *)
input wire [15 : 0] PMC_NOC_AXI_0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RLAST" *)
input wire PMC_NOC_AXI_0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RRESP" *)
input wire [1 : 0] PMC_NOC_AXI_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RUSER" *)
input wire [16 : 0] PMC_NOC_AXI_0_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RVALID" *)
input wire PMC_NOC_AXI_0_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PMC_NOC_AXI_0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 400000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_pmc_axi_noc_axi0_clk, NUM_R\
EAD_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_pmc, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, HD_TANDEM 0, INDEX 0, SLR_INDEX 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WREADY" *)
input wire PMC_NOC_AXI_0_wready;

  bd_98bc inst (
    .pl0_ref_clk(pl0_ref_clk),
    .fpd_axi_noc_axi0_clk(fpd_axi_noc_axi0_clk),
    .pmc_axi_noc_axi0_clk(pmc_axi_noc_axi0_clk),
    .FPD_AXI_NOC_0_awid(FPD_AXI_NOC_0_awid),
    .FPD_AXI_NOC_0_awaddr(FPD_AXI_NOC_0_awaddr),
    .FPD_AXI_NOC_0_awlen(FPD_AXI_NOC_0_awlen),
    .FPD_AXI_NOC_0_awsize(FPD_AXI_NOC_0_awsize),
    .FPD_AXI_NOC_0_awburst(FPD_AXI_NOC_0_awburst),
    .FPD_AXI_NOC_0_awlock(FPD_AXI_NOC_0_awlock),
    .FPD_AXI_NOC_0_awcache(FPD_AXI_NOC_0_awcache),
    .FPD_AXI_NOC_0_awprot(FPD_AXI_NOC_0_awprot),
    .FPD_AXI_NOC_0_awvalid(FPD_AXI_NOC_0_awvalid),
    .FPD_AXI_NOC_0_awuser(FPD_AXI_NOC_0_awuser),
    .FPD_AXI_NOC_0_awready(FPD_AXI_NOC_0_awready),
    .FPD_AXI_NOC_0_wdata(FPD_AXI_NOC_0_wdata),
    .FPD_AXI_NOC_0_wstrb(FPD_AXI_NOC_0_wstrb),
    .FPD_AXI_NOC_0_wlast(FPD_AXI_NOC_0_wlast),
    .FPD_AXI_NOC_0_wvalid(FPD_AXI_NOC_0_wvalid),
    .FPD_AXI_NOC_0_wready(FPD_AXI_NOC_0_wready),
    .FPD_AXI_NOC_0_bid(FPD_AXI_NOC_0_bid),
    .FPD_AXI_NOC_0_bresp(FPD_AXI_NOC_0_bresp),
    .FPD_AXI_NOC_0_bvalid(FPD_AXI_NOC_0_bvalid),
    .FPD_AXI_NOC_0_bready(FPD_AXI_NOC_0_bready),
    .FPD_AXI_NOC_0_arid(FPD_AXI_NOC_0_arid),
    .FPD_AXI_NOC_0_araddr(FPD_AXI_NOC_0_araddr),
    .FPD_AXI_NOC_0_arlen(FPD_AXI_NOC_0_arlen),
    .FPD_AXI_NOC_0_arsize(FPD_AXI_NOC_0_arsize),
    .FPD_AXI_NOC_0_arburst(FPD_AXI_NOC_0_arburst),
    .FPD_AXI_NOC_0_arlock(FPD_AXI_NOC_0_arlock),
    .FPD_AXI_NOC_0_arcache(FPD_AXI_NOC_0_arcache),
    .FPD_AXI_NOC_0_arprot(FPD_AXI_NOC_0_arprot),
    .FPD_AXI_NOC_0_arvalid(FPD_AXI_NOC_0_arvalid),
    .FPD_AXI_NOC_0_aruser(FPD_AXI_NOC_0_aruser),
    .FPD_AXI_NOC_0_arready(FPD_AXI_NOC_0_arready),
    .FPD_AXI_NOC_0_rid(FPD_AXI_NOC_0_rid),
    .FPD_AXI_NOC_0_rdata(FPD_AXI_NOC_0_rdata),
    .FPD_AXI_NOC_0_rresp(FPD_AXI_NOC_0_rresp),
    .FPD_AXI_NOC_0_rlast(FPD_AXI_NOC_0_rlast),
    .FPD_AXI_NOC_0_rvalid(FPD_AXI_NOC_0_rvalid),
    .FPD_AXI_NOC_0_rready(FPD_AXI_NOC_0_rready),
    .FPD_AXI_NOC_0_awqos(FPD_AXI_NOC_0_awqos),
    .FPD_AXI_NOC_0_arqos(FPD_AXI_NOC_0_arqos),
    .PMC_NOC_AXI_0_araddr(PMC_NOC_AXI_0_araddr),
    .PMC_NOC_AXI_0_arburst(PMC_NOC_AXI_0_arburst),
    .PMC_NOC_AXI_0_arcache(PMC_NOC_AXI_0_arcache),
    .PMC_NOC_AXI_0_arid(PMC_NOC_AXI_0_arid),
    .PMC_NOC_AXI_0_arlen(PMC_NOC_AXI_0_arlen),
    .PMC_NOC_AXI_0_arlock(PMC_NOC_AXI_0_arlock),
    .PMC_NOC_AXI_0_arprot(PMC_NOC_AXI_0_arprot),
    .PMC_NOC_AXI_0_arqos(PMC_NOC_AXI_0_arqos),
    .PMC_NOC_AXI_0_arregion(PMC_NOC_AXI_0_arregion),
    .PMC_NOC_AXI_0_arsize(PMC_NOC_AXI_0_arsize),
    .PMC_NOC_AXI_0_aruser(PMC_NOC_AXI_0_aruser),
    .PMC_NOC_AXI_0_arvalid(PMC_NOC_AXI_0_arvalid),
    .PMC_NOC_AXI_0_awaddr(PMC_NOC_AXI_0_awaddr),
    .PMC_NOC_AXI_0_awburst(PMC_NOC_AXI_0_awburst),
    .PMC_NOC_AXI_0_awcache(PMC_NOC_AXI_0_awcache),
    .PMC_NOC_AXI_0_awid(PMC_NOC_AXI_0_awid),
    .PMC_NOC_AXI_0_awlen(PMC_NOC_AXI_0_awlen),
    .PMC_NOC_AXI_0_awlock(PMC_NOC_AXI_0_awlock),
    .PMC_NOC_AXI_0_awprot(PMC_NOC_AXI_0_awprot),
    .PMC_NOC_AXI_0_awqos(PMC_NOC_AXI_0_awqos),
    .PMC_NOC_AXI_0_awregion(PMC_NOC_AXI_0_awregion),
    .PMC_NOC_AXI_0_awsize(PMC_NOC_AXI_0_awsize),
    .PMC_NOC_AXI_0_awuser(PMC_NOC_AXI_0_awuser),
    .PMC_NOC_AXI_0_awvalid(PMC_NOC_AXI_0_awvalid),
    .PMC_NOC_AXI_0_bready(PMC_NOC_AXI_0_bready),
    .PMC_NOC_AXI_0_rready(PMC_NOC_AXI_0_rready),
    .PMC_NOC_AXI_0_wdata(PMC_NOC_AXI_0_wdata),
    .PMC_NOC_AXI_0_wid(PMC_NOC_AXI_0_wid),
    .PMC_NOC_AXI_0_wlast(PMC_NOC_AXI_0_wlast),
    .PMC_NOC_AXI_0_wstrb(PMC_NOC_AXI_0_wstrb),
    .PMC_NOC_AXI_0_wuser(PMC_NOC_AXI_0_wuser),
    .PMC_NOC_AXI_0_wvalid(PMC_NOC_AXI_0_wvalid),
    .PMC_NOC_AXI_0_arready(PMC_NOC_AXI_0_arready),
    .PMC_NOC_AXI_0_awready(PMC_NOC_AXI_0_awready),
    .PMC_NOC_AXI_0_bid(PMC_NOC_AXI_0_bid),
    .PMC_NOC_AXI_0_bresp(PMC_NOC_AXI_0_bresp),
    .PMC_NOC_AXI_0_buser(PMC_NOC_AXI_0_buser),
    .PMC_NOC_AXI_0_bvalid(PMC_NOC_AXI_0_bvalid),
    .PMC_NOC_AXI_0_rdata(PMC_NOC_AXI_0_rdata),
    .PMC_NOC_AXI_0_rid(PMC_NOC_AXI_0_rid),
    .PMC_NOC_AXI_0_rlast(PMC_NOC_AXI_0_rlast),
    .PMC_NOC_AXI_0_rresp(PMC_NOC_AXI_0_rresp),
    .PMC_NOC_AXI_0_ruser(PMC_NOC_AXI_0_ruser),
    .PMC_NOC_AXI_0_rvalid(PMC_NOC_AXI_0_rvalid),
    .PMC_NOC_AXI_0_wready(PMC_NOC_AXI_0_wready)
  );
endmodule
