# ANTSDR FPGA source and build layout

This directory contains the RTL derived from Ettus Research's open-source UHD
FPGA code and the ANTSDR-specific integration used by our devices.  Shared
modules live in `lib/`; product-specific RTL and IP live under `antsdr_*`.

The E200 and E310V2 projects use the same reproducible-project layout as the
E206 project.  The files that define a design are tracked; Vivado databases
and generated output products are not.

Each product contains:

- `top/`, `ip/`, `xdc/`: tracked HDL, IP definitions and constraints.
- `bd/*_ps_bd.tcl`: tracked block-design recipe.
- `scripts/vivado/create_*_sources.tcl`: explicit, reviewable source manifest.
- `scripts/vivado/create_*_project.tcl`: reproducible project creation.
- `vivado/project/`: ignored Vivado working tree.
- `artifacts/`: ignored bitstream/HDF/LTX release output.

Vivado 2019.1 and part `xc7z020clg400-2` are required.  For E200, for example:

```sh
cd firmware/fpga/antsdr_e200
scripts/recreate_vivado_project.sh
scripts/build_bitstream.sh

# after saving changes made in the Vivado GUI:
scripts/export_current_project_scripts.sh
# use --apply only after reviewing scripts/vivado/generated/
```

Use the corresponding scripts under `antsdr_e310v2` for E310V2.  Set `JOBS`
to change implementation parallelism or `VIVADO_SETTINGS_FILE` to select a
non-default Vivado installation.  `make` reuses `artifacts/system_top.hdf` if
it already exists; `make rebuild` recreates the project from the tracked Tcl
and then runs implementation again.

The old top-level `antsdr_e200.tcl`, `antsdr_e310v2.tcl`, and old generated
project directories remain temporarily for compatibility.  New development
should update the explicit source manifest whenever a source is added or
removed from Vivado.

## Exporting GUI changes

Save the current Vivado project first, then run:

```sh
cd firmware/fpga/antsdr_e200
scripts/export_current_project_scripts.sh
```

The command writes `scripts/vivado/generated/` (ignored) containing the
current Block Design Tcl, source/constraint manifest, and `PROJECT_STATE.txt`.
It reads the legacy GUI project when present, so manual changes in that
project are exported instead of being silently replaced by the scripted
project. Review the generated files and rerun with `--apply` to replace the
tracked `bd/e200_ps_bd.tcl` and `scripts/vivado/create_e200_sources.tcl`.
E310V2 uses the same command in its product directory.
