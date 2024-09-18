--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Sep  4 12:45:58 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target ajitVCK_wrapper.bd
--Design      : ajitVCK_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ajitVCK_wrapper is
  port (
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_n_0 : in STD_LOGIC;
    clk_p_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC
  );
end ajitVCK_wrapper;

architecture STRUCTURE of ajitVCK_wrapper is
  component ajitVCK is
  port (
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC;
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_p_0 : in STD_LOGIC;
    clk_n_0 : in STD_LOGIC
  );
  end component ajitVCK;
begin
ajitVCK_i: component ajitVCK
     port map (
      CPU_MODE_0(1 downto 0) => CPU_MODE_0(1 downto 0),
      clk_n_0 => clk_n_0,
      clk_p_0 => clk_p_0,
      reset_0 => reset_0,
      reset_clk_0 => reset_clk_0
    );
end STRUCTURE;
