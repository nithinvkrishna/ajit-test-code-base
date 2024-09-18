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


//------------------------------------------------------------------------------------
// Filename:    Ajit_vck190_versal_cips_0_3_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module Ajit_vck190_versal_cips_0_3 (
  output bit_as_bool pl0_ref_clk,
  output bit_as_bool fpd_axi_noc_axi0_clk,
  output bit_as_bool pmc_axi_noc_axi0_clk,
  output bit [15 : 0] FPD_AXI_NOC_0_awid,
  output bit [63 : 0] FPD_AXI_NOC_0_awaddr,
  output bit [7 : 0] FPD_AXI_NOC_0_awlen,
  output bit [2 : 0] FPD_AXI_NOC_0_awsize,
  output bit [1 : 0] FPD_AXI_NOC_0_awburst,
  output bit_as_bool FPD_AXI_NOC_0_awlock,
  output bit [3 : 0] FPD_AXI_NOC_0_awcache,
  output bit [2 : 0] FPD_AXI_NOC_0_awprot,
  output bit_as_bool FPD_AXI_NOC_0_awvalid,
  output bit [17 : 0] FPD_AXI_NOC_0_awuser,
  input bit_as_bool FPD_AXI_NOC_0_awready,
  output bit [127 : 0] FPD_AXI_NOC_0_wdata,
  output bit [15 : 0] FPD_AXI_NOC_0_wstrb,
  output bit_as_bool FPD_AXI_NOC_0_wlast,
  output bit_as_bool FPD_AXI_NOC_0_wvalid,
  input bit_as_bool FPD_AXI_NOC_0_wready,
  input bit [15 : 0] FPD_AXI_NOC_0_bid,
  input bit [1 : 0] FPD_AXI_NOC_0_bresp,
  input bit_as_bool FPD_AXI_NOC_0_bvalid,
  output bit_as_bool FPD_AXI_NOC_0_bready,
  output bit [15 : 0] FPD_AXI_NOC_0_arid,
  output bit [63 : 0] FPD_AXI_NOC_0_araddr,
  output bit [7 : 0] FPD_AXI_NOC_0_arlen,
  output bit [2 : 0] FPD_AXI_NOC_0_arsize,
  output bit [1 : 0] FPD_AXI_NOC_0_arburst,
  output bit_as_bool FPD_AXI_NOC_0_arlock,
  output bit [3 : 0] FPD_AXI_NOC_0_arcache,
  output bit [2 : 0] FPD_AXI_NOC_0_arprot,
  output bit_as_bool FPD_AXI_NOC_0_arvalid,
  output bit [17 : 0] FPD_AXI_NOC_0_aruser,
  input bit_as_bool FPD_AXI_NOC_0_arready,
  input bit [15 : 0] FPD_AXI_NOC_0_rid,
  input bit [127 : 0] FPD_AXI_NOC_0_rdata,
  input bit [1 : 0] FPD_AXI_NOC_0_rresp,
  input bit_as_bool FPD_AXI_NOC_0_rlast,
  input bit_as_bool FPD_AXI_NOC_0_rvalid,
  output bit_as_bool FPD_AXI_NOC_0_rready,
  output bit [3 : 0] FPD_AXI_NOC_0_awqos,
  output bit [3 : 0] FPD_AXI_NOC_0_arqos,
  output bit [63 : 0] PMC_NOC_AXI_0_araddr,
  output bit [1 : 0] PMC_NOC_AXI_0_arburst,
  output bit [3 : 0] PMC_NOC_AXI_0_arcache,
  output bit [15 : 0] PMC_NOC_AXI_0_arid,
  output bit [7 : 0] PMC_NOC_AXI_0_arlen,
  output bit_as_bool PMC_NOC_AXI_0_arlock,
  output bit [2 : 0] PMC_NOC_AXI_0_arprot,
  output bit [3 : 0] PMC_NOC_AXI_0_arqos,
  output bit [3 : 0] PMC_NOC_AXI_0_arregion,
  output bit [2 : 0] PMC_NOC_AXI_0_arsize,
  output bit [17 : 0] PMC_NOC_AXI_0_aruser,
  output bit_as_bool PMC_NOC_AXI_0_arvalid,
  output bit [63 : 0] PMC_NOC_AXI_0_awaddr,
  output bit [1 : 0] PMC_NOC_AXI_0_awburst,
  output bit [3 : 0] PMC_NOC_AXI_0_awcache,
  output bit [15 : 0] PMC_NOC_AXI_0_awid,
  output bit [7 : 0] PMC_NOC_AXI_0_awlen,
  output bit_as_bool PMC_NOC_AXI_0_awlock,
  output bit [2 : 0] PMC_NOC_AXI_0_awprot,
  output bit [3 : 0] PMC_NOC_AXI_0_awqos,
  output bit [3 : 0] PMC_NOC_AXI_0_awregion,
  output bit [2 : 0] PMC_NOC_AXI_0_awsize,
  output bit [17 : 0] PMC_NOC_AXI_0_awuser,
  output bit_as_bool PMC_NOC_AXI_0_awvalid,
  output bit_as_bool PMC_NOC_AXI_0_bready,
  output bit_as_bool PMC_NOC_AXI_0_rready,
  output bit [127 : 0] PMC_NOC_AXI_0_wdata,
  output bit [15 : 0] PMC_NOC_AXI_0_wid,
  output bit_as_bool PMC_NOC_AXI_0_wlast,
  output bit [15 : 0] PMC_NOC_AXI_0_wstrb,
  output bit [16 : 0] PMC_NOC_AXI_0_wuser,
  output bit_as_bool PMC_NOC_AXI_0_wvalid,
  input bit_as_bool PMC_NOC_AXI_0_arready,
  input bit_as_bool PMC_NOC_AXI_0_awready,
  input bit [15 : 0] PMC_NOC_AXI_0_bid,
  input bit [1 : 0] PMC_NOC_AXI_0_bresp,
  input bit [15 : 0] PMC_NOC_AXI_0_buser,
  input bit_as_bool PMC_NOC_AXI_0_bvalid,
  input bit [127 : 0] PMC_NOC_AXI_0_rdata,
  input bit [15 : 0] PMC_NOC_AXI_0_rid,
  input bit_as_bool PMC_NOC_AXI_0_rlast,
  input bit [1 : 0] PMC_NOC_AXI_0_rresp,
  input bit [16 : 0] PMC_NOC_AXI_0_ruser,
  input bit_as_bool PMC_NOC_AXI_0_rvalid,
  input bit_as_bool PMC_NOC_AXI_0_wready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module Ajit_vck190_versal_cips_0_3 (pl0_ref_clk,fpd_axi_noc_axi0_clk,pmc_axi_noc_axi0_clk,FPD_AXI_NOC_0_awid,FPD_AXI_NOC_0_awaddr,FPD_AXI_NOC_0_awlen,FPD_AXI_NOC_0_awsize,FPD_AXI_NOC_0_awburst,FPD_AXI_NOC_0_awlock,FPD_AXI_NOC_0_awcache,FPD_AXI_NOC_0_awprot,FPD_AXI_NOC_0_awvalid,FPD_AXI_NOC_0_awuser,FPD_AXI_NOC_0_awready,FPD_AXI_NOC_0_wdata,FPD_AXI_NOC_0_wstrb,FPD_AXI_NOC_0_wlast,FPD_AXI_NOC_0_wvalid,FPD_AXI_NOC_0_wready,FPD_AXI_NOC_0_bid,FPD_AXI_NOC_0_bresp,FPD_AXI_NOC_0_bvalid,FPD_AXI_NOC_0_bready,FPD_AXI_NOC_0_arid,FPD_AXI_NOC_0_araddr,FPD_AXI_NOC_0_arlen,FPD_AXI_NOC_0_arsize,FPD_AXI_NOC_0_arburst,FPD_AXI_NOC_0_arlock,FPD_AXI_NOC_0_arcache,FPD_AXI_NOC_0_arprot,FPD_AXI_NOC_0_arvalid,FPD_AXI_NOC_0_aruser,FPD_AXI_NOC_0_arready,FPD_AXI_NOC_0_rid,FPD_AXI_NOC_0_rdata,FPD_AXI_NOC_0_rresp,FPD_AXI_NOC_0_rlast,FPD_AXI_NOC_0_rvalid,FPD_AXI_NOC_0_rready,FPD_AXI_NOC_0_awqos,FPD_AXI_NOC_0_arqos,PMC_NOC_AXI_0_araddr,PMC_NOC_AXI_0_arburst,PMC_NOC_AXI_0_arcache,PMC_NOC_AXI_0_arid,PMC_NOC_AXI_0_arlen,PMC_NOC_AXI_0_arlock,PMC_NOC_AXI_0_arprot,PMC_NOC_AXI_0_arqos,PMC_NOC_AXI_0_arregion,PMC_NOC_AXI_0_arsize,PMC_NOC_AXI_0_aruser,PMC_NOC_AXI_0_arvalid,PMC_NOC_AXI_0_awaddr,PMC_NOC_AXI_0_awburst,PMC_NOC_AXI_0_awcache,PMC_NOC_AXI_0_awid,PMC_NOC_AXI_0_awlen,PMC_NOC_AXI_0_awlock,PMC_NOC_AXI_0_awprot,PMC_NOC_AXI_0_awqos,PMC_NOC_AXI_0_awregion,PMC_NOC_AXI_0_awsize,PMC_NOC_AXI_0_awuser,PMC_NOC_AXI_0_awvalid,PMC_NOC_AXI_0_bready,PMC_NOC_AXI_0_rready,PMC_NOC_AXI_0_wdata,PMC_NOC_AXI_0_wid,PMC_NOC_AXI_0_wlast,PMC_NOC_AXI_0_wstrb,PMC_NOC_AXI_0_wuser,PMC_NOC_AXI_0_wvalid,PMC_NOC_AXI_0_arready,PMC_NOC_AXI_0_awready,PMC_NOC_AXI_0_bid,PMC_NOC_AXI_0_bresp,PMC_NOC_AXI_0_buser,PMC_NOC_AXI_0_bvalid,PMC_NOC_AXI_0_rdata,PMC_NOC_AXI_0_rid,PMC_NOC_AXI_0_rlast,PMC_NOC_AXI_0_rresp,PMC_NOC_AXI_0_ruser,PMC_NOC_AXI_0_rvalid,PMC_NOC_AXI_0_wready)
