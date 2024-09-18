// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "ajitVCK_versal_cips_0_12_sc.h"

#include "ajitVCK_versal_cips_0_12.h"

#include "versal_cips_v3_4_0_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
ajitVCK_versal_cips_0_12::ajitVCK_versal_cips_0_12(const sc_core::sc_module_name& nm) : ajitVCK_versal_cips_0_12_sc(nm), uart0_sir_outn("uart0_sir_outn"), uart0_out2n("uart0_out2n"), uart0_out1n("uart0_out1n"), fmio_uart0_sir_in("fmio_uart0_sir_in"), uart1_sir_outn("uart1_sir_outn"), uart1_out2n("uart1_out2n"), uart1_out1n("uart1_out1n"), fmio_uart1_sir_in("fmio_uart1_sir_in"), UART0_txd("UART0_txd"), UART0_rxd("UART0_rxd"), UART1_txd("UART1_txd"), UART1_rxd("UART1_rxd")
{

  // initialize pins
  mp_impl->uart0_sir_outn(uart0_sir_outn);
  mp_impl->uart0_out2n(uart0_out2n);
  mp_impl->uart0_out1n(uart0_out1n);
  mp_impl->fmio_uart0_sir_in(fmio_uart0_sir_in);
  mp_impl->uart1_sir_outn(uart1_sir_outn);
  mp_impl->uart1_out2n(uart1_out2n);
  mp_impl->uart1_out1n(uart1_out1n);
  mp_impl->fmio_uart1_sir_in(fmio_uart1_sir_in);
  mp_impl->UART0_txd(UART0_txd);
  mp_impl->UART0_rxd(UART0_rxd);
  mp_impl->UART1_txd(UART1_txd);
  mp_impl->UART1_rxd(UART1_rxd);

}

void ajitVCK_versal_cips_0_12::before_end_of_elaboration()
{
}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
ajitVCK_versal_cips_0_12::ajitVCK_versal_cips_0_12(const sc_core::sc_module_name& nm) : ajitVCK_versal_cips_0_12_sc(nm), uart0_sir_outn("uart0_sir_outn"), uart0_out2n("uart0_out2n"), uart0_out1n("uart0_out1n"), fmio_uart0_sir_in("fmio_uart0_sir_in"), uart1_sir_outn("uart1_sir_outn"), uart1_out2n("uart1_out2n"), uart1_out1n("uart1_out1n"), fmio_uart1_sir_in("fmio_uart1_sir_in"), UART0_txd("UART0_txd"), UART0_rxd("UART0_rxd"), UART1_txd("UART1_txd"), UART1_rxd("UART1_rxd")
{

  // initialize pins
  mp_impl->uart0_sir_outn(uart0_sir_outn);
  mp_impl->uart0_out2n(uart0_out2n);
  mp_impl->uart0_out1n(uart0_out1n);
  mp_impl->fmio_uart0_sir_in(fmio_uart0_sir_in);
  mp_impl->uart1_sir_outn(uart1_sir_outn);
  mp_impl->uart1_out2n(uart1_out2n);
  mp_impl->uart1_out1n(uart1_out1n);
  mp_impl->fmio_uart1_sir_in(fmio_uart1_sir_in);
  mp_impl->UART0_txd(UART0_txd);
  mp_impl->UART0_rxd(UART0_rxd);
  mp_impl->UART1_txd(UART1_txd);
  mp_impl->UART1_rxd(UART1_rxd);

}

void ajitVCK_versal_cips_0_12::before_end_of_elaboration()
{
}

#endif // XM_SYSTEMC




#ifdef RIVIERA
ajitVCK_versal_cips_0_12::ajitVCK_versal_cips_0_12(const sc_core::sc_module_name& nm) : ajitVCK_versal_cips_0_12_sc(nm), uart0_sir_outn("uart0_sir_outn"), uart0_out2n("uart0_out2n"), uart0_out1n("uart0_out1n"), fmio_uart0_sir_in("fmio_uart0_sir_in"), uart1_sir_outn("uart1_sir_outn"), uart1_out2n("uart1_out2n"), uart1_out1n("uart1_out1n"), fmio_uart1_sir_in("fmio_uart1_sir_in"), UART0_txd("UART0_txd"), UART0_rxd("UART0_rxd"), UART1_txd("UART1_txd"), UART1_rxd("UART1_rxd")
{

  // initialize pins
  mp_impl->uart0_sir_outn(uart0_sir_outn);
  mp_impl->uart0_out2n(uart0_out2n);
  mp_impl->uart0_out1n(uart0_out1n);
  mp_impl->fmio_uart0_sir_in(fmio_uart0_sir_in);
  mp_impl->uart1_sir_outn(uart1_sir_outn);
  mp_impl->uart1_out2n(uart1_out2n);
  mp_impl->uart1_out1n(uart1_out1n);
  mp_impl->fmio_uart1_sir_in(fmio_uart1_sir_in);
  mp_impl->UART0_txd(UART0_txd);
  mp_impl->UART0_rxd(UART0_rxd);
  mp_impl->UART1_txd(UART1_txd);
  mp_impl->UART1_rxd(UART1_rxd);

}

