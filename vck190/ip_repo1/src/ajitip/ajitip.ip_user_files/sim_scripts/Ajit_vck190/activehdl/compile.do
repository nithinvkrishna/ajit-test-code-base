transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/ahir_ieee_proposed
vlib activehdl/ahir
vlib activehdl/AhbApbLib
vlib activehdl/simpleUartLib
vlib activehdl/AjitCustom
vlib activehdl/SpiMasterLib
vlib activehdl/GenericCoreAddOnLib
vlib activehdl/GenericGlueStuff
vlib activehdl/GlueModules
vlib activehdl/performance_counters_lib
vlib activehdl/cpu_ccu
vlib activehdl/cpu_debug_interface
vlib activehdl/teu_idecode_idispatch
vlib activehdl/teu_ifetch
vlib activehdl/teu_dummy_fpunit
vlib activehdl/iunit_exec
vlib activehdl/iunit_writeback_in_mux
vlib activehdl/iunit_registers
vlib activehdl/teu_iunit
vlib activehdl/teu_loadstore
vlib activehdl/teu_iretire
vlib activehdl/teu_stream_corrector
vlib activehdl/cpu_teu_no_fp
vlib activehdl/core_units
vlib activehdl/munit_dcache
vlib activehdl/munit_icache
vlib activehdl/munit_dummy_mmu
vlib activehdl/munit_mmu_mux
vlib activehdl/munit_lib
vlib activehdl/ajit_core_lib
vlib activehdl/simpleI2CLib
vlib activehdl/myUartLib
vlib activehdl/ajit_mcore_lib
vlib activehdl/peripherals_lite_lib
vlib activehdl/ajit_processor_lib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_pkg_v1_0_3
vlib activehdl/lib_srl_fifo_v1_0_3
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_uartlite_v2_0_33
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_29
vlib activehdl/axi_vip_v1_1_15
vlib activehdl/proc_sys_reset_v5_0_14
vlib activehdl/xlconstant_v1_1_8
vlib activehdl/axi_apb_bridge_v3_0_19
vlib activehdl/versal_cips_ps_vip_v1_0_7
vlib activehdl/cpm4_v1_0_14
vlib activehdl/cpm5_v1_0_14
vlib activehdl/noc_nsu_v1_0_0

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap ahir_ieee_proposed activehdl/ahir_ieee_proposed
vmap ahir activehdl/ahir
vmap AhbApbLib activehdl/AhbApbLib
vmap simpleUartLib activehdl/simpleUartLib
vmap AjitCustom activehdl/AjitCustom
vmap SpiMasterLib activehdl/SpiMasterLib
vmap GenericCoreAddOnLib activehdl/GenericCoreAddOnLib
vmap GenericGlueStuff activehdl/GenericGlueStuff
vmap GlueModules activehdl/GlueModules
vmap performance_counters_lib activehdl/performance_counters_lib
vmap cpu_ccu activehdl/cpu_ccu
vmap cpu_debug_interface activehdl/cpu_debug_interface
vmap teu_idecode_idispatch activehdl/teu_idecode_idispatch
vmap teu_ifetch activehdl/teu_ifetch
vmap teu_dummy_fpunit activehdl/teu_dummy_fpunit
vmap iunit_exec activehdl/iunit_exec
vmap iunit_writeback_in_mux activehdl/iunit_writeback_in_mux
vmap iunit_registers activehdl/iunit_registers
vmap teu_iunit activehdl/teu_iunit
vmap teu_loadstore activehdl/teu_loadstore
vmap teu_iretire activehdl/teu_iretire
vmap teu_stream_corrector activehdl/teu_stream_corrector
vmap cpu_teu_no_fp activehdl/cpu_teu_no_fp
vmap core_units activehdl/core_units
vmap munit_dcache activehdl/munit_dcache
vmap munit_icache activehdl/munit_icache
vmap munit_dummy_mmu activehdl/munit_dummy_mmu
vmap munit_mmu_mux activehdl/munit_mmu_mux
vmap munit_lib activehdl/munit_lib
vmap ajit_core_lib activehdl/ajit_core_lib
vmap simpleI2CLib activehdl/simpleI2CLib
vmap myUartLib activehdl/myUartLib
vmap ajit_mcore_lib activehdl/ajit_mcore_lib
vmap peripherals_lite_lib activehdl/peripherals_lite_lib
vmap ajit_processor_lib activehdl/ajit_processor_lib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_3 activehdl/lib_pkg_v1_0_3
vmap lib_srl_fifo_v1_0_3 activehdl/lib_srl_fifo_v1_0_3
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_33 activehdl/axi_uartlite_v2_0_33
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 activehdl/axi_register_slice_v2_1_29
vmap axi_vip_v1_1_15 activehdl/axi_vip_v1_1_15
vmap proc_sys_reset_v5_0_14 activehdl/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 activehdl/xlconstant_v1_1_8
vmap axi_apb_bridge_v3_0_19 activehdl/axi_apb_bridge_v3_0_19
vmap versal_cips_ps_vip_v1_0_7 activehdl/versal_cips_ps_vip_v1_0_7
vmap cpm4_v1_0_14 activehdl/cpm4_v1_0_14
vmap cpm5_v1_0_14 activehdl/cpm5_v1_0_14
vmap noc_nsu_v1_0_0 activehdl/noc_nsu_v1_0_0

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/acceleratorNew1.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_sp_add.sv" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_sp_comp.sv" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_sp_div.sv" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_sp_mul.sv" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_sp_sub.sv" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/work/fpu_top1.sv" \

