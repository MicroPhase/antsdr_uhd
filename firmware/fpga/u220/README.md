# AntSDR U220 FPGA project

Use Vivado 2019.1 with FPGA part `xc7a200tfbg484-2`.

From the repository root:

```sh
cd firmware/fpga/u220
make project
make bitstream
```

The Vivado project is created at
`vivado/project/antsdr_u220/antsdr_u220.xpr`.
The build exports `antsdr_u220.bit` and `antsdr_u220.bin` to `artifacts/`.

To recreate the project and run a full build:

```sh
make rebuild
```
