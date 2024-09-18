-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: NinePath:NY:fpga_top:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Ajit_vck190_fpga_top_0_1 IS
  PORT (
    DEBUG_UART_RX : IN STD_LOGIC;
    DEBUG_UART_TX : OUT STD_LOGIC;
    SERIAL_UART_RX : IN STD_LOGIC;
    SERIAL_UART_TX : OUT STD_LOGIC;
    CPU_MODE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    clk_p : IN STD_LOGIC;
    clk_n : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    reset_clk : IN STD_LOGIC
  );
END Ajit_vck190_fpga_top_0_1;

ARCHITECTURE Ajit_vck190_fpga_top_0_1_arch OF Ajit_vck190_fpga_top_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Ajit_vck190_fpga_top_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT fpga_top IS
    PORT (
      DEBUG_UART_RX : IN STD_LOGIC;
      DEBUG_UART_TX : OUT STD_LOGIC;
      SERIAL_UART_RX : IN STD_LOGIC;
      SERIAL_UART_TX : OUT STD_LOGIC;
      CPU_MODE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      clk_p : IN STD_LOGIC;
      clk_n : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      reset_clk : IN STD_LOGIC
    );
  END COMPONENT fpga_top;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_n: SIGNAL IS "XIL_INTERFACENAME clk_n, FREQ_HZ 79999199, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_n: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_n CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_p: SIGNAL IS "XIL_INTERFACENAME clk_p, FREQ_HZ 79999199, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98bc_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_p: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_p CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_clk: SIGNAL IS "XIL_INTERFACENAME reset_clk, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_clk: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_clk RST";
BEGIN
  U0 : fpga_top
    PORT MAP (
      DEBUG_UART_RX => DEBUG_UART_RX,
      DEBUG_UART_TX => DEBUG_UART_TX,
      SERIAL_UART_RX => SERIAL_UART_RX,
      SERIAL_UART_TX => SERIAL_UART_TX,
      CPU_MODE => CPU_MODE,
      clk_p => clk_p,
      clk_n => clk_n,
      reset => reset,
      reset_clk => reset_clk
    );
END Ajit_vck190_fpga_top_0_1_arch;
