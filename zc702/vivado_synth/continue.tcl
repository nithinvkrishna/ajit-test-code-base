open_checkpoint  PostSynthCheckpoint.dcp
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
write_bitstream -force processor_1x1x32_lite.with_accelerator.kc705.bit
