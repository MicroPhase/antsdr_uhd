// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Feb 10 10:56:06 2023
// Host        : jcc running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top e310v2_ps_bd_axi_dma_net_0 -prefix
//               e310v2_ps_bd_axi_dma_net_0_ e310v2_ps_bd_axi_dma_eth_internal_0_stub.v
// Design      : e310v2_ps_bd_axi_dma_eth_internal_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_dma,Vivado 2019.1" *)
module e310v2_ps_bd_axi_dma_net_0(s_axi_lite_aclk, m_axi_sg_aclk, 
  m_axi_mm2s_aclk, m_axi_s2mm_aclk, axi_resetn, s_axi_lite_awvalid, s_axi_lite_awready, 
  s_axi_lite_awaddr, s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_wdata, 
  s_axi_lite_bresp, s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_arvalid, 
  s_axi_lite_arready, s_axi_lite_araddr, s_axi_lite_rvalid, s_axi_lite_rready, 
  s_axi_lite_rdata, s_axi_lite_rresp, m_axi_sg_awaddr, m_axi_sg_awlen, m_axi_sg_awsize, 
  m_axi_sg_awburst, m_axi_sg_awprot, m_axi_sg_awcache, m_axi_sg_awvalid, m_axi_sg_awready, 
  m_axi_sg_wdata, m_axi_sg_wstrb, m_axi_sg_wlast, m_axi_sg_wvalid, m_axi_sg_wready, 
  m_axi_sg_bresp, m_axi_sg_bvalid, m_axi_sg_bready, m_axi_sg_araddr, m_axi_sg_arlen, 
  m_axi_sg_arsize, m_axi_sg_arburst, m_axi_sg_arprot, m_axi_sg_arcache, m_axi_sg_arvalid, 
  m_axi_sg_arready, m_axi_sg_rdata, m_axi_sg_rresp, m_axi_sg_rlast, m_axi_sg_rvalid, 
  m_axi_sg_rready, m_axi_mm2s_araddr, m_axi_mm2s_arlen, m_axi_mm2s_arsize, 
  m_axi_mm2s_arburst, m_axi_mm2s_arprot, m_axi_mm2s_arcache, m_axi_mm2s_arvalid, 
  m_axi_mm2s_arready, m_axi_mm2s_rdata, m_axi_mm2s_rresp, m_axi_mm2s_rlast, 
  m_axi_mm2s_rvalid, m_axi_mm2s_rready, mm2s_prmry_reset_out_n, m_axis_mm2s_tdata, 
  m_axis_mm2s_tkeep, m_axis_mm2s_tvalid, m_axis_mm2s_tready, m_axis_mm2s_tlast, 
  m_axi_s2mm_awaddr, m_axi_s2mm_awlen, m_axi_s2mm_awsize, m_axi_s2mm_awburst, 
  m_axi_s2mm_awprot, m_axi_s2mm_awcache, m_axi_s2mm_awvalid, m_axi_s2mm_awready, 
  m_axi_s2mm_wdata, m_axi_s2mm_wstrb, m_axi_s2mm_wlast, m_axi_s2mm_wvalid, 
  m_axi_s2mm_wready, m_axi_s2mm_bresp, m_axi_s2mm_bvalid, m_axi_s2mm_bready, 
  s2mm_prmry_reset_out_n, s_axis_s2mm_tdata, s_axis_s2mm_tkeep, s_axis_s2mm_tvalid, 
  s_axis_s2mm_tready, s_axis_s2mm_tlast, mm2s_introut, s2mm_introut, axi_dma_tstvec)
/* synthesis syn_black_box black_box_pad_pin="s_axi_lite_aclk,m_axi_sg_aclk,m_axi_mm2s_aclk,m_axi_s2mm_aclk,axi_resetn,s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_awaddr[9:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_wdata[31:0],s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_araddr[9:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_sg_awaddr[31:0],m_axi_sg_awlen[7:0],m_axi_sg_awsize[2:0],m_axi_sg_awburst[1:0],m_axi_sg_awprot[2:0],m_axi_sg_awcache[3:0],m_axi_sg_awvalid,m_axi_sg_awready,m_axi_sg_wdata[31:0],m_axi_sg_wstrb[3:0],m_axi_sg_wlast,m_axi_sg_wvalid,m_axi_sg_wready,m_axi_sg_bresp[1:0],m_axi_sg_bvalid,m_axi_sg_bready,m_axi_sg_araddr[31:0],m_axi_sg_arlen[7:0],m_axi_sg_arsize[2:0],m_axi_sg_arburst[1:0],m_axi_sg_arprot[2:0],m_axi_sg_arcache[3:0],m_axi_sg_arvalid,m_axi_sg_arready,m_axi_sg_rdata[31:0],m_axi_sg_rresp[1:0],m_axi_sg_rlast,m_axi_sg_rvalid,m_axi_sg_rready,m_axi_mm2s_araddr[31:0],m_axi_mm2s_arlen[7:0],m_axi_mm2s_arsize[2:0],m_axi_mm2s_arburst[1:0],m_axi_mm2s_arprot[2:0],m_axi_mm2s_arcache[3:0],m_axi_mm2s_arvalid,m_axi_mm2s_arready,m_axi_mm2s_rdata[63:0],m_axi_mm2s_rresp[1:0],m_axi_mm2s_rlast,m_axi_mm2s_rvalid,m_axi_mm2s_rready,mm2s_prmry_reset_out_n,m_axis_mm2s_tdata[63:0],m_axis_mm2s_tkeep[7:0],m_axis_mm2s_tvalid,m_axis_mm2s_tready,m_axis_mm2s_tlast,m_axi_s2mm_awaddr[31:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[63:0],m_axi_s2mm_wstrb[7:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s2mm_prmry_reset_out_n,s_axis_s2mm_tdata[63:0],s_axis_s2mm_tkeep[7:0],s_axis_s2mm_tvalid,s_axis_s2mm_tready,s_axis_s2mm_tlast,mm2s_introut,s2mm_introut,axi_dma_tstvec[31:0]" */;
  input s_axi_lite_aclk;
  input m_axi_sg_aclk;
  input m_axi_mm2s_aclk;
  input m_axi_s2mm_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [9:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [9:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awcache;
  output m_axi_sg_awvalid;
  input m_axi_sg_awready;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_wvalid;
  input m_axi_sg_wready;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_bvalid;
  output m_axi_sg_bready;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_arcache;
  output m_axi_sg_arvalid;
  input m_axi_sg_arready;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  input m_axi_sg_rvalid;
  output m_axi_sg_rready;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [63:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output mm2s_prmry_reset_out_n;
  output [63:0]m_axis_mm2s_tdata;
  output [7:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  output m_axis_mm2s_tlast;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [63:0]m_axi_s2mm_wdata;
  output [7:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  output s2mm_prmry_reset_out_n;
  input [63:0]s_axis_s2mm_tdata;
  input [7:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input s_axis_s2mm_tlast;
  output mm2s_introut;
  output s2mm_introut;
  output [31:0]axi_dma_tstvec;
endmodule