(* integer foreign = "SystemC";
*);
  output wire pl0_ref_clk;
  output wire fpd_axi_noc_axi0_clk;
  output wire pmc_axi_noc_axi0_clk;
  output wire [15 : 0] FPD_AXI_NOC_0_awid;
  output wire [63 : 0] FPD_AXI_NOC_0_awaddr;
  output wire [7 : 0] FPD_AXI_NOC_0_awlen;
  output wire [2 : 0] FPD_AXI_NOC_0_awsize;
  output wire [1 : 0] FPD_AXI_NOC_0_awburst;
  output wire FPD_AXI_NOC_0_awlock;
  output wire [3 : 0] FPD_AXI_NOC_0_awcache;
  output wire [2 : 0] FPD_AXI_NOC_0_awprot;
  output wire FPD_AXI_NOC_0_awvalid;
  output wire [17 : 0] FPD_AXI_NOC_0_awuser;
  input bit FPD_AXI_NOC_0_awready;
  output wire [127 : 0] FPD_AXI_NOC_0_wdata;
  output wire [15 : 0] FPD_AXI_NOC_0_wstrb;
  output wire FPD_AXI_NOC_0_wlast;
  output wire FPD_AXI_NOC_0_wvalid;
  input bit FPD_AXI_NOC_0_wready;
  input bit [15 : 0] FPD_AXI_NOC_0_bid;
  input bit [1 : 0] FPD_AXI_NOC_0_bresp;
  input bit FPD_AXI_NOC_0_bvalid;
  output wire FPD_AXI_NOC_0_bready;
  output wire [15 : 0] FPD_AXI_NOC_0_arid;
  output wire [63 : 0] FPD_AXI_NOC_0_araddr;
  output wire [7 : 0] FPD_AXI_NOC_0_arlen;
  output wire [2 : 0] FPD_AXI_NOC_0_arsize;
  output wire [1 : 0] FPD_AXI_NOC_0_arburst;
  output wire FPD_AXI_NOC_0_arlock;
  output wire [3 : 0] FPD_AXI_NOC_0_arcache;
  output wire [2 : 0] FPD_AXI_NOC_0_arprot;
  output wire FPD_AXI_NOC_0_arvalid;
  output wire [17 : 0] FPD_AXI_NOC_0_aruser;
  input bit FPD_AXI_NOC_0_arready;
  input bit [15 : 0] FPD_AXI_NOC_0_rid;
  input bit [127 : 0] FPD_AXI_NOC_0_rdata;
  input bit [1 : 0] FPD_AXI_NOC_0_rresp;
  input bit FPD_AXI_NOC_0_rlast;
  input bit FPD_AXI_NOC_0_rvalid;
  output wire FPD_AXI_NOC_0_rready;
  output wire [3 : 0] FPD_AXI_NOC_0_awqos;
  output wire [3 : 0] FPD_AXI_NOC_0_arqos;
  output wire [63 : 0] PMC_NOC_AXI_0_araddr;
  output wire [1 : 0] PMC_NOC_AXI_0_arburst;
  output wire [3 : 0] PMC_NOC_AXI_0_arcache;
  output wire [15 : 0] PMC_NOC_AXI_0_arid;
  output wire [7 : 0] PMC_NOC_AXI_0_arlen;
  output wire PMC_NOC_AXI_0_arlock;
  output wire [2 : 0] PMC_NOC_AXI_0_arprot;
  output wire [3 : 0] PMC_NOC_AXI_0_arqos;
  output wire [3 : 0] PMC_NOC_AXI_0_arregion;
  output wire [2 : 0] PMC_NOC_AXI_0_arsize;
  output wire [17 : 0] PMC_NOC_AXI_0_aruser;
  output wire PMC_NOC_AXI_0_arvalid;
  output wire [63 : 0] PMC_NOC_AXI_0_awaddr;
  output wire [1 : 0] PMC_NOC_AXI_0_awburst;
  output wire [3 : 0] PMC_NOC_AXI_0_awcache;
  output wire [15 : 0] PMC_NOC_AXI_0_awid;
  output wire [7 : 0] PMC_NOC_AXI_0_awlen;
  output wire PMC_NOC_AXI_0_awlock;
  output wire [2 : 0] PMC_NOC_AXI_0_awprot;
  output wire [3 : 0] PMC_NOC_AXI_0_awqos;
  output wire [3 : 0] PMC_NOC_AXI_0_awregion;
  output wire [2 : 0] PMC_NOC_AXI_0_awsize;
  output wire [17 : 0] PMC_NOC_AXI_0_awuser;
  output wire PMC_NOC_AXI_0_awvalid;
  output wire PMC_NOC_AXI_0_bready;
  output wire PMC_NOC_AXI_0_rready;
  output wire [127 : 0] PMC_NOC_AXI_0_wdata;
  output wire [15 : 0] PMC_NOC_AXI_0_wid;
  output wire PMC_NOC_AXI_0_wlast;
  output wire [15 : 0] PMC_NOC_AXI_0_wstrb;
  output wire [16 : 0] PMC_NOC_AXI_0_wuser;
  output wire PMC_NOC_AXI_0_wvalid;
  input bit PMC_NOC_AXI_0_arready;
  input bit PMC_NOC_AXI_0_awready;
  input bit [15 : 0] PMC_NOC_AXI_0_bid;
  input bit [1 : 0] PMC_NOC_AXI_0_bresp;
  input bit [15 : 0] PMC_NOC_AXI_0_buser;
  input bit PMC_NOC_AXI_0_bvalid;
  input bit [127 : 0] PMC_NOC_AXI_0_rdata;
  input bit [15 : 0] PMC_NOC_AXI_0_rid;
  input bit PMC_NOC_AXI_0_rlast;
  input bit [1 : 0] PMC_NOC_AXI_0_rresp;
  input bit [16 : 0] PMC_NOC_AXI_0_ruser;
  input bit PMC_NOC_AXI_0_rvalid;
  input bit PMC_NOC_AXI_0_wready;
endmodule
`endif
