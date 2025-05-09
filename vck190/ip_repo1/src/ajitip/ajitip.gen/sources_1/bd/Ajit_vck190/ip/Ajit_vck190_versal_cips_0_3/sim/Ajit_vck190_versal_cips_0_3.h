#ifndef IP_AJIT_VCK190_VERSAL_CIPS_0_3_H_
#define IP_AJIT_VCK190_VERSAL_CIPS_0_3_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "Ajit_vck190_versal_cips_0_3_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport Ajit_vck190_versal_cips_0_3 : public Ajit_vck190_versal_cips_0_3_sc
{
public:

  Ajit_vck190_versal_cips_0_3(const sc_core::sc_module_name& nm);
  virtual ~Ajit_vck190_versal_cips_0_3();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > fpd_axi_noc_axi0_clk;
  sc_core::sc_out< bool > pmc_axi_noc_axi0_clk;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_wstrb;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_arburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_arlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_aruser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_awburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_awlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_awuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awvalid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_bready;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wlast;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_wuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_arready;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_awready;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_bresp;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_buser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_bvalid;
  sc_core::sc_in< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_rid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rlast;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_rresp;
  sc_core::sc_in< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_ruser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_wready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,64,16,18,1,1,18,1>* mp_FPD_AXI_NOC_0_transactor;
  sc_signal< bool > m_FPD_AXI_NOC_0_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,16,18,17>* mp_PMC_NOC_AXI_0_transactor;
  sc_signal< bool > m_PMC_NOC_AXI_0_transactor_rst_signal;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport Ajit_vck190_versal_cips_0_3 : public Ajit_vck190_versal_cips_0_3_sc
{
public:

  Ajit_vck190_versal_cips_0_3(const sc_core::sc_module_name& nm);
  virtual ~Ajit_vck190_versal_cips_0_3();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > fpd_axi_noc_axi0_clk;
  sc_core::sc_out< bool > pmc_axi_noc_axi0_clk;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_wstrb;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_arburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_arlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_aruser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_awburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_awlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_awuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awvalid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_bready;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wlast;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_wuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_arready;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_awready;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_bresp;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_buser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_bvalid;
  sc_core::sc_in< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_rid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rlast;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_rresp;
  sc_core::sc_in< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_ruser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_wready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,64,16,18,1,1,18,1>* mp_FPD_AXI_NOC_0_transactor;
  sc_signal< bool > m_FPD_AXI_NOC_0_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,16,18,17>* mp_PMC_NOC_AXI_0_transactor;
  sc_signal< bool > m_PMC_NOC_AXI_0_transactor_rst_signal;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport Ajit_vck190_versal_cips_0_3 : public Ajit_vck190_versal_cips_0_3_sc
{
public:

  Ajit_vck190_versal_cips_0_3(const sc_core::sc_module_name& nm);
  virtual ~Ajit_vck190_versal_cips_0_3();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > fpd_axi_noc_axi0_clk;
  sc_core::sc_out< bool > pmc_axi_noc_axi0_clk;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_wstrb;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_arburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_arlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_aruser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_awburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_awlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_awuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awvalid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_bready;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wlast;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_wuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_arready;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_awready;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_bresp;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_buser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_bvalid;
  sc_core::sc_in< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_rid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rlast;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_rresp;
  sc_core::sc_in< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_ruser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_wready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,64,16,18,1,1,18,1>* mp_FPD_AXI_NOC_0_transactor;
  sc_signal< bool > m_FPD_AXI_NOC_0_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,16,18,17>* mp_PMC_NOC_AXI_0_transactor;
  sc_signal< bool > m_PMC_NOC_AXI_0_transactor_rst_signal;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport Ajit_vck190_versal_cips_0_3 : public Ajit_vck190_versal_cips_0_3_sc
{
public:

  Ajit_vck190_versal_cips_0_3(const sc_core::sc_module_name& nm);
  virtual ~Ajit_vck190_versal_cips_0_3();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > fpd_axi_noc_axi0_clk;
  sc_core::sc_out< bool > pmc_axi_noc_axi0_clk;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_wstrb;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_arburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_arlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_aruser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_awburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_awlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_awuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awvalid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_bready;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wlast;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_wuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_arready;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_awready;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_bresp;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_buser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_bvalid;
  sc_core::sc_in< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_rid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rlast;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_rresp;
  sc_core::sc_in< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_ruser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_wready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,64,16,18,1,1,18,1>* mp_FPD_AXI_NOC_0_transactor;
  sc_signal< bool > m_FPD_AXI_NOC_0_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,16,18,17>* mp_PMC_NOC_AXI_0_transactor;
  sc_signal< bool > m_PMC_NOC_AXI_0_transactor_rst_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * FPD_AXI_NOC_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_AXI_NOC_0_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * PMC_NOC_AXI_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * PMC_NOC_AXI_0_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport Ajit_vck190_versal_cips_0_3 : public Ajit_vck190_versal_cips_0_3_sc
{
public:

  Ajit_vck190_versal_cips_0_3(const sc_core::sc_module_name& nm);
  virtual ~Ajit_vck190_versal_cips_0_3();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > fpd_axi_noc_axi0_clk;
  sc_core::sc_out< bool > pmc_axi_noc_axi0_clk;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_wstrb;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_AXI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_AXI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_AXI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_AXI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_AXI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_AXI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_AXI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_AXI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_AXI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_AXI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_arburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_arlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_arregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_aruser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<64> > PMC_NOC_AXI_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_awburst;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<8> > PMC_NOC_AXI_0_awlen;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > PMC_NOC_AXI_0_awregion;
  sc_core::sc_out< sc_dt::sc_bv<3> > PMC_NOC_AXI_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<18> > PMC_NOC_AXI_0_awuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_awvalid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_bready;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wid;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wlast;
  sc_core::sc_out< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_wuser;
  sc_core::sc_out< bool > PMC_NOC_AXI_0_wvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_arready;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_awready;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_bresp;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_buser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_bvalid;
  sc_core::sc_in< sc_dt::sc_bv<128> > PMC_NOC_AXI_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > PMC_NOC_AXI_0_rid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rlast;
  sc_core::sc_in< sc_dt::sc_bv<2> > PMC_NOC_AXI_0_rresp;
  sc_core::sc_in< sc_dt::sc_bv<17> > PMC_NOC_AXI_0_ruser;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_rvalid;
  sc_core::sc_in< bool > PMC_NOC_AXI_0_wready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,64,16,18,1,1,18,1>* mp_FPD_AXI_NOC_0_transactor;
  sc_signal< bool > m_FPD_AXI_NOC_0_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,16,18,17>* mp_PMC_NOC_AXI_0_transactor;
  sc_signal< bool > m_PMC_NOC_AXI_0_transactor_rst_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * FPD_AXI_NOC_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_AXI_NOC_0_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * PMC_NOC_AXI_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * PMC_NOC_AXI_0_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_AJIT_VCK190_VERSAL_CIPS_0_3_H_
