::#########################################
::# Filename: clear.bat
::# Usage: open project --> synthesis --> implementation --> generate bitstream
::# Developer: Allen Ni
::# Version: 1.0
::# Date: 2016.2.12
::#########################################
::clear
@echo off

del *.log *.jou *.tmp
rd /s /q .Xil

@echo Complete!