# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-8663-iitg-Precision-3660/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7k325tffg900-2
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib
    rt::set_parameter defaultVhdlWorkLib xil_defaultlib

    rt::set_parameter loadVhdl2008Libs false
    rt::set_parameter loadVhdl2019Libs false
    rt::set_parameter deferParseUntilElab true
    rt::set_parameter sortHdlCommandLine true
    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/zc706/ip/ClkWiz80MHz/ClockingWizFor80MHz/ClockingWizFor80MHz.srcs/sources_1/ip/clk_wiz_0 /home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      rt::read_vhdl -lib xil_defaultlib {
      ./.Xil/Vivado-8663-iitg-Precision-3660/realtime/clk_wiz_0_stub.vhdl
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/zc706/toplevel/fpga_top_with_accelerator.vhdl
    }
      rt::read_vhdl -lib xpm /home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -lib ahir_ieee_proposed /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/aHiR_ieee_proposed.vhdl
      rt::read_vhdl -lib ahir /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/ahir.vhdl
      rt::read_vhdl -lib AhbApbLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/AhbApbLib.vhdl
      rt::read_vhdl -lib simpleUartLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/simpleUartLib.vhdl
      rt::read_vhdl -lib AjitCustom /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/AjitCustom.vhdl
      rt::read_vhdl -lib SpiMasterLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/SpiMasterLib.vhdl
      rt::read_vhdl -lib GenericCoreAddOnLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/GenericCoreAddOnLib.vhdl
      rt::read_vhdl -lib GenericGlueStuff /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/GenericGlueStuff.vhdl
      rt::read_vhdl -lib GlueModules /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/GlueModules.vhdl
      rt::read_vhdl -lib work {
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/accelerator/vhdl/accelerator_global_package.vhdl
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/accelerator/vhdl/accelerator.vhdl
    }
      rt::read_vhdl -lib performance_counters_lib {
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/afb_performance_counters_base.vhdl
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/afb_performance_counters_controller_1x1.vhdl
      /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/afb_performance_counters_1x1.vhdl
    }
      rt::read_vhdl -lib cpu_ccu /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/ccu.vhdl
      rt::read_vhdl -lib cpu_debug_interface /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/debug_interface.vhdl
      rt::read_vhdl -lib teu_idecode_idispatch /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/idecode_idispatch.vhdl
      rt::read_vhdl -lib teu_ifetch /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/ifetch.vhdl
      rt::read_vhdl -lib teu_dummy_fpunit /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/dummy_fpunit.vhdl
      rt::read_vhdl -lib iunit_exec /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/iu_exec.vhdl
      rt::read_vhdl -lib iunit_writeback_in_mux /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/iu_writeback_in_mux.vhdl
      rt::read_vhdl -lib iunit_registers /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/iu_registers.vhdl
      rt::read_vhdl -lib teu_iunit /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/iunit.vhdl
      rt::read_vhdl -lib teu_loadstore /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/loadstore.vhdl
      rt::read_vhdl -lib teu_iretire /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/iretire.vhdl
      rt::read_vhdl -lib teu_stream_corrector /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/stream_corrector.vhdl
      rt::read_vhdl -lib cpu_teu_no_fp /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/teu_no_fp.vhdl
      rt::read_vhdl -lib core_units /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/cpu_no_fp.vhdl
      rt::read_vhdl -lib munit_dcache /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/dcache.vhdl
      rt::read_vhdl -lib munit_icache /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/icache.vhdl
      rt::read_vhdl -lib munit_dummy_mmu /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/dummy_mmu.vhdl
      rt::read_vhdl -lib munit_mmu_mux /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/mmu_mux.vhdl
      rt::read_vhdl -lib munit_lib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/munit_no_mmu.vhdl
      rt::read_vhdl -lib ajit_core_lib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/core_1x32_no_fp_no_mmu.vhdl
      rt::read_vhdl -lib simpleI2CLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/simpleI2CLib.vhdl
      rt::read_vhdl -lib myUartLib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vhdl_libs/myUartLib.vhdl
      rt::read_vhdl -lib ajit_mcore_lib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/mcore_1x1x32_lite.vhdl
      rt::read_vhdl -lib peripherals_lite_lib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/peripherals.vhdl
      rt::read_vhdl -lib ajit_processor_lib /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/ajit_vhdl/processor_1x1x32_lite.vhdl
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-8663-iitg-Precision-3660/realtime/fpga_top_synth.xdc
    rt::sdcChecksum
    set rt::top fpga_top
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter inferFsm false
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {/home/iitg/ajit_sims/ajit_run2/ajit_sim_zynq/ajit_sim_zynq.cache/wt}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-8663-iitg-Precision-3660/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