void ajitVCK_versal_cips_0_12::before_end_of_elaboration()
{
}

#endif // RIVIERA




#ifdef VCSSYSTEMC
ajitVCK_versal_cips_0_12::ajitVCK_versal_cips_0_12(const sc_core::sc_module_name& nm) : ajitVCK_versal_cips_0_12_sc(nm),  uart0_sir_outn("uart0_sir_outn"), uart0_out2n("uart0_out2n"), uart0_out1n("uart0_out1n"), fmio_uart0_sir_in("fmio_uart0_sir_in"), uart1_sir_outn("uart1_sir_outn"), uart1_out2n("uart1_out2n"), uart1_out1n("uart1_out1n"), fmio_uart1_sir_in("fmio_uart1_sir_in"), UART0_txd("UART0_txd"), UART0_rxd("UART0_rxd"), UART1_txd("UART1_txd"), UART1_rxd("UART1_rxd")
{
  // initialize pins
  mp_impl->uart0_sir_outn(uart0_sir_outn);
  mp_impl->uart0_out2n(uart0_out2n);
  mp_impl->uart0_out1n(uart0_out1n);
  mp_impl->fmio_uart0_sir_in(fmio_uart0_sir_in);
  mp_impl->uart1_sir_outn(uart1_sir_outn);
  mp_impl->uart1_out2n(uart1_out2n);
  mp_impl->uart1_out1n(uart1_out1n);
  mp_impl->fmio_uart1_sir_in(fmio_uart1_sir_in);
  mp_impl->UART0_txd(UART0_txd);
  mp_impl->UART0_rxd(UART0_rxd);
  mp_impl->UART1_txd(UART1_txd);
  mp_impl->UART1_rxd(UART1_rxd);

  // Instantiate Socket Stubs


}

void ajitVCK_versal_cips_0_12::before_end_of_elaboration()
{
}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
ajitVCK_versal_cips_0_12::ajitVCK_versal_cips_0_12(const sc_core::sc_module_name& nm) : ajitVCK_versal_cips_0_12_sc(nm),  uart0_sir_outn("uart0_sir_outn"), uart0_out2n("uart0_out2n"), uart0_out1n("uart0_out1n"), fmio_uart0_sir_in("fmio_uart0_sir_in"), uart1_sir_outn("uart1_sir_outn"), uart1_out2n("uart1_out2n"), uart1_out1n("uart1_out1n"), fmio_uart1_sir_in("fmio_uart1_sir_in"), UART0_txd("UART0_txd"), UART0_rxd("UART0_rxd"), UART1_txd("UART1_txd"), UART1_rxd("UART1_rxd")
{
  // initialize pins
  mp_impl->uart0_sir_outn(uart0_sir_outn);
  mp_impl->uart0_out2n(uart0_out2n);
  mp_impl->uart0_out1n(uart0_out1n);
  mp_impl->fmio_uart0_sir_in(fmio_uart0_sir_in);
  mp_impl->uart1_sir_outn(uart1_sir_outn);
  mp_impl->uart1_out2n(uart1_out2n);
  mp_impl->uart1_out1n(uart1_out1n);
  mp_impl->fmio_uart1_sir_in(fmio_uart1_sir_in);
  mp_impl->UART0_txd(UART0_txd);
  mp_impl->UART0_rxd(UART0_rxd);
  mp_impl->UART1_txd(UART1_txd);
  mp_impl->UART1_rxd(UART1_rxd);

  // Instantiate Socket Stubs


}

void ajitVCK_versal_cips_0_12::before_end_of_elaboration()
{
}

#endif // MTI_SYSTEMC




ajitVCK_versal_cips_0_12::~ajitVCK_versal_cips_0_12()
{
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(ajitVCK_versal_cips_0_12);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(ajitVCK_versal_cips_0_12);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(ajitVCK_versal_cips_0_12);
#endif

