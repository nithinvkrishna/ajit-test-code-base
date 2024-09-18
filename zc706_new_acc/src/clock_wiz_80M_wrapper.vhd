--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri May 10 16:34:50 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target clock_wiz_80M_wrapper.bd
--Design      : clock_wiz_80M_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_wiz_80M_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end clock_wiz_80M_wrapper;

architecture STRUCTURE of clock_wiz_80M_wrapper is
  component clock_wiz_80M is
  port (
    reset : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC
  );
  end component clock_wiz_80M;
begin
clock_wiz_80M_i: component clock_wiz_80M
     port map (
      clk_100MHz => clk_100MHz,
      clk_out1_0 => clk_out1_0,
      clk_out2_0 => clk_out2_0,
      locked_0 => locked_0,
      reset => reset
    );
end STRUCTURE;
