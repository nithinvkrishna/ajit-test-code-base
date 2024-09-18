// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Sep  2 11:53:44 2024
// Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Ajit_vck190_fpga_top_0_1_stub.v
// Design      : Ajit_vck190_fpga_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fpga_top,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DEBUG_UART_RX, DEBUG_UART_TX, SERIAL_UART_RX, 
  SERIAL_UART_TX, CPU_MODE, clk_p, clk_n, reset, reset_clk)
/* synthesis syn_black_box black_box_pad_pin="DEBUG_UART_RX,DEBUG_UART_TX,SERIAL_UART_RX,SERIAL_UART_TX,CPU_MODE[1:0],clk_p,clk_n,reset,reset_clk" */;
  input DEBUG_UART_RX;
  output DEBUG_UART_TX;
  input SERIAL_UART_RX;
  output SERIAL_UART_TX;
  output [1:0]CPU_MODE;
  input clk_p;
  input clk_n;
  input reset;
  input reset_clk;
endmodule
