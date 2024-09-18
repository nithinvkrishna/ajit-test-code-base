transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -  \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_structure.v" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_MBUFGCE_CE_DLY.v" \

vlog -work xil_defaultlib  -sv2k12 -l xpm -l xil_defaultlib \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_cmt_dpll_fd_cal.sv" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_Synchronizer3.sv" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clk_wiz_top.v" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/sim/clk_wizard_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

