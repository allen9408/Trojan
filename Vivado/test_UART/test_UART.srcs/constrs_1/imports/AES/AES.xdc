###############################################
# AES-T100 trojan UCF file
# File name: t100.xdc
# Author: Allen Ni
# Data: 16-2-6 22:14:48
# Version: 1.1
################################################

# input clk
set_property PACKAGE_PIN Y9 [get_ports clk];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports clk];

# output res
set_property PACKAGE_PIN T22 [get_ports res];  # "LD0"
set_property IOSTANDARD LVCMOS33 [get_ports res];

create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
