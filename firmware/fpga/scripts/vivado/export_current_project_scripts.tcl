if {$argc != 5} {
    puts stderr "usage: export_current_project_scripts.tcl <project.xpr> <product_dir> <target> <out_dir> <apply:0|1>"
    exit 2
}

set project_file [file normalize [lindex $argv 0]]
set product_dir [file normalize [lindex $argv 1]]
set target [lindex $argv 2]
set out_dir [file normalize [lindex $argv 3]]
set apply [lindex $argv 4]
set fpga_dir [file normalize [file join $product_dir ".."]]

proc antsdr_path_is_under {path root} {
    set path [string map {\\ /} [file normalize $path]]
    set root [string trimright [string map {\\ /} [file normalize $root]] /]
    return [expr {$path eq $root || [string first "${root}/" $path] == 0}]
}

proc antsdr_relative_to {path root} {
    set path [string map {\\ /} [file normalize $path]]
    set root [string trimright [string map {\\ /} [file normalize $root]] /]
    if {$path eq $root} { return "." }
    if {[antsdr_path_is_under $path $root]} {
        return [string range $path [expr {[string length $root] + 1}] end]
    }
    set parent [file dirname $root]
    if {[antsdr_path_is_under $path $parent]} {
        return "../[antsdr_relative_to $path $parent]"
    }
    return $path
}

proc antsdr_is_generated {path product_dir} {
    set rel [string map {\\ /} [antsdr_relative_to $path $product_dir]]
    return [expr {
        [string match "antsdr_*/**" $rel] ||
        [string match "vivado/**" $rel] ||
        [string match "artifacts/**" $rel] ||
        [string match "scripts/vivado/generated/**" $rel] ||
        [string match "bd/*/**" $rel] ||
        [string match "*.runs/**" $rel] ||
        [string match "*.srcs/**" $rel] ||
        [string match "*.gen/**" $rel] ||
        [string match "*.cache/**" $rel] ||
        [string match "*.ip_user_files/**" $rel]
    }]
}

proc antsdr_collect_files {fileset product_dir fpga_dir extensions} {
    set result [list]
    foreach item [get_files -quiet -of_objects [get_filesets $fileset]] {
        set path [file normalize $item]
        if {![antsdr_path_is_under $path $fpga_dir]} {
            puts "WARNING: skipping file outside FPGA source tree: $path"
            continue
        }
        if {[antsdr_is_generated $path $product_dir]} { continue }
        set ext [string tolower [file extension $path]]
        if {[lsearch -exact $extensions $ext] < 0} { continue }
        # A standalone XCI is the tracked source of a vendor IP.  Vivado also
        # lists its generated stubs, netlists, HDL wrappers and OOC XDC files
        # in sources_1; those products must not leak into the source manifest.
        set rel [string map {\\ /} [antsdr_relative_to $path $product_dir]]
        if {[string match "ip/*" $rel] && $ext ne ".xci" && $ext ne ".xcix"} {
            continue
        }
        lappend result $rel
    }
    return [lsort -unique $result]
}

proc antsdr_collect_project_ips {product_dir fpga_dir} {
    set result [list]
    foreach item [get_files -quiet -filter {FILE_TYPE == "IP"}] {
        set path [file normalize $item]
        set ext [string tolower [file extension $path]]
        if {$ext ne ".xci" && $ext ne ".xcix"} { continue }
        if {![antsdr_path_is_under $path $fpga_dir]} {
            puts "WARNING: skipping IP outside FPGA source tree: $path"
            continue
        }
        set rel [string map {\\ /} [antsdr_relative_to $path $product_dir]]
        # Only product-owned, standalone IP definitions are source inputs.
        # XCI files below a BD/project directory are generated children.
        if {![string match "ip/*.xci" $rel] &&
            ![string match "ip/*/*.xci" $rel] &&
            ![string match "ip/*.xcix" $rel] &&
            ![string match "ip/*/*.xcix" $rel]} {
            continue
        }
        lappend result $rel
    }
    return [lsort -unique $result]
}

proc antsdr_write_list {stream name values} {
    puts $stream "set $name \[list \\"
    foreach value $values { puts $stream "    \"$value\" \\" }
    puts $stream "\]"
}

