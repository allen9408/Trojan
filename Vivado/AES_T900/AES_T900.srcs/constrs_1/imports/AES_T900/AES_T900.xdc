###############################################
# AES-T100 trojan UCF file
# File name: t100.xdc
# Author: Allen Ni
# Data: 16-2-6 22:14:48
# Version: 1.1
################################################

# input clk
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# input rst
set_property PACKAGE_PIN R18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# input num
set_property PACKAGE_PIN F22 [get_ports num[0]]
set_property IOSTANDARD LVCMOS33 [get_ports num[0]]
set_property PACKAGE_PIN G22 [get_ports num[1]]
set_property IOSTANDARD LVCMOS33 [get_ports num[1]]
set_property PACKAGE_PIN H22 [get_ports num[2]]
set_property IOSTANDARD LVCMOS33 [get_ports num[2]]
set_property PACKAGE_PIN F21 [get_ports num[3]]
set_property IOSTANDARD LVCMOS33 [get_ports num[3]]
set_property PACKAGE_PIN H19 [get_ports num[4]]
set_property IOSTANDARD LVCMOS33 [get_ports num[4]]
set_property PACKAGE_PIN H18 [get_ports num[5]]
set_property IOSTANDARD LVCMOS33 [get_ports num[5]]
set_property PACKAGE_PIN H17 [get_ports num[6]]
set_property IOSTANDARD LVCMOS33 [get_ports num[6]]
set_property PACKAGE_PIN M15 [get_ports num[7]]
set_property IOSTANDARD LVCMOS33 [get_ports num[7]]

# output res
set_property PACKAGE_PIN T22 [get_ports res[0]]
set_property IOSTANDARD LVCMOS33 [get_ports res[0]]
set_property PACKAGE_PIN T21 [get_ports res[1]]
set_property IOSTANDARD LVCMOS33 [get_ports res[1]]
set_property PACKAGE_PIN U22 [get_ports res[2]]
set_property IOSTANDARD LVCMOS33 [get_ports res[2]]
set_property PACKAGE_PIN U21 [get_ports res[3]]
set_property IOSTANDARD LVCMOS33 [get_ports res[3]]
set_property PACKAGE_PIN V22 [get_ports res[4]]
set_property IOSTANDARD LVCMOS33 [get_ports res[4]]
set_property PACKAGE_PIN W22 [get_ports res[5]]
set_property IOSTANDARD LVCMOS33 [get_ports res[5]]
set_property PACKAGE_PIN U19 [get_ports res[6]]
set_property IOSTANDARD LVCMOS33 [get_ports res[6]]
set_property PACKAGE_PIN U14 [get_ports res[7]]
set_property IOSTANDARD LVCMOS33 [get_ports res[7]]

create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add [get_ports clk]
