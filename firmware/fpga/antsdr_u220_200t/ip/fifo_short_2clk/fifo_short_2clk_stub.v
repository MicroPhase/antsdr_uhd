// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Mar 10 11:31:43 2023
// Host        : wcc-dev running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wcc/wcc_demo/git_antsdr_uhd/fpga_pre/antsdr_u220/ip/fifo_short_2clk/fifo_short_2clk_stub.v
// Design      : fifo_short_2clk
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *)
module fifo_short_2clk(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, rd_data_count, wr_data_count)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[71:0],wr_en,rd_en,dout[71:0],full,empty,rd_data_count[5:0],wr_data_count[5:0]" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [71:0]din;
  input wr_en;
  input rd_en;
  output [71:0]dout;
  output full;
  output empty;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
endmodule
