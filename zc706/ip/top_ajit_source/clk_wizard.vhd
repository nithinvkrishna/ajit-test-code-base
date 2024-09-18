--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Sep 11 12:13:14 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target clk_wizard.bd
--Design      : clk_wizard
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wizard is
  port (
    clk_in1_n : in STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clk_wizard : entity is "clk_wizard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_wizard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clk_wizard : entity is "clk_wizard.hwdef";
end clk_wizard;

architecture STRUCTURE of clk_wizard is
  component clk_wizard_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component clk_wizard_clk_wiz_0_0;
  signal clk_in1_n_0_1 : STD_LOGIC;
  signal clk_in1_p_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in1_n : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_N CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1_n : signal is "XIL_INTERFACENAME CLK.CLK_IN1_N, CLK_DOMAIN clk_wizard_clk_in1_n_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_in1_p : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_P CLK";
  attribute X_INTERFACE_PARAMETER of clk_in1_p : signal is "XIL_INTERFACENAME CLK.CLK_IN1_P, CLK_DOMAIN clk_wizard_clk_in1_p_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_out1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out1 : signal is "XIL_INTERFACENAME CLK.CLK_OUT1, CLK_DOMAIN clk_wizard_clk_wiz_0_0_clk_out1, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_in1_n_0_1 <= clk_in1_n;
  clk_in1_p_0_1 <= clk_in1_p;
  clk_out1 <= clk_wiz_0_clk_out1;
  locked <= clk_wiz_0_locked;
  reset_0_1 <= reset;
clk_wiz_0: component clk_wizard_clk_wiz_0_0
     port map (
      clk_in1_n => clk_in1_n_0_1,
      clk_in1_p => clk_in1_p_0_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      reset => reset_0_1
    );
end STRUCTURE;
