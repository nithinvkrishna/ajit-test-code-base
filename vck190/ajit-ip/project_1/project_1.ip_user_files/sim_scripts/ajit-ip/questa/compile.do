vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_structure.v" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_MBUFGCE_CE_DLY.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_cmt_dpll_fd_cal.sv" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_Synchronizer3.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clk_wiz_top.v" \
"../../../../../../../tmp_edit_project.gen/sources_1/ip/clk_wizard_0/sim/clk_wizard_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

