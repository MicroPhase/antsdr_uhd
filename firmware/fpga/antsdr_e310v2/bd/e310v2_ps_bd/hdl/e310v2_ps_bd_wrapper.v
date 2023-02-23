//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Feb 10 10:52:12 2023
//Host        : jcc running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target e310v2_ps_bd_wrapper.bd
//Design      : e310v2_ps_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module e310v2_ps_bd_wrapper
   (FCLK_CLK0,
    FCLK_CLK1,
    FCLK_CLK2,
    FCLK_RESET0_N,
    FCLK_RESET1_N,
    PS_DDR3_addr,
    PS_DDR3_ba,
    PS_DDR3_cas_n,
    PS_DDR3_ck_n,
    PS_DDR3_ck_p,
    PS_DDR3_cke,
    PS_DDR3_cs_n,
    PS_DDR3_dm,
    PS_DDR3_dq,
    PS_DDR3_dqs_n,
    PS_DDR3_dqs_p,
    PS_DDR3_odt,
    PS_DDR3_ras_n,
    PS_DDR3_reset_n,
    PS_DDR3_we_n,
    PS_MIO_ddr_vrn,
    PS_MIO_ddr_vrp,
    PS_MIO_mio,
    PS_MIO_ps_clk,
    PS_MIO_ps_porb,
    PS_MIO_ps_srstb,
    arm_eth_rx_tdata,
    arm_eth_rx_tkeep,
    arm_eth_rx_tlast,
    arm_eth_rx_tready,
    arm_eth_rx_tvalid,
    arm_eth_tx_tdata,
    arm_eth_tx_tkeep,
    arm_eth_tx_tlast,
    arm_eth_tx_tready,
    arm_eth_tx_tvalid,
    bus_clk,
    bus_rstn,
    clk40,
    clk40_rstn,
    gpio_i,
    gpio_o,
    gpio_t,
    h2c_fifo_post_rd_count,
    h2c_fifo_post_tdata,
    h2c_fifo_post_tready,
    h2c_fifo_post_tvalid,
    h2c_fifo_pre_tdata,
    h2c_fifo_pre_tready,
    h2c_fifo_pre_tvalid,
    h2c_fifo_pre_wr_count,
    m_axi_eth_internal_araddr,
    m_axi_eth_internal_arprot,
    m_axi_eth_internal_arready,
    m_axi_eth_internal_arvalid,
    m_axi_eth_internal_awaddr,
    m_axi_eth_internal_awprot,
    m_axi_eth_internal_awready,
    m_axi_eth_internal_awvalid,
    m_axi_eth_internal_bready,
    m_axi_eth_internal_bresp,
    m_axi_eth_internal_bvalid,
    m_axi_eth_internal_rdata,
    m_axi_eth_internal_rready,
    m_axi_eth_internal_rresp,
    m_axi_eth_internal_rvalid,
    m_axi_eth_internal_wdata,
    m_axi_eth_internal_wready,
    m_axi_eth_internal_wstrb,
    m_axi_eth_internal_wvalid,
    m_axi_net_araddr,
    m_axi_net_arprot,
    m_axi_net_arready,
    m_axi_net_arvalid,
    m_axi_net_awaddr,
    m_axi_net_awprot,
    m_axi_net_awready,
    m_axi_net_awvalid,
    m_axi_net_bready,
    m_axi_net_bresp,
    m_axi_net_bvalid,
    m_axi_net_rdata,
    m_axi_net_rready,
    m_axi_net_rresp,
    m_axi_net_rvalid,
    m_axi_net_wdata,
    m_axi_net_wready,
    m_axi_net_wstrb,
    m_axi_net_wvalid,
    m_axis_dma_tdata,
    m_axis_dma_tkeep,
    m_axis_dma_tlast,
    m_axis_dma_tready,
    m_axis_dma_tvalid,
    s_axis_dma_tdata,
    s_axis_dma_tkeep,
    s_axis_dma_tlast,
    s_axis_dma_tready,
    s_axis_dma_tvalid);
  output FCLK_CLK0;
  output FCLK_CLK1;
  output FCLK_CLK2;
  output FCLK_RESET0_N;
  output FCLK_RESET1_N;
  inout [14:0]PS_DDR3_addr;
  inout [2:0]PS_DDR3_ba;
  inout PS_DDR3_cas_n;
  inout PS_DDR3_ck_n;
  inout PS_DDR3_ck_p;
  inout PS_DDR3_cke;
  inout PS_DDR3_cs_n;
  inout [3:0]PS_DDR3_dm;
  inout [31:0]PS_DDR3_dq;
  inout [3:0]PS_DDR3_dqs_n;
  inout [3:0]PS_DDR3_dqs_p;
  inout PS_DDR3_odt;
  inout PS_DDR3_ras_n;
  inout PS_DDR3_reset_n;
  inout PS_DDR3_we_n;
  inout PS_MIO_ddr_vrn;
  inout PS_MIO_ddr_vrp;
  inout [53:0]PS_MIO_mio;
  inout PS_MIO_ps_clk;
  inout PS_MIO_ps_porb;
  inout PS_MIO_ps_srstb;
  input [63:0]arm_eth_rx_tdata;
  input [7:0]arm_eth_rx_tkeep;
  input arm_eth_rx_tlast;
  output arm_eth_rx_tready;
  input arm_eth_rx_tvalid;
  output [63:0]arm_eth_tx_tdata;
  output [7:0]arm_eth_tx_tkeep;
  output arm_eth_tx_tlast;
  input arm_eth_tx_tready;
  output arm_eth_tx_tvalid;
  input bus_clk;
  input bus_rstn;
  input clk40;
  input clk40_rstn;
  input [63:0]gpio_i;
  output [63:0]gpio_o;
  output [63:0]gpio_t;
  output [8:0]h2c_fifo_post_rd_count;
  output [63:0]h2c_fifo_post_tdata;
  input h2c_fifo_post_tready;
  output h2c_fifo_post_tvalid;
  input [63:0]h2c_fifo_pre_tdata;
  output h2c_fifo_pre_tready;
  input h2c_fifo_pre_tvalid;
  output [8:0]h2c_fifo_pre_wr_count;
  output [31:0]m_axi_eth_internal_araddr;
  output [2:0]m_axi_eth_internal_arprot;
  input [0:0]m_axi_eth_internal_arready;
  output [0:0]m_axi_eth_internal_arvalid;
  output [31:0]m_axi_eth_internal_awaddr;
  output [2:0]m_axi_eth_internal_awprot;
  input [0:0]m_axi_eth_internal_awready;
  output [0:0]m_axi_eth_internal_awvalid;
  output [0:0]m_axi_eth_internal_bready;
  input [1:0]m_axi_eth_internal_bresp;
  input [0:0]m_axi_eth_internal_bvalid;
  input [31:0]m_axi_eth_internal_rdata;
  output [0:0]m_axi_eth_internal_rready;
  input [1:0]m_axi_eth_internal_rresp;
  input [0:0]m_axi_eth_internal_rvalid;
  output [31:0]m_axi_eth_internal_wdata;
  input [0:0]m_axi_eth_internal_wready;
  output [3:0]m_axi_eth_internal_wstrb;
  output [0:0]m_axi_eth_internal_wvalid;
  output [31:0]m_axi_net_araddr;
  output [2:0]m_axi_net_arprot;
  input [0:0]m_axi_net_arready;
  output [0:0]m_axi_net_arvalid;
  output [31:0]m_axi_net_awaddr;
  output [2:0]m_axi_net_awprot;
  input [0:0]m_axi_net_awready;
  output [0:0]m_axi_net_awvalid;
  output [0:0]m_axi_net_bready;
  input [1:0]m_axi_net_bresp;
  input [0:0]m_axi_net_bvalid;
  input [31:0]m_axi_net_rdata;
  output [0:0]m_axi_net_rready;
  input [1:0]m_axi_net_rresp;
  input [0:0]m_axi_net_rvalid;
  output [31:0]m_axi_net_wdata;
  input [0:0]m_axi_net_wready;
  output [3:0]m_axi_net_wstrb;
  output [0:0]m_axi_net_wvalid;
  output [63:0]m_axis_dma_tdata;
  output [7:0]m_axis_dma_tkeep;
  output m_axis_dma_tlast;
  input m_axis_dma_tready;
  output m_axis_dma_tvalid;
  input [63:0]s_axis_dma_tdata;
  input [7:0]s_axis_dma_tkeep;
  input s_axis_dma_tlast;
  output s_axis_dma_tready;
  input s_axis_dma_tvalid;

  wire FCLK_CLK0;
  wire FCLK_CLK1;
  wire FCLK_CLK2;
  wire FCLK_RESET0_N;
  wire FCLK_RESET1_N;
  wire [14:0]PS_DDR3_addr;
  wire [2:0]PS_DDR3_ba;
  wire PS_DDR3_cas_n;
  wire PS_DDR3_ck_n;
  wire PS_DDR3_ck_p;
  wire PS_DDR3_cke;
  wire PS_DDR3_cs_n;
  wire [3:0]PS_DDR3_dm;
  wire [31:0]PS_DDR3_dq;
  wire [3:0]PS_DDR3_dqs_n;
  wire [3:0]PS_DDR3_dqs_p;
  wire PS_DDR3_odt;
  wire PS_DDR3_ras_n;
  wire PS_DDR3_reset_n;
  wire PS_DDR3_we_n;
  wire PS_MIO_ddr_vrn;
  wire PS_MIO_ddr_vrp;
  wire [53:0]PS_MIO_mio;
  wire PS_MIO_ps_clk;
  wire PS_MIO_ps_porb;
  wire PS_MIO_ps_srstb;
  wire [63:0]arm_eth_rx_tdata;
  wire [7:0]arm_eth_rx_tkeep;
  wire arm_eth_rx_tlast;
  wire arm_eth_rx_tready;
  wire arm_eth_rx_tvalid;
  wire [63:0]arm_eth_tx_tdata;
  wire [7:0]arm_eth_tx_tkeep;
  wire arm_eth_tx_tlast;
  wire arm_eth_tx_tready;
  wire arm_eth_tx_tvalid;
  wire bus_clk;
  wire bus_rstn;
  wire clk40;
  wire clk40_rstn;
  wire [63:0]gpio_i;
  wire [63:0]gpio_o;
  wire [63:0]gpio_t;
  wire [8:0]h2c_fifo_post_rd_count;
  wire [63:0]h2c_fifo_post_tdata;
  wire h2c_fifo_post_tready;
  wire h2c_fifo_post_tvalid;
  wire [63:0]h2c_fifo_pre_tdata;
  wire h2c_fifo_pre_tready;
  wire h2c_fifo_pre_tvalid;
  wire [8:0]h2c_fifo_pre_wr_count;
  wire [31:0]m_axi_eth_internal_araddr;
  wire [2:0]m_axi_eth_internal_arprot;
  wire [0:0]m_axi_eth_internal_arready;
  wire [0:0]m_axi_eth_internal_arvalid;
  wire [31:0]m_axi_eth_internal_awaddr;
  wire [2:0]m_axi_eth_internal_awprot;
  wire [0:0]m_axi_eth_internal_awready;
  wire [0:0]m_axi_eth_internal_awvalid;
  wire [0:0]m_axi_eth_internal_bready;
  wire [1:0]m_axi_eth_internal_bresp;
  wire [0:0]m_axi_eth_internal_bvalid;
  wire [31:0]m_axi_eth_internal_rdata;
  wire [0:0]m_axi_eth_internal_rready;
  wire [1:0]m_axi_eth_internal_rresp;
  wire [0:0]m_axi_eth_internal_rvalid;
  wire [31:0]m_axi_eth_internal_wdata;
  wire [0:0]m_axi_eth_internal_wready;
  wire [3:0]m_axi_eth_internal_wstrb;
  wire [0:0]m_axi_eth_internal_wvalid;
  wire [31:0]m_axi_net_araddr;
  wire [2:0]m_axi_net_arprot;
  wire [0:0]m_axi_net_arready;
  wire [0:0]m_axi_net_arvalid;
  wire [31:0]m_axi_net_awaddr;
  wire [2:0]m_axi_net_awprot;
  wire [0:0]m_axi_net_awready;
  wire [0:0]m_axi_net_awvalid;
  wire [0:0]m_axi_net_bready;
  wire [1:0]m_axi_net_bresp;
  wire [0:0]m_axi_net_bvalid;
  wire [31:0]m_axi_net_rdata;
  wire [0:0]m_axi_net_rready;
  wire [1:0]m_axi_net_rresp;
  wire [0:0]m_axi_net_rvalid;
  wire [31:0]m_axi_net_wdata;
  wire [0:0]m_axi_net_wready;
  wire [3:0]m_axi_net_wstrb;
  wire [0:0]m_axi_net_wvalid;
  wire [63:0]m_axis_dma_tdata;
  wire [7:0]m_axis_dma_tkeep;
  wire m_axis_dma_tlast;
  wire m_axis_dma_tready;
  wire m_axis_dma_tvalid;
  wire [63:0]s_axis_dma_tdata;
  wire [7:0]s_axis_dma_tkeep;
  wire s_axis_dma_tlast;
  wire s_axis_dma_tready;
  wire s_axis_dma_tvalid;

  e310v2_ps_bd e310v2_ps_bd_i
       (.FCLK_CLK0(FCLK_CLK0),
        .FCLK_CLK1(FCLK_CLK1),
        .FCLK_CLK2(FCLK_CLK2),
        .FCLK_RESET0_N(FCLK_RESET0_N),
        .FCLK_RESET1_N(FCLK_RESET1_N),
        .PS_DDR3_addr(PS_DDR3_addr),
        .PS_DDR3_ba(PS_DDR3_ba),
        .PS_DDR3_cas_n(PS_DDR3_cas_n),
        .PS_DDR3_ck_n(PS_DDR3_ck_n),
        .PS_DDR3_ck_p(PS_DDR3_ck_p),
        .PS_DDR3_cke(PS_DDR3_cke),
        .PS_DDR3_cs_n(PS_DDR3_cs_n),
        .PS_DDR3_dm(PS_DDR3_dm),
        .PS_DDR3_dq(PS_DDR3_dq),
        .PS_DDR3_dqs_n(PS_DDR3_dqs_n),
        .PS_DDR3_dqs_p(PS_DDR3_dqs_p),
        .PS_DDR3_odt(PS_DDR3_odt),
        .PS_DDR3_ras_n(PS_DDR3_ras_n),
        .PS_DDR3_reset_n(PS_DDR3_reset_n),
        .PS_DDR3_we_n(PS_DDR3_we_n),
        .PS_MIO_ddr_vrn(PS_MIO_ddr_vrn),
        .PS_MIO_ddr_vrp(PS_MIO_ddr_vrp),
        .PS_MIO_mio(PS_MIO_mio),
        .PS_MIO_ps_clk(PS_MIO_ps_clk),
        .PS_MIO_ps_porb(PS_MIO_ps_porb),
        .PS_MIO_ps_srstb(PS_MIO_ps_srstb),
        .arm_eth_rx_tdata(arm_eth_rx_tdata),
        .arm_eth_rx_tkeep(arm_eth_rx_tkeep),
        .arm_eth_rx_tlast(arm_eth_rx_tlast),
        .arm_eth_rx_tready(arm_eth_rx_tready),
        .arm_eth_rx_tvalid(arm_eth_rx_tvalid),
        .arm_eth_tx_tdata(arm_eth_tx_tdata),
        .arm_eth_tx_tkeep(arm_eth_tx_tkeep),
        .arm_eth_tx_tlast(arm_eth_tx_tlast),
        .arm_eth_tx_tready(arm_eth_tx_tready),
        .arm_eth_tx_tvalid(arm_eth_tx_tvalid),
        .bus_clk(bus_clk),
        .bus_rstn(bus_rstn),
        .clk40(clk40),
        .clk40_rstn(clk40_rstn),
        .gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .gpio_t(gpio_t),
        .h2c_fifo_post_rd_count(h2c_fifo_post_rd_count),
        .h2c_fifo_post_tdata(h2c_fifo_post_tdata),
        .h2c_fifo_post_tready(h2c_fifo_post_tready),
        .h2c_fifo_post_tvalid(h2c_fifo_post_tvalid),
        .h2c_fifo_pre_tdata(h2c_fifo_pre_tdata),
        .h2c_fifo_pre_tready(h2c_fifo_pre_tready),
        .h2c_fifo_pre_tvalid(h2c_fifo_pre_tvalid),
        .h2c_fifo_pre_wr_count(h2c_fifo_pre_wr_count),
        .m_axi_eth_internal_araddr(m_axi_eth_internal_araddr),
        .m_axi_eth_internal_arprot(m_axi_eth_internal_arprot),
        .m_axi_eth_internal_arready(m_axi_eth_internal_arready),
        .m_axi_eth_internal_arvalid(m_axi_eth_internal_arvalid),
        .m_axi_eth_internal_awaddr(m_axi_eth_internal_awaddr),
        .m_axi_eth_internal_awprot(m_axi_eth_internal_awprot),
        .m_axi_eth_internal_awready(m_axi_eth_internal_awready),
        .m_axi_eth_internal_awvalid(m_axi_eth_internal_awvalid),
        .m_axi_eth_internal_bready(m_axi_eth_internal_bready),
        .m_axi_eth_internal_bresp(m_axi_eth_internal_bresp),
        .m_axi_eth_internal_bvalid(m_axi_eth_internal_bvalid),
        .m_axi_eth_internal_rdata(m_axi_eth_internal_rdata),
        .m_axi_eth_internal_rready(m_axi_eth_internal_rready),
        .m_axi_eth_internal_rresp(m_axi_eth_internal_rresp),
        .m_axi_eth_internal_rvalid(m_axi_eth_internal_rvalid),
        .m_axi_eth_internal_wdata(m_axi_eth_internal_wdata),
        .m_axi_eth_internal_wready(m_axi_eth_internal_wready),
        .m_axi_eth_internal_wstrb(m_axi_eth_internal_wstrb),
        .m_axi_eth_internal_wvalid(m_axi_eth_internal_wvalid),
        .m_axi_net_araddr(m_axi_net_araddr),
        .m_axi_net_arprot(m_axi_net_arprot),
        .m_axi_net_arready(m_axi_net_arready),
        .m_axi_net_arvalid(m_axi_net_arvalid),
        .m_axi_net_awaddr(m_axi_net_awaddr),
        .m_axi_net_awprot(m_axi_net_awprot),
        .m_axi_net_awready(m_axi_net_awready),
        .m_axi_net_awvalid(m_axi_net_awvalid),
        .m_axi_net_bready(m_axi_net_bready),
        .m_axi_net_bresp(m_axi_net_bresp),
        .m_axi_net_bvalid(m_axi_net_bvalid),
        .m_axi_net_rdata(m_axi_net_rdata),
        .m_axi_net_rready(m_axi_net_rready),
        .m_axi_net_rresp(m_axi_net_rresp),
        .m_axi_net_rvalid(m_axi_net_rvalid),
        .m_axi_net_wdata(m_axi_net_wdata),
        .m_axi_net_wready(m_axi_net_wready),
        .m_axi_net_wstrb(m_axi_net_wstrb),
        .m_axi_net_wvalid(m_axi_net_wvalid),
        .m_axis_dma_tdata(m_axis_dma_tdata),
        .m_axis_dma_tkeep(m_axis_dma_tkeep),
        .m_axis_dma_tlast(m_axis_dma_tlast),
        .m_axis_dma_tready(m_axis_dma_tready),
        .m_axis_dma_tvalid(m_axis_dma_tvalid),
        .s_axis_dma_tdata(s_axis_dma_tdata),
        .s_axis_dma_tkeep(s_axis_dma_tkeep),
        .s_axis_dma_tlast(s_axis_dma_tlast),
        .s_axis_dma_tready(s_axis_dma_tready),
        .s_axis_dma_tvalid(s_axis_dma_tvalid));
endmodule
