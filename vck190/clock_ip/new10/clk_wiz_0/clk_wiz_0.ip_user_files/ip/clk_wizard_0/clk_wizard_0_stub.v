// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Aug 27 14:07:20 2024
// Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/clock_ip/new10/clk_wiz_0/clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_stub.v
// Design      : clk_wizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_wizard_0_clk_wiz_top,Vivado 2023.2" *)
module clk_wizard_0(clk_in1_p, clk_in1_n, reset, locked, clk_out1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1_p,clk_in1_n,reset,locked" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  input clk_in1_p;
  input clk_in1_n;
  input reset;
  output locked;
  output clk_out1 /* synthesis syn_isclock = 1 */;
endmodule