proc antsdr_write_sources {path target sources constraints ip_repos defines top} {
    set stream [open $path w]
    puts $stream "# Generated from the saved Vivado project by export_current_project_scripts.sh."
    puts $stream "# Review with Git, then edit the Vivado project and export again when it changes."
    puts $stream ""
    puts $stream "if {!\[info exists root_dir\]} {"
    puts $stream "    set script_dir \[file normalize \[file dirname \[info script\]\]\]"
    puts $stream "    set root_dir \[file normalize \[file join \$script_dir \"..\" \"..\"\]\]"
    puts $stream "}"
    puts $stream ""
    puts $stream "proc antsdr_add_rel_files {fileset root_dir rel_files} {"
    puts $stream "    set files \[list\]"
    puts $stream "    foreach rel \$rel_files {"
    puts $stream "        set path \[file normalize \[file join \$root_dir \$rel\]\]"
    puts $stream "        if {!\[file exists \$path\]} { error \"tracked FPGA source is missing: \$rel (\$path)\" }"
    puts $stream "        lappend files \$path"
    puts $stream "    }"
    puts $stream "    if {\[llength \$files\] > 0} { add_files -fileset \$fileset -norecurse \$files }"
    puts $stream "}"
    puts $stream ""
    antsdr_write_list $stream "${target}_ip_repo_rel_paths" $ip_repos
    puts $stream "set ip_repo_paths \[list\]"
    puts $stream "foreach rel \$${target}_ip_repo_rel_paths { lappend ip_repo_paths \[file join \$root_dir \$rel\] }"
    puts $stream "if {\[llength \$ip_repo_paths\] > 0} {"
    puts $stream "    set_property ip_repo_paths \$ip_repo_paths \[current_project\]"
    puts $stream "    update_ip_catalog"
    puts $stream "}"
    antsdr_write_list $stream "${target}_verilog_defines" $defines
    puts $stream "set_property verilog_define \$${target}_verilog_defines \[get_filesets sources_1\]"
    puts $stream ""
    antsdr_write_list $stream "${target}_source_rel_files" $sources
    puts $stream ""
    antsdr_write_list $stream "${target}_constraint_rel_files" $constraints
    puts $stream ""
    puts $stream "antsdr_add_rel_files sources_1 \$root_dir \$${target}_source_rel_files"
    puts $stream "antsdr_add_rel_files constrs_1 \$root_dir \$${target}_constraint_rel_files"
    puts $stream "set_property top \"$top\" \[get_filesets sources_1\]"
    puts $stream "update_compile_order -fileset sources_1"
    close $stream
}

if {![file exists $project_file]} { error "missing Vivado project: $project_file" }
file mkdir $out_dir
open_project $project_file

set bd_files [list]
foreach bd [get_files -quiet -filter {FILE_TYPE == "Block Designs"}] {
    set path [file normalize $bd]
    if {[string first "/ip/" [string map {\\ /} $path]] < 0} { lappend bd_files $path }
}
set bd_files [lsort -unique $bd_files]
if {[llength $bd_files] != 1} {
    error "expected exactly one top-level block design, found [llength $bd_files]: $bd_files"
}
set bd_file [lindex $bd_files 0]
open_bd_design $bd_file
set bd_name [get_property NAME [current_bd_design]]
set generated_bd [file join $out_dir "${bd_name}.tcl"]
write_bd_tcl -force $generated_bd

set hdl_exts [list ".v" ".sv" ".vh" ".svh" ".vhd" ".vhdl" ".ngc" ".edf" ".edif" ".mem" ".mif" ".coe"]
set ip_exts [list ".xci" ".xcix"]
set source_files [antsdr_collect_files sources_1 $product_dir $fpga_dir $hdl_exts]
set source_files [lsort -unique [concat $source_files \
    [antsdr_collect_files sources_1 $product_dir $fpga_dir $ip_exts] \
    [antsdr_collect_project_ips $product_dir $fpga_dir]]]
set constraint_files [antsdr_collect_files constrs_1 $product_dir $fpga_dir [list ".xdc"]]

set ip_repos [list]
foreach repo [get_property ip_repo_paths [current_project]] {
    set path [file normalize $repo]
    if {[antsdr_path_is_under $path $fpga_dir] && ![antsdr_is_generated $path $product_dir]} {
        lappend ip_repos [string map {\\ /} [antsdr_relative_to $path $product_dir]]
    } else {
        puts "WARNING: skipping IP repository outside tracked source tree: $path"
    }
}
set ip_repos [lsort -unique $ip_repos]
set defines [get_property verilog_define [get_filesets sources_1]]
set top [get_property top [get_filesets sources_1]]

set generated_sources [file join $out_dir "create_${target}_sources.tcl"]
antsdr_write_sources $generated_sources $target $source_files $constraint_files $ip_repos $defines $top

set report [file join $out_dir PROJECT_STATE.txt]
set stream [open $report w]
puts $stream "project_file=$project_file"
puts $stream "project_name=[get_property NAME [current_project]]"
puts $stream "project_part=[get_property PART [current_project]]"
puts $stream "top=$top"
puts $stream "verilog_define=$defines"
puts $stream "block_design=$bd_file"
puts $stream "generated_bd_tcl=$generated_bd"
puts $stream "generated_sources_tcl=$generated_sources"
puts $stream ""
puts $stream "source_manifest:"
foreach item $source_files { puts $stream "  $item" }
puts $stream ""
puts $stream "constraints:"
foreach item $constraint_files { puts $stream "  $item" }
puts $stream ""
puts $stream "ip_repositories:"
foreach item $ip_repos { puts $stream "  $item" }
close $stream

puts "Generated project-state review files:"
puts "  $generated_bd"
puts "  $generated_sources"
puts "  $report"

if {$apply eq "1"} {
    set bd_target [file join $product_dir bd "${bd_name}.tcl"]
    set sources_target [file join $product_dir scripts vivado "create_${target}_sources.tcl"]
    file mkdir [file join $out_dir backup]
    foreach pair [list [list $generated_bd $bd_target] [list $generated_sources $sources_target]] {
        set generated [lindex $pair 0]
        set destination [lindex $pair 1]
        if {[file exists $destination]} {
            file copy -force $destination [file join $out_dir backup [file tail $destination]]
        }
        file copy -force $generated $destination
        puts "Applied: $destination"
    }
} else {
    puts "Review the files above. Rerun with --apply to update tracked BD/source Tcl."
}
close_project
