// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Oct 19 11:29:42 2022
// Host        : mp-dev running 64-bit Kylin V10 SP1
// Command     : write_verilog -force -mode synth_stub
//               /home/mp/wcc_demo/git_antsdr_uhd/antsdr_uhd_project/firmware/fpga/antsdr_e200/ip/rgmii_clock_shift/rgmii_clock_shift_stub.v
// Design      : rgmii_clock_shift
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module rgmii_clock_shift(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,locked,clk_in1" */;
  output clk_out1;
  output locked;
  input clk_in1;
endmodule