vcom -work ahir_ieee_proposed -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/ahir_ieee_proposed/aHiR_ieee_proposed.vhdl" \

vcom -work ahir -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/ahir/ahir.vhdl" \

vcom -work AhbApbLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/AhbApbLib/AhbApbLib.vhdl" \

vcom -work simpleUartLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/simpleUartLib/simpleUartLib.vhdl" \

vcom -work AjitCustom -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/AjitCustom/AjitCustom.vhdl" \

vcom -work SpiMasterLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/SpiMasterLib/SpiMasterLib.vhdl" \

vcom -work GenericCoreAddOnLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/GenericCoreAddOnLib/GenericCoreAddOnLib.vhdl" \

vcom -work GenericGlueStuff -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/GenericGlueStuff/GenericGlueStuff.vhdl" \

vcom -work GlueModules -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/GlueModules/GlueModules.vhdl" \

vcom -work performance_counters_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/performance_counters_lib/afb_performance_counters_base.vhdl" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/performance_counters_lib/afb_performance_counters_controller_1x1.vhdl" \
"../../../bd/Ajit_vck190/ipshared/bb17/src/performance_counters_lib/afb_performance_counters_1x1.vhdl" \

vcom -work cpu_ccu -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/cpu_ccu/ccu.vhdl" \

vcom -work cpu_debug_interface -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/cpu_debug_interface/debug_interface.vhdl" \

vcom -work teu_idecode_idispatch -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_idecode_idispatch/idecode_idispatch.vhdl" \

vcom -work teu_ifetch -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_ifetch/ifetch.vhdl" \

vcom -work teu_dummy_fpunit -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_dummy_fpunit/dummy_fpunit.vhdl" \

vcom -work iunit_exec -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/iunit_exec/iu_exec.vhdl" \

vcom -work iunit_writeback_in_mux -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/iunit_writeback_in_mux/iu_writeback_in_mux.vhdl" \

vcom -work iunit_registers -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/iunit_registers/iu_registers.vhdl" \

vcom -work teu_iunit -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_iunit/iunit.vhdl" \

vcom -work teu_loadstore -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_loadstore/loadstore.vhdl" \

vcom -work teu_iretire -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_iretire/iretire.vhdl" \

vcom -work teu_stream_corrector -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/teu_stream_corrector/stream_corrector.vhdl" \

vcom -work cpu_teu_no_fp -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/cpu_teu_no_fp/teu_no_fp.vhdl" \

vcom -work core_units -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/core_units/cpu_no_fp.vhdl" \

vcom -work munit_dcache -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/munit_dcache/dcache.vhdl" \

vcom -work munit_icache -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/munit_icache/icache.vhdl" \

vcom -work munit_dummy_mmu -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/munit_dummy_mmu/dummy_mmu.vhdl" \

vcom -work munit_mmu_mux -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/munit_mmu_mux/mmu_mux.vhdl" \

vcom -work munit_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/munit_lib/munit_no_mmu.vhdl" \

vcom -work ajit_core_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/ajit_core_lib/core_1x32_no_fp_no_mmu.vhdl" \

vcom -work simpleI2CLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/simpleI2CLib/simpleI2CLib.vhdl" \

vcom -work myUartLib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/myUartLib/myUartLib.vhdl" \

vcom -work ajit_mcore_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/ajit_mcore_lib/mcore_1x1x32_lite.vhdl" \

vcom -work peripherals_lite_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/peripherals_lite_lib/peripherals.vhdl" \

vcom -work ajit_processor_lib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/ajit_processor_lib/processor_1x1x32_lite.vhdl" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/ipshared/bb17/src/fpga_top_with_accelerator.vhdl" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_fpga_top_0_1/sim/Ajit_vck190_fpga_top_0_1.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_3 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_33 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/df48/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_2/sim/Ajit_vck190_axi_uartlite_0_2.vhd" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_2/sim/Ajit_vck190_axi_uartlite_1_2.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vcom -work proc_sys_reset_v5_0_14 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vlog -work xlconstant_v1_1_8  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vcom -work axi_apb_bridge_v3_0_19 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/41ea/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work versal_cips_ps_vip_v1_0_7 -  \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl/versal_cips_ps_vip_v1_0_rfs.vhd" \

