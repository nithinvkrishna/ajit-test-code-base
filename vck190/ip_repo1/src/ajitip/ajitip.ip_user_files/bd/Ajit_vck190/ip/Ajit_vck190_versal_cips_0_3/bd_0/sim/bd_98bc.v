//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_98bc.bd
//Design : bd_98bc
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_98bc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_98bc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "Ajit_vck190_versal_cips_0_3.hwdef" *) 
module bd_98bc
   (FPD_AXI_NOC_0_araddr,
    FPD_AXI_NOC_0_arburst,
    FPD_AXI_NOC_0_arcache,
    FPD_AXI_NOC_0_arid,
    FPD_AXI_NOC_0_arlen,
    FPD_AXI_NOC_0_arlock,
    FPD_AXI_NOC_0_arprot,
    FPD_AXI_NOC_0_arqos,
    FPD_AXI_NOC_0_arready,
    FPD_AXI_NOC_0_arsize,
    FPD_AXI_NOC_0_aruser,
    FPD_AXI_NOC_0_arvalid,
    FPD_AXI_NOC_0_awaddr,
    FPD_AXI_NOC_0_awburst,
    FPD_AXI_NOC_0_awcache,
    FPD_AXI_NOC_0_awid,
    FPD_AXI_NOC_0_awlen,
    FPD_AXI_NOC_0_awlock,
    FPD_AXI_NOC_0_awprot,
    FPD_AXI_NOC_0_awqos,
    FPD_AXI_NOC_0_awready,
    FPD_AXI_NOC_0_awsize,
    FPD_AXI_NOC_0_awuser,
    FPD_AXI_NOC_0_awvalid,
    FPD_AXI_NOC_0_bid,
    FPD_AXI_NOC_0_bready,
    FPD_AXI_NOC_0_bresp,
    FPD_AXI_NOC_0_bvalid,
    FPD_AXI_NOC_0_rdata,
    FPD_AXI_NOC_0_rid,
    FPD_AXI_NOC_0_rlast,
    FPD_AXI_NOC_0_rready,
    FPD_AXI_NOC_0_rresp,
    FPD_AXI_NOC_0_rvalid,
    FPD_AXI_NOC_0_wdata,
    FPD_AXI_NOC_0_wlast,
    FPD_AXI_NOC_0_wready,
    FPD_AXI_NOC_0_wstrb,
    FPD_AXI_NOC_0_wvalid,
    PMC_NOC_AXI_0_araddr,
    PMC_NOC_AXI_0_arburst,
    PMC_NOC_AXI_0_arcache,
    PMC_NOC_AXI_0_arid,
    PMC_NOC_AXI_0_arlen,
    PMC_NOC_AXI_0_arlock,
    PMC_NOC_AXI_0_arprot,
    PMC_NOC_AXI_0_arqos,
    PMC_NOC_AXI_0_arready,
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
    PMC_NOC_AXI_0_awready,
    PMC_NOC_AXI_0_awregion,
    PMC_NOC_AXI_0_awsize,
    PMC_NOC_AXI_0_awuser,
    PMC_NOC_AXI_0_awvalid,
    PMC_NOC_AXI_0_bid,
    PMC_NOC_AXI_0_bready,
    PMC_NOC_AXI_0_bresp,
    PMC_NOC_AXI_0_buser,
    PMC_NOC_AXI_0_bvalid,
    PMC_NOC_AXI_0_rdata,
    PMC_NOC_AXI_0_rid,
    PMC_NOC_AXI_0_rlast,
    PMC_NOC_AXI_0_rready,
    PMC_NOC_AXI_0_rresp,
    PMC_NOC_AXI_0_ruser,
    PMC_NOC_AXI_0_rvalid,
    PMC_NOC_AXI_0_wdata,
    PMC_NOC_AXI_0_wid,
    PMC_NOC_AXI_0_wlast,
    PMC_NOC_AXI_0_wready,
    PMC_NOC_AXI_0_wstrb,
    PMC_NOC_AXI_0_wuser,
    PMC_NOC_AXI_0_wvalid,
    fpd_axi_noc_axi0_clk,
    pl0_ref_clk,
    pmc_axi_noc_axi0_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_AXI_NOC_0, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_98bc_pspmc_0_0_fpd_axi_noc_axi0_clk, DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INDEX 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_nci, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]FPD_AXI_NOC_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARBURST" *) output [1:0]FPD_AXI_NOC_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARCACHE" *) output [3:0]FPD_AXI_NOC_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARID" *) output [15:0]FPD_AXI_NOC_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLEN" *) output [7:0]FPD_AXI_NOC_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLOCK" *) output FPD_AXI_NOC_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARPROT" *) output [2:0]FPD_AXI_NOC_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARQOS" *) output [3:0]FPD_AXI_NOC_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARREADY" *) input FPD_AXI_NOC_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARSIZE" *) output [2:0]FPD_AXI_NOC_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARUSER" *) output [17:0]FPD_AXI_NOC_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARVALID" *) output FPD_AXI_NOC_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWADDR" *) output [63:0]FPD_AXI_NOC_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWBURST" *) output [1:0]FPD_AXI_NOC_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWCACHE" *) output [3:0]FPD_AXI_NOC_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWID" *) output [15:0]FPD_AXI_NOC_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLEN" *) output [7:0]FPD_AXI_NOC_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLOCK" *) output FPD_AXI_NOC_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWPROT" *) output [2:0]FPD_AXI_NOC_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWQOS" *) output [3:0]FPD_AXI_NOC_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWREADY" *) input FPD_AXI_NOC_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWSIZE" *) output [2:0]FPD_AXI_NOC_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWUSER" *) output [17:0]FPD_AXI_NOC_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWVALID" *) output FPD_AXI_NOC_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BID" *) input [15:0]FPD_AXI_NOC_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BREADY" *) output FPD_AXI_NOC_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BRESP" *) input [1:0]FPD_AXI_NOC_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BVALID" *) input FPD_AXI_NOC_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RDATA" *) input [127:0]FPD_AXI_NOC_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RID" *) input [15:0]FPD_AXI_NOC_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RLAST" *) input FPD_AXI_NOC_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RREADY" *) output FPD_AXI_NOC_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RRESP" *) input [1:0]FPD_AXI_NOC_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RVALID" *) input FPD_AXI_NOC_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WDATA" *) output [127:0]FPD_AXI_NOC_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WLAST" *) output FPD_AXI_NOC_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WREADY" *) input FPD_AXI_NOC_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WSTRB" *) output [15:0]FPD_AXI_NOC_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WVALID" *) output FPD_AXI_NOC_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PMC_NOC_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 16, CATEGORY noc, CLK_DOMAIN bd_98bc_pspmc_0_0_pmc_axi_noc_axi0_clk, DATA_WIDTH 128, FREQ_HZ 400000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, HD_TANDEM 0, ID_WIDTH 16, INDEX 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_pmc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SLR_INDEX 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]PMC_NOC_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARBURST" *) output [1:0]PMC_NOC_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARCACHE" *) output [3:0]PMC_NOC_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARID" *) output [15:0]PMC_NOC_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLEN" *) output [7:0]PMC_NOC_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLOCK" *) output PMC_NOC_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARPROT" *) output [2:0]PMC_NOC_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARQOS" *) output [3:0]PMC_NOC_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREADY" *) input PMC_NOC_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREGION" *) output [3:0]PMC_NOC_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARSIZE" *) output [2:0]PMC_NOC_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARUSER" *) output [17:0]PMC_NOC_AXI_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARVALID" *) output PMC_NOC_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWADDR" *) output [63:0]PMC_NOC_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWBURST" *) output [1:0]PMC_NOC_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWCACHE" *) output [3:0]PMC_NOC_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWID" *) output [15:0]PMC_NOC_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLEN" *) output [7:0]PMC_NOC_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLOCK" *) output PMC_NOC_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWPROT" *) output [2:0]PMC_NOC_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWQOS" *) output [3:0]PMC_NOC_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREADY" *) input PMC_NOC_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREGION" *) output [3:0]PMC_NOC_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWSIZE" *) output [2:0]PMC_NOC_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWUSER" *) output [17:0]PMC_NOC_AXI_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWVALID" *) output PMC_NOC_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BID" *) input [15:0]PMC_NOC_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BREADY" *) output PMC_NOC_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BRESP" *) input [1:0]PMC_NOC_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BUSER" *) input [15:0]PMC_NOC_AXI_0_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BVALID" *) input PMC_NOC_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RDATA" *) input [127:0]PMC_NOC_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RID" *) input [15:0]PMC_NOC_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RLAST" *) input PMC_NOC_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RREADY" *) output PMC_NOC_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RRESP" *) input [1:0]PMC_NOC_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RUSER" *) input [16:0]PMC_NOC_AXI_0_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RVALID" *) input PMC_NOC_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WDATA" *) output [127:0]PMC_NOC_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WID" *) output [15:0]PMC_NOC_AXI_0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WLAST" *) output PMC_NOC_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WREADY" *) input PMC_NOC_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WSTRB" *) output [15:0]PMC_NOC_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WUSER" *) output [16:0]PMC_NOC_AXI_0_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WVALID" *) output PMC_NOC_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPD_AXI_NOC_AXI0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPD_AXI_NOC_AXI0_CLK, ASSOCIATED_BUSIF FPD_AXI_NOC_0, CLK_DOMAIN bd_98bc_pspmc_0_0_fpd_axi_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU" *) output fpd_axi_noc_axi0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL0_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL0_REF_CLK, CLK_DOMAIN bd_98bc_pspmc_0_0_pl0_ref_clk, FREQ_HZ 79999199, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl0_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PMC_AXI_NOC_AXI0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PMC_AXI_NOC_AXI0_CLK, ASSOCIATED_BUSIF PMC_NOC_AXI_0, CLK_DOMAIN bd_98bc_pspmc_0_0_pmc_axi_noc_axi0_clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU" *) output pmc_axi_noc_axi0_clk;

  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_AXI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_AXI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_AXI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_AXI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_AXI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_AXI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_AXI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_AXI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_AXI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_AXI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_AXI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_AXI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_AXI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_AXI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_AXI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_AXI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_AXI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_AXI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_AXI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_AXI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_AXI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_AXI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_AXI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_AXI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_AXI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_AXI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_PMC_NOC_AXI_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_PMC_NOC_AXI_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_PMC_NOC_AXI_0_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_PMC_NOC_AXI_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_PMC_NOC_AXI_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_PMC_NOC_AXI_0_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_PMC_NOC_AXI_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_PMC_NOC_AXI_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_PMC_NOC_AXI_0_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_PMC_NOC_AXI_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_PMC_NOC_AXI_0_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_PMC_NOC_AXI_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_PMC_NOC_AXI_0_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_PMC_NOC_AXI_0_BRESP;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_BUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_PMC_NOC_AXI_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_PMC_NOC_AXI_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_PMC_NOC_AXI_0_RUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_PMC_NOC_AXI_0_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_WID;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_PMC_NOC_AXI_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_PMC_NOC_AXI_0_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_PMC_NOC_AXI_0_WVALID;
  (* HARD_CONN = "true" *) wire pspmc_0_fpd_axi_noc_axi0_clk;
  wire pspmc_0_pl0_ref_clk;
  (* HARD_CONN = "true" *) wire pspmc_0_pmc_axi_noc_axi0_clk;

  assign FPD_AXI_NOC_0_araddr[63:0] = pspmc_0_FPD_AXI_NOC_0_ARADDR;
  assign FPD_AXI_NOC_0_arburst[1:0] = pspmc_0_FPD_AXI_NOC_0_ARBURST;
  assign FPD_AXI_NOC_0_arcache[3:0] = pspmc_0_FPD_AXI_NOC_0_ARCACHE;
  assign FPD_AXI_NOC_0_arid[15:0] = pspmc_0_FPD_AXI_NOC_0_ARID;
  assign FPD_AXI_NOC_0_arlen[7:0] = pspmc_0_FPD_AXI_NOC_0_ARLEN;
  assign FPD_AXI_NOC_0_arlock = pspmc_0_FPD_AXI_NOC_0_ARLOCK;
  assign FPD_AXI_NOC_0_arprot[2:0] = pspmc_0_FPD_AXI_NOC_0_ARPROT;
  assign FPD_AXI_NOC_0_arqos[3:0] = pspmc_0_FPD_AXI_NOC_0_ARQOS;
  assign FPD_AXI_NOC_0_arsize[2:0] = pspmc_0_FPD_AXI_NOC_0_ARSIZE;
  assign FPD_AXI_NOC_0_aruser[17:0] = pspmc_0_FPD_AXI_NOC_0_ARUSER;
  assign FPD_AXI_NOC_0_arvalid = pspmc_0_FPD_AXI_NOC_0_ARVALID;
  assign FPD_AXI_NOC_0_awaddr[63:0] = pspmc_0_FPD_AXI_NOC_0_AWADDR;
  assign FPD_AXI_NOC_0_awburst[1:0] = pspmc_0_FPD_AXI_NOC_0_AWBURST;
  assign FPD_AXI_NOC_0_awcache[3:0] = pspmc_0_FPD_AXI_NOC_0_AWCACHE;
  assign FPD_AXI_NOC_0_awid[15:0] = pspmc_0_FPD_AXI_NOC_0_AWID;
  assign FPD_AXI_NOC_0_awlen[7:0] = pspmc_0_FPD_AXI_NOC_0_AWLEN;
  assign FPD_AXI_NOC_0_awlock = pspmc_0_FPD_AXI_NOC_0_AWLOCK;
  assign FPD_AXI_NOC_0_awprot[2:0] = pspmc_0_FPD_AXI_NOC_0_AWPROT;
  assign FPD_AXI_NOC_0_awqos[3:0] = pspmc_0_FPD_AXI_NOC_0_AWQOS;
  assign FPD_AXI_NOC_0_awsize[2:0] = pspmc_0_FPD_AXI_NOC_0_AWSIZE;
  assign FPD_AXI_NOC_0_awuser[17:0] = pspmc_0_FPD_AXI_NOC_0_AWUSER;
  assign FPD_AXI_NOC_0_awvalid = pspmc_0_FPD_AXI_NOC_0_AWVALID;
  assign FPD_AXI_NOC_0_bready = pspmc_0_FPD_AXI_NOC_0_BREADY;
  assign FPD_AXI_NOC_0_rready = pspmc_0_FPD_AXI_NOC_0_RREADY;
  assign FPD_AXI_NOC_0_wdata[127:0] = pspmc_0_FPD_AXI_NOC_0_WDATA;
  assign FPD_AXI_NOC_0_wlast = pspmc_0_FPD_AXI_NOC_0_WLAST;
  assign FPD_AXI_NOC_0_wstrb[15:0] = pspmc_0_FPD_AXI_NOC_0_WSTRB;
  assign FPD_AXI_NOC_0_wvalid = pspmc_0_FPD_AXI_NOC_0_WVALID;
  assign PMC_NOC_AXI_0_araddr[63:0] = pspmc_0_PMC_NOC_AXI_0_ARADDR;
  assign PMC_NOC_AXI_0_arburst[1:0] = pspmc_0_PMC_NOC_AXI_0_ARBURST;
  assign PMC_NOC_AXI_0_arcache[3:0] = pspmc_0_PMC_NOC_AXI_0_ARCACHE;
  assign PMC_NOC_AXI_0_arid[15:0] = pspmc_0_PMC_NOC_AXI_0_ARID;
  assign PMC_NOC_AXI_0_arlen[7:0] = pspmc_0_PMC_NOC_AXI_0_ARLEN;
  assign PMC_NOC_AXI_0_arlock = pspmc_0_PMC_NOC_AXI_0_ARLOCK;
  assign PMC_NOC_AXI_0_arprot[2:0] = pspmc_0_PMC_NOC_AXI_0_ARPROT;
  assign PMC_NOC_AXI_0_arqos[3:0] = pspmc_0_PMC_NOC_AXI_0_ARQOS;
  assign PMC_NOC_AXI_0_arregion[3:0] = pspmc_0_PMC_NOC_AXI_0_ARREGION;
  assign PMC_NOC_AXI_0_arsize[2:0] = pspmc_0_PMC_NOC_AXI_0_ARSIZE;
  assign PMC_NOC_AXI_0_aruser[17:0] = pspmc_0_PMC_NOC_AXI_0_ARUSER;
  assign PMC_NOC_AXI_0_arvalid = pspmc_0_PMC_NOC_AXI_0_ARVALID;
  assign PMC_NOC_AXI_0_awaddr[63:0] = pspmc_0_PMC_NOC_AXI_0_AWADDR;
  assign PMC_NOC_AXI_0_awburst[1:0] = pspmc_0_PMC_NOC_AXI_0_AWBURST;
  assign PMC_NOC_AXI_0_awcache[3:0] = pspmc_0_PMC_NOC_AXI_0_AWCACHE;
  assign PMC_NOC_AXI_0_awid[15:0] = pspmc_0_PMC_NOC_AXI_0_AWID;
  assign PMC_NOC_AXI_0_awlen[7:0] = pspmc_0_PMC_NOC_AXI_0_AWLEN;
  assign PMC_NOC_AXI_0_awlock = pspmc_0_PMC_NOC_AXI_0_AWLOCK;
  assign PMC_NOC_AXI_0_awprot[2:0] = pspmc_0_PMC_NOC_AXI_0_AWPROT;
  assign PMC_NOC_AXI_0_awqos[3:0] = pspmc_0_PMC_NOC_AXI_0_AWQOS;
  assign PMC_NOC_AXI_0_awregion[3:0] = pspmc_0_PMC_NOC_AXI_0_AWREGION;
  assign PMC_NOC_AXI_0_awsize[2:0] = pspmc_0_PMC_NOC_AXI_0_AWSIZE;
  assign PMC_NOC_AXI_0_awuser[17:0] = pspmc_0_PMC_NOC_AXI_0_AWUSER;
  assign PMC_NOC_AXI_0_awvalid = pspmc_0_PMC_NOC_AXI_0_AWVALID;
  assign PMC_NOC_AXI_0_bready = pspmc_0_PMC_NOC_AXI_0_BREADY;
  assign PMC_NOC_AXI_0_rready = pspmc_0_PMC_NOC_AXI_0_RREADY;
  assign PMC_NOC_AXI_0_wdata[127:0] = pspmc_0_PMC_NOC_AXI_0_WDATA;
  assign PMC_NOC_AXI_0_wid[15:0] = pspmc_0_PMC_NOC_AXI_0_WID;
  assign PMC_NOC_AXI_0_wlast = pspmc_0_PMC_NOC_AXI_0_WLAST;
  assign PMC_NOC_AXI_0_wstrb[15:0] = pspmc_0_PMC_NOC_AXI_0_WSTRB;
  assign PMC_NOC_AXI_0_wuser[16:0] = pspmc_0_PMC_NOC_AXI_0_WUSER;
  assign PMC_NOC_AXI_0_wvalid = pspmc_0_PMC_NOC_AXI_0_WVALID;
  assign fpd_axi_noc_axi0_clk = pspmc_0_fpd_axi_noc_axi0_clk;
  assign pl0_ref_clk = pspmc_0_pl0_ref_clk;
  assign pmc_axi_noc_axi0_clk = pspmc_0_pmc_axi_noc_axi0_clk;
  assign pspmc_0_FPD_AXI_NOC_0_ARREADY = FPD_AXI_NOC_0_arready;
  assign pspmc_0_FPD_AXI_NOC_0_AWREADY = FPD_AXI_NOC_0_awready;
  assign pspmc_0_FPD_AXI_NOC_0_BID = FPD_AXI_NOC_0_bid[15:0];
  assign pspmc_0_FPD_AXI_NOC_0_BRESP = FPD_AXI_NOC_0_bresp[1:0];
  assign pspmc_0_FPD_AXI_NOC_0_BVALID = FPD_AXI_NOC_0_bvalid;
  assign pspmc_0_FPD_AXI_NOC_0_RDATA = FPD_AXI_NOC_0_rdata[127:0];
  assign pspmc_0_FPD_AXI_NOC_0_RID = FPD_AXI_NOC_0_rid[15:0];
  assign pspmc_0_FPD_AXI_NOC_0_RLAST = FPD_AXI_NOC_0_rlast;
  assign pspmc_0_FPD_AXI_NOC_0_RRESP = FPD_AXI_NOC_0_rresp[1:0];
  assign pspmc_0_FPD_AXI_NOC_0_RVALID = FPD_AXI_NOC_0_rvalid;
  assign pspmc_0_FPD_AXI_NOC_0_WREADY = FPD_AXI_NOC_0_wready;
  assign pspmc_0_PMC_NOC_AXI_0_ARREADY = PMC_NOC_AXI_0_arready;
  assign pspmc_0_PMC_NOC_AXI_0_AWREADY = PMC_NOC_AXI_0_awready;
  assign pspmc_0_PMC_NOC_AXI_0_BID = PMC_NOC_AXI_0_bid[15:0];
  assign pspmc_0_PMC_NOC_AXI_0_BRESP = PMC_NOC_AXI_0_bresp[1:0];
  assign pspmc_0_PMC_NOC_AXI_0_BUSER = PMC_NOC_AXI_0_buser[15:0];
  assign pspmc_0_PMC_NOC_AXI_0_BVALID = PMC_NOC_AXI_0_bvalid;
  assign pspmc_0_PMC_NOC_AXI_0_RDATA = PMC_NOC_AXI_0_rdata[127:0];
  assign pspmc_0_PMC_NOC_AXI_0_RID = PMC_NOC_AXI_0_rid[15:0];
  assign pspmc_0_PMC_NOC_AXI_0_RLAST = PMC_NOC_AXI_0_rlast;
  assign pspmc_0_PMC_NOC_AXI_0_RRESP = PMC_NOC_AXI_0_rresp[1:0];
  assign pspmc_0_PMC_NOC_AXI_0_RUSER = PMC_NOC_AXI_0_ruser[16:0];
  assign pspmc_0_PMC_NOC_AXI_0_RVALID = PMC_NOC_AXI_0_rvalid;
  assign pspmc_0_PMC_NOC_AXI_0_WREADY = PMC_NOC_AXI_0_wready;
  bd_98bc_pspmc_0_0 pspmc_0
       (.cpmps_corr_irq(1'b0),
        .cpmps_misc_irq(1'b0),
        .cpmps_uncorr_irq(1'b0),
        .fpd_axi_noc_axi0_araddr(pspmc_0_FPD_AXI_NOC_0_ARADDR),
        .fpd_axi_noc_axi0_arburst(pspmc_0_FPD_AXI_NOC_0_ARBURST),
        .fpd_axi_noc_axi0_arcache(pspmc_0_FPD_AXI_NOC_0_ARCACHE),
        .fpd_axi_noc_axi0_arid(pspmc_0_FPD_AXI_NOC_0_ARID),
        .fpd_axi_noc_axi0_arlen(pspmc_0_FPD_AXI_NOC_0_ARLEN),
        .fpd_axi_noc_axi0_arlock(pspmc_0_FPD_AXI_NOC_0_ARLOCK),
        .fpd_axi_noc_axi0_arprot(pspmc_0_FPD_AXI_NOC_0_ARPROT),
        .fpd_axi_noc_axi0_arqos(pspmc_0_FPD_AXI_NOC_0_ARQOS),
        .fpd_axi_noc_axi0_arready(pspmc_0_FPD_AXI_NOC_0_ARREADY),
        .fpd_axi_noc_axi0_arsize(pspmc_0_FPD_AXI_NOC_0_ARSIZE),
        .fpd_axi_noc_axi0_aruser(pspmc_0_FPD_AXI_NOC_0_ARUSER),
        .fpd_axi_noc_axi0_arvalid(pspmc_0_FPD_AXI_NOC_0_ARVALID),
        .fpd_axi_noc_axi0_awaddr(pspmc_0_FPD_AXI_NOC_0_AWADDR),
        .fpd_axi_noc_axi0_awburst(pspmc_0_FPD_AXI_NOC_0_AWBURST),
        .fpd_axi_noc_axi0_awcache(pspmc_0_FPD_AXI_NOC_0_AWCACHE),
        .fpd_axi_noc_axi0_awid(pspmc_0_FPD_AXI_NOC_0_AWID),
        .fpd_axi_noc_axi0_awlen(pspmc_0_FPD_AXI_NOC_0_AWLEN),
        .fpd_axi_noc_axi0_awlock(pspmc_0_FPD_AXI_NOC_0_AWLOCK),
        .fpd_axi_noc_axi0_awprot(pspmc_0_FPD_AXI_NOC_0_AWPROT),
        .fpd_axi_noc_axi0_awqos(pspmc_0_FPD_AXI_NOC_0_AWQOS),
        .fpd_axi_noc_axi0_awready(pspmc_0_FPD_AXI_NOC_0_AWREADY),
        .fpd_axi_noc_axi0_awsize(pspmc_0_FPD_AXI_NOC_0_AWSIZE),
        .fpd_axi_noc_axi0_awuser(pspmc_0_FPD_AXI_NOC_0_AWUSER),
        .fpd_axi_noc_axi0_awvalid(pspmc_0_FPD_AXI_NOC_0_AWVALID),
        .fpd_axi_noc_axi0_bid(pspmc_0_FPD_AXI_NOC_0_BID),
        .fpd_axi_noc_axi0_bready(pspmc_0_FPD_AXI_NOC_0_BREADY),
        .fpd_axi_noc_axi0_bresp(pspmc_0_FPD_AXI_NOC_0_BRESP),
        .fpd_axi_noc_axi0_bvalid(pspmc_0_FPD_AXI_NOC_0_BVALID),
        .fpd_axi_noc_axi0_clk(pspmc_0_fpd_axi_noc_axi0_clk),
        .fpd_axi_noc_axi0_rdata(pspmc_0_FPD_AXI_NOC_0_RDATA),
        .fpd_axi_noc_axi0_rid(pspmc_0_FPD_AXI_NOC_0_RID),
        .fpd_axi_noc_axi0_rlast(pspmc_0_FPD_AXI_NOC_0_RLAST),
        .fpd_axi_noc_axi0_rready(pspmc_0_FPD_AXI_NOC_0_RREADY),
        .fpd_axi_noc_axi0_rresp(pspmc_0_FPD_AXI_NOC_0_RRESP),
        .fpd_axi_noc_axi0_rvalid(pspmc_0_FPD_AXI_NOC_0_RVALID),
        .fpd_axi_noc_axi0_wdata(pspmc_0_FPD_AXI_NOC_0_WDATA),
        .fpd_axi_noc_axi0_wlast(pspmc_0_FPD_AXI_NOC_0_WLAST),
        .fpd_axi_noc_axi0_wready(pspmc_0_FPD_AXI_NOC_0_WREADY),
        .fpd_axi_noc_axi0_wstrb(pspmc_0_FPD_AXI_NOC_0_WSTRB),
        .fpd_axi_noc_axi0_wvalid(pspmc_0_FPD_AXI_NOC_0_WVALID),
        .hsdp_gt_rxoutclk(1'b0),
        .hsdp_xpipe0_rx_datavalid(1'b0),
        .hsdp_xpipe0_rx_header({1'b0,1'b0}),
        .hsdp_xpipe0_rx_headervalid(1'b0),
        .hsdp_xpipe0_rx_resetdone(1'b0),
        .hsdp_xpipe0_tx_resetdone(1'b0),
        .hsdp_xpipe1_rx_datavalid(1'b0),
        .hsdp_xpipe1_rx_header({1'b0,1'b0}),
        .hsdp_xpipe1_rx_headervalid(1'b0),
        .hsdp_xpipe1_rx_resetdone(1'b0),
        .hsdp_xpipe1_tx_resetdone(1'b0),
        .hsdp_xpipe2_rx_datavalid(1'b0),
        .hsdp_xpipe2_rx_header({1'b0,1'b0}),
        .hsdp_xpipe2_rx_headervalid(1'b0),
        .hsdp_xpipe2_rx_resetdone(1'b0),
        .hsdp_xpipe2_tx_resetdone(1'b0),
        .link0_xpipe_bufgtce(1'b0),
        .link0_xpipe_bufgtcemask({1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_bufgtdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_bufgtrst(1'b0),
        .link0_xpipe_bufgtrstmask({1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_gtoutclk(1'b0),
        .link0_xpipe_phyready(1'b0),
        .link1_xpipe_bufgtce(1'b0),
        .link1_xpipe_bufgtcemask({1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_bufgtdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_bufgtrst(1'b0),
        .link1_xpipe_bufgtrstmask({1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_gtoutclk(1'b0),
        .link1_xpipe_phyready(1'b0),
        .m_axi0_ps_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arburst({1'b0,1'b0}),
        .m_axi0_ps_arcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arlock(1'b0),
        .m_axi0_ps_arprot({1'b0,1'b0,1'b0}),
        .m_axi0_ps_arqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arsize({1'b0,1'b0,1'b0}),
        .m_axi0_ps_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arvalid(1'b0),
        .m_axi0_ps_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awburst({1'b0,1'b0}),
        .m_axi0_ps_awcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awlock(1'b0),
        .m_axi0_ps_awprot({1'b0,1'b0,1'b0}),
        .m_axi0_ps_awqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awsize({1'b0,1'b0,1'b0}),
        .m_axi0_ps_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awvalid(1'b0),
        .m_axi0_ps_bready(1'b0),
        .m_axi0_ps_rready(1'b0),
        .m_axi0_ps_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wlast(1'b0),
        .m_axi0_ps_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wvalid(1'b0),
        .m_axi1_ps_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arburst({1'b0,1'b0}),
        .m_axi1_ps_arcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arlock(1'b0),
        .m_axi1_ps_arprot({1'b0,1'b0,1'b0}),
        .m_axi1_ps_arqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arsize({1'b0,1'b0,1'b0}),
        .m_axi1_ps_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arvalid(1'b0),
        .m_axi1_ps_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awburst({1'b0,1'b0}),
        .m_axi1_ps_awcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awlock(1'b0),
        .m_axi1_ps_awprot({1'b0,1'b0,1'b0}),
        .m_axi1_ps_awqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awsize({1'b0,1'b0,1'b0}),
        .m_axi1_ps_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awvalid(1'b0),
        .m_axi1_ps_bready(1'b0),
        .m_axi1_ps_rready(1'b0),
        .m_axi1_ps_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wlast(1'b0),
        .m_axi1_ps_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wvalid(1'b0),
        .phy_ready_tobot(1'b0),
        .pl0_ref_clk(pspmc_0_pl0_ref_clk),
        .pmc_axi_noc_axi0_clk(pspmc_0_pmc_axi_noc_axi0_clk),
        .pmc_noc_axi0_araddr(pspmc_0_PMC_NOC_AXI_0_ARADDR),
        .pmc_noc_axi0_arburst(pspmc_0_PMC_NOC_AXI_0_ARBURST),
        .pmc_noc_axi0_arcache(pspmc_0_PMC_NOC_AXI_0_ARCACHE),
        .pmc_noc_axi0_arid(pspmc_0_PMC_NOC_AXI_0_ARID),
        .pmc_noc_axi0_arlen(pspmc_0_PMC_NOC_AXI_0_ARLEN),
        .pmc_noc_axi0_arlock(pspmc_0_PMC_NOC_AXI_0_ARLOCK),
        .pmc_noc_axi0_arprot(pspmc_0_PMC_NOC_AXI_0_ARPROT),
        .pmc_noc_axi0_arqos(pspmc_0_PMC_NOC_AXI_0_ARQOS),
        .pmc_noc_axi0_arready(pspmc_0_PMC_NOC_AXI_0_ARREADY),
        .pmc_noc_axi0_arregion(pspmc_0_PMC_NOC_AXI_0_ARREGION),
        .pmc_noc_axi0_arsize(pspmc_0_PMC_NOC_AXI_0_ARSIZE),
        .pmc_noc_axi0_aruser(pspmc_0_PMC_NOC_AXI_0_ARUSER),
        .pmc_noc_axi0_arvalid(pspmc_0_PMC_NOC_AXI_0_ARVALID),
        .pmc_noc_axi0_awaddr(pspmc_0_PMC_NOC_AXI_0_AWADDR),
        .pmc_noc_axi0_awburst(pspmc_0_PMC_NOC_AXI_0_AWBURST),
        .pmc_noc_axi0_awcache(pspmc_0_PMC_NOC_AXI_0_AWCACHE),
        .pmc_noc_axi0_awid(pspmc_0_PMC_NOC_AXI_0_AWID),
        .pmc_noc_axi0_awlen(pspmc_0_PMC_NOC_AXI_0_AWLEN),
        .pmc_noc_axi0_awlock(pspmc_0_PMC_NOC_AXI_0_AWLOCK),
        .pmc_noc_axi0_awprot(pspmc_0_PMC_NOC_AXI_0_AWPROT),
        .pmc_noc_axi0_awqos(pspmc_0_PMC_NOC_AXI_0_AWQOS),
        .pmc_noc_axi0_awready(pspmc_0_PMC_NOC_AXI_0_AWREADY),
        .pmc_noc_axi0_awregion(pspmc_0_PMC_NOC_AXI_0_AWREGION),
        .pmc_noc_axi0_awsize(pspmc_0_PMC_NOC_AXI_0_AWSIZE),
        .pmc_noc_axi0_awuser(pspmc_0_PMC_NOC_AXI_0_AWUSER),
        .pmc_noc_axi0_awvalid(pspmc_0_PMC_NOC_AXI_0_AWVALID),
        .pmc_noc_axi0_bid(pspmc_0_PMC_NOC_AXI_0_BID),
        .pmc_noc_axi0_bready(pspmc_0_PMC_NOC_AXI_0_BREADY),
        .pmc_noc_axi0_bresp(pspmc_0_PMC_NOC_AXI_0_BRESP),
        .pmc_noc_axi0_buser(pspmc_0_PMC_NOC_AXI_0_BUSER),
        .pmc_noc_axi0_bvalid(pspmc_0_PMC_NOC_AXI_0_BVALID),
        .pmc_noc_axi0_rdata(pspmc_0_PMC_NOC_AXI_0_RDATA),
        .pmc_noc_axi0_rid(pspmc_0_PMC_NOC_AXI_0_RID),
        .pmc_noc_axi0_rlast(pspmc_0_PMC_NOC_AXI_0_RLAST),
        .pmc_noc_axi0_rready(pspmc_0_PMC_NOC_AXI_0_RREADY),
        .pmc_noc_axi0_rresp(pspmc_0_PMC_NOC_AXI_0_RRESP),
        .pmc_noc_axi0_ruser(pspmc_0_PMC_NOC_AXI_0_RUSER),
        .pmc_noc_axi0_rvalid(pspmc_0_PMC_NOC_AXI_0_RVALID),
        .pmc_noc_axi0_wdata(pspmc_0_PMC_NOC_AXI_0_WDATA),
        .pmc_noc_axi0_wid(pspmc_0_PMC_NOC_AXI_0_WID),
        .pmc_noc_axi0_wlast(pspmc_0_PMC_NOC_AXI_0_WLAST),
        .pmc_noc_axi0_wready(pspmc_0_PMC_NOC_AXI_0_WREADY),
        .pmc_noc_axi0_wstrb(pspmc_0_PMC_NOC_AXI_0_WSTRB),
        .pmc_noc_axi0_wuser(pspmc_0_PMC_NOC_AXI_0_WUSER),
        .pmc_noc_axi0_wvalid(pspmc_0_PMC_NOC_AXI_0_WVALID),
        .s_axi_cfg_arready(1'b0),
        .s_axi_cfg_awready(1'b0),
        .s_axi_cfg_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_bresp({1'b0,1'b0}),
        .s_axi_cfg_buser(1'b0),
        .s_axi_cfg_bvalid(1'b0),
        .s_axi_cfg_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rlast(1'b0),
        .s_axi_cfg_rresp({1'b0,1'b0}),
        .s_axi_cfg_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rvalid(1'b0),
        .s_axi_cfg_wready(1'b0),
        .s_axi_pcie_arready(1'b0),
        .s_axi_pcie_awready(1'b0),
        .s_axi_pcie_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_bresp({1'b0,1'b0}),
        .s_axi_pcie_buser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_bvalid(1'b0),
        .s_axi_pcie_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rlast(1'b0),
        .s_axi_pcie_rresp({1'b0,1'b0}),
        .s_axi_pcie_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rvalid(1'b0),
        .s_axi_pcie_wready(1'b0),
        .xpipe0_rx_charisk({1'b0,1'b0}),
        .xpipe0_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe0_rx_datavalid(1'b0),
        .xpipe0_rx_elecidle(1'b0),
        .xpipe0_rx_startblock(1'b0),
        .xpipe0_rx_status({1'b0,1'b0,1'b0}),
        .xpipe0_rx_syncheader({1'b0,1'b0}),
        .xpipe0_rx_valid(1'b0),
        .xpipe10_phystatus(1'b0),
        .xpipe10_rx_charisk({1'b0,1'b0}),
        .xpipe10_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe10_rx_datavalid(1'b0),
        .xpipe10_rx_elecidle(1'b0),
        .xpipe10_rx_startblock(1'b0),
        .xpipe10_rx_status({1'b0,1'b0,1'b0}),
        .xpipe10_rx_syncheader({1'b0,1'b0}),
        .xpipe10_rx_valid(1'b0),
        .xpipe11_phystatus(1'b0),
        .xpipe11_rx_charisk({1'b0,1'b0}),
        .xpipe11_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe11_rx_datavalid(1'b0),
        .xpipe11_rx_elecidle(1'b0),
        .xpipe11_rx_startblock(1'b0),
        .xpipe11_rx_status({1'b0,1'b0,1'b0}),
        .xpipe11_rx_syncheader({1'b0,1'b0}),
        .xpipe11_rx_valid(1'b0),
        .xpipe12_phystatus(1'b0),
        .xpipe12_rx_charisk({1'b0,1'b0}),
        .xpipe12_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe12_rx_datavalid(1'b0),
        .xpipe12_rx_elecidle(1'b0),
        .xpipe12_rx_startblock(1'b0),
        .xpipe12_rx_status({1'b0,1'b0,1'b0}),
        .xpipe12_rx_syncheader({1'b0,1'b0}),
        .xpipe12_rx_valid(1'b0),
        .xpipe13_phystatus(1'b0),
        .xpipe13_rx_charisk({1'b0,1'b0}),
        .xpipe13_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe13_rx_datavalid(1'b0),
        .xpipe13_rx_elecidle(1'b0),
        .xpipe13_rx_startblock(1'b0),
        .xpipe13_rx_status({1'b0,1'b0,1'b0}),
        .xpipe13_rx_syncheader({1'b0,1'b0}),
        .xpipe13_rx_valid(1'b0),
        .xpipe14_phystatus(1'b0),
        .xpipe14_rx_charisk({1'b0,1'b0}),
        .xpipe14_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe14_rx_datavalid(1'b0),
        .xpipe14_rx_elecidle(1'b0),
        .xpipe14_rx_startblock(1'b0),
        .xpipe14_rx_status({1'b0,1'b0,1'b0}),
        .xpipe14_rx_syncheader({1'b0,1'b0}),
        .xpipe14_rx_valid(1'b0),
        .xpipe15_phystatus(1'b0),
        .xpipe15_rx_charisk({1'b0,1'b0}),
        .xpipe15_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe15_rx_datavalid(1'b0),
        .xpipe15_rx_elecidle(1'b0),
        .xpipe15_rx_startblock(1'b0),
        .xpipe15_rx_status({1'b0,1'b0,1'b0}),
        .xpipe15_rx_syncheader({1'b0,1'b0}),
        .xpipe15_rx_valid(1'b0),
        .xpipe1_phystatus(1'b0),
        .xpipe1_rx_charisk({1'b0,1'b0}),
        .xpipe1_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe1_rx_datavalid(1'b0),
        .xpipe1_rx_elecidle(1'b0),
        .xpipe1_rx_startblock(1'b0),
        .xpipe1_rx_status({1'b0,1'b0,1'b0}),
        .xpipe1_rx_syncheader({1'b0,1'b0}),
        .xpipe1_rx_valid(1'b0),
        .xpipe2_phystatus(1'b0),
        .xpipe2_rx_charisk({1'b0,1'b0}),
        .xpipe2_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe2_rx_datavalid(1'b0),
        .xpipe2_rx_elecidle(1'b0),
        .xpipe2_rx_startblock(1'b0),
        .xpipe2_rx_status({1'b0,1'b0,1'b0}),
        .xpipe2_rx_syncheader({1'b0,1'b0}),
        .xpipe2_rx_valid(1'b0),
        .xpipe3_phystatus(1'b0),
        .xpipe3_rx_charisk({1'b0,1'b0}),
        .xpipe3_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe3_rx_datavalid(1'b0),
        .xpipe3_rx_elecidle(1'b0),
        .xpipe3_rx_startblock(1'b0),
        .xpipe3_rx_status({1'b0,1'b0,1'b0}),
        .xpipe3_rx_syncheader({1'b0,1'b0}),
        .xpipe3_rx_valid(1'b0),
        .xpipe4_phystatus(1'b0),
        .xpipe4_rx_charisk({1'b0,1'b0}),
        .xpipe4_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe4_rx_datavalid(1'b0),
        .xpipe4_rx_elecidle(1'b0),
        .xpipe4_rx_startblock(1'b0),
        .xpipe4_rx_status({1'b0,1'b0,1'b0}),
        .xpipe4_rx_syncheader({1'b0,1'b0}),
        .xpipe4_rx_valid(1'b0),
        .xpipe5_phystatus(1'b0),
        .xpipe5_rx_charisk({1'b0,1'b0}),
        .xpipe5_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe5_rx_datavalid(1'b0),
        .xpipe5_rx_elecidle(1'b0),
        .xpipe5_rx_startblock(1'b0),
        .xpipe5_rx_status({1'b0,1'b0,1'b0}),
        .xpipe5_rx_syncheader({1'b0,1'b0}),
        .xpipe5_rx_valid(1'b0),
        .xpipe6_phystatus(1'b0),
        .xpipe6_rx_charisk({1'b0,1'b0}),
        .xpipe6_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe6_rx_datavalid(1'b0),
        .xpipe6_rx_elecidle(1'b0),
        .xpipe6_rx_startblock(1'b0),
        .xpipe6_rx_status({1'b0,1'b0,1'b0}),
        .xpipe6_rx_syncheader({1'b0,1'b0}),
        .xpipe6_rx_valid(1'b0),
        .xpipe7_phystatus(1'b0),
        .xpipe7_rx_charisk({1'b0,1'b0}),
        .xpipe7_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe7_rx_datavalid(1'b0),
        .xpipe7_rx_elecidle(1'b0),
        .xpipe7_rx_startblock(1'b0),
        .xpipe7_rx_status({1'b0,1'b0,1'b0}),
        .xpipe7_rx_syncheader({1'b0,1'b0}),
        .xpipe7_rx_valid(1'b0),
        .xpipe8_phystatus(1'b0),
        .xpipe8_rx_charisk({1'b0,1'b0}),
        .xpipe8_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe8_rx_datavalid(1'b0),
        .xpipe8_rx_elecidle(1'b0),
        .xpipe8_rx_startblock(1'b0),
        .xpipe8_rx_status({1'b0,1'b0,1'b0}),
        .xpipe8_rx_syncheader({1'b0,1'b0}),
        .xpipe8_rx_valid(1'b0),
        .xpipe9_phystatus(1'b0),
        .xpipe9_rx_charisk({1'b0,1'b0}),
        .xpipe9_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe9_rx_datavalid(1'b0),
        .xpipe9_rx_elecidle(1'b0),
        .xpipe9_rx_startblock(1'b0),
        .xpipe9_rx_status({1'b0,1'b0,1'b0}),
        .xpipe9_rx_syncheader({1'b0,1'b0}),
        .xpipe9_rx_valid(1'b0),
        .xpipe_q0_rxmargin_req_ack(1'b0),
        .xpipe_q0_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_req(1'b0),
        .xpipe_q1_rxmargin_req_ack(1'b0),
        .xpipe_q1_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_req(1'b0),
        .xpipe_q2_rxmargin_req_ack(1'b0),
        .xpipe_q2_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_req(1'b0),
        .xpipe_q3_rxmargin_req_ack(1'b0),
        .xpipe_q3_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_req(1'b0));
endmodule
