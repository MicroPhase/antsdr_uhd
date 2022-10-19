// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Oct 19 11:29:55 2022
// Host        : mp-dev running 64-bit Kylin V10 SP1
// Command     : write_verilog -force -mode synth_stub
//               /home/mp/wcc_demo/git_antsdr_uhd/antsdr_uhd_project/firmware/fpga/antsdr_e200/ip/axi64_8k_2clk_fifo/axi64_8k_2clk_fifo_stub.v
// Design      : axi64_8k_2clk_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *)
module axi64_8k_2clk_fifo(m_aclk, s_aclk, s_aresetn, s_axis_tvalid, 
  s_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tuser, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tlast, m_axis_tuser, axis_wr_data_count, axis_rd_data_count)
/* synthesis syn_black_box black_box_pad_pin="m_aclk,s_aclk,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],s_axis_tlast,s_axis_tuser[3:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],m_axis_tlast,m_axis_tuser[3:0],axis_wr_data_count[10:0],axis_rd_data_count[10:0]" */;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input s_axis_tlast;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output m_axis_tlast;
  output [3:0]m_axis_tuser;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
endmodule
