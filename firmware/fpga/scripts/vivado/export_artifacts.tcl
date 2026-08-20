if {$argc != 2} {
    puts stderr "usage: export_artifacts.tcl <project.xpr> <artifact-dir>"
    exit 2
}
set project_file [file normalize [lindex $argv 0]]
set artifact_dir [file normalize [lindex $argv 1]]
if {![file exists $project_file]} { error "missing Vivado project: $project_file" }

open_project $project_file
set proj_name [get_property NAME [current_project]]
set run_dir [get_property DIRECTORY [get_runs impl_1]]
set bit_files [glob -nocomplain [file join $run_dir "*.bit"]]
set sysdef_files [glob -nocomplain [file join $run_dir "*.sysdef"]]
if {[llength $bit_files] != 1} {
    error "expected one implemented bitstream in $run_dir, found: $bit_files"
}
if {[llength $sysdef_files] != 1} {
    error "expected one sysdef in $run_dir, found: $sysdef_files"
}

file mkdir $artifact_dir
file copy -force [lindex $bit_files 0] [file join $artifact_dir "${proj_name}.bit"]
# Vivado 2019.1/XSDK consumes the sysdef container with an .hdf suffix.
file copy -force [lindex $sysdef_files 0] [file join $artifact_dir "system_top.hdf"]
set ltx_files [glob -nocomplain [file join $run_dir "*.ltx"]]
if {[llength $ltx_files] == 1} {
    file copy -force [lindex $ltx_files 0] [file join $artifact_dir "${proj_name}.ltx"]
}
puts "Artifacts exported to: $artifact_dir"
close_project
