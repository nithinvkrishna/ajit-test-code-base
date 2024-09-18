#!/bin/bash
# AHIR
cp $AHIR_RELEASE/vhdl/Ghdl*.vhd* .
cp $AHIR_RELEASE/vhdl/aHiR*.vhd* .
cp $AHIR_RELEASE/vhdl/ahir.vhd* .
# AJIT processor
cp $AJIT_PROJECT_HOME/processor/Aa_v3/modules/lib/*.vhd* .
cp $AJIT_PROJECT_HOME/cores/building_blocks/outside_sys/lib/Generic*.vhd* .
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/*.vhd* .



