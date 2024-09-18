vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_structure.v" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_MBUFGCE_CE_DLY.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_cmt_dpll_fd_cal.sv" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_Synchronizer3.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clk_wiz_top.v" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/sim/clk_wizard_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

