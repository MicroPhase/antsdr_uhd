set script_dir [file normalize [file dirname [info script]]]
set root_dir [file normalize [file join $script_dir ".." ".."]]
set proj_name antsdr_u220
set proj_dir [file join $root_dir vivado project $proj_name]

file delete -force $proj_dir
create_project $proj_name $proj_dir -part xc7a200tfbg484-2 -force
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

source [file join $script_dir create_u220_sources.tcl]

set standalone_ips [list]
foreach rel $u220_source_rel_files {
    if {[file extension $rel] eq ".xci"} {
        set ip_file [get_files -quiet [file join $root_dir $rel]]
        if {[llength $ip_file] == 1} {
            lappend standalone_ips $ip_file
        }
    }
}
if {[llength $standalone_ips] > 0} {
    generate_target all $standalone_ips
}

set_property top b200 [get_filesets sources_1]
# UHD loads the raw FPGA image over FX3/USB.
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
catch {set_property AUTO_INCREMENTAL_CHECKPOINT 0 [get_runs synth_1]}
puts "U220 project created: [file join $proj_dir ${proj_name}.xpr]"
close_project
