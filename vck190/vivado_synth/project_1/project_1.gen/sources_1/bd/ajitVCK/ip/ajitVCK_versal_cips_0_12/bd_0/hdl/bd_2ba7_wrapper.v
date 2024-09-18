//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2ba7_wrapper.bd
//Design : bd_2ba7_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_2ba7_wrapper
   (UART0_rxd,
    UART0_txd,
    UART1_rxd,
    UART1_txd,
    fmio_uart0_sir_in,
    fmio_uart1_sir_in,
    uart0_out1n,
    uart0_out2n,
    uart0_sir_outn,
    uart1_out1n,
    uart1_out2n,
    uart1_sir_outn);
  input UART0_rxd;
  output UART0_txd;
  input UART1_rxd;
  output UART1_txd;
  input fmio_uart0_sir_in;
  input fmio_uart1_sir_in;
  output uart0_out1n;
  output uart0_out2n;
  output uart0_sir_outn;
  output uart1_out1n;
  output uart1_out2n;
  output uart1_sir_outn;

  wire UART0_rxd;
  wire UART0_txd;
  wire UART1_rxd;
  wire UART1_txd;
  wire fmio_uart0_sir_in;
  wire fmio_uart1_sir_in;
  wire uart0_out1n;
  wire uart0_out2n;
  wire uart0_sir_outn;
  wire uart1_out1n;
  wire uart1_out2n;
  wire uart1_sir_outn;

  bd_2ba7 bd_2ba7_i
       (.UART0_rxd(UART0_rxd),
        .UART0_txd(UART0_txd),
        .UART1_rxd(UART1_rxd),
        .UART1_txd(UART1_txd),
        .fmio_uart0_sir_in(fmio_uart0_sir_in),
        .fmio_uart1_sir_in(fmio_uart1_sir_in),
        .uart0_out1n(uart0_out1n),
        .uart0_out2n(uart0_out2n),
        .uart0_sir_outn(uart0_sir_outn),
        .uart1_out1n(uart1_out1n),
        .uart1_out2n(uart1_out2n),
        .uart1_sir_outn(uart1_sir_outn));
endmodule
