puts " =========================================================="
puts "         Linking MSS core related source files             "
puts " =========================================================="

#Sourcing the Tcl files for creating individual components under the top level
source $cores_base/M3Cortex_MSS.tcl 
source $cores_base/CoreConfigP_C0.tcl 
source $cores_base/CoreResetP_C0.tcl 
source $cores_base/FABOSC_C0.tcl 
source $cores_base/FCCC_C0.tcl 
source $cores_base/M3Cortex.tcl 
