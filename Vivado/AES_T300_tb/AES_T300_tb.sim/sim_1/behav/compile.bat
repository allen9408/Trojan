@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;D:/programmefiles/vivado/SDK/2014.2/bin;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/bin/nt64;D:/programmefiles/vivado/Vivado/2014.2/ids_lite/ISE/lib/nt64;D:/programmefiles/vivado/Vivado/2014.2/bin;%PATH%
set XILINX_PLANAHEAD=D:/programmefiles/vivado/Vivado/2014.2

xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_behav --prj D:/Code/Trojan/Vivado/AES_T300_tb/AES_T300_tb.sim/sim_1/behav/top_tb.prj   xil_defaultlib.top_tb   xil_defaultlib.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
