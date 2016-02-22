#########################################
# Filename: createprj.tcl
# Usage: create project
# Developer: Allen Ni
# Version: 1.0
# Date: 2016.2.22
#########################################

# create project
create_project -force $argv ./$argv -part xc7z020clg484-1
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_property simulator_language Verilog [current_project]

# import source files
add_files -norecurse -scan_for_includes ./$argv
import_files -force -norecurse

# import constraints files
import_files -fileset constrs_1 -force -norecurse ./$argv/$argv.xdc

# compile
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1