@echo off

if "%1" EQU "" goto noproj

if not exist .\"%1" goto error

:: Setup environment
CALL D:\programmefiles\vivado\Vivado\2014.2\settings64.bat

:: Start Vivado
vivado -mode batch -nojournal -nolog -source ./flash.tcl -tclargs %1
goto exit

:error
@echo Failed: Project not exist!
goto exit

:noproj
@echo Failed: Please enter the project name!
goto exit

:exit