set layout [readnet spice $::env(PROJECT_NAME).lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
readnet verilog ../src/project.v $source
lvs "$layout $::env(PROJECT_NAME)" "$source $::env(PROJECT_NAME)" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
