read_vhdl -afb_performance_counters_controller_1x1.vhdl
read_vhdl -afb_performance_counters_base.vhdl
read_vhdl -afb_performance_counters_1x1.vhdl
read_vhdl -peripherals.vhdl
read_vhdl -iu_exec.vhdl
read_vhdl -iu_writeback_in_mux.vhdl
read_vhdl -iu_registers.vhdl
read_vhdl -iunit.vhdl
read_vhdl -idecode_idispatch.vhdl
read_vhdl -loadstore.vhdl
read_vhdl -iretire.vhdl
read_vhdl -stream_corrector.vhdl
read_vhdl -dummy_fpunit.vhdl
read_vhdl -ifetch.vhdl
read_vhdl -teu_no_fp.vhdl
read_vhdl -debug_interface.vhdl
read_vhdl -ccu.vhdl
read_vhdl -cpu_no_fp.vhdl
read_vhdl -mmu_mux.vhdl
read_vhdl -dummy_mmu.vhdl
read_vhdl -icache.vhdl
read_vhdl -dcache.vhdl
read_vhdl -munit_no_mmu.vhdl
read_vhdl -core_1x32_no_fp_no_mmu.vhdl
read_vhdl -mcore_1x1x32_lite.vhdl
read_vhdl -processor_1x1x32_lite.vhdl
# Read the accelerator VHDL
read_vhdl -accelerator_global_package.vhdl  
read_vhdl -accelerator.vhdl
# Read the FPGA top level file
read_vhdl fpga_top_with_accelerator.vhdl

############# CONSTRAINT FILE ###########
read_xdc ../constraints/constraints.xdc

############# IP CORE FILES #############
#set_property part xcvc1902-vsva2197-2MP-e-S [current_project]
#set_property board_part xilinx.com:vck190:part0:3.2 [current_project]
set_property source_mgmt_mode DisplayOnly [current_project]
################### processor ################

#read_ip /home/iitg/ajit_sims/clock_wiz_zc706/clock_wiz_zc706.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci 

read_ip /home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/clock_ip/new10/clk_wiz_0/clk_wiz_0.srcs/sources_1/ip/clk_wizard_0/clk_wizard_0.xci
