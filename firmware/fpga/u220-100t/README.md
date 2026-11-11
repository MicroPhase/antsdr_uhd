# AntSDR U220 100T FPGA project

Use Vivado 2019.1 with FPGA part `xc7a100tfgg484-2` (FGG484, speed grade -2).
The Vivado part name uses `FGG484`, not `FFG484`.
This variant reuses the U220 board RTL and pin constraints from `../u220`;
it assumes the same board wiring as the 200T model.

From the repository root:

```sh
cd firmware/fpga/u220-100t
make project
make bitstream
```

The Vivado project is created at
`vivado/project/antsdr_u220_100t/antsdr_u220_100t.xpr`.
The build exports `antsdr_u220_100t.bit` and `antsdr_u220_100t.bin` to `artifacts/`.
Use the 100T image only with the 100T FPGA.

To recreate the project and run a full build:

```sh
make rebuild
```
