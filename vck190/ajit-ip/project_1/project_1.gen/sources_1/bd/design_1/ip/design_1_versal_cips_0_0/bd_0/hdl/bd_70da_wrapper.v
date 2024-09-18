//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_70da_wrapper.bd
//Design : bd_70da_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_70da_wrapper
   (FPD_AXI_NOC_1_araddr,
    FPD_AXI_NOC_1_arburst,
    FPD_AXI_NOC_1_arcache,
    FPD_AXI_NOC_1_arid,
    FPD_AXI_NOC_1_arlen,
    FPD_AXI_NOC_1_arlock,
    FPD_AXI_NOC_1_arprot,
    FPD_AXI_NOC_1_arqos,
    FPD_AXI_NOC_1_arready,
    FPD_AXI_NOC_1_arsize,
    FPD_AXI_NOC_1_aruser,
    FPD_AXI_NOC_1_arvalid,
    FPD_AXI_NOC_1_awaddr,
    FPD_AXI_NOC_1_awburst,
    FPD_AXI_NOC_1_awcache,
    FPD_AXI_NOC_1_awid,
    FPD_AXI_NOC_1_awlen,
    FPD_AXI_NOC_1_awlock,
    FPD_AXI_NOC_1_awprot,
    FPD_AXI_NOC_1_awqos,
    FPD_AXI_NOC_1_awready,
    FPD_AXI_NOC_1_awsize,
    FPD_AXI_NOC_1_awuser,
    FPD_AXI_NOC_1_awvalid,
    FPD_AXI_NOC_1_bid,
    FPD_AXI_NOC_1_bready,
    FPD_AXI_NOC_1_bresp,
    FPD_AXI_NOC_1_bvalid,
    FPD_AXI_NOC_1_rdata,
    FPD_AXI_NOC_1_rid,
    FPD_AXI_NOC_1_rlast,
    FPD_AXI_NOC_1_rready,
    FPD_AXI_NOC_1_rresp,
    FPD_AXI_NOC_1_rvalid,
    FPD_AXI_NOC_1_wdata,
    FPD_AXI_NOC_1_wlast,
    FPD_AXI_NOC_1_wready,
    FPD_AXI_NOC_1_wstrb,
    FPD_AXI_NOC_1_wvalid,
    LPD_GPIO_io,
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
    fpd_axi_noc_axi1_clk,
    pl0_ref_clk,
    pmc_axi_noc_axi0_clk);
  output [63:0]FPD_AXI_NOC_1_araddr;
  output [1:0]FPD_AXI_NOC_1_arburst;
  output [3:0]FPD_AXI_NOC_1_arcache;
  output [15:0]FPD_AXI_NOC_1_arid;
  output [7:0]FPD_AXI_NOC_1_arlen;
  output FPD_AXI_NOC_1_arlock;
  output [2:0]FPD_AXI_NOC_1_arprot;
  output [3:0]FPD_AXI_NOC_1_arqos;
  input FPD_AXI_NOC_1_arready;
  output [2:0]FPD_AXI_NOC_1_arsize;
  output [17:0]FPD_AXI_NOC_1_aruser;
  output FPD_AXI_NOC_1_arvalid;
  output [63:0]FPD_AXI_NOC_1_awaddr;
  output [1:0]FPD_AXI_NOC_1_awburst;
  output [3:0]FPD_AXI_NOC_1_awcache;
  output [15:0]FPD_AXI_NOC_1_awid;
  output [7:0]FPD_AXI_NOC_1_awlen;
  output FPD_AXI_NOC_1_awlock;
  output [2:0]FPD_AXI_NOC_1_awprot;
  output [3:0]FPD_AXI_NOC_1_awqos;
  input FPD_AXI_NOC_1_awready;
  output [2:0]FPD_AXI_NOC_1_awsize;
  output [17:0]FPD_AXI_NOC_1_awuser;
  output FPD_AXI_NOC_1_awvalid;
  input [15:0]FPD_AXI_NOC_1_bid;
  output FPD_AXI_NOC_1_bready;
  input [1:0]FPD_AXI_NOC_1_bresp;
  input FPD_AXI_NOC_1_bvalid;
  input [127:0]FPD_AXI_NOC_1_rdata;
  input [15:0]FPD_AXI_NOC_1_rid;
  input FPD_AXI_NOC_1_rlast;
  output FPD_AXI_NOC_1_rready;
  input [1:0]FPD_AXI_NOC_1_rresp;
  input FPD_AXI_NOC_1_rvalid;
  output [127:0]FPD_AXI_NOC_1_wdata;
  output FPD_AXI_NOC_1_wlast;
  input FPD_AXI_NOC_1_wready;
  output [15:0]FPD_AXI_NOC_1_wstrb;
  output FPD_AXI_NOC_1_wvalid;
  inout [31:0]LPD_GPIO_io;
  output [63:0]PMC_NOC_AXI_0_araddr;
  output [1:0]PMC_NOC_AXI_0_arburst;
  output [3:0]PMC_NOC_AXI_0_arcache;
  output [15:0]PMC_NOC_AXI_0_arid;
  output [7:0]PMC_NOC_AXI_0_arlen;
  output PMC_NOC_AXI_0_arlock;
  output [2:0]PMC_NOC_AXI_0_arprot;
  output [3:0]PMC_NOC_AXI_0_arqos;
  input PMC_NOC_AXI_0_arready;
  output [3:0]PMC_NOC_AXI_0_arregion;
  output [2:0]PMC_NOC_AXI_0_arsize;
  output [17:0]PMC_NOC_AXI_0_aruser;
  output PMC_NOC_AXI_0_arvalid;
  output [63:0]PMC_NOC_AXI_0_awaddr;
  output [1:0]PMC_NOC_AXI_0_awburst;
  output [3:0]PMC_NOC_AXI_0_awcache;
  output [15:0]PMC_NOC_AXI_0_awid;
  output [7:0]PMC_NOC_AXI_0_awlen;
  output PMC_NOC_AXI_0_awlock;
  output [2:0]PMC_NOC_AXI_0_awprot;
  output [3:0]PMC_NOC_AXI_0_awqos;
  input PMC_NOC_AXI_0_awready;
  output [3:0]PMC_NOC_AXI_0_awregion;
  output [2:0]PMC_NOC_AXI_0_awsize;
  output [17:0]PMC_NOC_AXI_0_awuser;
  output PMC_NOC_AXI_0_awvalid;
  input [15:0]PMC_NOC_AXI_0_bid;
  output PMC_NOC_AXI_0_bready;
  input [1:0]PMC_NOC_AXI_0_bresp;
  input [15:0]PMC_NOC_AXI_0_buser;
  input PMC_NOC_AXI_0_bvalid;
  input [127:0]PMC_NOC_AXI_0_rdata;
  input [15:0]PMC_NOC_AXI_0_rid;
  input PMC_NOC_AXI_0_rlast;
  output PMC_NOC_AXI_0_rready;
  input [1:0]PMC_NOC_AXI_0_rresp;
  input [16:0]PMC_NOC_AXI_0_ruser;
  input PMC_NOC_AXI_0_rvalid;
  output [127:0]PMC_NOC_AXI_0_wdata;
  output [15:0]PMC_NOC_AXI_0_wid;
  output PMC_NOC_AXI_0_wlast;
  input PMC_NOC_AXI_0_wready;
  output [15:0]PMC_NOC_AXI_0_wstrb;
  output [16:0]PMC_NOC_AXI_0_wuser;
  output PMC_NOC_AXI_0_wvalid;
  output fpd_axi_noc_axi1_clk;
  output pl0_ref_clk;
  output pmc_axi_noc_axi0_clk;

  wire [63:0]FPD_AXI_NOC_1_araddr;
  wire [1:0]FPD_AXI_NOC_1_arburst;
  wire [3:0]FPD_AXI_NOC_1_arcache;
  wire [15:0]FPD_AXI_NOC_1_arid;
  wire [7:0]FPD_AXI_NOC_1_arlen;
  wire FPD_AXI_NOC_1_arlock;
  wire [2:0]FPD_AXI_NOC_1_arprot;
  wire [3:0]FPD_AXI_NOC_1_arqos;
  wire FPD_AXI_NOC_1_arready;
  wire [2:0]FPD_AXI_NOC_1_arsize;
  wire [17:0]FPD_AXI_NOC_1_aruser;
  wire FPD_AXI_NOC_1_arvalid;
  wire [63:0]FPD_AXI_NOC_1_awaddr;
  wire [1:0]FPD_AXI_NOC_1_awburst;
  wire [3:0]FPD_AXI_NOC_1_awcache;
  wire [15:0]FPD_AXI_NOC_1_awid;
  wire [7:0]FPD_AXI_NOC_1_awlen;
  wire FPD_AXI_NOC_1_awlock;
  wire [2:0]FPD_AXI_NOC_1_awprot;
  wire [3:0]FPD_AXI_NOC_1_awqos;
  wire FPD_AXI_NOC_1_awready;
  wire [2:0]FPD_AXI_NOC_1_awsize;
  wire [17:0]FPD_AXI_NOC_1_awuser;
  wire FPD_AXI_NOC_1_awvalid;
  wire [15:0]FPD_AXI_NOC_1_bid;
  wire FPD_AXI_NOC_1_bready;
  wire [1:0]FPD_AXI_NOC_1_bresp;
  wire FPD_AXI_NOC_1_bvalid;
  wire [127:0]FPD_AXI_NOC_1_rdata;
  wire [15:0]FPD_AXI_NOC_1_rid;
  wire FPD_AXI_NOC_1_rlast;
  wire FPD_AXI_NOC_1_rready;
  wire [1:0]FPD_AXI_NOC_1_rresp;
  wire FPD_AXI_NOC_1_rvalid;
  wire [127:0]FPD_AXI_NOC_1_wdata;
  wire FPD_AXI_NOC_1_wlast;
  wire FPD_AXI_NOC_1_wready;
  wire [15:0]FPD_AXI_NOC_1_wstrb;
  wire FPD_AXI_NOC_1_wvalid;
  wire [0:0]LPD_GPIO_i_0;
  wire [1:1]LPD_GPIO_i_1;
  wire [10:10]LPD_GPIO_i_10;
  wire [11:11]LPD_GPIO_i_11;
  wire [12:12]LPD_GPIO_i_12;
  wire [13:13]LPD_GPIO_i_13;
  wire [14:14]LPD_GPIO_i_14;
  wire [15:15]LPD_GPIO_i_15;
  wire [16:16]LPD_GPIO_i_16;
  wire [17:17]LPD_GPIO_i_17;
  wire [18:18]LPD_GPIO_i_18;
  wire [19:19]LPD_GPIO_i_19;
  wire [2:2]LPD_GPIO_i_2;
  wire [20:20]LPD_GPIO_i_20;
  wire [21:21]LPD_GPIO_i_21;
  wire [22:22]LPD_GPIO_i_22;
  wire [23:23]LPD_GPIO_i_23;
  wire [24:24]LPD_GPIO_i_24;
  wire [25:25]LPD_GPIO_i_25;
  wire [26:26]LPD_GPIO_i_26;
  wire [27:27]LPD_GPIO_i_27;
  wire [28:28]LPD_GPIO_i_28;
  wire [29:29]LPD_GPIO_i_29;
  wire [3:3]LPD_GPIO_i_3;
  wire [30:30]LPD_GPIO_i_30;
  wire [31:31]LPD_GPIO_i_31;
  wire [4:4]LPD_GPIO_i_4;
  wire [5:5]LPD_GPIO_i_5;
  wire [6:6]LPD_GPIO_i_6;
  wire [7:7]LPD_GPIO_i_7;
  wire [8:8]LPD_GPIO_i_8;
  wire [9:9]LPD_GPIO_i_9;
  wire [0:0]LPD_GPIO_io_0;
  wire [1:1]LPD_GPIO_io_1;
  wire [10:10]LPD_GPIO_io_10;
  wire [11:11]LPD_GPIO_io_11;
  wire [12:12]LPD_GPIO_io_12;
  wire [13:13]LPD_GPIO_io_13;
  wire [14:14]LPD_GPIO_io_14;
  wire [15:15]LPD_GPIO_io_15;
  wire [16:16]LPD_GPIO_io_16;
  wire [17:17]LPD_GPIO_io_17;
  wire [18:18]LPD_GPIO_io_18;
  wire [19:19]LPD_GPIO_io_19;
  wire [2:2]LPD_GPIO_io_2;
  wire [20:20]LPD_GPIO_io_20;
  wire [21:21]LPD_GPIO_io_21;
  wire [22:22]LPD_GPIO_io_22;
  wire [23:23]LPD_GPIO_io_23;
  wire [24:24]LPD_GPIO_io_24;
  wire [25:25]LPD_GPIO_io_25;
  wire [26:26]LPD_GPIO_io_26;
  wire [27:27]LPD_GPIO_io_27;
  wire [28:28]LPD_GPIO_io_28;
  wire [29:29]LPD_GPIO_io_29;
  wire [3:3]LPD_GPIO_io_3;
  wire [30:30]LPD_GPIO_io_30;
  wire [31:31]LPD_GPIO_io_31;
  wire [4:4]LPD_GPIO_io_4;
  wire [5:5]LPD_GPIO_io_5;
  wire [6:6]LPD_GPIO_io_6;
  wire [7:7]LPD_GPIO_io_7;
  wire [8:8]LPD_GPIO_io_8;
  wire [9:9]LPD_GPIO_io_9;
  wire [0:0]LPD_GPIO_o_0;
  wire [1:1]LPD_GPIO_o_1;
  wire [10:10]LPD_GPIO_o_10;
  wire [11:11]LPD_GPIO_o_11;
  wire [12:12]LPD_GPIO_o_12;
  wire [13:13]LPD_GPIO_o_13;
  wire [14:14]LPD_GPIO_o_14;
  wire [15:15]LPD_GPIO_o_15;
  wire [16:16]LPD_GPIO_o_16;
  wire [17:17]LPD_GPIO_o_17;
  wire [18:18]LPD_GPIO_o_18;
  wire [19:19]LPD_GPIO_o_19;
  wire [2:2]LPD_GPIO_o_2;
  wire [20:20]LPD_GPIO_o_20;
  wire [21:21]LPD_GPIO_o_21;
  wire [22:22]LPD_GPIO_o_22;
  wire [23:23]LPD_GPIO_o_23;
  wire [24:24]LPD_GPIO_o_24;
  wire [25:25]LPD_GPIO_o_25;
  wire [26:26]LPD_GPIO_o_26;
  wire [27:27]LPD_GPIO_o_27;
  wire [28:28]LPD_GPIO_o_28;
  wire [29:29]LPD_GPIO_o_29;
  wire [3:3]LPD_GPIO_o_3;
  wire [30:30]LPD_GPIO_o_30;
  wire [31:31]LPD_GPIO_o_31;
  wire [4:4]LPD_GPIO_o_4;
  wire [5:5]LPD_GPIO_o_5;
  wire [6:6]LPD_GPIO_o_6;
  wire [7:7]LPD_GPIO_o_7;
  wire [8:8]LPD_GPIO_o_8;
  wire [9:9]LPD_GPIO_o_9;
  wire [0:0]LPD_GPIO_t_0;
  wire [1:1]LPD_GPIO_t_1;
  wire [10:10]LPD_GPIO_t_10;
  wire [11:11]LPD_GPIO_t_11;
  wire [12:12]LPD_GPIO_t_12;
  wire [13:13]LPD_GPIO_t_13;
  wire [14:14]LPD_GPIO_t_14;
  wire [15:15]LPD_GPIO_t_15;
  wire [16:16]LPD_GPIO_t_16;
  wire [17:17]LPD_GPIO_t_17;
  wire [18:18]LPD_GPIO_t_18;
  wire [19:19]LPD_GPIO_t_19;
  wire [2:2]LPD_GPIO_t_2;
  wire [20:20]LPD_GPIO_t_20;
  wire [21:21]LPD_GPIO_t_21;
  wire [22:22]LPD_GPIO_t_22;
  wire [23:23]LPD_GPIO_t_23;
  wire [24:24]LPD_GPIO_t_24;
  wire [25:25]LPD_GPIO_t_25;
  wire [26:26]LPD_GPIO_t_26;
  wire [27:27]LPD_GPIO_t_27;
  wire [28:28]LPD_GPIO_t_28;
  wire [29:29]LPD_GPIO_t_29;
  wire [3:3]LPD_GPIO_t_3;
  wire [30:30]LPD_GPIO_t_30;
  wire [31:31]LPD_GPIO_t_31;
  wire [4:4]LPD_GPIO_t_4;
  wire [5:5]LPD_GPIO_t_5;
  wire [6:6]LPD_GPIO_t_6;
  wire [7:7]LPD_GPIO_t_7;
  wire [8:8]LPD_GPIO_t_8;
  wire [9:9]LPD_GPIO_t_9;
  wire [63:0]PMC_NOC_AXI_0_araddr;
  wire [1:0]PMC_NOC_AXI_0_arburst;
  wire [3:0]PMC_NOC_AXI_0_arcache;
  wire [15:0]PMC_NOC_AXI_0_arid;
  wire [7:0]PMC_NOC_AXI_0_arlen;
  wire PMC_NOC_AXI_0_arlock;
  wire [2:0]PMC_NOC_AXI_0_arprot;
  wire [3:0]PMC_NOC_AXI_0_arqos;
  wire PMC_NOC_AXI_0_arready;
  wire [3:0]PMC_NOC_AXI_0_arregion;
  wire [2:0]PMC_NOC_AXI_0_arsize;
  wire [17:0]PMC_NOC_AXI_0_aruser;
  wire PMC_NOC_AXI_0_arvalid;
  wire [63:0]PMC_NOC_AXI_0_awaddr;
  wire [1:0]PMC_NOC_AXI_0_awburst;
  wire [3:0]PMC_NOC_AXI_0_awcache;
  wire [15:0]PMC_NOC_AXI_0_awid;
  wire [7:0]PMC_NOC_AXI_0_awlen;
  wire PMC_NOC_AXI_0_awlock;
  wire [2:0]PMC_NOC_AXI_0_awprot;
  wire [3:0]PMC_NOC_AXI_0_awqos;
  wire PMC_NOC_AXI_0_awready;
  wire [3:0]PMC_NOC_AXI_0_awregion;
  wire [2:0]PMC_NOC_AXI_0_awsize;
  wire [17:0]PMC_NOC_AXI_0_awuser;
  wire PMC_NOC_AXI_0_awvalid;
  wire [15:0]PMC_NOC_AXI_0_bid;
  wire PMC_NOC_AXI_0_bready;
  wire [1:0]PMC_NOC_AXI_0_bresp;
  wire [15:0]PMC_NOC_AXI_0_buser;
  wire PMC_NOC_AXI_0_bvalid;
  wire [127:0]PMC_NOC_AXI_0_rdata;
  wire [15:0]PMC_NOC_AXI_0_rid;
  wire PMC_NOC_AXI_0_rlast;
  wire PMC_NOC_AXI_0_rready;
  wire [1:0]PMC_NOC_AXI_0_rresp;
  wire [16:0]PMC_NOC_AXI_0_ruser;
  wire PMC_NOC_AXI_0_rvalid;
  wire [127:0]PMC_NOC_AXI_0_wdata;
  wire [15:0]PMC_NOC_AXI_0_wid;
  wire PMC_NOC_AXI_0_wlast;
  wire PMC_NOC_AXI_0_wready;
  wire [15:0]PMC_NOC_AXI_0_wstrb;
  wire [16:0]PMC_NOC_AXI_0_wuser;
  wire PMC_NOC_AXI_0_wvalid;
  wire fpd_axi_noc_axi1_clk;
  wire pl0_ref_clk;
  wire pmc_axi_noc_axi0_clk;

  IOBUF LPD_GPIO_iobuf_0
       (.I(LPD_GPIO_o_0),
        .IO(LPD_GPIO_io[0]),
        .O(LPD_GPIO_i_0),
        .T(LPD_GPIO_t_0));
  IOBUF LPD_GPIO_iobuf_1
       (.I(LPD_GPIO_o_1),
        .IO(LPD_GPIO_io[1]),
        .O(LPD_GPIO_i_1),
        .T(LPD_GPIO_t_1));
  IOBUF LPD_GPIO_iobuf_10
       (.I(LPD_GPIO_o_10),
        .IO(LPD_GPIO_io[10]),
        .O(LPD_GPIO_i_10),
        .T(LPD_GPIO_t_10));
  IOBUF LPD_GPIO_iobuf_11
       (.I(LPD_GPIO_o_11),
        .IO(LPD_GPIO_io[11]),
        .O(LPD_GPIO_i_11),
        .T(LPD_GPIO_t_11));
  IOBUF LPD_GPIO_iobuf_12
       (.I(LPD_GPIO_o_12),
        .IO(LPD_GPIO_io[12]),
        .O(LPD_GPIO_i_12),
        .T(LPD_GPIO_t_12));
  IOBUF LPD_GPIO_iobuf_13
       (.I(LPD_GPIO_o_13),
        .IO(LPD_GPIO_io[13]),
        .O(LPD_GPIO_i_13),
        .T(LPD_GPIO_t_13));
  IOBUF LPD_GPIO_iobuf_14
       (.I(LPD_GPIO_o_14),
        .IO(LPD_GPIO_io[14]),
        .O(LPD_GPIO_i_14),
        .T(LPD_GPIO_t_14));
  IOBUF LPD_GPIO_iobuf_15
       (.I(LPD_GPIO_o_15),
        .IO(LPD_GPIO_io[15]),
        .O(LPD_GPIO_i_15),
        .T(LPD_GPIO_t_15));
  IOBUF LPD_GPIO_iobuf_16
       (.I(LPD_GPIO_o_16),
        .IO(LPD_GPIO_io[16]),
        .O(LPD_GPIO_i_16),
        .T(LPD_GPIO_t_16));
  IOBUF LPD_GPIO_iobuf_17
       (.I(LPD_GPIO_o_17),
        .IO(LPD_GPIO_io[17]),
        .O(LPD_GPIO_i_17),
        .T(LPD_GPIO_t_17));
  IOBUF LPD_GPIO_iobuf_18
       (.I(LPD_GPIO_o_18),
        .IO(LPD_GPIO_io[18]),
        .O(LPD_GPIO_i_18),
        .T(LPD_GPIO_t_18));
  IOBUF LPD_GPIO_iobuf_19
       (.I(LPD_GPIO_o_19),
        .IO(LPD_GPIO_io[19]),
        .O(LPD_GPIO_i_19),
        .T(LPD_GPIO_t_19));
  IOBUF LPD_GPIO_iobuf_2
       (.I(LPD_GPIO_o_2),
        .IO(LPD_GPIO_io[2]),
        .O(LPD_GPIO_i_2),
        .T(LPD_GPIO_t_2));
  IOBUF LPD_GPIO_iobuf_20
       (.I(LPD_GPIO_o_20),
        .IO(LPD_GPIO_io[20]),
        .O(LPD_GPIO_i_20),
        .T(LPD_GPIO_t_20));
  IOBUF LPD_GPIO_iobuf_21
       (.I(LPD_GPIO_o_21),
        .IO(LPD_GPIO_io[21]),
        .O(LPD_GPIO_i_21),
        .T(LPD_GPIO_t_21));
  IOBUF LPD_GPIO_iobuf_22
       (.I(LPD_GPIO_o_22),
        .IO(LPD_GPIO_io[22]),
        .O(LPD_GPIO_i_22),
        .T(LPD_GPIO_t_22));
  IOBUF LPD_GPIO_iobuf_23
       (.I(LPD_GPIO_o_23),
        .IO(LPD_GPIO_io[23]),
        .O(LPD_GPIO_i_23),
        .T(LPD_GPIO_t_23));
  IOBUF LPD_GPIO_iobuf_24
       (.I(LPD_GPIO_o_24),
        .IO(LPD_GPIO_io[24]),
        .O(LPD_GPIO_i_24),
        .T(LPD_GPIO_t_24));
  IOBUF LPD_GPIO_iobuf_25
       (.I(LPD_GPIO_o_25),
        .IO(LPD_GPIO_io[25]),
        .O(LPD_GPIO_i_25),
        .T(LPD_GPIO_t_25));
  IOBUF LPD_GPIO_iobuf_26
       (.I(LPD_GPIO_o_26),
        .IO(LPD_GPIO_io[26]),
        .O(LPD_GPIO_i_26),
        .T(LPD_GPIO_t_26));
  IOBUF LPD_GPIO_iobuf_27
       (.I(LPD_GPIO_o_27),
        .IO(LPD_GPIO_io[27]),
        .O(LPD_GPIO_i_27),
        .T(LPD_GPIO_t_27));
  IOBUF LPD_GPIO_iobuf_28
       (.I(LPD_GPIO_o_28),
        .IO(LPD_GPIO_io[28]),
        .O(LPD_GPIO_i_28),
        .T(LPD_GPIO_t_28));
  IOBUF LPD_GPIO_iobuf_29
       (.I(LPD_GPIO_o_29),
        .IO(LPD_GPIO_io[29]),
        .O(LPD_GPIO_i_29),
        .T(LPD_GPIO_t_29));
  IOBUF LPD_GPIO_iobuf_3
       (.I(LPD_GPIO_o_3),
        .IO(LPD_GPIO_io[3]),
        .O(LPD_GPIO_i_3),
        .T(LPD_GPIO_t_3));
  IOBUF LPD_GPIO_iobuf_30
       (.I(LPD_GPIO_o_30),
        .IO(LPD_GPIO_io[30]),
        .O(LPD_GPIO_i_30),
        .T(LPD_GPIO_t_30));
  IOBUF LPD_GPIO_iobuf_31
       (.I(LPD_GPIO_o_31),
        .IO(LPD_GPIO_io[31]),
        .O(LPD_GPIO_i_31),
        .T(LPD_GPIO_t_31));
  IOBUF LPD_GPIO_iobuf_4
       (.I(LPD_GPIO_o_4),
        .IO(LPD_GPIO_io[4]),
        .O(LPD_GPIO_i_4),
        .T(LPD_GPIO_t_4));
  IOBUF LPD_GPIO_iobuf_5
       (.I(LPD_GPIO_o_5),
        .IO(LPD_GPIO_io[5]),
        .O(LPD_GPIO_i_5),
        .T(LPD_GPIO_t_5));
  IOBUF LPD_GPIO_iobuf_6
       (.I(LPD_GPIO_o_6),
        .IO(LPD_GPIO_io[6]),
        .O(LPD_GPIO_i_6),
        .T(LPD_GPIO_t_6));
  IOBUF LPD_GPIO_iobuf_7
       (.I(LPD_GPIO_o_7),
        .IO(LPD_GPIO_io[7]),
        .O(LPD_GPIO_i_7),
        .T(LPD_GPIO_t_7));
  IOBUF LPD_GPIO_iobuf_8
       (.I(LPD_GPIO_o_8),
        .IO(LPD_GPIO_io[8]),
        .O(LPD_GPIO_i_8),
        .T(LPD_GPIO_t_8));
  IOBUF LPD_GPIO_iobuf_9
       (.I(LPD_GPIO_o_9),
        .IO(LPD_GPIO_io[9]),
        .O(LPD_GPIO_i_9),
        .T(LPD_GPIO_t_9));
  bd_70da bd_70da_i
       (.FPD_AXI_NOC_1_araddr(FPD_AXI_NOC_1_araddr),
        .FPD_AXI_NOC_1_arburst(FPD_AXI_NOC_1_arburst),
        .FPD_AXI_NOC_1_arcache(FPD_AXI_NOC_1_arcache),
        .FPD_AXI_NOC_1_arid(FPD_AXI_NOC_1_arid),
        .FPD_AXI_NOC_1_arlen(FPD_AXI_NOC_1_arlen),
        .FPD_AXI_NOC_1_arlock(FPD_AXI_NOC_1_arlock),
        .FPD_AXI_NOC_1_arprot(FPD_AXI_NOC_1_arprot),
        .FPD_AXI_NOC_1_arqos(FPD_AXI_NOC_1_arqos),
        .FPD_AXI_NOC_1_arready(FPD_AXI_NOC_1_arready),
        .FPD_AXI_NOC_1_arsize(FPD_AXI_NOC_1_arsize),
        .FPD_AXI_NOC_1_aruser(FPD_AXI_NOC_1_aruser),
        .FPD_AXI_NOC_1_arvalid(FPD_AXI_NOC_1_arvalid),
        .FPD_AXI_NOC_1_awaddr(FPD_AXI_NOC_1_awaddr),
        .FPD_AXI_NOC_1_awburst(FPD_AXI_NOC_1_awburst),
        .FPD_AXI_NOC_1_awcache(FPD_AXI_NOC_1_awcache),
        .FPD_AXI_NOC_1_awid(FPD_AXI_NOC_1_awid),
        .FPD_AXI_NOC_1_awlen(FPD_AXI_NOC_1_awlen),
        .FPD_AXI_NOC_1_awlock(FPD_AXI_NOC_1_awlock),
        .FPD_AXI_NOC_1_awprot(FPD_AXI_NOC_1_awprot),
        .FPD_AXI_NOC_1_awqos(FPD_AXI_NOC_1_awqos),
        .FPD_AXI_NOC_1_awready(FPD_AXI_NOC_1_awready),
        .FPD_AXI_NOC_1_awsize(FPD_AXI_NOC_1_awsize),
        .FPD_AXI_NOC_1_awuser(FPD_AXI_NOC_1_awuser),
        .FPD_AXI_NOC_1_awvalid(FPD_AXI_NOC_1_awvalid),
        .FPD_AXI_NOC_1_bid(FPD_AXI_NOC_1_bid),
        .FPD_AXI_NOC_1_bready(FPD_AXI_NOC_1_bready),
        .FPD_AXI_NOC_1_bresp(FPD_AXI_NOC_1_bresp),
        .FPD_AXI_NOC_1_bvalid(FPD_AXI_NOC_1_bvalid),
        .FPD_AXI_NOC_1_rdata(FPD_AXI_NOC_1_rdata),
        .FPD_AXI_NOC_1_rid(FPD_AXI_NOC_1_rid),
        .FPD_AXI_NOC_1_rlast(FPD_AXI_NOC_1_rlast),
        .FPD_AXI_NOC_1_rready(FPD_AXI_NOC_1_rready),
        .FPD_AXI_NOC_1_rresp(FPD_AXI_NOC_1_rresp),
        .FPD_AXI_NOC_1_rvalid(FPD_AXI_NOC_1_rvalid),
        .FPD_AXI_NOC_1_wdata(FPD_AXI_NOC_1_wdata),
        .FPD_AXI_NOC_1_wlast(FPD_AXI_NOC_1_wlast),
        .FPD_AXI_NOC_1_wready(FPD_AXI_NOC_1_wready),
        .FPD_AXI_NOC_1_wstrb(FPD_AXI_NOC_1_wstrb),
        .FPD_AXI_NOC_1_wvalid(FPD_AXI_NOC_1_wvalid),
        .LPD_GPIO_i({LPD_GPIO_i_31,LPD_GPIO_i_30,LPD_GPIO_i_29,LPD_GPIO_i_28,LPD_GPIO_i_27,LPD_GPIO_i_26,LPD_GPIO_i_25,LPD_GPIO_i_24,LPD_GPIO_i_23,LPD_GPIO_i_22,LPD_GPIO_i_21,LPD_GPIO_i_20,LPD_GPIO_i_19,LPD_GPIO_i_18,LPD_GPIO_i_17,LPD_GPIO_i_16,LPD_GPIO_i_15,LPD_GPIO_i_14,LPD_GPIO_i_13,LPD_GPIO_i_12,LPD_GPIO_i_11,LPD_GPIO_i_10,LPD_GPIO_i_9,LPD_GPIO_i_8,LPD_GPIO_i_7,LPD_GPIO_i_6,LPD_GPIO_i_5,LPD_GPIO_i_4,LPD_GPIO_i_3,LPD_GPIO_i_2,LPD_GPIO_i_1,LPD_GPIO_i_0}),
        .LPD_GPIO_o({LPD_GPIO_o_31,LPD_GPIO_o_30,LPD_GPIO_o_29,LPD_GPIO_o_28,LPD_GPIO_o_27,LPD_GPIO_o_26,LPD_GPIO_o_25,LPD_GPIO_o_24,LPD_GPIO_o_23,LPD_GPIO_o_22,LPD_GPIO_o_21,LPD_GPIO_o_20,LPD_GPIO_o_19,LPD_GPIO_o_18,LPD_GPIO_o_17,LPD_GPIO_o_16,LPD_GPIO_o_15,LPD_GPIO_o_14,LPD_GPIO_o_13,LPD_GPIO_o_12,LPD_GPIO_o_11,LPD_GPIO_o_10,LPD_GPIO_o_9,LPD_GPIO_o_8,LPD_GPIO_o_7,LPD_GPIO_o_6,LPD_GPIO_o_5,LPD_GPIO_o_4,LPD_GPIO_o_3,LPD_GPIO_o_2,LPD_GPIO_o_1,LPD_GPIO_o_0}),
        .LPD_GPIO_t({LPD_GPIO_t_31,LPD_GPIO_t_30,LPD_GPIO_t_29,LPD_GPIO_t_28,LPD_GPIO_t_27,LPD_GPIO_t_26,LPD_GPIO_t_25,LPD_GPIO_t_24,LPD_GPIO_t_23,LPD_GPIO_t_22,LPD_GPIO_t_21,LPD_GPIO_t_20,LPD_GPIO_t_19,LPD_GPIO_t_18,LPD_GPIO_t_17,LPD_GPIO_t_16,LPD_GPIO_t_15,LPD_GPIO_t_14,LPD_GPIO_t_13,LPD_GPIO_t_12,LPD_GPIO_t_11,LPD_GPIO_t_10,LPD_GPIO_t_9,LPD_GPIO_t_8,LPD_GPIO_t_7,LPD_GPIO_t_6,LPD_GPIO_t_5,LPD_GPIO_t_4,LPD_GPIO_t_3,LPD_GPIO_t_2,LPD_GPIO_t_1,LPD_GPIO_t_0}),
        .PMC_NOC_AXI_0_araddr(PMC_NOC_AXI_0_araddr),
        .PMC_NOC_AXI_0_arburst(PMC_NOC_AXI_0_arburst),
        .PMC_NOC_AXI_0_arcache(PMC_NOC_AXI_0_arcache),
        .PMC_NOC_AXI_0_arid(PMC_NOC_AXI_0_arid),
        .PMC_NOC_AXI_0_arlen(PMC_NOC_AXI_0_arlen),
        .PMC_NOC_AXI_0_arlock(PMC_NOC_AXI_0_arlock),
        .PMC_NOC_AXI_0_arprot(PMC_NOC_AXI_0_arprot),
        .PMC_NOC_AXI_0_arqos(PMC_NOC_AXI_0_arqos),
        .PMC_NOC_AXI_0_arready(PMC_NOC_AXI_0_arready),
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
        .PMC_NOC_AXI_0_awready(PMC_NOC_AXI_0_awready),
        .PMC_NOC_AXI_0_awregion(PMC_NOC_AXI_0_awregion),
        .PMC_NOC_AXI_0_awsize(PMC_NOC_AXI_0_awsize),
        .PMC_NOC_AXI_0_awuser(PMC_NOC_AXI_0_awuser),
        .PMC_NOC_AXI_0_awvalid(PMC_NOC_AXI_0_awvalid),
        .PMC_NOC_AXI_0_bid(PMC_NOC_AXI_0_bid),
        .PMC_NOC_AXI_0_bready(PMC_NOC_AXI_0_bready),
        .PMC_NOC_AXI_0_bresp(PMC_NOC_AXI_0_bresp),
        .PMC_NOC_AXI_0_buser(PMC_NOC_AXI_0_buser),
        .PMC_NOC_AXI_0_bvalid(PMC_NOC_AXI_0_bvalid),
        .PMC_NOC_AXI_0_rdata(PMC_NOC_AXI_0_rdata),
        .PMC_NOC_AXI_0_rid(PMC_NOC_AXI_0_rid),
        .PMC_NOC_AXI_0_rlast(PMC_NOC_AXI_0_rlast),
        .PMC_NOC_AXI_0_rready(PMC_NOC_AXI_0_rready),
        .PMC_NOC_AXI_0_rresp(PMC_NOC_AXI_0_rresp),
        .PMC_NOC_AXI_0_ruser(PMC_NOC_AXI_0_ruser),
        .PMC_NOC_AXI_0_rvalid(PMC_NOC_AXI_0_rvalid),
        .PMC_NOC_AXI_0_wdata(PMC_NOC_AXI_0_wdata),
        .PMC_NOC_AXI_0_wid(PMC_NOC_AXI_0_wid),
        .PMC_NOC_AXI_0_wlast(PMC_NOC_AXI_0_wlast),
        .PMC_NOC_AXI_0_wready(PMC_NOC_AXI_0_wready),
        .PMC_NOC_AXI_0_wstrb(PMC_NOC_AXI_0_wstrb),
        .PMC_NOC_AXI_0_wuser(PMC_NOC_AXI_0_wuser),
        .PMC_NOC_AXI_0_wvalid(PMC_NOC_AXI_0_wvalid),
        .fpd_axi_noc_axi1_clk(fpd_axi_noc_axi1_clk),
        .pl0_ref_clk(pl0_ref_clk),
        .pmc_axi_noc_axi0_clk(pmc_axi_noc_axi0_clk));
endmodule
