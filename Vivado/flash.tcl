# open project
open_project ./$argv/$argv.xpr

# open hardware
open_hw
connect_hw_server -host localhost -port 60001 -url localhost:3121


current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210248469175]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210248469175]
open_hw_target

# flash
set_property PROGRAM.FILE ./$argv/$argv.runs/impl_1/top.bit [lindex [get_hw_devices] 1]
set_property PROBES.FILE ./$argv/$argv.runs/impl_1/debug_nets.ltx [lindex [get_hw_devices] 1]
current_hw_device [lindex [get_hw_devices] 1]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]
set_property PROBES.FILE ./$argv/$argv.runs/impl_1/debug_nets.ltx [lindex [get_hw_devices] 1]
set_property PROGRAM.FILE ./$argv/$argv.runs/impl_1/top.bit [lindex [get_hw_devices] 1]

program_hw_devices [lindex [get_hw_devices] 1]
refresh_hw_device [lindex [get_hw_devices] 1]
