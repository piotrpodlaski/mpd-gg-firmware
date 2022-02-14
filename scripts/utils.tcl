#---
# Source the project settings here to allow for some command-line
#   testing of the subscripts with tclsh (using TEST=1 tclsh <script>)
source project.tcl

#---
# Some stuff for wrapping/testing:
#   If environment variable TEST is defined, replace 'create_links' with 'puts'
#   Includes proper options for list expansion etc in case of adding multiple
#     file with create links
#   p_  versions are the 'real' commands (actually doing something)
#   pp_ versions are just for printing test output to console (essentially command replaced by puts)
#   q_  wrapper functions (required, mapping to p_ or pp_ depending on value of TEST)
#
proc p_create_link  {{theoption "-hdl_source"} f} {create_links $theoption $f}
proc pp_create_link {{theoption "-hdl_source"} f} {puts "create_links $theoption $f"}

# mmmm... this 'doubling' of the commands for sure can be done nicer...
proc p_create_link_hdl    f {p_create_link "-hdl_source" $f}
proc pp_create_link_hdl   f {pp_create_link "-hdl_source" $f}

proc p_create_link_sdc    f {p_create_link "-sdc"  $f}
proc pp_create_link_sdc   f {pp_create_link "-sdc" $f}

proc p_create_link_io_pdc  f {p_create_link  "-io_pdc" $f}
proc pp_create_link_io_pdc f {pp_create_link "-io_pdc" $f}

proc p_create_link_fp_pdc  f {p_create_link  "-fp_pdc" $f}
proc pp_create_link_fp_pdc f {pp_create_link "-fp_pdc" $f}

proc p_create_links_hdl  x {create_links {*}$x}
proc pp_create_links_hdl x {puts [format "create_links %s" $x]}

proc p_add_lib {l}  {add_library -library $l}
proc pp_add_lib {l} {puts "add_library -library $l"}

proc p_add_file_to_lib {l f} {add_file_to_library -library $l -file $f}
proc pp_add_file_to_lib {l f} {puts "add_file_to_library -library $l -file $f"}

proc p_add_files_to_lib  {l flist} {add_file_to_library -library $l {*}$flist}
proc pp_add_files_to_lib {l flist} {puts "add_file_to_library -library $l $flist"}

set create_link        p_create_link
set create_link_hdl    p_create_link_hdl
set create_link_sdc    p_create_link_sdc
set create_link_io_pdc p_create_link_io_pdc
set create_link_fp_pdc p_create_link_fp_pdc
set create_links_hdl   p_create_links_hdl
set add_lib            p_add_lib
set add_file_to_lib    p_add_file_to_lib
set add_files_to_lib   p_add_files_to_lib

if {[info exists ::env(TEST)]} {
  set create_link        pp_create_link
  set create_link_hdl    pp_create_link_hdl
  set create_link_sdc    pp_create_link_sdc
  set create_link_io_pdc pp_create_link_io_pdc
  set create_link_fp_pdc pp_create_link_fp_pdc
  set create_links_hdl   pp_create_links_hdl
  set add_lib            pp_add_lib
  set add_file_to_lib    pp_add_file_to_lib
  set add_files_to_lib   pp_add_files_to_lib
}

proc use_constraints {l {t "COMPILE"}} {
  set params "-tool $t -module {gg_top::work} -input_type {constraint} $l"
  if {[info exists ::env(TEST)]} {
    puts "organize_tool_files $params"
  } else {
    organize_tool_files {*}$params
  }
}



#---
# Add all files of type 'theext' in folder 'thedir'
#   to list 'thelist'
proc add_sources {thelist thedir {theext "*.vhd"}} {
  upvar $thelist mylist
  foreach f [glob $thedir/$theext] {
    lappend mylist $f
  }
}


#---
# Prepare source list to pass to create_links command
#   by prefixing the files with 'thedir' and prepending
#   'theoption'
#
proc make_sourcelist {thelist {thedir ""} {theoption "-hdl_source"}} {
  set l {}
  if {[string length $thedir] != 0 && [string index $thedir end] != "/"} {
    set myprefix $thedir/
  } else {
  set myprefix $thedir
  }
  foreach f $thelist {
    lappend l "$theoption $myprefix$f"
  }
  return [concat {*}$l]
}
