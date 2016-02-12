#########################################
# Filename: vivado.tcl
# Usage: open project --> synthesis --> implementation --> generate bitstream
# Developer: Allen Ni
# Version: 1.0
# Date: 2016.2.12
#########################################

# open project
open_project ./$argv/$argv.xpr

# run synthesis
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1

# run implementation and generate bitstream
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

# report power
open_run impl_1
report_power -name {power_1} -hier all -xpe ./power/power$argv.xpe