set script_dir [file normalize [file dirname [info script]]]
set root_dir [file normalize [file join $script_dir ".." ".."]]
set proj_name antsdr_e200
set proj_dir [file join $root_dir vivado project $proj_name]

file delete -force $proj_dir
create_project $proj_name $proj_dir -part xc7z020clg400-2 -force
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

source [file join $script_dir create_e200_sources.tcl]

# The vendor-generated BD script uses a remote-BD directory.  Redirect it
# into the ignored project tree so rebuilding never modifies tracked sources.
set ::origin_dir_loc [file join $proj_dir bd]
set bd_status [source [file join $root_dir bd e200_ps_bd.tcl]]
if {$bd_status ne "" && $bd_status != 0} {
    error "E200 block-design creation failed with status $bd_status"
}

set bd_files [get_files -quiet -all "*e200_ps_bd.bd"]
if {[llength $bd_files] != 1} {
    error "expected one e200_ps_bd.bd, found [llength $bd_files]: $bd_files"
}
generate_target all $bd_files
make_wrapper -files $bd_files -top -import

set standalone_ips [list]
foreach rel $e200_source_rel_files {
    if {[file extension $rel] eq ".xci"} {
        set ip_file [get_files -quiet [file join $root_dir $rel]]
        if {[llength $ip_file] == 1} { lappend standalone_ips $ip_file }
    }
}
if {[llength $standalone_ips] > 0} { generate_target all $standalone_ips }

set_property top $proj_name [get_filesets sources_1]
update_compile_order -fileset sources_1
catch {set_property AUTO_INCREMENTAL_CHECKPOINT 0 [get_runs synth_1]}
puts "E200 project created: [file join $proj_dir ${proj_name}.xpr]"
close_project
