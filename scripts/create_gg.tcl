# *******************************************************************************************
#                                          GG Integration
# *******************************************************************************************
# The script can be executed from Libero (Project->Execute Script). It will
# automatically generate a project and import the necessary source files (VHDL)
# 
# IMPORTANT: BEFORE EXECUTING THE SCRIPT IN LIBERO MAKE SURE TO CREATE THE
#            FILE project.tcl BY COPYING project_template.tcl AND ADJUSTING
#            THE PATHS/VARIABLES
#
# Executing the script from command-line (much faster):
#     libero SCRIPT:create_RCU2.tcl
#         
# *******************************************************************************************

if {![file exists project.tcl]} {
  error "\nERROR:\n  File project.tcl does not exist.\n  Create it by copying project.tcl.template and and adjust paths.\n"
  exit -1
}

source project.tcl
source utils.tcl

# Some sanity checks
if {[info exists root_module] == 0} {
  error "\nERROR:\n  Variable root_module not defined.\n  Update project.tcl to include root_module (cf. project.tcl.template)\n"
  exit -1
}

# Remove any existing project first.
eval file delete -force $project_location;

# ================================================================================================================
# DO NOT MODIFY
# ================================================================================================================
new_project -location $project_location -name $project_name -project_description {} \
  -hdl {VHDL} -family {SmartFusion2} \
  -package {484 FBGA} -speed {STD} \
  -die {M2S060} \
  -die_voltage {1.2} \
  -adv_options {DSW_VCCA_VOLTAGE_RAMP_RATE:100_MS} \
  -adv_options {IO_DEFT_STD:LVCMOS 2.5V} \
  -adv_options {PLL_SUPPLY:PLL_SUPPLY_25} \
  -adv_options {RESTRICTPROBEPINS:1} \
  -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
  -adv_options {TEMPR:COM} \
  -adv_options {VCCI_1.2_VOLTR:COM} \
  -adv_options {VCCI_1.5_VOLTR:COM} \
  -adv_options {VCCI_1.8_VOLTR:COM} \
  -adv_options {VCCI_2.5_VOLTR:COM} \
  -adv_options {VCCI_3.3_VOLTR:COM} \
  -adv_options {VOLTR:COM}

# ---------------- create links for gg_top level entity ----------------------------------------------------
$create_link_hdl $git_location/src/gg_top.vhd

build_design_hierarchy

source envm_cfg.tcl
source core_mss.tcl

build_design_hierarchy


puts "---------- Setting root module ---------------"
set_root $root_module

source constraints.tcl

