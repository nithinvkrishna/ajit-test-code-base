#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/iitg/VivadoFull/Vitis/2023.2/bin:/home/iitg/VivadoFull/Vivado/2023.2/ids_lite/ISE/bin/lin64:/home/iitg/VivadoFull/Vivado/2023.2/bin
else
  PATH=/home/iitg/VivadoFull/Vitis/2023.2/bin:/home/iitg/VivadoFull/Vivado/2023.2/ids_lite/ISE/bin/lin64:/home/iitg/VivadoFull/Vivado/2023.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log ajitVCK_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source ajitVCK_wrapper.tcl -notrace


