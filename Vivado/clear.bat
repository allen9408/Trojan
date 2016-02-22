::#########################################
::# Filename: clear.bat
::# Usage: clear type - *.v *.log *.tmp .Xil/
::# Developer: Allen Ni
::# Version: 1.0
::# Date: 2016.2.12
::#########################################
::clear
@echo off

if "%1" EQU "" goto noproj

if not exist .\"%1" goto error

::clear
cd .\"%1"
del *.v *.xdc
del *.log *.jou *.tmp
rd /s /q .Xil
cd ..

@echo Complete!
goto exit

:error
@echo Failed: Project not exist!
goto exit

:noproj
@echo Failed: Please enter the project name!
goto exit

:exit