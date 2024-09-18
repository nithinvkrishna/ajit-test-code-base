--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri May 10 16:34:50 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target clock_wiz_80M.bd
--Design      : clock_wiz_80M
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_wiz_80M is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    locked_0 : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clock_wiz_80M : entity is "clock_wiz_80M,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock_wiz_80M,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clock_wiz_80M : entity is "clock_wiz_80M.hwdef";
end clock_wiz_80M;

architecture STRUCTURE of clock_wiz_80M is
  component clock_wiz_80M_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component clock_wiz_80M_clk_wiz_0_0;
  signal clk_100MHz_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN clock_wiz_80M_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_out1_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out1_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_out2_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out2_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_100MHz_1 <= clk_100MHz;
  clk_out1_0 <= clk_wiz_0_clk_out1;
  clk_out2_0 <= clk_wiz_0_clk_out2;
  locked_0 <= clk_wiz_0_locked;
  reset_1 <= reset;
clk_wiz_0: component clock_wiz_80M_clk_wiz_0_0
     port map (
      clk_in1 => clk_100MHz_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      reset => reset_1
    );
end STRUCTURE;
