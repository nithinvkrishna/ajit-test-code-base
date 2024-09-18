transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Ajit_vck190  -L xilinx_vip -L xil_defaultlib -L ahir_ieee_proposed -L ahir -L AhbApbLib -L simpleUartLib -L AjitCustom -L SpiMasterLib -L GenericCoreAddOnLib -L GenericGlueStuff -L GlueModules -L performance_counters_lib -L cpu_ccu -L cpu_debug_interface -L teu_idecode_idispatch -L teu_ifetch -L teu_dummy_fpunit -L iunit_exec -L iunit_writeback_in_mux -L iunit_registers -L teu_iunit -L teu_loadstore -L teu_iretire -L teu_stream_corrector -L cpu_teu_no_fp -L core_units -L munit_dcache -L munit_icache -L munit_dummy_mmu -L munit_mmu_mux -L munit_lib -L ajit_core_lib -L simpleI2CLib -L myUartLib -L ajit_mcore_lib -L peripherals_lite_lib -L ajit_processor_lib -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_3 -L lib_srl_fifo_v1_0_3 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_33 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_29 -L axi_vip_v1_1_15 -L proc_sys_reset_v5_0_14 -L xlconstant_v1_1_8 -L axi_apb_bridge_v3_0_19 -L versal_cips_ps_vip_v1_0_7 -L cpm4_v1_0_14 -L cpm5_v1_0_14 -L noc_nsu_v1_0_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Ajit_vck190 xil_defaultlib.glbl

do {Ajit_vck190.udo}

run 1000ns

endsim

quit -force
