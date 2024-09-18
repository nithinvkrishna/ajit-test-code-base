//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Aug 26 16:09:04 2024
//Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target clockIP.bd
//Design      : clockIP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clockIP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clockIP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "clockIP.hwdef" *) 
module clockIP
   (clk_in1_n,
    clk_in1_p,
    clk_out1,
    locked,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_N, CLK_DOMAIN clockIP_clk_in1_n_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_P, CLK_DOMAIN clockIP_clk_in1_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1, CLK_DOMAIN clockIP_clk_wizard_0_0_clk_out1, FREQ_HZ 79999989, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire clk_in1_n_0_1;
  wire clk_in1_p_0_1;
  wire clk_wizard_0_clk_out1;
  wire clk_wizard_0_locked;
  wire reset_rtl_1;

  assign clk_in1_n_0_1 = clk_in1_n;
  assign clk_in1_p_0_1 = clk_in1_p;
  assign clk_out1 = clk_wizard_0_clk_out1;
  assign locked = clk_wizard_0_locked;
  assign reset_rtl_1 = reset;
  clockIP_clk_wizard_0_0 clk_wizard_0
       (.clk_in1_n(clk_in1_n_0_1),
        .clk_in1_p(clk_in1_p_0_1),
        .clk_out1(clk_wizard_0_clk_out1),
        .locked(clk_wizard_0_locked),
        .reset(reset_rtl_1));
endmodule
