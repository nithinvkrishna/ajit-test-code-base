// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Sep  3 14:39:00 2024
// Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ajitVCK_axi_noc_0_1_sim_netlist.v
// Design      : ajitVCK_axi_noc_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ajitVCK_axi_noc_0_1,bd_c5b5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_c5b5,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awregion,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arregion,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready,
    aclk0,
    aclk1,
    S00_AXI_arid,
    S00_AXI_aruser,
    S00_AXI_awid,
    S00_AXI_awuser,
    S00_AXI_bid,
    S00_AXI_buser,
    S00_AXI_rid,
    S00_AXI_ruser,
    S00_AXI_wuser,
    M00_AXI_arid,
    M00_AXI_aruser,
    M00_AXI_awid,
    M00_AXI_awuser,
    M00_AXI_bid,
    M00_AXI_rid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [63:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [63:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6757_pspmc_0_0_pmc_axi_noc_axi0_clk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6757_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF M00_AXI, INSERT_VIP 0" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [17:0]S00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [17:0]S00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BUSER" *) output [15:0]S00_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 400000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_6757_pspmc_0_0_pmc_axi_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS M00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}}, DEST_IDS M00_AXI:0x40, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY ps_pmc" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_6757_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_0000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *) input [1:0]M00_AXI_rid;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire [0:0]M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire [0:0]M00_AXI_awvalid;
  wire [1:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [17:0]S00_AXI_aruser;
  wire [0:0]S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [17:0]S00_AXI_awuser;
  wire [0:0]S00_AXI_awvalid;
  wire [15:0]S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [15:0]S00_AXI_buser;
  wire [0:0]S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [15:0]S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [16:0]S00_AXI_ruser;
  wire [0:0]S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire [16:0]S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire aclk0;
  wire aclk1;

  (* hw_handoff = "ajitVCK_axi_noc_0_1.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5 inst
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arid(M00_AXI_arid),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_aruser(M00_AXI_aruser),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awid(M00_AXI_awid),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awuser(M00_AXI_awuser),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bid(M00_AXI_bid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rid(M00_AXI_rid),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_aruser(S00_AXI_aruser),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awuser(S00_AXI_awuser),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_buser(S00_AXI_buser),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_ruser(S00_AXI_ruser),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wuser(S00_AXI_wuser),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .aclk0(aclk0),
        .aclk1(aclk1));
endmodule

(* hw_handoff = "ajitVCK_axi_noc_0_1.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    aclk0,
    aclk1);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, APERTURES {0x201_0000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_6757_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [1:0]M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 16, CATEGORY ps_pmc, CLK_DOMAIN bd_6757_pspmc_0_0_pmc_axi_noc_axi0_clk, CONNECTIONS M00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 128, DEST_IDS M00_AXI:0x40, FREQ_HZ 400000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [17:0]S00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [63:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [17:0]S00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BUSER" *) output [15:0]S00_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_6757_pspmc_0_0_pmc_axi_noc_axi0_clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF M00_AXI, CLK_DOMAIN bd_6757_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk1;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire [0:0]M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire [0:0]M00_AXI_awvalid;
  wire [1:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [17:0]S00_AXI_aruser;
  wire [0:0]S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [17:0]S00_AXI_awuser;
  wire [0:0]S00_AXI_awvalid;
  wire [15:0]S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [15:0]S00_AXI_buser;
  wire [0:0]S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [15:0]S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [16:0]S00_AXI_ruser;
  wire [0:0]S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire [16:0]S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire aclk0;
  wire aclk1;
  wire const_0_dout;
  wire NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire [7:0]NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;
  wire NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire NLW_S00_AXI_nmu_NMU_UNCONNECTED;
  wire [7:0]NLW_S00_AXI_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M00_AXI_arcache),
        .IF_NOC_AXI_ARCID(M00_AXI_arid),
        .IF_NOC_AXI_ARLEN(M00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M00_AXI_arready),
        .IF_NOC_AXI_ARREGION(M00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(M00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(M00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M00_AXI_awcache),
        .IF_NOC_AXI_AWCID(M00_AXI_awid),
        .IF_NOC_AXI_AWLEN(M00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M00_AXI_awready),
        .IF_NOC_AXI_AWREGION(M00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(M00_AXI_awvalid),
        .IF_NOC_AXI_BCID(M00_AXI_bid),
        .IF_NOC_AXI_BREADY(M00_AXI_bready),
        .IF_NOC_AXI_BRESP(M00_AXI_bresp),
        .IF_NOC_AXI_BVALID(M00_AXI_bvalid),
        .IF_NOC_AXI_RCID(M00_AXI_rid),
        .IF_NOC_AXI_RDATA(M00_AXI_rdata),
        .IF_NOC_AXI_RLAST(M00_AXI_rlast),
        .IF_NOC_AXI_RREADY(M00_AXI_rready),
        .IF_NOC_AXI_RRESP(M00_AXI_rresp),
        .IF_NOC_AXI_RVALID(M00_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M00_AXI_wdata),
        .IF_NOC_AXI_WLAST(M00_AXI_wlast),
        .IF_NOC_AXI_WREADY(M00_AXI_wready),
        .IF_NOC_AXI_WSTRB(M00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(M00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NSU(1'b0),
        .aclk(aclk1));
  (* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_S00_AXI_nmu_0 S00_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S00_AXI_arcache),
        .IF_NOC_AXI_ARID(S00_AXI_arid),
        .IF_NOC_AXI_ARLEN(S00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(S00_AXI_arready),
        .IF_NOC_AXI_ARREGION(S00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(S00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(S00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S00_AXI_awcache),
        .IF_NOC_AXI_AWID(S00_AXI_awid),
        .IF_NOC_AXI_AWLEN(S00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(S00_AXI_awready),
        .IF_NOC_AXI_AWREGION(S00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(S00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(S00_AXI_awvalid),
        .IF_NOC_AXI_BID(S00_AXI_bid),
        .IF_NOC_AXI_BREADY(S00_AXI_bready),
        .IF_NOC_AXI_BRESP(S00_AXI_bresp),
        .IF_NOC_AXI_BUSER(S00_AXI_buser),
        .IF_NOC_AXI_BVALID(S00_AXI_bvalid),
        .IF_NOC_AXI_RDATA(S00_AXI_rdata),
        .IF_NOC_AXI_RID(S00_AXI_rid),
        .IF_NOC_AXI_RLAST(S00_AXI_rlast),
        .IF_NOC_AXI_RREADY(S00_AXI_rready),
        .IF_NOC_AXI_RRESP(S00_AXI_rresp),
        .IF_NOC_AXI_RUSER(S00_AXI_ruser),
        .IF_NOC_AXI_RVALID(S00_AXI_rvalid),
        .IF_NOC_AXI_WDATA(S00_AXI_wdata),
        .IF_NOC_AXI_WLAST(S00_AXI_wlast),
        .IF_NOC_AXI_WREADY(S00_AXI_wready),
        .IF_NOC_AXI_WSTRB(S00_AXI_wstrb),
        .IF_NOC_AXI_WUSER(S00_AXI_wuser),
        .IF_NOC_AXI_WVALID(S00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_S00_AXI_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_S00_AXI_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NMU(NLW_S00_AXI_nmu_NMU_UNCONNECTED),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* CHECK_LICENSE_TYPE = "bd_c5b5_const_0_0,xlconstant_v1_1_8_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_8_xlconstant,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_const_0_0 const_0
       (.dout(const_0_dout));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_M00_AXI_nsu_0
   (IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARADDR" *) output [63:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARBURST" *) output [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARCACHE" *) output [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARID" *) output [1:0]IF_NOC_AXI_ARCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLEN" *) output [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLOCK" *) output [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARPROT" *) output [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARQOS" *) output [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREGION" *) output [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARSIZE" *) output [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARUSER" *) output [17:0]IF_NOC_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARVALID" *) output IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWADDR" *) output [63:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWBURST" *) output [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWCACHE" *) output [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWID" *) output [1:0]IF_NOC_AXI_AWCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLEN" *) output [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLOCK" *) output [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWPROT" *) output [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWQOS" *) output [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREGION" *) output [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWSIZE" *) output [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWUSER" *) output [17:0]IF_NOC_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWVALID" *) output IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BREADY" *) output IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RREADY" *) output IF_NOC_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WDATA" *) output [31:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WLAST" *) output [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WSTRB" *) output [3:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WVALID" *) output IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREADY" *) input IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREADY" *) input IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BID" *) input [1:0]IF_NOC_AXI_BCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BRESP" *) input [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BVALID" *) input IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RID" *) input [1:0]IF_NOC_AXI_RCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RDATA" *) input [31:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RLAST" *) input [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RRESP" *) input [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RVALID" *) input IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WREADY" *) input IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF MAXI4:MAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) input NSU;

  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [31:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [31:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [3:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* DONT_TOUCH *) wire NSU;
  wire aclk;
  wire [9:0]NLW_bd_c5b5_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* REG_AXI_LOOPBACK = "2'b00" *) 
  (* REG_COMP_ID_INDEX0 = "5'b00000" *) 
  (* REG_COMP_ID_INDEX1 = "5'b00001" *) 
  (* REG_COMP_ID_MODE = "1'b0" *) 
  (* REG_DISABLE_EX_MON = "1'b1" *) 
  (* REG_DWIDTH = "3'b010" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_FIXED_COMP_ID = "2'b00" *) 
  (* REG_MODE_SELECT = "2'b00" *) 
  (* REG_ODISABLE_AXI_RESP = "1'b0" *) 
  (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) 
  (* REG_OUTSTANDING_WR_TXN = "6'b100000" *) 
  (* REG_PAR_CHK = "1'b0" *) 
  (* REG_RDTRK_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_RDTRK_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_RD_REQ_VC_MAP0 = "3'b000" *) 
  (* REG_RD_REQ_VC_MAP1 = "3'b100" *) 
  (* REG_RD_RESP_VC_MAP0 = "3'b010" *) 
  (* REG_RD_RESP_VC_MAP1 = "3'b110" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_RD_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_SRC = "12'b000001000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) 
  (* REG_VMAP_OUT_RD_TOKEN0 = "8'b00010000" *) 
  (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00010000" *) 
  (* REG_VMAP_OUT_WR_TOKEN0 = "8'b00010000" *) 
  (* REG_VMAP_OUT_WR_TOKEN1 = "8'b00010000" *) 
  (* REG_WRTRK_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_WRTRK_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_WR_REQ_VC_MAP0 = "3'b001" *) 
  (* REG_WR_REQ_VC_MAP1 = "3'b101" *) 
  (* REG_WR_RESP_VC_MAP0 = "3'b011" *) 
  (* REG_WR_RESP_VC_MAP1 = "3'b111" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_WR_VCA_TOKEN1 = "8'b00010000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_M00_AXI_nsu_0_top bd_c5b5_M00_AXI_nsu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER(IF_NOC_AXI_ARUSER),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER(IF_NOC_AXI_AWUSER),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_bd_c5b5_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .NSU(NSU),
        .aclk(aclk));
endmodule

(* REG_AXI_LOOPBACK = "2'b00" *) (* REG_COMP_ID_INDEX0 = "5'b00000" *) (* REG_COMP_ID_INDEX1 = "5'b00001" *) 
(* REG_COMP_ID_MODE = "1'b0" *) (* REG_DISABLE_EX_MON = "1'b1" *) (* REG_DWIDTH = "3'b010" *) 
(* REG_ECC_CHK_EN = "1'b1" *) (* REG_FIXED_COMP_ID = "2'b00" *) (* REG_MODE_SELECT = "2'b00" *) 
(* REG_ODISABLE_AXI_RESP = "1'b0" *) (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) (* REG_OUTSTANDING_WR_TXN = "6'b100000" *) 
(* REG_PAR_CHK = "1'b0" *) (* REG_RDTRK_VCA_TOKEN0 = "8'b00010000" *) (* REG_RDTRK_VCA_TOKEN1 = "8'b00010000" *) 
(* REG_RD_REQ_VC_MAP0 = "3'b000" *) (* REG_RD_REQ_VC_MAP1 = "3'b100" *) (* REG_RD_RESP_VC_MAP0 = "3'b010" *) 
(* REG_RD_RESP_VC_MAP1 = "3'b110" *) (* REG_RD_VCA_TOKEN0 = "8'b00010000" *) (* REG_RD_VCA_TOKEN1 = "8'b00010000" *) 
(* REG_SRC = "12'b000001000000" *) (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) (* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) 
(* REG_VMAP_OUT_RD_TOKEN0 = "8'b00010000" *) (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00010000" *) (* REG_VMAP_OUT_WR_TOKEN0 = "8'b00010000" *) 
(* REG_VMAP_OUT_WR_TOKEN1 = "8'b00010000" *) (* REG_WRTRK_VCA_TOKEN0 = "8'b00010000" *) (* REG_WRTRK_VCA_TOKEN1 = "8'b00010000" *) 
(* REG_WR_REQ_VC_MAP0 = "3'b001" *) (* REG_WR_REQ_VC_MAP1 = "3'b101" *) (* REG_WR_RESP_VC_MAP0 = "3'b011" *) 
(* REG_WR_RESP_VC_MAP1 = "3'b111" *) (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) (* REG_WR_VCA_TOKEN1 = "8'b00010000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_M00_AXI_nsu_0_top
   (IF_NOC_AXI_TDEST,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  output [9:0]IF_NOC_AXI_TDEST;
  output IF_NOC_AXI_WVALID;
  input IF_NOC_AXI_WREADY;
  output [0:0]IF_NOC_AXI_WLAST;
  output [1:0]IF_NOC_AXI_AWCID;
  output [31:0]IF_NOC_AXI_WDATA;
  output [3:0]IF_NOC_AXI_WSTRB;
  output [63:0]IF_NOC_AXI_ARADDR;
  output [1:0]IF_NOC_AXI_ARBURST;
  output [3:0]IF_NOC_AXI_ARCACHE;
  output [1:0]IF_NOC_AXI_ARCID;
  output [7:0]IF_NOC_AXI_ARLEN;
  output [0:0]IF_NOC_AXI_ARLOCK;
  output [2:0]IF_NOC_AXI_ARPROT;
  output [3:0]IF_NOC_AXI_ARQOS;
  output [3:0]IF_NOC_AXI_ARREGION;
  output [2:0]IF_NOC_AXI_ARSIZE;
  output [17:0]IF_NOC_AXI_ARUSER;
  output IF_NOC_AXI_ARVALID;
  output [63:0]IF_NOC_AXI_AWADDR;
  output [1:0]IF_NOC_AXI_AWBURST;
  output [3:0]IF_NOC_AXI_AWCACHE;
  output [7:0]IF_NOC_AXI_AWLEN;
  output [0:0]IF_NOC_AXI_AWLOCK;
  output [2:0]IF_NOC_AXI_AWPROT;
  output [3:0]IF_NOC_AXI_AWQOS;
  output [3:0]IF_NOC_AXI_AWREGION;
  output [2:0]IF_NOC_AXI_AWSIZE;
  output [17:0]IF_NOC_AXI_AWUSER;
  output IF_NOC_AXI_AWVALID;
  output IF_NOC_AXI_BREADY;
  output IF_NOC_AXI_RREADY;
  input IF_NOC_AXI_ARREADY;
  input IF_NOC_AXI_AWREADY;
  input [1:0]IF_NOC_AXI_BCID;
  input [1:0]IF_NOC_AXI_BRESP;
  input IF_NOC_AXI_BVALID;
  input [1:0]IF_NOC_AXI_RCID;
  input [31:0]IF_NOC_AXI_RDATA;
  input [0:0]IF_NOC_AXI_RLAST;
  input [1:0]IF_NOC_AXI_RRESP;
  input IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  input NSU;

  wire \<const0> ;
  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [31:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [31:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [3:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  wire NOC_NSU512_INST_n_1193;
  wire NOC_NSU512_INST_n_1194;
  wire NOC_NSU512_INST_n_1195;
  wire NOC_NSU512_INST_n_1196;
  wire NOC_NSU512_INST_n_1197;
  wire NOC_NSU512_INST_n_1198;
  wire NOC_NSU512_INST_n_1199;
  wire NOC_NSU512_INST_n_1200;
  wire NOC_NSU512_INST_n_1201;
  wire NOC_NSU512_INST_n_1202;
  wire NSU;
  wire aclk;
  wire NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED;
  wire [511:32]NLW_NOC_NSU512_INST_IF_NOC_AXI_RDATA_UNCONNECTED;
  wire [5:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED;
  wire [511:32]NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_UNCONNECTED;
  wire [63:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED;
  wire [63:4]NLW_NOC_NSU512_INST_IF_NOC_AXI_WSTRB_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED;

  assign IF_NOC_AXI_TDEST[9] = \<const0> ;
  assign IF_NOC_AXI_TDEST[8] = \<const0> ;
  assign IF_NOC_AXI_TDEST[7] = \<const0> ;
  assign IF_NOC_AXI_TDEST[6] = \<const0> ;
  assign IF_NOC_AXI_TDEST[5] = \<const0> ;
  assign IF_NOC_AXI_TDEST[4] = \<const0> ;
  assign IF_NOC_AXI_TDEST[3] = \<const0> ;
  assign IF_NOC_AXI_TDEST[2] = \<const0> ;
  assign IF_NOC_AXI_TDEST[1] = \<const0> ;
  assign IF_NOC_AXI_TDEST[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NSU512 #(
    .REG_AXI_LOOPBACK(2'h0),
    .REG_COMP_ID_INDEX0(5'h00),
    .REG_COMP_ID_INDEX1(5'h01),
    .REG_COMP_ID_MODE(1'h0),
    .REG_DISABLE_EX_MON(1'h1),
    .REG_DWIDTH(3'h2),
    .REG_ECC_CHK_EN(1'h1),
    .REG_FIXED_COMP_ID(2'h0),
    .REG_MODE_SELECT(2'h0),
    .REG_ODISABLE_AXI_RESP(1'h0),
    .REG_OUTSTANDING_RD_TXN(6'h20),
    .REG_OUTSTANDING_WR_TXN(6'h20),
    .REG_PAR_CHK(2'h0),
    .REG_RDTRK_VCA_TOKEN0(8'h10),
    .REG_RDTRK_VCA_TOKEN1(8'h10),
    .REG_RD_REQ_VC_MAP0(3'h0),
    .REG_RD_REQ_VC_MAP1(3'h4),
    .REG_RD_RESP_VC_MAP0(3'h2),
    .REG_RD_RESP_VC_MAP1(3'h6),
    .REG_RD_VCA_TOKEN0(8'h10),
    .REG_RD_VCA_TOKEN1(8'h10),
    .REG_SRC(12'h040),
    .REG_TBASE_AXI_TIMEOUT(4'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h2),
    .REG_VMAP_OUT_RD_TOKEN0(8'h10),
    .REG_VMAP_OUT_RD_TOKEN1(8'h10),
    .REG_VMAP_OUT_WR_TOKEN0(8'h10),
    .REG_VMAP_OUT_WR_TOKEN1(8'h10),
    .REG_WRTRK_VCA_TOKEN0(8'h10),
    .REG_WRTRK_VCA_TOKEN1(8'h10),
    .REG_WR_REQ_VC_MAP0(3'h1),
    .REG_WR_REQ_VC_MAP1(3'h5),
    .REG_WR_RESP_VC_MAP0(3'h3),
    .REG_WR_RESP_VC_MAP1(3'h7),
    .REG_WR_VCA_TOKEN0(8'h10),
    .REG_WR_VCA_TOKEN1(8'h10)) 
    NOC_NSU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARADDR_PAR(IF_NOC_AXI_ARUSER[17:10]),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_ARUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED[15:10],IF_NOC_AXI_ARUSER[9:0]}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWADDR_PAR(IF_NOC_AXI_AWUSER[17:10]),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_AWUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED[15:10],IF_NOC_AXI_AWUSER[9:0]}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA({NLW_NOC_NSU512_INST_IF_NOC_AXI_RDATA_UNCONNECTED[511:32],IF_NOC_AXI_RDATA}),
        .IF_NOC_AXI_RDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(1'b0),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST({NOC_NSU512_INST_n_1193,NOC_NSU512_INST_n_1194,NOC_NSU512_INST_n_1195,NOC_NSU512_INST_n_1196,NOC_NSU512_INST_n_1197,NOC_NSU512_INST_n_1198,NOC_NSU512_INST_n_1199,NOC_NSU512_INST_n_1200,NOC_NSU512_INST_n_1201,NOC_NSU512_INST_n_1202}),
        .IF_NOC_AXI_WCID(NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED[5:0]),
        .IF_NOC_AXI_WDATA({NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_UNCONNECTED[511:32],IF_NOC_AXI_WDATA}),
        .IF_NOC_AXI_WDATA_PAR(NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_WID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_WSTRB({NLW_NOC_NSU512_INST_IF_NOC_AXI_WSTRB_UNCONNECTED[63:4],IF_NOC_AXI_WSTRB}),
        .IF_NOC_AXI_WUSER(NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NSU(NSU),
        .NSU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_S00_AXI_nmu_0
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_AWID,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BUSER,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RID,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RUSER,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_WUSER,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    AXI_IN,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WVALID" *) input IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WREADY" *) output IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WLAST" *) input [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWID" *) input [15:0]IF_NOC_AXI_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WDATA" *) input [127:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB" *) input [15:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY" *) output IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY" *) output IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BID" *) output [15:0]IF_NOC_AXI_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BRESP" *) output [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BUSER" *) output [15:0]IF_NOC_AXI_BUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BVALID" *) output IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RDATA" *) output [127:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RID" *) output [15:0]IF_NOC_AXI_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RLAST" *) output [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RRESP" *) output [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RUSER" *) output [16:0]IF_NOC_AXI_RUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RVALID" *) output IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR" *) input [63:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST" *) input [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE" *) input [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARID" *) input [15:0]IF_NOC_AXI_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN" *) input [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK" *) input [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT" *) input [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS" *) input [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION" *) input [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE" *) input [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARUSER" *) input [17:0]IF_NOC_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID" *) input IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR" *) input [63:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST" *) input [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE" *) input [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN" *) input [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK" *) input [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT" *) input [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS" *) input [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION" *) input [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE" *) input [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWUSER" *) input [17:0]IF_NOC_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID" *) input IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BREADY" *) input IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RREADY" *) input IF_NOC_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WUSER" *) input [16:0]IF_NOC_AXI_WUSER;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk aclk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) output NMU;
  input AXI_IN;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire AXI_IN;
  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [15:0]IF_NOC_AXI_ARID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [15:0]IF_NOC_AXI_AWID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [15:0]IF_NOC_AXI_BID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire [15:0]IF_NOC_AXI_BUSER;
  wire IF_NOC_AXI_BVALID;
  wire [127:0]IF_NOC_AXI_RDATA;
  wire [15:0]IF_NOC_AXI_RID;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire [16:0]IF_NOC_AXI_RUSER;
  wire IF_NOC_AXI_RVALID;
  wire [127:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [15:0]IF_NOC_AXI_WSTRB;
  wire [16:0]IF_NOC_AXI_WUSER;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* DONT_TOUCH *) wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;

  (* REG_ADDR_DST0 = "16'b0000000001000000" *) 
  (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST10 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST11 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST13 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST14 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST2 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST3 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST5 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST6 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST8 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST9 = "16'b0000000000000000" *) 
  (* REG_ADDR_ENABLE = "16'b0000000000000001" *) 
  (* REG_ADDR_MADDR0 = "32'b00000010000000010000000000000000" *) 
  (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK0 = "32'b11111111111111111111111111111111" *) 
  (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_REMAP = "16'b0000000000000001" *) 
  (* REG_ADDR_RPADDR0 = "32'b00000010000000010000000000000000" *) 
  (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADR_MAP_CPM = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PCIE = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_QSPI = "12'b111111000000" *) 
  (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) 
  (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
  (* REG_AXI_NON_MOD_DISABLE = "1'b0" *) 
  (* REG_AXI_PAR_CHK = "2'b00" *) 
  (* REG_CHOPSIZE = "4'b1010" *) 
  (* REG_DDR_ADR_MAP0 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) 
  (* REG_DDR_DST_MAP0 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP1 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP2 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP3 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP5 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP6 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
  (* REG_DWIDTH = "3'b100" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
  (* REG_MODE_SELECT = "16'b0000000000000000" *) 
  (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) 
  (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
  (* REG_PRIORITY = "2'b00" *) 
  (* REG_RD_AXPROT_SEL = "6'b000000" *) 
  (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00110011" *) 
  (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
  (* REG_RROB_RAM_SETTING = "9'b000010010" *) 
  (* REG_SMID_SEL = "20'b00000000000000000000" *) 
  (* REG_SRC = "12'b000010000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "3'b001" *) 
  (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) 
  (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "3'b001" *) 
  (* REG_VC_MAP = "12'b111110101100" *) 
  (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
  (* REG_WBUF_RAM_SETTING = "9'b000010010" *) 
  (* REG_WR_AXPROT_SEL = "6'b000000" *) 
  (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_S00_AXI_nmu_0_top bd_c5b5_S00_AXI_nmu_0_top_INST
       (.AXI_IN(AXI_IN),
        .IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARID(IF_NOC_AXI_ARID),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER(IF_NOC_AXI_ARUSER),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWID(IF_NOC_AXI_AWID),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER(IF_NOC_AXI_AWUSER),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BID(IF_NOC_AXI_BID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER(IF_NOC_AXI_BUSER),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RID(IF_NOC_AXI_RID),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER(IF_NOC_AXI_RUSER),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER(IF_NOC_AXI_WUSER),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST),
        .aclk(aclk));
endmodule

(* REG_ADDR_DST0 = "16'b0000000001000000" *) (* REG_ADDR_DST1 = "16'b0000000000000000" *) (* REG_ADDR_DST10 = "16'b0000000000000000" *) 
(* REG_ADDR_DST11 = "16'b0000000000000000" *) (* REG_ADDR_DST12 = "16'b0000000000000000" *) (* REG_ADDR_DST13 = "16'b0000000000000000" *) 
(* REG_ADDR_DST14 = "16'b0000000000000000" *) (* REG_ADDR_DST15 = "16'b0000000000000000" *) (* REG_ADDR_DST2 = "16'b0000000000000000" *) 
(* REG_ADDR_DST3 = "16'b0000000000000000" *) (* REG_ADDR_DST4 = "16'b0000000000000000" *) (* REG_ADDR_DST5 = "16'b0000000000000000" *) 
(* REG_ADDR_DST6 = "16'b0000000000000000" *) (* REG_ADDR_DST7 = "16'b0000000000000000" *) (* REG_ADDR_DST8 = "16'b0000000000000000" *) 
(* REG_ADDR_DST9 = "16'b0000000000000000" *) (* REG_ADDR_ENABLE = "16'b0000000000000001" *) (* REG_ADDR_MADDR0 = "32'b00000010000000010000000000000000" *) 
(* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK0 = "32'b11111111111111111111111111111111" *) (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_REMAP = "16'b0000000000000001" *) (* REG_ADDR_RPADDR0 = "32'b00000010000000010000000000000000" *) 
(* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) 
(* REG_ADR_MAP_CPM = "12'b111111000000" *) (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) (* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) 
(* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) 
(* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) (* REG_ADR_MAP_PCIE = "12'b111111000000" *) 
(* REG_ADR_MAP_PMC = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) 
(* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) (* REG_ADR_MAP_QSPI = "12'b111111000000" *) 
(* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) (* REG_ADR_MAP_XPDS = "12'b111111000000" *) (* REG_AXI_NON_MOD_DISABLE = "1'b0" *) 
(* REG_AXI_PAR_CHK = "2'b00" *) (* REG_CHOPSIZE = "4'b1010" *) (* REG_DDR_ADR_MAP0 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) 
(* REG_DDR_DST_MAP0 = "12'b111111000000" *) (* REG_DDR_DST_MAP1 = "12'b111111000000" *) (* REG_DDR_DST_MAP2 = "12'b111111000000" *) 
(* REG_DDR_DST_MAP3 = "12'b111111000000" *) (* REG_DDR_DST_MAP4 = "12'b111111000000" *) (* REG_DDR_DST_MAP5 = "12'b111111000000" *) 
(* REG_DDR_DST_MAP6 = "12'b111111000000" *) (* REG_DDR_DST_MAP7 = "12'b111111000000" *) (* REG_DWIDTH = "3'b100" *) 
(* REG_ECC_CHK_EN = "1'b1" *) (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) (* REG_MODE_SELECT = "16'b0000000000000000" *) 
(* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) (* REG_PRIORITY = "2'b00" *) 
(* REG_RD_AXPROT_SEL = "6'b000000" *) (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) (* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
(* REG_RD_VCA_TOKEN0 = "8'b00110011" *) (* REG_RPOISON_TO_SLVERR = "1'b0" *) (* REG_RROB_RAM_SETTING = "9'b000010010" *) 
(* REG_SMID_SEL = "20'b00000000000000000000" *) (* REG_SRC = "12'b000010000000" *) (* REG_TBASE_AXI_TIMEOUT = "3'b001" *) 
(* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) (* REG_TBASE_TRK_TIMEOUT = "3'b001" *) 
(* REG_VC_MAP = "12'b111110101100" *) (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) (* REG_WBUF_RAM_SETTING = "9'b000010010" *) 
(* REG_WR_AXPROT_SEL = "6'b000000" *) (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) (* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
(* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_S00_AXI_nmu_0_top
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_AWID,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BUSER,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RID,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RUSER,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_WUSER,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    AXI_IN,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  input IF_NOC_AXI_WVALID;
  output IF_NOC_AXI_WREADY;
  input [0:0]IF_NOC_AXI_WLAST;
  input [15:0]IF_NOC_AXI_AWID;
  input [127:0]IF_NOC_AXI_WDATA;
  input [15:0]IF_NOC_AXI_WSTRB;
  output IF_NOC_AXI_ARREADY;
  output IF_NOC_AXI_AWREADY;
  output [15:0]IF_NOC_AXI_BID;
  output [1:0]IF_NOC_AXI_BRESP;
  output [15:0]IF_NOC_AXI_BUSER;
  output IF_NOC_AXI_BVALID;
  output [127:0]IF_NOC_AXI_RDATA;
  output [15:0]IF_NOC_AXI_RID;
  output [0:0]IF_NOC_AXI_RLAST;
  output [1:0]IF_NOC_AXI_RRESP;
  output [16:0]IF_NOC_AXI_RUSER;
  output IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input [63:0]IF_NOC_AXI_ARADDR;
  input [1:0]IF_NOC_AXI_ARBURST;
  input [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARID" *) input [15:0]IF_NOC_AXI_ARID;
  input [7:0]IF_NOC_AXI_ARLEN;
  input [0:0]IF_NOC_AXI_ARLOCK;
  input [2:0]IF_NOC_AXI_ARPROT;
  input [3:0]IF_NOC_AXI_ARQOS;
  input [3:0]IF_NOC_AXI_ARREGION;
  input [2:0]IF_NOC_AXI_ARSIZE;
  input [17:0]IF_NOC_AXI_ARUSER;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  input IF_NOC_AXI_ARVALID;
  input [63:0]IF_NOC_AXI_AWADDR;
  input [1:0]IF_NOC_AXI_AWBURST;
  input [3:0]IF_NOC_AXI_AWCACHE;
  input [7:0]IF_NOC_AXI_AWLEN;
  input [0:0]IF_NOC_AXI_AWLOCK;
  input [2:0]IF_NOC_AXI_AWPROT;
  input [3:0]IF_NOC_AXI_AWQOS;
  input [3:0]IF_NOC_AXI_AWREGION;
  input [2:0]IF_NOC_AXI_AWSIZE;
  input [17:0]IF_NOC_AXI_AWUSER;
  input IF_NOC_AXI_AWVALID;
  input IF_NOC_AXI_BREADY;
  input IF_NOC_AXI_RREADY;
  input [16:0]IF_NOC_AXI_WUSER;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  output NMU;
  input AXI_IN;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire AXI_IN;
  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [15:0]IF_NOC_AXI_ARID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [15:0]IF_NOC_AXI_AWID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [15:0]IF_NOC_AXI_BID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire [15:0]IF_NOC_AXI_BUSER;
  wire IF_NOC_AXI_BVALID;
  wire [127:0]IF_NOC_AXI_RDATA;
  wire [15:0]IF_NOC_AXI_RID;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire [16:0]IF_NOC_AXI_RUSER;
  wire IF_NOC_AXI_RVALID;
  wire [127:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [15:0]IF_NOC_AXI_WSTRB;
  wire [16:0]IF_NOC_AXI_WUSER;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;
  wire NLW_NOC_NMU128_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NMU128_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NMU128_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU128_INST_IF_NOC_AXI_RUSER_UNCONNECTED;
  wire [9:0]NLW_NOC_NMU128_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NMU128 #(
    .REG_ADDR_DST0(16'h0040),
    .REG_ADDR_DST1(16'h0000),
    .REG_ADDR_DST10(16'h0000),
    .REG_ADDR_DST11(16'h0000),
    .REG_ADDR_DST12(16'h0000),
    .REG_ADDR_DST13(16'h0000),
    .REG_ADDR_DST14(16'h0000),
    .REG_ADDR_DST15(16'h0000),
    .REG_ADDR_DST2(16'h0000),
    .REG_ADDR_DST3(16'h0000),
    .REG_ADDR_DST4(16'h0000),
    .REG_ADDR_DST5(16'h0000),
    .REG_ADDR_DST6(16'h0000),
    .REG_ADDR_DST7(16'h0000),
    .REG_ADDR_DST8(16'h0000),
    .REG_ADDR_DST9(16'h0000),
    .REG_ADDR_ENABLE(16'h0001),
    .REG_ADDR_MADDR0(32'h02010000),
    .REG_ADDR_MADDR1(32'h00000000),
    .REG_ADDR_MADDR10(32'h00000000),
    .REG_ADDR_MADDR11(32'h00000000),
    .REG_ADDR_MADDR12(32'h00000000),
    .REG_ADDR_MADDR13(32'h00000000),
    .REG_ADDR_MADDR14(32'h00000000),
    .REG_ADDR_MADDR15(32'h00000000),
    .REG_ADDR_MADDR2(32'h00000000),
    .REG_ADDR_MADDR3(32'h00000000),
    .REG_ADDR_MADDR4(32'h00000000),
    .REG_ADDR_MADDR5(32'h00000000),
    .REG_ADDR_MADDR6(32'h00000000),
    .REG_ADDR_MADDR7(32'h00000000),
    .REG_ADDR_MADDR8(32'h00000000),
    .REG_ADDR_MADDR9(32'h00000000),
    .REG_ADDR_MASK0(32'hFFFFFFFF),
    .REG_ADDR_MASK1(32'h00000000),
    .REG_ADDR_MASK10(32'h00000000),
    .REG_ADDR_MASK11(32'h00000000),
    .REG_ADDR_MASK12(32'h00000000),
    .REG_ADDR_MASK13(32'h00000000),
    .REG_ADDR_MASK14(32'h00000000),
    .REG_ADDR_MASK15(32'h00000000),
    .REG_ADDR_MASK2(32'h00000000),
    .REG_ADDR_MASK3(32'h00000000),
    .REG_ADDR_MASK4(32'h00000000),
    .REG_ADDR_MASK5(32'h00000000),
    .REG_ADDR_MASK6(32'h00000000),
    .REG_ADDR_MASK7(32'h00000000),
    .REG_ADDR_MASK8(32'h00000000),
    .REG_ADDR_MASK9(32'h00000000),
    .REG_ADDR_REMAP(16'h0001),
    .REG_ADDR_RPADDR0(32'h02010000),
    .REG_ADDR_RPADDR1(32'h00000000),
    .REG_ADDR_RPADDR10(32'h00000000),
    .REG_ADDR_RPADDR11(32'h00000000),
    .REG_ADDR_RPADDR12(32'h00000000),
    .REG_ADDR_RPADDR13(32'h00000000),
    .REG_ADDR_RPADDR14(32'h00000000),
    .REG_ADDR_RPADDR15(32'h00000000),
    .REG_ADDR_RPADDR2(32'h00000000),
    .REG_ADDR_RPADDR3(32'h00000000),
    .REG_ADDR_RPADDR4(32'h00000000),
    .REG_ADDR_RPADDR5(32'h00000000),
    .REG_ADDR_RPADDR6(32'h00000000),
    .REG_ADDR_RPADDR7(32'h00000000),
    .REG_ADDR_RPADDR8(32'h00000000),
    .REG_ADDR_RPADDR9(32'h00000000),
    .REG_ADR_MAP_CPM(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_0(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_1(12'hFC0),
    .REG_ADR_MAP_LPD_AFI_FS(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_0(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_1(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_2(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_3(12'hFC0),
    .REG_ADR_MAP_PCIE(12'hFC0),
    .REG_ADR_MAP_PMC(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_0(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_1(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_2(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_3(12'hFC0),
    .REG_ADR_MAP_QSPI(12'hFC0),
    .REG_ADR_MAP_STM_GIC(12'hFC0),
    .REG_ADR_MAP_XPDS(12'hFC0),
    .REG_AXI_NON_MOD_DISABLE(1'h0),
    .REG_AXI_PAR_CHK(2'h0),
    .REG_CHOPSIZE(4'hA),
    .REG_DDR_ADR_MAP0(15'h1FFF),
    .REG_DDR_ADR_MAP1(15'h1FFF),
    .REG_DDR_ADR_MAP2(15'h1FFF),
    .REG_DDR_ADR_MAP3(15'h1FFF),
    .REG_DDR_ADR_MAP4(15'h1FFF),
    .REG_DDR_ADR_MAP5(15'h1FFF),
    .REG_DDR_ADR_MAP6(15'h1FFF),
    .REG_DDR_DST_MAP0(12'hFC0),
    .REG_DDR_DST_MAP1(12'hFC0),
    .REG_DDR_DST_MAP2(12'hFC0),
    .REG_DDR_DST_MAP3(12'hFC0),
    .REG_DDR_DST_MAP4(12'hFC0),
    .REG_DDR_DST_MAP5(12'hFC0),
    .REG_DDR_DST_MAP6(12'hFC0),
    .REG_DDR_DST_MAP7(12'hFC0),
    .REG_DWIDTH(3'h4),
    .REG_ECC_CHK_EN(1'h1),
    .REG_HBM_MAP_T0_CH0(12'hFC0),
    .REG_HBM_MAP_T0_CH1(12'hFC0),
    .REG_HBM_MAP_T0_CH10(12'hFC0),
    .REG_HBM_MAP_T0_CH11(12'hFC0),
    .REG_HBM_MAP_T0_CH12(12'hFC0),
    .REG_HBM_MAP_T0_CH13(12'hFC0),
    .REG_HBM_MAP_T0_CH14(12'hFC0),
    .REG_HBM_MAP_T0_CH15(12'hFC0),
    .REG_HBM_MAP_T0_CH2(12'hFC0),
    .REG_HBM_MAP_T0_CH3(12'hFC0),
    .REG_HBM_MAP_T0_CH4(12'hFC0),
    .REG_HBM_MAP_T0_CH5(12'hFC0),
    .REG_HBM_MAP_T0_CH6(12'hFC0),
    .REG_HBM_MAP_T0_CH7(12'hFC0),
    .REG_HBM_MAP_T0_CH8(12'hFC0),
    .REG_HBM_MAP_T0_CH9(12'hFC0),
    .REG_HBM_MAP_T1_CH0(12'hFC0),
    .REG_HBM_MAP_T1_CH1(12'hFC0),
    .REG_HBM_MAP_T1_CH10(12'hFC0),
    .REG_HBM_MAP_T1_CH11(12'hFC0),
    .REG_HBM_MAP_T1_CH12(12'hFC0),
    .REG_HBM_MAP_T1_CH13(12'hFC0),
    .REG_HBM_MAP_T1_CH14(12'hFC0),
    .REG_HBM_MAP_T1_CH15(12'hFC0),
    .REG_HBM_MAP_T1_CH2(12'hFC0),
    .REG_HBM_MAP_T1_CH3(12'hFC0),
    .REG_HBM_MAP_T1_CH4(12'hFC0),
    .REG_HBM_MAP_T1_CH5(12'hFC0),
    .REG_HBM_MAP_T1_CH6(12'hFC0),
    .REG_HBM_MAP_T1_CH7(12'hFC0),
    .REG_HBM_MAP_T1_CH8(12'hFC0),
    .REG_HBM_MAP_T1_CH9(12'hFC0),
    .REG_HBM_MAP_T2_CH0(12'hFC0),
    .REG_HBM_MAP_T2_CH1(12'hFC0),
    .REG_HBM_MAP_T2_CH10(12'hFC0),
    .REG_HBM_MAP_T2_CH11(12'hFC0),
    .REG_HBM_MAP_T2_CH12(12'hFC0),
    .REG_HBM_MAP_T2_CH13(12'hFC0),
    .REG_HBM_MAP_T2_CH14(12'hFC0),
    .REG_HBM_MAP_T2_CH15(12'hFC0),
    .REG_HBM_MAP_T2_CH2(12'hFC0),
    .REG_HBM_MAP_T2_CH3(12'hFC0),
    .REG_HBM_MAP_T2_CH4(12'hFC0),
    .REG_HBM_MAP_T2_CH5(12'hFC0),
    .REG_HBM_MAP_T2_CH6(12'hFC0),
    .REG_HBM_MAP_T2_CH7(12'hFC0),
    .REG_HBM_MAP_T2_CH8(12'hFC0),
    .REG_HBM_MAP_T2_CH9(12'hFC0),
    .REG_HBM_MAP_T3_CH0(12'hFC0),
    .REG_HBM_MAP_T3_CH1(12'hFC0),
    .REG_HBM_MAP_T3_CH10(12'hFC0),
    .REG_HBM_MAP_T3_CH11(12'hFC0),
    .REG_HBM_MAP_T3_CH12(12'hFC0),
    .REG_HBM_MAP_T3_CH13(12'hFC0),
    .REG_HBM_MAP_T3_CH14(12'hFC0),
    .REG_HBM_MAP_T3_CH15(12'hFC0),
    .REG_HBM_MAP_T3_CH2(12'hFC0),
    .REG_HBM_MAP_T3_CH3(12'hFC0),
    .REG_HBM_MAP_T3_CH4(12'hFC0),
    .REG_HBM_MAP_T3_CH5(12'hFC0),
    .REG_HBM_MAP_T3_CH6(12'hFC0),
    .REG_HBM_MAP_T3_CH7(12'hFC0),
    .REG_HBM_MAP_T3_CH8(12'hFC0),
    .REG_HBM_MAP_T3_CH9(12'hFC0),
    .REG_MODE_SELECT(16'h0000),
    .REG_OUTSTANDING_RD_TXN(7'h40),
    .REG_OUTSTANDING_WR_TXN(7'h40),
    .REG_PRIORITY(2'h0),
    .REG_RD_AXPROT_SEL(6'h00),
    .REG_RD_RATE_CREDIT_DROP(10'h004),
    .REG_RD_RATE_CREDIT_LIMIT(13'h0100),
    .REG_RD_VCA_TOKEN0(8'h33),
    .REG_RPOISON_TO_SLVERR(1'h0),
    .REG_RROB_RAM_SETTING(9'h012),
    .REG_SMID_SEL(20'h00000),
    .REG_SRC(12'h080),
    .REG_TBASE_AXI_TIMEOUT(4'h1),
    .REG_TBASE_MODE_RLIMIT_RD(3'h2),
    .REG_TBASE_MODE_RLIMIT_WR(3'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h1),
    .REG_VC_MAP(12'hFAC),
    .REG_WBUF_LAUNCH_SIZE(6'h10),
    .REG_WBUF_RAM_SETTING(9'h012),
    .REG_WR_AXPROT_SEL(6'h00),
    .REG_WR_RATE_CREDIT_DROP(10'h004),
    .REG_WR_RATE_CREDIT_LIMIT(13'h0100),
    .REG_WR_VCA_TOKEN0(8'h10)) 
    NOC_NMU128_INST
       (.AXI_IN(AXI_IN),
        .CLK(aclk),
        .IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARADDR_PAR(IF_NOC_AXI_ARUSER[17:10]),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARID(IF_NOC_AXI_ARID),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_ARUSER[9:0]}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWADDR_PAR(IF_NOC_AXI_AWUSER[17:10]),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWID(IF_NOC_AXI_AWID),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_AWUSER[9:0]}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BID(IF_NOC_AXI_BID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER(IF_NOC_AXI_BUSER),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RDATA_PAR(IF_NOC_AXI_RUSER[16:1]),
        .IF_NOC_AXI_RID(IF_NOC_AXI_RID),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(IF_NOC_AXI_RUSER[0]),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER(NLW_NOC_NMU128_INST_IF_NOC_AXI_RUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_NOC_NMU128_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WDATA_PAR(IF_NOC_AXI_WUSER[16:1]),
        .IF_NOC_AXI_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(IF_NOC_AXI_WUSER[0]),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NMU128_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NMU128_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NMU128_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST));
endmodule

(* CHECK_LICENSE_TYPE = "bd_c5b5_const_0_0,xlconstant_v1_1_8_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconstant_v1_1_8_xlconstant,Vivado 2023.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c5b5_const_0_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
