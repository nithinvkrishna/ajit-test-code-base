--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Sep  2 11:39:17 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target Ajit_vck190_wrapper.bd
--Design      : Ajit_vck190_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ajit_vck190_wrapper is
  port (
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC
  );
end Ajit_vck190_wrapper;

architecture STRUCTURE of Ajit_vck190_wrapper is
  component Ajit_vck190 is
  port (
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC;
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Ajit_vck190;
begin
Ajit_vck190_i: component Ajit_vck190
     port map (
      CPU_MODE_0(1 downto 0) => CPU_MODE_0(1 downto 0),
      reset_0 => reset_0,
      reset_clk_0 => reset_clk_0
    );
end STRUCTURE;
