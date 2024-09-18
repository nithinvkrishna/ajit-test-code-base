//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Aug 26 17:12:00 2024
//Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target clock_wiz_wrapper.bd
//Design      : clock_wiz_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_wiz_wrapper
   (clk_in1_n_0,
    clk_in1_p_0,
    clk_out1_0,
    locked_0,
    reset_0);
  input clk_in1_n_0;
  input clk_in1_p_0;
  output clk_out1_0;
  output locked_0;
  input reset_0;

  wire clk_in1_n_0;
  wire clk_in1_p_0;
  wire clk_out1_0;
  wire locked_0;
  wire reset_0;

  clock_wiz clock_wiz_i
       (.clk_in1_n_0(clk_in1_n_0),
        .clk_in1_p_0(clk_in1_p_0),
        .clk_out1_0(clk_out1_0),
        .locked_0(locked_0),
        .reset_0(reset_0));
endmodule
