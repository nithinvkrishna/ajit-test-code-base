# file: clk_wizard_0.xdc

# Input clock periods. These duplicate the values entered for the
# input clocks. You can use these to time your system. If required
# commented constraints can be used in the top level xdc 
#----------------------------------------------------------------
# Differential clock only needs one constraint
create_clock -period 5.00000 [get_ports clk_in1_p]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.1
#
#
set_property PHASESHIFT_MODE LATENCY [get_cells -hierarchical MMCME5*]
