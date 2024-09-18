# read the libraries.
read_vhdl -library ahir_ieee_proposed ../../vhdl_libs/aHiR_ieee_proposed.vhdl
read_vhdl -library ahir ../../vhdl_libs/ahir.vhdl
read_vhdl -library myUartLib ../../vhdl_libs/myUartLib.vhdl
read_vhdl -library simpleUartLib ../../vhdl_libs/simpleUartLib.vhdl
read_vhdl -library simpleI2CLib ../../vhdl_libs/simpleI2CLib.vhdl
read_vhdl -library SpiMasterLib ../../vhdl_libs/SpiMasterLib.vhdl
read_vhdl -library AhbApbLib ../../vhdl_libs/AhbApbLib.vhdl
read_vhdl -library AjitCustom ../../vhdl_libs/AjitCustom.vhdl
read_vhdl -library GenericCoreAddOnLib ../../vhdl_libs/GenericCoreAddOnLib.vhdl
read_vhdl -library GenericGlueStuff ../../vhdl_libs/GenericGlueStuff.vhdl
read_vhdl -library GlueModules ../../vhdl_libs/GlueModules.vhdl
# read the processor vhdl
read_vhdl -library performance_counters_lib ../../ajit_vhdl/afb_performance_counters_controller_1x1.vhdl
read_vhdl -library performance_counters_lib ../../ajit_vhdl/afb_performance_counters_base.vhdl
read_vhdl -library performance_counters_lib ../../ajit_vhdl/afb_performance_counters_1x1.vhdl
read_vhdl -library peripherals_lite_lib ../../ajit_vhdl/peripherals.vhdl
read_vhdl -library iunit_exec ../../ajit_vhdl/iu_exec.vhdl
read_vhdl -library iunit_writeback_in_mux ../../ajit_vhdl/iu_writeback_in_mux.vhdl
read_vhdl -library iunit_registers ../../ajit_vhdl/iu_registers.vhdl
read_vhdl -library teu_iunit ../../ajit_vhdl/iunit.vhdl
read_vhdl -library teu_idecode_idispatch ../../ajit_vhdl/idecode_idispatch.vhdl
read_vhdl -library teu_loadstore ../../ajit_vhdl/loadstore.vhdl
read_vhdl -library teu_iretire ../../ajit_vhdl/iretire.vhdl
read_vhdl -library teu_stream_corrector ../../ajit_vhdl/stream_corrector.vhdl
read_vhdl -library teu_dummy_fpunit ../../ajit_vhdl/dummy_fpunit.vhdl
read_vhdl -library teu_ifetch ../../ajit_vhdl/ifetch.vhdl
read_vhdl -library cpu_teu_no_fp ../../ajit_vhdl/teu_no_fp.vhdl
read_vhdl -library cpu_debug_interface ../../ajit_vhdl/debug_interface.vhdl
read_vhdl -library cpu_ccu ../../ajit_vhdl/ccu.vhdl
read_vhdl -library core_units ../../ajit_vhdl/cpu_no_fp.vhdl
read_vhdl -library munit_mmu_mux ../../ajit_vhdl/mmu_mux.vhdl
read_vhdl -library munit_dummy_mmu ../../ajit_vhdl/dummy_mmu.vhdl
read_vhdl -library munit_icache ../../ajit_vhdl/icache.vhdl
read_vhdl -library munit_dcache ../../ajit_vhdl/dcache.vhdl
read_vhdl -library munit_lib ../../ajit_vhdl/munit_no_mmu.vhdl
read_vhdl -library ajit_core_lib ../../ajit_vhdl/core_1x32_no_fp_no_mmu.vhdl
read_vhdl -library ajit_mcore_lib ../../ajit_vhdl/mcore_1x1x32_lite.vhdl
read_vhdl -library ajit_processor_lib ../../ajit_vhdl/processor_1x1x32_lite.vhdl
# Read the FPGA top level file
read_vhdl ../toplevel/fpga_top.vhdl

############# CONSTRAINT FILE ###########
read_xdc ../constraints/constraints.xdc

############# IP CORE FILES #############
set_property part xc7k325tffg900-2 [current_project]
set_property board_part xilinx.com:kc705:part0:1.1 [current_project]

################### standlone proto core ################
read_ip   ../ip/ClkWiz80MHz/ClockingWizFor80MHz/ClockingWizFor80MHz.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci

############### SYNTHESIZE ##############
synth_design -fsm_extraction off -top fpga_top -part xc7k325tffg900-2
write_checkpoint -force PostSynthCheckpoint.dcp
report_timing_summary -file timing.postsynth.rpt -nworst 4

report_utilization -file utilization_post_synth.rpt
report_utilization -hierarchical -file utilization_post_synth.hierarchical.rpt
opt_design  
place_design  -directive Explore
place_design -post_place_opt 
phys_opt_design  
phys_opt_design 
route_design  -directive Explore
phys_opt_design 
phys_opt_design  
write_checkpoint -force PostPlaceRouteCheckpoint.dcp
report_timing_summary -file timing.rpt -nworst 10 -verbose
report_utilization -file utilization_post_place_and_route.rpt
report_utilization -hierarchical -file utilization_post_place_and_route.hierarchical.rpt
write_bitstream -force processor_1x1x32_lite.kc705.bit
