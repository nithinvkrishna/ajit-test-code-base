//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_4bb4.bd
//Design : bd_4bb4
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_4bb4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_4bb4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "design_1_axi_noc_1_0.hwdef" *) 
module bd_4bb4
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, APERTURES {0x201_0000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_70da_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M00_AXI_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_nci, CLK_DOMAIN bd_70da_pspmc_0_0_fpd_axi_noc_axi1_clk, CONNECTIONS M00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 128, DEST_IDS M00_AXI:0x0, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S00_AXI_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_70da_pspmc_0_0_fpd_axi_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF M00_AXI, CLK_DOMAIN bd_70da_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk1;

  wire [63:0]M00_AXI_nsu_MAXI4_ARADDR;
  wire [1:0]M00_AXI_nsu_MAXI4_ARBURST;
  wire [3:0]M00_AXI_nsu_MAXI4_ARCACHE;
  wire [1:0]M00_AXI_nsu_MAXI4_ARID;
  wire [7:0]M00_AXI_nsu_MAXI4_ARLEN;
  wire [0:0]M00_AXI_nsu_MAXI4_ARLOCK;
  wire [2:0]M00_AXI_nsu_MAXI4_ARPROT;
  wire [3:0]M00_AXI_nsu_MAXI4_ARQOS;
  wire [0:0]M00_AXI_nsu_MAXI4_ARREADY;
  wire [3:0]M00_AXI_nsu_MAXI4_ARREGION;
  wire [2:0]M00_AXI_nsu_MAXI4_ARSIZE;
  wire [17:0]M00_AXI_nsu_MAXI4_ARUSER;
  wire M00_AXI_nsu_MAXI4_ARVALID;
  wire [63:0]M00_AXI_nsu_MAXI4_AWADDR;
  wire [1:0]M00_AXI_nsu_MAXI4_AWBURST;
  wire [3:0]M00_AXI_nsu_MAXI4_AWCACHE;
  wire [1:0]M00_AXI_nsu_MAXI4_AWID;
  wire [7:0]M00_AXI_nsu_MAXI4_AWLEN;
  wire [0:0]M00_AXI_nsu_MAXI4_AWLOCK;
  wire [2:0]M00_AXI_nsu_MAXI4_AWPROT;
  wire [3:0]M00_AXI_nsu_MAXI4_AWQOS;
  wire [0:0]M00_AXI_nsu_MAXI4_AWREADY;
  wire [3:0]M00_AXI_nsu_MAXI4_AWREGION;
  wire [2:0]M00_AXI_nsu_MAXI4_AWSIZE;
  wire [17:0]M00_AXI_nsu_MAXI4_AWUSER;
  wire M00_AXI_nsu_MAXI4_AWVALID;
  wire [1:0]M00_AXI_nsu_MAXI4_BID;
  wire M00_AXI_nsu_MAXI4_BREADY;
  wire [1:0]M00_AXI_nsu_MAXI4_BRESP;
  wire [0:0]M00_AXI_nsu_MAXI4_BVALID;
  wire [31:0]M00_AXI_nsu_MAXI4_RDATA;
  wire [1:0]M00_AXI_nsu_MAXI4_RID;
  wire [0:0]M00_AXI_nsu_MAXI4_RLAST;
  wire M00_AXI_nsu_MAXI4_RREADY;
  wire [1:0]M00_AXI_nsu_MAXI4_RRESP;
  wire [0:0]M00_AXI_nsu_MAXI4_RVALID;
  wire [31:0]M00_AXI_nsu_MAXI4_WDATA;
  wire [0:0]M00_AXI_nsu_MAXI4_WLAST;
  wire [0:0]M00_AXI_nsu_MAXI4_WREADY;
  wire [3:0]M00_AXI_nsu_MAXI4_WSTRB;
  wire M00_AXI_nsu_MAXI4_WVALID;
  wire [63:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [15:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [17:0]S00_AXI_1_ARUSER;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [15:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [17:0]S00_AXI_1_AWUSER;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [15:0]S00_AXI_1_BID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [127:0]S00_AXI_1_RDATA;
  wire [15:0]S00_AXI_1_RID;
  wire [0:0]S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [16:0]S00_AXI_1_RUSER;
  wire S00_AXI_1_RVALID;
  wire [127:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [15:0]S00_AXI_1_WSTRB;
  wire [16:0]S00_AXI_1_WUSER;
  wire [0:0]S00_AXI_1_WVALID;
  wire aclk0_1;
  wire aclk1_1;
  wire [0:0]const_0_dout;

  assign M00_AXI_araddr[63:0] = M00_AXI_nsu_MAXI4_ARADDR;
  assign M00_AXI_arburst[1:0] = M00_AXI_nsu_MAXI4_ARBURST;
  assign M00_AXI_arcache[3:0] = M00_AXI_nsu_MAXI4_ARCACHE;
  assign M00_AXI_arid[1:0] = M00_AXI_nsu_MAXI4_ARID;
  assign M00_AXI_arlen[7:0] = M00_AXI_nsu_MAXI4_ARLEN;
  assign M00_AXI_arlock[0] = M00_AXI_nsu_MAXI4_ARLOCK;
  assign M00_AXI_arprot[2:0] = M00_AXI_nsu_MAXI4_ARPROT;
  assign M00_AXI_arqos[3:0] = M00_AXI_nsu_MAXI4_ARQOS;
  assign M00_AXI_arregion[3:0] = M00_AXI_nsu_MAXI4_ARREGION;
  assign M00_AXI_arsize[2:0] = M00_AXI_nsu_MAXI4_ARSIZE;
  assign M00_AXI_aruser[17:0] = M00_AXI_nsu_MAXI4_ARUSER;
  assign M00_AXI_arvalid[0] = M00_AXI_nsu_MAXI4_ARVALID;
  assign M00_AXI_awaddr[63:0] = M00_AXI_nsu_MAXI4_AWADDR;
  assign M00_AXI_awburst[1:0] = M00_AXI_nsu_MAXI4_AWBURST;
  assign M00_AXI_awcache[3:0] = M00_AXI_nsu_MAXI4_AWCACHE;
  assign M00_AXI_awid[1:0] = M00_AXI_nsu_MAXI4_AWID;
  assign M00_AXI_awlen[7:0] = M00_AXI_nsu_MAXI4_AWLEN;
  assign M00_AXI_awlock[0] = M00_AXI_nsu_MAXI4_AWLOCK;
  assign M00_AXI_awprot[2:0] = M00_AXI_nsu_MAXI4_AWPROT;
  assign M00_AXI_awqos[3:0] = M00_AXI_nsu_MAXI4_AWQOS;
  assign M00_AXI_awregion[3:0] = M00_AXI_nsu_MAXI4_AWREGION;
  assign M00_AXI_awsize[2:0] = M00_AXI_nsu_MAXI4_AWSIZE;
  assign M00_AXI_awuser[17:0] = M00_AXI_nsu_MAXI4_AWUSER;
  assign M00_AXI_awvalid[0] = M00_AXI_nsu_MAXI4_AWVALID;
  assign M00_AXI_bready[0] = M00_AXI_nsu_MAXI4_BREADY;
  assign M00_AXI_nsu_MAXI4_ARREADY = M00_AXI_arready[0];
  assign M00_AXI_nsu_MAXI4_AWREADY = M00_AXI_awready[0];
  assign M00_AXI_nsu_MAXI4_BID = M00_AXI_bid[1:0];
  assign M00_AXI_nsu_MAXI4_BRESP = M00_AXI_bresp[1:0];
  assign M00_AXI_nsu_MAXI4_BVALID = M00_AXI_bvalid[0];
  assign M00_AXI_nsu_MAXI4_RDATA = M00_AXI_rdata[31:0];
  assign M00_AXI_nsu_MAXI4_RID = M00_AXI_rid[1:0];
  assign M00_AXI_nsu_MAXI4_RLAST = M00_AXI_rlast[0];
  assign M00_AXI_nsu_MAXI4_RRESP = M00_AXI_rresp[1:0];
  assign M00_AXI_nsu_MAXI4_RVALID = M00_AXI_rvalid[0];
  assign M00_AXI_nsu_MAXI4_WREADY = M00_AXI_wready[0];
  assign M00_AXI_rready[0] = M00_AXI_nsu_MAXI4_RREADY;
  assign M00_AXI_wdata[31:0] = M00_AXI_nsu_MAXI4_WDATA;
  assign M00_AXI_wlast[0] = M00_AXI_nsu_MAXI4_WLAST;
  assign M00_AXI_wstrb[3:0] = M00_AXI_nsu_MAXI4_WSTRB;
  assign M00_AXI_wvalid[0] = M00_AXI_nsu_MAXI4_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[63:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[15:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARREGION = S00_AXI_arregion[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARUSER = S00_AXI_aruser[17:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[63:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[15:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWREGION = S00_AXI_awregion[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWUSER = S00_AXI_awuser[17:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[127:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[15:0];
  assign S00_AXI_1_WUSER = S00_AXI_wuser[16:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[15:0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[127:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[15:0] = S00_AXI_1_RID;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_ruser[16:0] = S00_AXI_1_RUSER;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign aclk0_1 = aclk0;
  assign aclk1_1 = aclk1;
  (* DONT_TOUCH *) 
  bd_4bb4_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_nsu_MAXI4_ARADDR),
        .IF_NOC_AXI_ARBURST(M00_AXI_nsu_MAXI4_ARBURST),
        .IF_NOC_AXI_ARCACHE(M00_AXI_nsu_MAXI4_ARCACHE),
        .IF_NOC_AXI_ARCID(M00_AXI_nsu_MAXI4_ARID),
        .IF_NOC_AXI_ARLEN(M00_AXI_nsu_MAXI4_ARLEN),
        .IF_NOC_AXI_ARLOCK(M00_AXI_nsu_MAXI4_ARLOCK),
        .IF_NOC_AXI_ARPROT(M00_AXI_nsu_MAXI4_ARPROT),
        .IF_NOC_AXI_ARQOS(M00_AXI_nsu_MAXI4_ARQOS),
        .IF_NOC_AXI_ARREADY(M00_AXI_nsu_MAXI4_ARREADY),
        .IF_NOC_AXI_ARREGION(M00_AXI_nsu_MAXI4_ARREGION),
        .IF_NOC_AXI_ARSIZE(M00_AXI_nsu_MAXI4_ARSIZE),
        .IF_NOC_AXI_ARUSER(M00_AXI_nsu_MAXI4_ARUSER),
        .IF_NOC_AXI_ARVALID(M00_AXI_nsu_MAXI4_ARVALID),
        .IF_NOC_AXI_AWADDR(M00_AXI_nsu_MAXI4_AWADDR),
        .IF_NOC_AXI_AWBURST(M00_AXI_nsu_MAXI4_AWBURST),
        .IF_NOC_AXI_AWCACHE(M00_AXI_nsu_MAXI4_AWCACHE),
        .IF_NOC_AXI_AWCID(M00_AXI_nsu_MAXI4_AWID),
        .IF_NOC_AXI_AWLEN(M00_AXI_nsu_MAXI4_AWLEN),
        .IF_NOC_AXI_AWLOCK(M00_AXI_nsu_MAXI4_AWLOCK),
        .IF_NOC_AXI_AWPROT(M00_AXI_nsu_MAXI4_AWPROT),
        .IF_NOC_AXI_AWQOS(M00_AXI_nsu_MAXI4_AWQOS),
        .IF_NOC_AXI_AWREADY(M00_AXI_nsu_MAXI4_AWREADY),
        .IF_NOC_AXI_AWREGION(M00_AXI_nsu_MAXI4_AWREGION),
        .IF_NOC_AXI_AWSIZE(M00_AXI_nsu_MAXI4_AWSIZE),
        .IF_NOC_AXI_AWUSER(M00_AXI_nsu_MAXI4_AWUSER),
        .IF_NOC_AXI_AWVALID(M00_AXI_nsu_MAXI4_AWVALID),
        .IF_NOC_AXI_BCID(M00_AXI_nsu_MAXI4_BID),
        .IF_NOC_AXI_BREADY(M00_AXI_nsu_MAXI4_BREADY),
        .IF_NOC_AXI_BRESP(M00_AXI_nsu_MAXI4_BRESP),
        .IF_NOC_AXI_BVALID(M00_AXI_nsu_MAXI4_BVALID),
        .IF_NOC_AXI_RCID(M00_AXI_nsu_MAXI4_RID),
        .IF_NOC_AXI_RDATA(M00_AXI_nsu_MAXI4_RDATA),
        .IF_NOC_AXI_RLAST(M00_AXI_nsu_MAXI4_RLAST),
        .IF_NOC_AXI_RREADY(M00_AXI_nsu_MAXI4_RREADY),
        .IF_NOC_AXI_RRESP(M00_AXI_nsu_MAXI4_RRESP),
        .IF_NOC_AXI_RVALID(M00_AXI_nsu_MAXI4_RVALID),
        .IF_NOC_AXI_WDATA(M00_AXI_nsu_MAXI4_WDATA),
        .IF_NOC_AXI_WLAST(M00_AXI_nsu_MAXI4_WLAST),
        .IF_NOC_AXI_WREADY(M00_AXI_nsu_MAXI4_WREADY),
        .IF_NOC_AXI_WSTRB(M00_AXI_nsu_MAXI4_WSTRB),
        .IF_NOC_AXI_WVALID(M00_AXI_nsu_MAXI4_WVALID),
        .NSU(1'b0),
        .aclk(aclk1_1));
  (* DONT_TOUCH *) 
  bd_4bb4_S00_AXI_nmu_0 S00_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S00_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S00_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S00_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S00_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S00_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S00_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S00_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S00_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S00_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S00_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S00_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S00_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S00_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S00_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S00_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S00_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S00_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S00_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S00_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S00_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S00_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S00_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S00_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S00_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S00_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S00_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S00_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S00_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S00_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S00_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S00_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S00_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S00_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S00_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S00_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S00_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S00_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S00_AXI_1_WDATA),
        .IF_NOC_AXI_WLAST(S00_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S00_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S00_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S00_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S00_AXI_1_WVALID),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0_1));
  (* DONT_TOUCH *) 
  bd_4bb4_const_0_0 const_0
       (.dout(const_0_dout));
endmodule
