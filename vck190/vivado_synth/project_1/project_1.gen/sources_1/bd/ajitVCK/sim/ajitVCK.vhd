--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Sep  4 12:45:58 2024
--Host        : iitg-Precision-3660 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target ajitVCK.bd
--Design      : ajitVCK
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ajitVCK is
  port (
    CPU_MODE_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_n_0 : in STD_LOGIC;
    clk_p_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    reset_clk_0 : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of ajitVCK : entity is "ajitVCK,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ajitVCK,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=2,da_cips_cnt=1,da_clkrst_cnt=10,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of ajitVCK : entity is "ajitVCK.hwdef";
end ajitVCK;

architecture STRUCTURE of ajitVCK is
  component ajitVCK_fpga_top_0_1 is
  port (
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
  end component ajitVCK_fpga_top_0_1;
  component ajitVCK_versal_cips_0_12 is
  port (
    uart0_sir_outn : out STD_LOGIC;
    uart0_out2n : out STD_LOGIC;
    uart0_out1n : out STD_LOGIC;
    fmio_uart0_sir_in : in STD_LOGIC;
    uart1_sir_outn : out STD_LOGIC;
    uart1_out2n : out STD_LOGIC;
    uart1_out1n : out STD_LOGIC;
    fmio_uart1_sir_in : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    UART0_rxd : in STD_LOGIC;
    UART1_txd : out STD_LOGIC;
    UART1_rxd : in STD_LOGIC
  );
  end component ajitVCK_versal_cips_0_12;
  signal clk_n_0_1 : STD_LOGIC;
  signal clk_p_0_1 : STD_LOGIC;
  signal fpga_top_0_CPU_MODE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fpga_top_0_DEBUG_UART_TX : STD_LOGIC;
  signal fpga_top_0_SERIAL_UART_TX : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal reset_clk_0_1 : STD_LOGIC;
  signal versal_cips_0_UART0_txd : STD_LOGIC;
  signal versal_cips_0_UART1_txd : STD_LOGIC;
  signal NLW_versal_cips_0_uart0_out1n_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_uart0_out2n_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_uart0_sir_outn_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_uart1_out1n_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_uart1_out2n_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_uart1_sir_outn_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk_n_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_N_0 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_n_0 : signal is "XIL_INTERFACENAME CLK.CLK_N_0, CLK_DOMAIN ajitVCK_clk_n_0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of clk_p_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_P_0 CLK";
  attribute x_interface_parameter of clk_p_0 : signal is "XIL_INTERFACENAME CLK.CLK_P_0, CLK_DOMAIN ajitVCK_clk_p_0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute x_interface_parameter of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of reset_clk_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_CLK_0 RST";
  attribute x_interface_parameter of reset_clk_0 : signal is "XIL_INTERFACENAME RST.RESET_CLK_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  CPU_MODE_0(1 downto 0) <= fpga_top_0_CPU_MODE(1 downto 0);
  clk_n_0_1 <= clk_n_0;
  clk_p_0_1 <= clk_p_0;
  reset_0_1 <= reset_0;
  reset_clk_0_1 <= reset_clk_0;
fpga_top_0: component ajitVCK_fpga_top_0_1
     port map (
      CPU_MODE(1 downto 0) => fpga_top_0_CPU_MODE(1 downto 0),
      DEBUG_UART_RX => versal_cips_0_UART0_txd,
      DEBUG_UART_TX => fpga_top_0_DEBUG_UART_TX,
      SERIAL_UART_RX => versal_cips_0_UART1_txd,
      SERIAL_UART_TX => fpga_top_0_SERIAL_UART_TX,
      clk_n => clk_n_0_1,
      clk_p => clk_p_0_1,
      reset => reset_0_1,
      reset_clk => reset_clk_0_1
    );
versal_cips_0: component ajitVCK_versal_cips_0_12
     port map (
      UART0_rxd => fpga_top_0_DEBUG_UART_TX,
      UART0_txd => versal_cips_0_UART0_txd,
      UART1_rxd => fpga_top_0_SERIAL_UART_TX,
      UART1_txd => versal_cips_0_UART1_txd,
      fmio_uart0_sir_in => '0',
      fmio_uart1_sir_in => '0',
      uart0_out1n => NLW_versal_cips_0_uart0_out1n_UNCONNECTED,
      uart0_out2n => NLW_versal_cips_0_uart0_out2n_UNCONNECTED,
      uart0_sir_outn => NLW_versal_cips_0_uart0_sir_outn_UNCONNECTED,
      uart1_out1n => NLW_versal_cips_0_uart1_out1n_UNCONNECTED,
      uart1_out2n => NLW_versal_cips_0_uart1_out2n_UNCONNECTED,
      uart1_sir_outn => NLW_versal_cips_0_uart1_sir_outn_UNCONNECTED
    );
end STRUCTURE;
