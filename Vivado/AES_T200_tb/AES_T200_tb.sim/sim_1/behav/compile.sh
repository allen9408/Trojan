#!/bin/sh
# Vivado(TM)
# compile.sh: Vivado-generated Script for launching XSim application
# Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
# 
if [ -z "$PATH" ]; then
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:D:/programmefiles/vivado/SDK/2014.2/bin;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/bin/nt64;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/lib/nt64
else
  PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%:D:/programmefiles/vivado/SDK/2014.2/bin;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/bin/nt64;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/lib/nt64:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=:
else
  LD_LIBRARY_PATH=::$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

#
# Setup env for Xilinx simulation libraries
#
XILINX_PLANAHEAD=D:/programmefiles/vivado/Vivado/2014.2
export XILINX_PLANAHEAD
ExecStep()
{
   "$@"
   RETVAL=$?
   if [ $RETVAL -ne 0 ]
   then
       exit $RETVAL
   fi
}

ExecStep xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_behav --prj D:/Code/Trojan/Vivado/AES_T200_tb/AES_T200_tb.sim/sim_1/behav/top_tb.prj   xil_defaultlib.top_tb   xil_defaultlib.glbl
