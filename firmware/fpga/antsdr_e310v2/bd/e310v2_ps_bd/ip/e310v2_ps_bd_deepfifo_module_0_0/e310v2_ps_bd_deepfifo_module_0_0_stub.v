// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Feb 10 10:54:11 2023
// Host        : jcc running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jcc/work/Git/lone-boy/antsdr_uhd/firmware/fpga/antsdr_e310v2/bd/e310v2_ps_bd/ip/e310v2_ps_bd_deepfifo_module_0_0/e310v2_ps_bd_deepfifo_module_0_0_stub.v
// Design      : e310v2_ps_bd_deepfifo_module_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "deepfifo_module,Vivado 2019.1" *)
module e310v2_ps_bd_deepfifo_module_0_0(sys_rst_n, fifo_clk, fifo_pre_tvalid, 
  fifo_pre_tready, fifo_pre_tdata, fifo_pre_wr_count, fifo_post_tvalid, fifo_post_tready, 
  fifo_post_tdata, fifo_post_rd_count, M_AXI_ACLK, M_AXI_ARESETN, M_AXI_AWID, M_AXI_AWADDR, 
  M_AXI_AWLEN, M_AXI_AWSIZE, M_AXI_AWBURST, M_AXI_AWLOCK, M_AXI_AWCACHE, M_AXI_AWPROT, 
  M_AXI_AWQOS, M_AXI_AWUSER, M_AXI_AWVALID, M_AXI_AWREADY, M_AXI_WDATA, M_AXI_WSTRB, 
  M_AXI_WLAST, M_AXI_WUSER, M_AXI_WVALID, M_AXI_WREADY, M_AXI_BID, M_AXI_BRESP, M_AXI_BUSER, 
  M_AXI_BVALID, M_AXI_BREADY, M_AXI_ARID, M_AXI_ARADDR, M_AXI_ARLEN, M_AXI_ARSIZE, 
  M_AXI_ARBURST, M_AXI_ARLOCK, M_AXI_ARCACHE, M_AXI_ARPROT, M_AXI_ARQOS, M_AXI_ARUSER, 
  M_AXI_ARVALID, M_AXI_ARREADY, M_AXI_RID, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RLAST, M_AXI_RUSER, 
  M_AXI_RVALID, M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="sys_rst_n,fifo_clk,fifo_pre_tvalid,fifo_pre_tready,fifo_pre_tdata[63:0],fifo_pre_wr_count[8:0],fifo_post_tvalid,fifo_post_tready,fifo_post_tdata[63:0],fifo_post_rd_count[8:0],M_AXI_ACLK,M_AXI_ARESETN,M_AXI_AWID[0:0],M_AXI_AWADDR[31:0],M_AXI_AWLEN[7:0],M_AXI_AWSIZE[2:0],M_AXI_AWBURST[1:0],M_AXI_AWLOCK,M_AXI_AWCACHE[3:0],M_AXI_AWPROT[2:0],M_AXI_AWQOS[3:0],M_AXI_AWUSER[0:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[63:0],M_AXI_WSTRB[7:0],M_AXI_WLAST,M_AXI_WUSER[0:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BID[0:0],M_AXI_BRESP[1:0],M_AXI_BUSER[0:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARID[0:0],M_AXI_ARADDR[31:0],M_AXI_ARLEN[7:0],M_AXI_ARSIZE[2:0],M_AXI_ARBURST[1:0],M_AXI_ARLOCK,M_AXI_ARCACHE[3:0],M_AXI_ARPROT[2:0],M_AXI_ARQOS[3:0],M_AXI_ARUSER[0:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RID[0:0],M_AXI_RDATA[63:0],M_AXI_RRESP[1:0],M_AXI_RLAST,M_AXI_RUSER[0:0],M_AXI_RVALID,M_AXI_RREADY" */;
  input sys_rst_n;
  input fifo_clk;
  input fifo_pre_tvalid;
  output fifo_pre_tready;
  input [63:0]fifo_pre_tdata;
  output [8:0]fifo_pre_wr_count;
  output fifo_post_tvalid;
  input fifo_post_tready;
  output [63:0]fifo_post_tdata;
  output [8:0]fifo_post_rd_count;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [0:0]M_AXI_AWID;
  output [31:0]M_AXI_AWADDR;
  output [7:0]M_AXI_AWLEN;
  output [2:0]M_AXI_AWSIZE;
  output [1:0]M_AXI_AWBURST;
  output M_AXI_AWLOCK;
  output [3:0]M_AXI_AWCACHE;
  output [2:0]M_AXI_AWPROT;
  output [3:0]M_AXI_AWQOS;
  output [0:0]M_AXI_AWUSER;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [63:0]M_AXI_WDATA;
  output [7:0]M_AXI_WSTRB;
  output M_AXI_WLAST;
  output [0:0]M_AXI_WUSER;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [0:0]M_AXI_BID;
  input [1:0]M_AXI_BRESP;
  input [0:0]M_AXI_BUSER;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [0:0]M_AXI_ARID;
  output [31:0]M_AXI_ARADDR;
  output [7:0]M_AXI_ARLEN;
  output [2:0]M_AXI_ARSIZE;
  output [1:0]M_AXI_ARBURST;
  output M_AXI_ARLOCK;
  output [3:0]M_AXI_ARCACHE;
  output [2:0]M_AXI_ARPROT;
  output [3:0]M_AXI_ARQOS;
  output [0:0]M_AXI_ARUSER;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [0:0]M_AXI_RID;
  input [63:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RLAST;
  input [0:0]M_AXI_RUSER;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
endmodule
