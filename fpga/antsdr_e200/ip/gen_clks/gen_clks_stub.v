// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Sep 30 09:33:32 2022
// Host        : mp-dev running 64-bit Kylin V10 SP1
// Command     : write_verilog -force -mode synth_stub
//               /home/mp/wcc_demo/e200_net/e320_network/e320_network.srcs/sources_1/ip/gen_clks/gen_clks_stub.v
// Design      : gen_clks
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module gen_clks(clk_out1, clk_out2, clk_out3, clk_out4, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_out4,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  output locked;
  input clk_in1;
endmodule
