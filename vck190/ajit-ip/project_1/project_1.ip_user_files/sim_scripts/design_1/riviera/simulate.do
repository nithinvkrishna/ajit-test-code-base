transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xilinx_vip -L xpm -L xil_defaultlib -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_29 -L axi_vip_v1_1_15 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L xlconstant_v1_1_8 -L lib_pkg_v1_0_3 -L axi_apb_bridge_v3_0_19 -L versal_cips_ps_vip_v1_0_7 -L cpm4_v1_0_14 -L cpm5_v1_0_14 -L axi_lite_ipif_v3_0_4 -L lib_srl_fifo_v1_0_3 -L axi_uartlite_v2_0_33 -L noc_nsu_v1_0_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run 1000ns

endsim

quit -force
