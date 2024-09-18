//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Aug 27 14:18:29 2024
//Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target clkIP.bd
//Design      : clkIP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clkIP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clkIP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "clkIP.hwdef" *) 
module clkIP
   (clk_in1_n_0,
    clk_in1_p_0,
    clk_out1_0,
    locked_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_N_0, CLK_DOMAIN clkIP_clk_in1_n_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_P_0, CLK_DOMAIN clkIP_clk_in1_p_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN clkIP_clk_wizard_0_0_clk_out1, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
  output locked_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;

  wire clk_in1_n_0_1;
  wire clk_in1_p_0_1;
  wire clk_wizard_0_clk_out1;
  wire clk_wizard_0_locked;
  wire reset_0_1;

  assign clk_in1_n_0_1 = clk_in1_n_0;
  assign clk_in1_p_0_1 = clk_in1_p_0;
  assign clk_out1_0 = clk_wizard_0_clk_out1;
  assign locked_0 = clk_wizard_0_locked;
  assign reset_0_1 = reset_0;
  clkIP_clk_wizard_0_0 clk_wizard_0
       (.clk_in1_n(clk_in1_n_0_1),
        .clk_in1_p(clk_in1_p_0_1),
        .clk_out1(clk_wizard_0_clk_out1),
        .locked(clk_wizard_0_locked),
        .reset(reset_0_1));
endmodule
