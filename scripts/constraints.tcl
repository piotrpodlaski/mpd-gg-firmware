puts " =========================================================="
puts "                  Linking constraint files                 "
puts " =========================================================="

source utils.tcl

#---------------------------------------
puts "SYNTHESIZE constraints"
#---------------------------------------



#---------------------------------------
puts "COMPILE constraints"
#---------------------------------------
$create_link_io_pdc $constraints_base/user.pdc
$create_link_io_pdc $constraints_base/global.io.pdc



set compile_files "
  user.pdc
  global.io.pdc
"

use_constraints [make_sourcelist $compile_files $constraints_base "-file"] "PLACEROUTE"


