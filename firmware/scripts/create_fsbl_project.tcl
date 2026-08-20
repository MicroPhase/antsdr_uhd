set fsbl_workspace [file normalize ./build/sdk]

# The SDK workspace is generated exclusively for the FSBL target.  XSDK keeps
# project state in both the project directories and .metadata, so reusing a
# workspace left by an interrupted build makes sdk createhw fail with
# "Project with name 'hw_0' already exists".  Always start this generated
# workspace from a known state; the final fsbl.elf is copied outside it by the
# Makefile.
if {[file exists $fsbl_workspace]} {
	file delete -force $fsbl_workspace
}
file mkdir $fsbl_workspace

hsi open_hw_design build/system_top.hdf
set cpu_name [lindex [hsi get_cells -filter {IP_TYPE==PROCESSOR}] 0]

sdk setws $fsbl_workspace
sdk createhw -name hw_0 -hwspec build/system_top.hdf

# Workaround for broken write_sysdev in vivado 2018.2
catch {
	set copyfiles [glob ./build/ps7_init*]
	if {[llength $copyfiles]} {
		file copy {*}$copyfiles [file join $fsbl_workspace hw_0]
	}
}
sdk createapp -name fsbl -hwproject hw_0 -proc $cpu_name -os standalone -lang C -app {Zynq FSBL}
configapp -app fsbl build-config release
sdk projects -build -type all
#xsdk -batch -source create_fsbl_project.tcl
