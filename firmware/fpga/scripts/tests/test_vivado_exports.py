#!/usr/bin/env python3
"""Exercise export file handling without a Vivado installation.

Only the Vivado query commands are substituted; the production Tcl performs
manifest generation, backups, --apply, validation, and artifact copying.
"""
import subprocess
import tempfile
import unittest
from pathlib import Path

FPGA = Path(__file__).resolve().parents[2]
GUI_EXPORT = FPGA / "scripts/vivado/export_current_project_scripts.tcl"
U220_EXPORT = FPGA / "u220/scripts/vivado/export_u220_artifacts.tcl"


def quoted(path):
    return "{" + str(path) + "}"


class VivadoExportTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.fpga = self.root / "fpga"
        self.product = self.fpga / "u220"
        self.run_dir = self.product / "vivado/project/antsdr_u220/impl_1"
        self.run_dir.mkdir(parents=True)
        self.project = self.run_dir.parent / "antsdr_u220.xpr"
        self.project.write_text("project fixture\n")
        self.output = self.product / "scripts/vivado/generated"
        for rel in ("top/b200.v", "ip/fifo/fifo.xci", "xdc/u220.xdc"):
            path = self.product / rel
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("source fixture\n")
        (self.product / "bd").mkdir()
        (self.fpga / "lib").mkdir()
        (self.fpga / "lib/shared.v").write_text("shared fixture\n")

    def run_tcl(self, script, args, bds=(), trailing=""):
        setup = f"""
set fixture_product {quoted(self.product)}
set fixture_run {quoted(self.run_dir)}
set fixture_bds [list {' '.join(quoted(p) for p in bds)}]
proc open_project args {{}}
proc close_project args {{}}
proc get_runs args {{return impl_1}}
proc get_filesets args {{return [lindex $args 0]}}
proc current_project args {{return project}}
proc get_property {{property object}} {{
    switch -- $property {{
        NAME {{
            if {{$object eq "bd"}} {{
                return [file rootname [file tail [lindex $::fixture_bds 0]]]
            }}
            return antsdr_u220
        }}
        PART {{return xc7a200tfbg484-2}}
        STATUS {{return "write_bitstream Complete!"}}
        DIRECTORY {{return $::fixture_run}}
        ip_repo_paths {{return [list]}}
        verilog_define {{return {{TARGET_B210=1 DEBUG_UART=1}}}}
        top {{return b200}}
        default {{error "unexpected property: $property"}}
    }}
}}
proc get_files args {{
    if {{[lsearch -exact $args {{FILE_TYPE == "Block Designs"}}] >= 0}} {{
        return $::fixture_bds
    }}
    if {{[lsearch -exact $args {{FILE_TYPE == "IP"}}] >= 0}} {{
        return [list [file join $::fixture_product ip fifo fifo.xci]]
    }}
    if {{[lindex $args end] eq "constrs_1"}} {{
        return [list [file join $::fixture_product xdc u220.xdc]]
    }}
    return [list [file join $::fixture_product top b200.v] \\
        [file join $::fixture_product .. lib shared.v] \\
        [file join $::fixture_product ip fifo fifo.xci]]
}}
proc open_bd_design args {{}}
proc current_bd_design args {{return bd}}
proc write_bd_tcl args {{
    set stream [open [lindex $args end] w]
    puts $stream {{# exported Block Design}}
    close $stream
}}
set argv [list {' '.join(quoted(p) for p in args)}]
set argc [llength $argv]
if {{[catch {{source {quoted(script)}; {trailing}}} message options]}} {{
    puts stderr [dict get $options -errorinfo]
    exit 1
}}
"""
        driver = self.root / "driver.tcl"
        driver.write_text(setup)
        return subprocess.run(["tclsh", str(driver)], text=True, capture_output=True)

    def export_gui(self, bds=(), apply=False, trailing=""):
        return self.run_tcl(GUI_EXPORT,
                            [self.project, self.product, "u220", self.output,
                             "1" if apply else "0"], bds, trailing)

    def test_no_bd_review_exports_sources_without_changing_tracked_files(self):
        result = self.export_gui()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertTrue((self.output / "create_u220_sources.tcl").is_file())
        self.assertFalse((self.product / "scripts/vivado/create_u220_sources.tcl").exists())
        self.assertIn("block_design=", (self.output / "PROJECT_STATE.txt").read_text())
        self.assertEqual(list(self.output.glob("*.tcl")),
                         [self.output / "create_u220_sources.tcl"])

    def test_no_bd_apply_backs_up_manifest_and_round_trips_paths(self):
        manifest = self.product / "scripts/vivado/create_u220_sources.tcl"
        manifest.parent.mkdir(parents=True, exist_ok=True)
        manifest.write_text("# previous manifest\n")
        trailing = f"""
set root_dir {quoted(self.product)}
proc set_property args {{}}
proc add_files args {{}}
proc update_compile_order args {{}}
source {quoted(manifest)}
if {{[llength $u220_source_rel_files] != 3}} {{error "lost source entries"}}
foreach rel $u220_source_rel_files {{
    if {{![file exists [file join $root_dir $rel]]}} {{error "invalid path: $rel"}}
}}
"""
        result = self.export_gui(apply=True, trailing=trailing)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual((self.output / "backup/create_u220_sources.tcl").read_text(),
                         "# previous manifest\n")

    def test_e200_and_e316_single_bd_export_still_applies_bd(self):
        for target in ("e200", "e310v2"):
            with self.subTest(target=target):
                bd = self.product / "vivado/project/bd" / (target + "_ps_bd.bd")
                bd.parent.mkdir(parents=True, exist_ok=True)
                bd.write_text("bd fixture\n")
                out = self.output / target
                result = self.run_tcl(GUI_EXPORT,
                    [self.project, self.product, target, out, "1"], [bd])
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertTrue((self.product / ("bd/" + target + "_ps_bd.tcl")).is_file())
                self.assertTrue((out / ("create_" + target + "_sources.tcl")).is_file())

    def test_multiple_bds_are_rejected(self):
        result = self.export_gui(bds=[self.product / "a.bd", self.product / "b.bd"])
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("block design", result.stderr.lower())

    def test_u220_exports_bit_and_bin_without_hdf(self):
        for extension in ("bit", "bin", "ltx"):
            (self.run_dir / ("b200." + extension)).write_bytes(extension.encode())
        artifacts = self.product / "artifacts"
        result = self.run_tcl(U220_EXPORT, [self.project, artifacts])
        self.assertEqual(result.returncode, 0, result.stderr)
        for extension in ("bit", "bin", "ltx"):
            self.assertEqual((artifacts / ("antsdr_u220." + extension)).read_bytes(),
                             extension.encode())
        self.assertFalse((artifacts / "system_top.hdf").exists())

    def test_u220_missing_bin_is_rejected_before_export(self):
        (self.run_dir / "b200.bit").write_bytes(b"bit")
        artifacts = self.product / "artifacts"
        result = self.run_tcl(U220_EXPORT, [self.project, artifacts])
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("bin", result.stderr.lower())
        self.assertFalse(artifacts.exists())


if __name__ == "__main__":
    unittest.main()
