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
read_vhdl -library cpu_ccu ../../ajit_vhdl/ccu.vhdl

############# IP CORE FILES #############
set_property part xc7z045ffg900-2 [current_project]

############### SYNTHESIZE ##############
synth_design -fsm_extraction off -top ccu -part xc7z045ffg900-2
