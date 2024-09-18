transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xil_defaultlib \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/home/iitg/VivadoFull/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_structure.v" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_MBUFGCE_CE_DLY.v" \

vlog -work xil_defaultlib  -incr -l xpm -l xil_defaultlib \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_cmt_dpll_fd_cal.sv" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clocking_Synchronizer3.sv" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/clk_wizard_0_clk_wiz_top.v" \
"../../../../clk_wiz_0.gen/sources_1/ip/clk_wizard_0/sim/clk_wizard_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

