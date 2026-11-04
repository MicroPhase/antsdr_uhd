if {$argc != 2} {
    puts stderr "usage: export_u220_artifacts.tcl <project.xpr> <artifact-dir>"
    exit 2
}
set project_file [file normalize [lindex $argv 0]]
set artifact_dir [file normalize [lindex $argv 1]]
if {![file exists $project_file]} { error "missing Vivado project: $project_file" }

open_project $project_file
set proj_name [get_property NAME [current_project]]
set run_dir [get_property DIRECTORY [get_runs impl_1]]
set status [get_property STATUS [get_runs impl_1]]
if {![string match "*Complete*" $status]} {
    error "implementation did not complete successfully: $status"
}

# U220 is an RTL-only Artix-7 design. No Zynq/SDK HDF is required.
# Validate both required files before publishing either of them.
set required_files [list]
foreach extension [list bit bin] {
    set files [glob -nocomplain [file join $run_dir "*.${extension}"]]
    if {[llength $files] != 1} {
        error "expected one implemented .$extension file in $run_dir, found: $files"
    }
    set path [lindex $files 0]
    if {[file size $path] == 0} { error "empty implemented .$extension file: $path" }
    lappend required_files $path
}
file mkdir $artifact_dir
foreach path $required_files {
    file copy -force $path [file join $artifact_dir "${proj_name}[file extension $path]"]
}
set ltx_files [glob -nocomplain [file join $run_dir "*.ltx"]]
if {[llength $ltx_files] == 1} {
    file copy -force [lindex $ltx_files 0] [file join $artifact_dir "${proj_name}.ltx"]
}
puts "U220 bitstream and raw BIN exported to: $artifact_dir"
close_project
