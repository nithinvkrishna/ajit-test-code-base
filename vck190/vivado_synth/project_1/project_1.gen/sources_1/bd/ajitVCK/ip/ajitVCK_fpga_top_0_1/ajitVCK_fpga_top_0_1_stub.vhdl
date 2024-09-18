-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Sep  3 11:46:42 2024
-- Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top ajitVCK_fpga_top_0_1 -prefix
--               ajitVCK_fpga_top_0_1_ ajitVCK_fpga_top_0_0_stub.vhdl
-- Design      : ajitVCK_fpga_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ajitVCK_fpga_top_0_1 is
  Port ( 
    DEBUG_UART_RX : in STD_LOGIC;
    DEBUG_UART_TX : out STD_LOGIC;
    SERIAL_UART_RX : in STD_LOGIC;
    SERIAL_UART_TX : out STD_LOGIC;
    CPU_MODE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_clk : in STD_LOGIC
  );

end ajitVCK_fpga_top_0_1;

architecture stub of ajitVCK_fpga_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DEBUG_UART_RX,DEBUG_UART_TX,SERIAL_UART_RX,SERIAL_UART_TX,CPU_MODE[1:0],clk_p,clk_n,reset,reset_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fpga_top,Vivado 2023.2";
begin
end;
