if {$argc < 1 || $argc > 2} {
    puts stderr "usage: build_bitstream.tcl <project.xpr> ?jobs?"
    exit 2
}
set project_file [file normalize [lindex $argv 0]]
set jobs [expr {$argc == 2 ? [lindex $argv 1] : 6}]
if {![file exists $project_file]} { error "missing Vivado project: $project_file" }

open_project $project_file
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs $jobs
wait_on_run impl_1
set status [get_property STATUS [get_runs impl_1]]
if {![string match "*Complete*" $status]} {
    error "implementation did not complete successfully: $status"
}
puts "Bitstream implementation complete: $status"
close_project
