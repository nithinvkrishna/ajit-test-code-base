--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Sep 11 12:13:15 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target clk_wizard_wrapper.bd
--Design      : clk_wizard_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wizard_wrapper is
  port (
    clk_in1_n : in STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end clk_wizard_wrapper;

architecture STRUCTURE of clk_wizard_wrapper is
  component clk_wizard is
  port (
    clk_in1_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component clk_wizard;
begin
clk_wizard_i: component clk_wizard
     port map (
      clk_in1_n => clk_in1_n,
      clk_in1_p => clk_in1_p,
      clk_out1 => clk_out1,
      locked => locked,
      reset => reset
    );
end STRUCTURE;