vlog -work versal_cips_ps_vip_v1_0_7  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl/versal_cips_ps_vip_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_versal_cips_0_3/bd_0/ip/ip_0/ip_0/sim/versal_cips_ps_vip_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_versal_cips_0_3/bd_0/ip/ip_0/hdl/pspmc_v1_4_0_sim.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_versal_cips_0_3/bd_0/ip/ip_0/sim/bd_98bc_pspmc_0_0.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_versal_cips_0_3/bd_0/sim/bd_98bc.v" \

vlog -work cpm4_v1_0_14  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/cpm4_v1_0_vl_rfs.sv" \

vlog -work cpm5_v1_0_14  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/cpm5_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_versal_cips_0_3/sim/Ajit_vck190_versal_cips_0_3.sv" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_rst_versal_cips_0_79M_3/sim/Ajit_vck190_rst_versal_cips_0_79M_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/sim/bd_33f5.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/noc_nmu_v1_0_vl_rfs.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm/bd_33f5_S00_AXI_nmu_0_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm/NOC_NMU512_SPP.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm/bd_33f5_S00_AXI_nmu_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_1/sim/bd_33f5_const_0_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_2/hdl/bfm/bd_33f5_M00_AXI_nsu_0_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_2/hdl/bfm/NOC_NSU512_SPP.v" \

vlog -work noc_nsu_v1_0_0  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/noc_nsu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_2/hdl/bfm/bd_33f5_M00_AXI_nsu_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/sim/Ajit_vck190_mynoc_0.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/sim/bd_9f7e.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_5/sim/bd_9f7e_one_0.v" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_11/sim/bd_9f7e_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_13/sim/bd_9f7e_s00mmu_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_14/sim/bd_9f7e_s00tr_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_15/sim/bd_9f7e_s00sic_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_16/sim/bd_9f7e_s00a2s_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_17/sim/bd_9f7e_sarn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_18/sim/bd_9f7e_srn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_19/sim/bd_9f7e_sawn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_20/sim/bd_9f7e_swn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_21/sim/bd_9f7e_sbn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_22/sim/bd_9f7e_m00s2a_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/bd_0/ip/ip_23/sim/bd_9f7e_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_0_smc_0/sim/Ajit_vck190_axi_uartlite_0_smc_0.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/sim/bd_5f6e.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_5/sim/bd_5f6e_one_0.v" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_11/sim/bd_5f6e_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_13/sim/bd_5f6e_s00mmu_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_14/sim/bd_5f6e_s00tr_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_15/sim/bd_5f6e_s00sic_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_16/sim/bd_5f6e_s00a2s_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_17/sim/bd_5f6e_sarn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_18/sim/bd_5f6e_srn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_19/sim/bd_5f6e_sawn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_20/sim/bd_5f6e_swn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_21/sim/bd_5f6e_sbn_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_22/sim/bd_5f6e_m00s2a_0.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/bd_0/ip/ip_23/sim/bd_5f6e_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_axi_uartlite_1_smc_0/sim/Ajit_vck190_axi_uartlite_1_smc_0.v" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/sim/bd_f334.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm/bd_f334_S00_AXI_nmu_0_top.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm/bd_f334_S00_AXI_nmu_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_1/sim/bd_f334_const_0_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_2/hdl/bfm/bd_f334_M00_AXI_nsu_0_top.sv" \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_2/hdl/bfm/bd_f334_M00_AXI_nsu_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/35de/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/ec67/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/57d2/hdl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/2b00/ttcl" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/624a/hdl/verilog" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/869c/hdl/verilog" "+incdir+../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ipshared/342d/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_0/bd_0/ip/ip_0/hdl/bfm" "+incdir+../../../../ajitip.gen/sources_1/bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/bd_0/ip/ip_0/hdl/bfm" "+incdir+/home/iitg/VivadoFull/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l ahir_ieee_proposed -l ahir -l AhbApbLib -l simpleUartLib -l AjitCustom -l SpiMasterLib -l GenericCoreAddOnLib -l GenericGlueStuff -l GlueModules -l performance_counters_lib -l cpu_ccu -l cpu_debug_interface -l teu_idecode_idispatch -l teu_ifetch -l teu_dummy_fpunit -l iunit_exec -l iunit_writeback_in_mux -l iunit_registers -l teu_iunit -l teu_loadstore -l teu_iretire -l teu_stream_corrector -l cpu_teu_no_fp -l core_units -l munit_dcache -l munit_icache -l munit_dummy_mmu -l munit_mmu_mux -l munit_lib -l ajit_core_lib -l simpleI2CLib -l myUartLib -l ajit_mcore_lib -l peripherals_lite_lib -l ajit_processor_lib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_33 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_29 -l axi_vip_v1_1_15 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_apb_bridge_v3_0_19 -l versal_cips_ps_vip_v1_0_7 -l cpm4_v1_0_14 -l cpm5_v1_0_14 -l noc_nsu_v1_0_0 \
"../../../bd/Ajit_vck190/ip/Ajit_vck190_mynoc_1/sim/Ajit_vck190_mynoc_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/Ajit_vck190/sim/Ajit_vck190.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

