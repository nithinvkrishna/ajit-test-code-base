-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Aug 27 14:07:20 2024
-- Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/clock_ip/new10/clk_wiz_0/clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_stub.vhdl
-- Design      : clk_wizard_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wizard_0 is
  Port ( 
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );

end clk_wizard_0;

architecture stub of clk_wizard_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1_p,clk_in1_n,reset,locked,clk_out1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk_wizard_0_clk_wiz_top,Vivado 2023.2";
begin
end;
