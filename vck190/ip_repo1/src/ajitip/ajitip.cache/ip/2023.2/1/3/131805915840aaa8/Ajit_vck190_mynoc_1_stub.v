// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Sep  2 11:48:51 2024
// Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Ajit_vck190_mynoc_1_stub.v
// Design      : Ajit_vck190_mynoc_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f334,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S00_AXI_awaddr, S00_AXI_awlen, 
  S00_AXI_awsize, S00_AXI_awburst, S00_AXI_awlock, S00_AXI_awcache, S00_AXI_awprot, 
  S00_AXI_awregion, S00_AXI_awqos, S00_AXI_awvalid, S00_AXI_awready, S00_AXI_wdata, 
  S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, 
  S00_AXI_bvalid, S00_AXI_bready, S00_AXI_araddr, S00_AXI_arlen, S00_AXI_arsize, 
  S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, S00_AXI_arprot, S00_AXI_arregion, 
  S00_AXI_arqos, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, S00_AXI_rresp, 
  S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, M00_AXI_awaddr, M00_AXI_awlen, 
  M00_AXI_awsize, M00_AXI_awburst, M00_AXI_awlock, M00_AXI_awcache, M00_AXI_awprot, 
  M00_AXI_awregion, M00_AXI_awqos, M00_AXI_awvalid, M00_AXI_awready, M00_AXI_wdata, 
  M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wvalid, M00_AXI_wready, M00_AXI_bresp, 
  M00_AXI_bvalid, M00_AXI_bready, M00_AXI_araddr, M00_AXI_arlen, M00_AXI_arsize, 
  M00_AXI_arburst, M00_AXI_arlock, M00_AXI_arcache, M00_AXI_arprot, M00_AXI_arregion, 
  M00_AXI_arqos, M00_AXI_arvalid, M00_AXI_arready, M00_AXI_rdata, M00_AXI_rresp, 
  M00_AXI_rlast, M00_AXI_rvalid, M00_AXI_rready, aclk0, aclk1, S00_AXI_arid, S00_AXI_aruser, 
  S00_AXI_awid, S00_AXI_awuser, S00_AXI_bid, S00_AXI_buser, S00_AXI_rid, S00_AXI_ruser, 
  S00_AXI_wuser, M00_AXI_arid, M00_AXI_aruser, M00_AXI_awid, M00_AXI_awuser, M00_AXI_bid, 
  M00_AXI_rid)
/* synthesis syn_black_box black_box_pad_pin="S00_AXI_awaddr[63:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awregion[3:0],S00_AXI_awqos[3:0],S00_AXI_awvalid[0:0],S00_AXI_awready[0:0],S00_AXI_wdata[127:0],S00_AXI_wstrb[15:0],S00_AXI_wlast[0:0],S00_AXI_wvalid[0:0],S00_AXI_wready[0:0],S00_AXI_bresp[1:0],S00_AXI_bvalid[0:0],S00_AXI_bready[0:0],S00_AXI_araddr[63:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arregion[3:0],S00_AXI_arqos[3:0],S00_AXI_arvalid[0:0],S00_AXI_arready[0:0],S00_AXI_rdata[127:0],S00_AXI_rresp[1:0],S00_AXI_rlast[0:0],S00_AXI_rvalid[0:0],S00_AXI_rready[0:0],M00_AXI_awaddr[63:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awregion[3:0],M00_AXI_awqos[3:0],M00_AXI_awvalid[0:0],M00_AXI_awready[0:0],M00_AXI_wdata[31:0],M00_AXI_wstrb[3:0],M00_AXI_wlast[0:0],M00_AXI_wvalid[0:0],M00_AXI_wready[0:0],M00_AXI_bresp[1:0],M00_AXI_bvalid[0:0],M00_AXI_bready[0:0],M00_AXI_araddr[63:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arregion[3:0],M00_AXI_arqos[3:0],M00_AXI_arvalid[0:0],M00_AXI_arready[0:0],M00_AXI_rdata[31:0],M00_AXI_rresp[1:0],M00_AXI_rlast[0:0],M00_AXI_rvalid[0:0],M00_AXI_rready[0:0],S00_AXI_arid[15:0],S00_AXI_aruser[17:0],S00_AXI_awid[15:0],S00_AXI_awuser[17:0],S00_AXI_bid[15:0],S00_AXI_buser[15:0],S00_AXI_rid[15:0],S00_AXI_ruser[16:0],S00_AXI_wuser[16:0],M00_AXI_arid[1:0],M00_AXI_aruser[17:0],M00_AXI_awid[1:0],M00_AXI_awuser[17:0],M00_AXI_bid[1:0],M00_AXI_rid[1:0]" */
/* synthesis syn_force_seq_prim="aclk0" */
/* synthesis syn_force_seq_prim="aclk1" */;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input [0:0]S00_AXI_awvalid;
  output [0:0]S00_AXI_awready;
  input [127:0]S00_AXI_wdata;
  input [15:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wlast;
  input [0:0]S00_AXI_wvalid;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  input [0:0]S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_arready;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rlast;
  output [0:0]S00_AXI_rvalid;
  input [0:0]S00_AXI_rready;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awregion;
  output [3:0]M00_AXI_awqos;
  output [0:0]M00_AXI_awvalid;
  input [0:0]M00_AXI_awready;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wlast;
  output [0:0]M00_AXI_wvalid;
  input [0:0]M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  output [0:0]M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arregion;
  output [3:0]M00_AXI_arqos;
  output [0:0]M00_AXI_arvalid;
  input [0:0]M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rlast;
  input [0:0]M00_AXI_rvalid;
  output [0:0]M00_AXI_rready;
  input aclk0 /* synthesis syn_isclock = 1 */;
  input aclk1 /* synthesis syn_isclock = 1 */;
  input [15:0]S00_AXI_arid;
  input [17:0]S00_AXI_aruser;
  input [15:0]S00_AXI_awid;
  input [17:0]S00_AXI_awuser;
  output [15:0]S00_AXI_bid;
  output [15:0]S00_AXI_buser;
  output [15:0]S00_AXI_rid;
  output [16:0]S00_AXI_ruser;
  input [16:0]S00_AXI_wuser;
  output [1:0]M00_AXI_arid;
  output [17:0]M00_AXI_aruser;
  output [1:0]M00_AXI_awid;
  output [17:0]M00_AXI_awuser;
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_rid;
endmodule
