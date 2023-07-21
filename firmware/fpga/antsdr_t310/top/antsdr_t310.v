// --------------------------------------------------------------------------------
// Copyright (c) 2019 ~ 2023 by MicroPhase Technologies Inc. 
// --------------------------------------------------------------------------------
//
// Disclaimer:
//
//  This VHDL/Verilog or C/C++ source code is intended as a design reference
//  which illustrates how these types of functions can be implemented.
//  It is the user's responsibility to verify their design for
//  consistency and functionality through the use of formal
//  verification methods.  MicroPhase provides no warranty regarding the use 
//  or functionality of this code.
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//           
//                     MicroPhase Technologies Inc
//                     Shanghai, China
//
//                     web: http://www.microphase.cn/   
//                     email: support@microphase.cn
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// Major Functions:	
//
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// License: LGPL-3.0-or-later
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// Revision History:
// Date          By            Revision    Change Description
//---------------------------------------------------------------------
// 2023-05-06     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

`default_nettype none
module antsdr_t310 (
	output wire   [3:0] PL_LED,


	// AD936x - SPI Interface:
	output wire 	 		CAT_SPI_EN      ,  // Enable
	input  wire	 			CAT_SPI_DO      ,  // MISO
	output wire 	 		CAT_SPI_DI      ,  // MOSI
	output wire 	 		CAT_SPI_CLK     ,  // SPI Clk

	// AD936x - Control:
	output wire  	     	CAT_EN          ,
	output wire  	     	CAT_EN_AGC      ,
	output wire  	     	CAT_RESETn      ,
	output wire  	     	CAT_TXnRX       ,
	output wire             CAT_SYNC        ,
	output wire [3:0] 		CAT_CTL_IN      , // These should be outputs
	input  wire [7:0]	 	CAT_CTL_OUT     , // MUST BE INPUT

	// AD936x - Data:
	input  wire	 			CAT_DCLK_P      , // Clock from AD936x (RX)
	input  wire	 			CAT_DCLK_N      , // Clock from AD936x (RX)
	output wire 	 		CAT_FBCLK_P     , // Clock to AD936x (TX)
	output wire    			CAT_FBCLK_N     ,
	input  wire [5:0]  		RX_DATA_P       , 
	input  wire [5:0] 		RX_DATA_N       , 

	output wire [5:0]  		TX_DATA_P       , 
	output wire [5:0] 		TX_DATA_N       , 
	input  wire	 			CAT_RX_FR_P     ,
	input  wire	 			CAT_RX_FR_N     ,
	output wire 	 		CAT_TX_FR_P     ,
	output wire    			CAT_TX_FR_N     ,

	// Clock disciplining / AD5662 controls
	// output wire             GPS_LOCK        ,
	// output wire             REF_PPS_LOCK    ,
	// output wire             REF_10M_LOCK    ,

	// RF Hardware Control
	output wire             FE_TXRX2_SEL2 ,
	output wire             FE_TXRX2_SEL1 ,
	output wire             FE_TXRX1_SEL2 ,
	output wire             FE_TXRX1_SEL1 ,
	output wire             FE_RX2_SEL2 ,
	output wire             FE_RX2_SEL1 ,
	output wire             FE_RX1_SEL2 ,
	output wire             FE_RX1_SEL1 ,
	output wire             tx_amp_en1,
	output wire             tx_amp_en2,

	output wire             GPS_NRST,
	// output wire             GPS_PWEN,
	input  wire             GPS_RX,
	output wire             GPS_TX,

	inout  wire     [7:0] 	fp_gpio         ,    
	output wire 			GPIO_EN 		,

	// SFP
	input wire  SFP1_RX_P,
	input wire  SFP1_RX_N,
	output wire SFP1_TX_P,
	output wire SFP1_TX_N,
	input wire  SFP1_RXLOS,
	input wire  SFP1_TXFAULT,
	input wire  SFP1_MOD_ABS, // Unused
	output wire SFP1_RS0,
	output wire SFP1_RS1,
	output wire SFP1_TXDISABLE,


	input wire  SFP0_RX_P,
	input wire  SFP0_RX_N,
	output wire SFP0_TX_P,
	output wire SFP0_TX_N,
	input wire  SFP0_RXLOS,
	input wire  SFP0_TXFAULT,
	input wire  SFP0_MOD_ABS, // Unused
	output wire SFP0_RS0,
	output wire SFP0_RS1,
	output wire SFP0_TXDISABLE,


	// input wire  SFP0_RX_P,
	// input wire  SFP0_RX_N,
	// output wire SFP0_TX_P,
	// output wire SFP0_TX_N,
	// input wire  SFP0_RXLOS,
	// input wire  SFP0_TXFAULT,
	// input wire  SFP0_MOD_ABS, // Unused
	// output wire SFP0_RS0,
	// output wire SFP0_RS1,
	// output wire SFP0_TXDISABLE,

	// MGT Clocks

	output wire CLK_PLL_SCLK,
	output wire CLK_PLL_SDATA,
	output wire CLK_PLL_SLE,
	input  wire CLK_MUX_OUT,
	output wire CLK_REF_SEL,

	input wire  CLK_MGT_125M_P,
	input wire  CLK_MGT_125M_N,
	input wire  CLK_MGT_156_25M_P,
	input wire  CLK_MGT_156_25M_N,

	// PS Connections
	inout wire [53:0] PS_MIO,
	inout wire        PS_CLK,
	inout wire        PS_SRST_B,
	inout wire        PS_POR_B,
	inout wire        DDR_MODCLK_P,
	inout wire        DDR_MODCLK_N,
	inout wire        PS_DDR3_CKE,
	inout wire        PS_DDR3_RESET_N,
	inout wire [31:0] PS_DDR3_DQ,
	inout wire [14:0] PS_DDR3_ADDR,
	inout wire [3:0]  PS_DDR3_DM,
	inout wire [2:0]  PS_DDR3_BA,
	inout wire [3:0]  PS_DDR3_DQS_P,
	inout wire [3:0]  PS_DDR3_DQS_N,
	inout wire        PS_DDR3_ODT,
	inout wire        PS_DDR3_VRN,
	inout wire        PS_DDR3_VRP,
	inout wire        PS_DDR3_WE_N,
	inout wire        PS_DDR3_CS_N,
	inout wire        PS_DDR3_CAS_N,
	inout wire        PS_DDR3_RAS_N,


	// PL Dram
	output wire [14:0]	pl_ddr3_addr,
	output wire [2:0]	pl_ddr3_ba,
	output wire 		pl_ddr3_cas_n,
	output wire [0:0]	pl_ddr3_ck_n,
	output wire [0:0]	pl_ddr3_ck_p,
	output wire [0:0]	pl_ddr3_cke,
	output wire [0:0]	pl_ddr3_cs_n,
	output wire [3:0]	pl_ddr3_dm,
	inout  wire [31:0]	pl_ddr3_dq,
	inout  wire [3:0]	pl_ddr3_dqs_n,
	inout  wire [3:0]	pl_ddr3_dqs_p,
	output wire [0:0]	pl_ddr3_odt,
	output wire 		pl_ddr3_ras_n,
	output wire 		pl_ddr3_reset_n,
	output wire 		pl_ddr3_we_n,
	input  wire 		pl_ddr_ref_clk_n,
	input  wire 		pl_ddr_ref_clk_p,


	// LEDs
	output wire LED_LINK1,
	output wire LED_ACT1,

	output wire LED_LINK2,
	output wire LED_ACT2,

	// PPS, REFCLK
	input wire  CLK_SYNC_INT,      // PPS from GPS
	input wire  CLK_SYNC_EXT      // PPS from external connector


	);

	wire  CLK_REF_RAW;      // FPGA reference clock (GPS or external)
	
	assign PL_LED[3:1] = 3'b111;
	assign PL_LED[0] = CLK_MUX_OUT;
	assign GPIO_EN = 1'b1;

	localparam CHDR_W         = 64;
	localparam RFNOC_PROTOVER = { 8'd1, 8'd0 };


	`ifdef SFP_1GBE
	parameter PROTOCOL = "1GbE";
	parameter MDIO_EN = 1'b1;
	parameter MDIO_PHYADDR = 5'd4;
	`elsif SFP_10GBE
	parameter PROTOCOL = "10GbE";
	parameter MDIO_EN = 1'b1;
	parameter MDIO_PHYADDR = 5'd4;
	`elsif SFP_AURORA
	parameter PROTOCOL = "Aurora";
	parameter MDIO_EN = 1'b0;
	parameter MDIO_PHYADDR = 5'd0;
	`else
	parameter PROTOCOL = "Disabled";
	parameter MDIO_EN = 1'b0;
	parameter MDIO_PHYADDR = 5'd0;
	`endif

	// Constants
	localparam REG_AWIDTH = 14; // log2(0x4000)
	localparam REG_DWIDTH = 32;
	localparam DB_GPIO_WIDTH = 32;
	localparam FP_GPIO_OFFSET = 32; // Offset within ps_gpio_*
	localparam FP_GPIO_WIDTH = 8;

	//If bus_clk freq ever changes, update this parameter accordingly.
	localparam BUS_CLK_RATE = 32'd200000000; //200 MHz bus_clk rate.
	localparam SFP_PORTNUM = 8'b0; // Only one SFP port
	localparam NUM_RADIOS = 1;
	localparam NUM_CHANNELS_PER_RADIO = 2;
	localparam NUM_DBOARDS = 1;
	localparam NUM_CHANNELS = NUM_RADIOS * NUM_CHANNELS_PER_RADIO;

	// Clocks
	wire xgige_clk156;
	wire bus_clk;
	wire radio_clk;
	
	wire reg_clk;
	wire clk40;
	wire ddr3_dma_clk;
	wire FCLK_CLK0;
	wire FCLK_CLK1;
	wire FCLK_CLK2;
	wire FCLK_CLK3;

	// Resets
	wire global_rst;
	wire bus_rst;
	wire reg_rstn;
	wire clk40_rst;
	wire clk40_rstn;
	wire FCLK_RESET0_N;
	wire radio_rst;
	wire pl_ddr3_rst_n;

	// Regport for SFP
	wire        m_axi_net_arvalid;
	wire        m_axi_net_awvalid;
	wire        m_axi_net_bready;
	wire        m_axi_net_rready;
	wire        m_axi_net_wvalid;
	wire [11:0] m_axi_net_arid;
	wire [11:0] m_axi_net_awid;
	wire [11:0] m_axi_net_wid;
	wire [31:0] m_axi_net_araddr;
	wire [31:0] m_axi_net_awaddr;
	wire [31:0] m_axi_net_wdata;
	wire [3:0]  m_axi_net_wstrb;
	wire        m_axi_net_arready;
	wire        m_axi_net_awready;
	wire        m_axi_net_bvalid;
	wire        m_axi_net_rlast;
	wire        m_axi_net_rvalid;
	wire        m_axi_net_wready;
	wire [1:0]  m_axi_net_bresp;
	wire [1:0]  m_axi_net_rresp;
	wire [31:0] m_axi_net_rdata;


	wire        m_axi_net_sfp1_arvalid;
	wire        m_axi_net_sfp1_awvalid;
	wire        m_axi_net_sfp1_bready;
	wire        m_axi_net_sfp1_rready;
	wire        m_axi_net_sfp1_wvalid;
	wire [11:0] m_axi_net_sfp1_arid;
	wire [11:0] m_axi_net_sfp1_awid;
	wire [11:0] m_axi_net_sfp1_wid;
	wire [31:0] m_axi_net_sfp1_araddr;
	wire [31:0] m_axi_net_sfp1_awaddr;
	wire [31:0] m_axi_net_sfp1_wdata;
	wire [3:0]  m_axi_net_sfp1_wstrb;
	wire        m_axi_net_sfp1_arready;
	wire        m_axi_net_sfp1_awready;
	wire        m_axi_net_sfp1_bvalid;
	wire        m_axi_net_sfp1_rlast;
	wire        m_axi_net_sfp1_rvalid;
	wire        m_axi_net_sfp1_wready;
	wire [1:0]  m_axi_net_sfp1_bresp;
	wire [1:0]  m_axi_net_sfp1_rresp;
	wire [31:0] m_axi_net_sfp1_rdata;

	// Crossbar
	wire        m_axi_xbar_arvalid;
	wire        m_axi_xbar_awvalid;
	wire        m_axi_xbar_bready;
	wire        m_axi_xbar_rready;
	wire        m_axi_xbar_wvalid;
	wire [11:0] m_axi_xbar_arid;
	wire [11:0] m_axi_xbar_awid;
	wire [11:0] m_axi_xbar_wid;
	wire [31:0] m_axi_xbar_araddr;
	wire [31:0] m_axi_xbar_awaddr;
	wire [31:0] m_axi_xbar_wdata;
	wire [3:0]  m_axi_xbar_wstrb;
	wire        m_axi_xbar_arready;
	wire        m_axi_xbar_awready;
	wire        m_axi_xbar_bvalid;
	wire        m_axi_xbar_rlast;
	wire        m_axi_xbar_rvalid;
	wire        m_axi_xbar_wready;
	wire [1:0]  m_axi_xbar_bresp;
	wire [1:0]  m_axi_xbar_rresp;
	wire [31:0] m_axi_xbar_rdata;

	// ETH DMA
	wire        m_axi_eth_dma_arvalid;
	wire        m_axi_eth_dma_awvalid;
	wire        m_axi_eth_dma_bready;
	wire        m_axi_eth_dma_rready;
	wire        m_axi_eth_dma_wvalid;
	wire [11:0] m_axi_eth_dma_arid;
	wire [11:0] m_axi_eth_dma_awid;
	wire [11:0] m_axi_eth_dma_wid;
	wire [31:0] m_axi_eth_dma_araddr;
	wire [31:0] m_axi_eth_dma_awaddr;
	wire [31:0] m_axi_eth_dma_wdata;
	wire [3:0]  m_axi_eth_dma_wstrb;
	wire        m_axi_eth_dma_arready;
	wire        m_axi_eth_dma_awready;
	wire        m_axi_eth_dma_bvalid;
	wire        m_axi_eth_dma_rlast;
	wire        m_axi_eth_dma_rvalid;
	wire        m_axi_eth_dma_wready;
	wire [1:0]  m_axi_eth_dma_bresp;
	wire [1:0]  m_axi_eth_dma_rresp;
	wire [31:0] m_axi_eth_dma_rdata;

	wire        m_axi_eth_dma_sfp1_arvalid;
	wire        m_axi_eth_dma_sfp1_awvalid;
	wire        m_axi_eth_dma_sfp1_bready;
	wire        m_axi_eth_dma_sfp1_rready;
	wire        m_axi_eth_dma_sfp1_wvalid;
	wire [11:0] m_axi_eth_dma_sfp1_arid;
	wire [11:0] m_axi_eth_dma_sfp1_awid;
	wire [11:0] m_axi_eth_dma_sfp1_wid;
	wire [31:0] m_axi_eth_dma_sfp1_araddr;
	wire [31:0] m_axi_eth_dma_sfp1_awaddr;
	wire [31:0] m_axi_eth_dma_sfp1_wdata;
	wire [3:0]  m_axi_eth_dma_sfp1_wstrb;
	wire        m_axi_eth_dma_sfp1_arready;
	wire        m_axi_eth_dma_sfp1_awready;
	wire        m_axi_eth_dma_sfp1_bvalid;
	wire        m_axi_eth_dma_sfp1_rlast;
	wire        m_axi_eth_dma_sfp1_rvalid;
	wire        m_axi_eth_dma_sfp1_wready;
	wire [1:0]  m_axi_eth_dma_sfp1_bresp;
	wire [1:0]  m_axi_eth_dma_sfp1_rresp;
	wire [31:0] m_axi_eth_dma_sfp1_rdata;

	wire        m_axi_eth_internal_arvalid;
	wire        m_axi_eth_internal_awvalid;
	wire        m_axi_eth_internal_bready;
	wire        m_axi_eth_internal_rready;
	wire        m_axi_eth_internal_wvalid;
	wire [31:0] m_axi_eth_internal_araddr;
	wire [31:0] m_axi_eth_internal_awaddr;
	wire [31:0] m_axi_eth_internal_wdata;
	wire [3:0]  m_axi_eth_internal_wstrb;
	wire        m_axi_eth_internal_arready;
	wire        m_axi_eth_internal_awready;
	wire        m_axi_eth_internal_bvalid;
	wire        m_axi_eth_internal_rvalid;
	wire        m_axi_eth_internal_wready;
	wire [1:0]  m_axi_eth_internal_bresp;
	wire [1:0]  m_axi_eth_internal_rresp;
	wire [31:0] m_axi_eth_internal_rdata;

	// Processing System
	wire [15:0] IRQ_F2P;

	// Internal Ethernet xport adapter to PS
	wire [63:0] h2e_tdata;
	wire [7:0]  h2e_tkeep;
	wire        h2e_tlast;
	wire        h2e_tready;
	wire        h2e_tvalid;

	wire [63:0] e2h_tdata;
	wire [7:0]  e2h_tkeep;
	wire        e2h_tlast;
	wire        e2h_tready;
	wire        e2h_tvalid;

	wire [63:0] m_axis_dma_tdata;
	wire        m_axis_dma_tlast;
	wire        m_axis_dma_tready;
	wire        m_axis_dma_tvalid;

	wire [63:0] s_axis_dma_tdata;
	wire        s_axis_dma_tlast;
	wire        s_axis_dma_tready;
	wire        s_axis_dma_tvalid;

	// HP0 -- High Performance port 0
	wire [31:0] s_axi_hp0_awaddr;
	wire [2:0]  s_axi_hp0_awprot;
	wire        s_axi_hp0_awvalid;
	wire        s_axi_hp0_awready;
	wire [63:0] s_axi_hp0_wdata;
	wire [7:0]  s_axi_hp0_wstrb;
	wire        s_axi_hp0_wvalid;
	wire        s_axi_hp0_wready;
	wire [1:0]  s_axi_hp0_bresp;
	wire        s_axi_hp0_bvalid;
	wire        s_axi_hp0_bready;
	wire [31:0] s_axi_hp0_araddr;
	wire [2:0]  s_axi_hp0_arprot;
	wire        s_axi_hp0_arvalid;
	wire        s_axi_hp0_arready;
	wire [63:0] s_axi_hp0_rdata;
	wire [1:0]  s_axi_hp0_rresp;
	wire        s_axi_hp0_rvalid;
	wire        s_axi_hp0_rready;
	wire        s_axi_hp0_rlast;
	wire [3:0]  s_axi_hp0_arcache;
	wire [7:0]  s_axi_hp0_awlen;
	wire [2:0]  s_axi_hp0_awsize;
	wire [1:0]  s_axi_hp0_awburst;
	wire [3:0]  s_axi_hp0_awcache;
	wire        s_axi_hp0_wlast;
	wire [7:0]  s_axi_hp0_arlen;
	wire [1:0]  s_axi_hp0_arburst;
	wire [2:0]  s_axi_hp0_arsize;

	wire [31:0] s_axi_eth_descriptor_awaddr;
	wire [2:0]  s_axi_eth_descriptor_awprot;
	wire        s_axi_eth_descriptor_awvalid;
	wire        s_axi_eth_descriptor_awready;
	wire [31:0] s_axi_eth_descriptor_wdata;
	wire [3:0]  s_axi_eth_descriptor_wstrb;
	wire        s_axi_eth_descriptor_wvalid;
	wire        s_axi_eth_descriptor_wready;
	wire [1:0]  s_axi_eth_descriptor_bresp;
	wire        s_axi_eth_descriptor_bvalid;
	wire        s_axi_eth_descriptor_bready;
	wire [31:0] s_axi_eth_descriptor_araddr;
	wire [2:0]  s_axi_eth_descriptor_arprot;
	wire        s_axi_eth_descriptor_arvalid;
	wire        s_axi_eth_descriptor_arready;
	wire [31:0] s_axi_eth_descriptor_rdata;
	wire [1:0]  s_axi_eth_descriptor_rresp;
	wire        s_axi_eth_descriptor_rvalid;
	wire        s_axi_eth_descriptor_rready;
	wire        s_axi_eth_descriptor_rlast;
	wire [3:0]  s_axi_eth_descriptor_arcache;
	wire [7:0]  s_axi_eth_descriptor_awlen;
	wire [2:0]  s_axi_eth_descriptor_awsize;
	wire [1:0]  s_axi_eth_descriptor_awburst;
	wire [3:0]  s_axi_eth_descriptor_awcache;
	wire        s_axi_eth_descriptor_wlast;
	wire [7:0]  s_axi_eth_descriptor_arlen;
	wire [1:0]  s_axi_eth_descriptor_arburst;
	wire [2:0]  s_axi_eth_descriptor_arsize;





	wire [31:0] s_axi_sfp1_hp0_awaddr;
	wire [2:0]  s_axi_sfp1_hp0_awprot;
	wire        s_axi_sfp1_hp0_awvalid;
	wire        s_axi_sfp1_hp0_awready;
	wire [63:0] s_axi_sfp1_hp0_wdata;
	wire [7:0]  s_axi_sfp1_hp0_wstrb;
	wire        s_axi_sfp1_hp0_wvalid;
	wire        s_axi_sfp1_hp0_wready;
	wire [1:0]  s_axi_sfp1_hp0_bresp;
	wire        s_axi_sfp1_hp0_bvalid;
	wire        s_axi_sfp1_hp0_bready;
	wire [31:0] s_axi_sfp1_hp0_araddr;
	wire [2:0]  s_axi_sfp1_hp0_arprot;
	wire        s_axi_sfp1_hp0_arvalid;
	wire        s_axi_sfp1_hp0_arready;
	wire [63:0] s_axi_sfp1_hp0_rdata;
	wire [1:0]  s_axi_sfp1_hp0_rresp;
	wire        s_axi_sfp1_hp0_rvalid;
	wire        s_axi_sfp1_hp0_rready;
	wire        s_axi_sfp1_hp0_rlast;
	wire [3:0]  s_axi_sfp1_hp0_arcache;
	wire [7:0]  s_axi_sfp1_hp0_awlen;
	wire [2:0]  s_axi_sfp1_hp0_awsize;
	wire [1:0]  s_axi_sfp1_hp0_awburst;
	wire [3:0]  s_axi_sfp1_hp0_awcache;
	wire        s_axi_sfp1_hp0_wlast;
	wire [7:0]  s_axi_sfp1_hp0_arlen;
	wire [1:0]  s_axi_sfp1_hp0_arburst;
	wire [2:0]  s_axi_sfp1_hp0_arsize;
	wire [31:0] s_axi_eth_sfp1_descriptor_awaddr;
	wire [2:0]  s_axi_eth_sfp1_descriptor_awprot;
	wire        s_axi_eth_sfp1_descriptor_awvalid;
	wire        s_axi_eth_sfp1_descriptor_awready;
	wire [31:0] s_axi_eth_sfp1_descriptor_wdata;
	wire [3:0]  s_axi_eth_sfp1_descriptor_wstrb;
	wire        s_axi_eth_sfp1_descriptor_wvalid;
	wire        s_axi_eth_sfp1_descriptor_wready;
	wire [1:0]  s_axi_eth_sfp1_descriptor_bresp;
	wire        s_axi_eth_sfp1_descriptor_bvalid;
	wire        s_axi_eth_sfp1_descriptor_bready;
	wire [31:0] s_axi_eth_sfp1_descriptor_araddr;
	wire [2:0]  s_axi_eth_sfp1_descriptor_arprot;
	wire        s_axi_eth_sfp1_descriptor_arvalid;
	wire        s_axi_eth_sfp1_descriptor_arready;
	wire [31:0] s_axi_eth_sfp1_descriptor_rdata;
	wire [1:0]  s_axi_eth_sfp1_descriptor_rresp;
	wire        s_axi_eth_sfp1_descriptor_rvalid;
	wire        s_axi_eth_sfp1_descriptor_rready;
	wire        s_axi_eth_sfp1_descriptor_rlast;
	wire [3:0]  s_axi_eth_sfp1_descriptor_arcache;
	wire [7:0]  s_axi_eth_sfp1_descriptor_awlen;
	wire [2:0]  s_axi_eth_sfp1_descriptor_awsize;
	wire [1:0]  s_axi_eth_sfp1_descriptor_awburst;
	wire [3:0]  s_axi_eth_sfp1_descriptor_awcache;
	wire        s_axi_eth_sfp1_descriptor_wlast;
	wire [7:0]  s_axi_eth_sfp1_descriptor_arlen;
	wire [1:0]  s_axi_eth_sfp1_descriptor_arburst;
	wire [2:0]  s_axi_eth_sfp1_descriptor_arsize;

	// ARM ethernet dma clock crossing
	wire [63:0] arm_eth_tx_tdata;
	wire        arm_eth_tx_tvalid;
	wire        arm_eth_tx_tlast;
	wire        arm_eth_tx_tready;
	wire [3:0]  arm_eth_tx_tuser;
	wire [7:0]  arm_eth_tx_tkeep;

	wire [63:0] arm_eth_tx_tdata_b;
	wire        arm_eth_tx_tvalid_b;
	wire        arm_eth_tx_tlast_b;
	wire        arm_eth_tx_tready_b;
	wire [3:0]  arm_eth_tx_tuser_b;
	wire [7:0]  arm_eth_tx_tkeep_b;

	wire [63:0] arm_eth_rx_tdata;
	wire        arm_eth_rx_tvalid;
	wire        arm_eth_rx_tlast;
	wire        arm_eth_rx_tready;
	wire [3:0]  arm_eth_rx_tuser;
	wire [7:0]  arm_eth_rx_tkeep;

	wire [63:0] arm_eth_rx_tdata_b;
	wire        arm_eth_rx_tvalid_b;
	wire        arm_eth_rx_tlast_b;
	wire        arm_eth_rx_tready_b;
	wire [3:0]  arm_eth_rx_tuser_b;
	wire [7:0]  arm_eth_rx_tkeep_b;

	wire        arm_eth_rx_irq;
	wire        arm_eth_tx_irq;


	wire [63:0] arm_eth_sfp1_tx_tdata;
	wire        arm_eth_sfp1_tx_tvalid;
	wire        arm_eth_sfp1_tx_tlast;
	wire        arm_eth_sfp1_tx_tready;
	wire [3:0]  arm_eth_sfp1_tx_tuser;
	wire [7:0]  arm_eth_sfp1_tx_tkeep;

	wire [63:0] arm_eth_sfp1_tx_tdata_b;
	wire        arm_eth_sfp1_tx_tvalid_b;
	wire        arm_eth_sfp1_tx_tlast_b;
	wire        arm_eth_sfp1_tx_tready_b;
	wire [3:0]  arm_eth_sfp1_tx_tuser_b;
	wire [7:0]  arm_eth_sfp1_tx_tkeep_b;

	wire [63:0] arm_eth_sfp1_rx_tdata;
	wire        arm_eth_sfp1_rx_tvalid;
	wire        arm_eth_sfp1_rx_tlast;
	wire        arm_eth_sfp1_rx_tready;
	wire [3:0]  arm_eth_sfp1_rx_tuser;
	wire [7:0]  arm_eth_sfp1_rx_tkeep;

	wire [63:0] arm_eth_sfp1_rx_tdata_b;
	wire        arm_eth_sfp1_rx_tvalid_b;
	wire        arm_eth_sfp1_rx_tlast_b;
	wire        arm_eth_sfp1_rx_tready_b;
	wire [3:0]  arm_eth_sfp1_rx_tuser_b;
	wire [7:0]  arm_eth_sfp1_rx_tkeep_b;

	wire        arm_eth_sfp1_rx_irq;
	wire        arm_eth_sfp1_tx_irq;


	// Vita to Ethernet
	wire [63:0] v2e_tdata;
	wire [31:0] v2e_tuser;
	wire        v2e_tlast;
	wire        v2e_tvalid;
	wire        v2e_tready;

	// Ethernet to Vita
	wire [63:0] e2v_tdata;
	wire [31:0] e2v_tuser;
	wire        e2v_tlast;
	wire        e2v_tvalid;
	wire        e2v_tready;



	// Vita to Ethernet
	wire [63:0] v2e_sfp1_tdata;
	wire [31:0] v2e_sfp1_tuser;
	wire        v2e_sfp1_tlast;
	wire        v2e_sfp1_tvalid;
	wire        v2e_sfp1_tready;

	// Ethernet to Vita
	wire [63:0] e2v_sfp1_tdata;
	wire [31:0] e2v_sfp1_tuser;
	wire        e2v_sfp1_tlast;
	wire        e2v_sfp1_tvalid;
	wire        e2v_sfp1_tready;

	// Misc
	wire [31:0] sfp_port_info;
	wire [31:0] sfp1_port_info;
	wire        sfp_link_up;
	wire        sfp1_link_up;
	wire [15:0] device_id;
	wire        clocks_locked;



	wire    [63:0]  h2c_fifo_post_tdata     ;
    wire            h2c_fifo_post_tready    ;
    wire            h2c_fifo_post_tvalid    ;
    wire    [8:0]   h2c_fifo_post_rd_count  ;

    wire    [63:0]  h2c_fifo_pre_tdata      ;
    wire            h2c_fifo_pre_tready     ;
    wire            h2c_fifo_pre_tvalid     ;
    wire    [8:0]   h2c_fifo_pre_wr_count   ;


    wire [8:0]  c2h_fifo_post_rd_count  ;
    wire [63:0] c2h_fifo_post_tdata     ;
    wire        c2h_fifo_post_tready    ;
    wire        c2h_fifo_post_tvalid    ;
    wire [63:0] c2h_fifo_pre_tdata      ;
    wire        c2h_fifo_pre_tready     ;
    wire        c2h_fifo_pre_tvalid     ;
    wire [8:0]  c2h_fifo_pre_wr_count   ;

	/////////////////////////////////////////////////////////////////////
	//
	// Resets:
	//  - PL - Global Reset --> Bus Reset
	//                      --> Radio Reset
	//  - PS - FCLK_RESET0_N --> clk40_rst(n)
	//
	//////////////////////////////////////////////////////////////////////

	// Global synchronous reset, on the bus_clk domain. De-asserts after 85
	// bus_clk cycles. Asserted by default.
	por_gen por_gen (
		.clk(bus_clk),
		.reset_out(global_rst)
	);

	// Synchronous reset for the bus_clk domain
	reset_sync bus_reset_gen (
		.clk(bus_clk),
		.reset_in(~clocks_locked),
		.reset_out(bus_rst)
	);


	// reset_sync radio_reset_gen (
	// 	.clk(radio_clk),
	// 	.reset_in(~clocks_locked),
	// 	.reset_out(radio_rst)
	//   );
	// PS-based Resets //
	//
	// Synchronous reset for the clk40 domain. This is derived from the PS reset 0.
	reset_sync clk40_reset_gen (
		.clk(clk40),
		.reset_in(~FCLK_RESET0_N),
		.reset_out(clk40_rst)
	);
	// Invert for various modules.
	assign clk40_rstn = ~clk40_rst;
	assign reg_rstn = clk40_rstn;



	 //hold-off logic for clocks ready
    reg [15:0] clocks_ready_count;
    reg clocks_ready;
    always @(posedge bus_clk or posedge global_rst or negedge clocks_locked) begin
        if (global_rst | !clocks_locked) begin
            clocks_ready_count <= 16'b0;
            clocks_ready <= 1'b0;
        end
        else if (!clocks_ready) begin
            clocks_ready_count <= clocks_ready_count + 1'b1;
            clocks_ready <= (clocks_ready_count == 16'hffff);
        end
    end

    reset_sync radio_sync(.clk(radio_clk), .reset_in(!clocks_ready), .reset_out(radio_rst));





    ///////////////////////////////////////////////////////////////////////
    // AD9361 DATA IO connections
    ///////////////////////////////////////////////////////////////////////

	wire [31:0] rx_data0, rx_data1;
    wire [31:0] tx_data0, tx_data1;
    wire mimo;
	wire [1:0] tx_running_chnl;

	//====================================================
	// AD9361 IO
	//====================================================
	ad9363_lvds_if u_ad9363_lvds_if(
		.ref_clk         ( bus_clk         ),
		.radio_rst       ( radio_rst       ),
		.rx_clk_in_p     ( CAT_DCLK_P     ),
		.rx_clk_in_n     ( CAT_DCLK_N     ),
		.rx_frame_in_p   ( CAT_RX_FR_P   ),
		.rx_frame_in_n   ( CAT_RX_FR_N   ),
		.rx_data_in_p    ( RX_DATA_P    ),
		.rx_data_in_n    ( RX_DATA_N    ),
		.tx_clk_out_p    ( CAT_FBCLK_P    ),
		.tx_clk_out_n    ( CAT_FBCLK_N    ),
		.tx_frame_out_p  ( CAT_TX_FR_P  ),
		.tx_frame_out_n  ( CAT_TX_FR_N  ),
		.tx_data_out_p   ( TX_DATA_P   ),
		.tx_data_out_n   ( TX_DATA_N   ),
		.adc_data_i0     ( rx_data0[31:20]     ),
		.adc_data_q0     ( rx_data0[15:4]      ),
		.adc_data_i1     ( rx_data1[31:20]     ),
		.adc_data_q1     ( rx_data1[15:4]      ),
		.dac_data_i0     ( tx_data0[31:20]      ),
		.dac_data_q0     ( tx_data0[15:4]       ),
		.dac_data_i1     ( tx_data1[31:20]      ),
		.dac_data_q1     ( tx_data1[15:4]       ),
		.mimo            ( mimo            ),
		.radio_clk       ( radio_clk       ),
		.delay_value     ( 'd9     ),
		.delay_load_en   ( 1'b1   ),
		.data_clk_ce     ( 1'b1     )
	);


	assign {rx_data0[19:16],rx_data0[3:0],rx_data1[19:16],rx_data1[3:0]} = 16'h0;

    ///////////////////////////////////////////////////////////////////////
    // SPI connections
    ///////////////////////////////////////////////////////////////////////
    wire mosi,  miso, sclk;
    wire [7:0]  sen;

    // AD936x Slave (it's the only slave for B205)
    assign CAT_SPI_EN   =  sen[0];
    assign CAT_SPI_DI   = ~sen[0] & mosi;
    assign CAT_SPI_CLK  = ~sen[0] & sclk;
    assign miso         = CAT_SPI_DO;


	assign CLK_PLL_SLE   = sen[1];
	assign CLK_PLL_SDATA = ~sen[1] & mosi;
	assign CLK_PLL_SCLK = ~sen[1] & sclk;

    ///////////////////////////////////////////////////////////////////////
    // bus signals
    ///////////////////////////////////////////////////////////////////////
    wire [63:0] ctrl_tdata, resp_tdata, rx_tdata, tx_tdata;
    wire ctrl_tlast, resp_tlast, rx_tlast, tx_tlast;
    wire ctrl_tvalid, resp_tvalid, rx_tvalid, tx_tvalid;
    wire ctrl_tready, resp_tready, rx_tready, tx_tready;

    ///////////////////////////////////////////////////////////////////////
    // frontend assignments
    ///////////////////////////////////////////////////////////////////////
	wire ref_sel;

    
    wire swap_atr_n;
    wire [7:0] radio0_gpio, radio1_gpio;
    reg [7:0] fe0_gpio, fe1_gpio;
 
    always @(posedge radio_clk) begin //Registers in the IOB
       fe0_gpio <= swap_atr_n ? radio1_gpio : radio0_gpio;
       fe1_gpio <= swap_atr_n ? radio0_gpio : radio1_gpio;
    end

    wire SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX;
    wire SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX;
    assign {tx_amp_en1, SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX} = fe0_gpio[7:3];
    assign {tx_amp_en2, SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX} = fe1_gpio[7:3];

	assign FE_TXRX1_SEL1 = SFDX1_TX;
	assign FE_TXRX1_SEL2 = SFDX1_RX;
	assign FE_RX1_SEL1 = SRX1_RX;
	assign FE_RX1_SEL2 = SRX1_TX;

	assign FE_TXRX2_SEL1 = SFDX2_RX;
	assign FE_TXRX2_SEL2 = SFDX2_TX;
	assign FE_RX2_SEL1 = SRX2_TX;
	assign FE_RX2_SEL2 = SRX2_RX;

    // assign FE_TXRX1_SEL1 = (SFDX1_TX==1'b0 && SRX1_TX==1'b1) ? 1'b0 : 1'b1;
    // assign FE_RX1_SEL1 = (SFDX1_RX==1'b0 && SRX1_RX==1'b1) ? 1'b0 : 1'b1;
    // assign FE_TXRX2_SEL1 = (SFDX2_TX==1'b0 && SRX2_TX==1'b1) ? 1'b1 : 1'b0 ;
    // assign FE_RX2_SEL1 = (SFDX2_RX==1'b0 && SRX2_RX==1'b1) ? 1'b1 : 1'b0; 
    // assign FE_TXRX1_SEL1 = 1'b1;
    // assign FE_RX1_SEL1 = 1'b1;
    // assign FE_TXRX2_SEL1 = 1'b0;
    // assign FE_RX2_SEL1 = 1'b0; 
 
    wire [31:0] misc_outs; reg [31:0] misc_outs_r;
 
    always @(posedge bus_clk) misc_outs_r <= misc_outs; //register misc ios to ease routing to flop
 
    wire codec_arst;
    wire tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c;
    
    assign { swap_atr_n, tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c, codec_arst, mimo, ref_sel } = misc_outs_r[8:0];
	assign CLK_REF_SEL = ~ref_sel;
    assign CAT_CTL_IN = 4'b1;
    assign CAT_EN_AGC = 1'b1;
    assign CAT_TXnRX = 1'b1;
    assign CAT_EN = 1'b1;
    assign CAT_RESETn = ~codec_arst;   // Codec Reset // RESETB // Operates active-low
    assign CAT_SYNC = 1'b0;
 
    ///////////////////////////////////////////////////////////////////////
    // b200 core
    ///////////////////////////////////////////////////////////////////////
    wire [9:0] fp_gpio_in, fp_gpio_out, fp_gpio_ddr;

	b200_core #(.EXTRA_BUFF_SIZE(12)) b200_core
	(
	   .bus_clk(bus_clk), .bus_rst(bus_rst),
	   .tx_tdata(tx_tdata), .tx_tlast(tx_tlast), .tx_tvalid(tx_tvalid), .tx_tready(tx_tready),
	   .rx_tdata(rx_tdata), .rx_tlast(rx_tlast),  .rx_tvalid(rx_tvalid), .rx_tready(rx_tready),
	   .ctrl_tdata(ctrl_tdata), .ctrl_tlast(ctrl_tlast),  .ctrl_tvalid(ctrl_tvalid), .ctrl_tready(ctrl_tready),
	   .resp_tdata(resp_tdata), .resp_tlast(resp_tlast),  .resp_tvalid(resp_tvalid), .resp_tready(resp_tready),
 
	   .radio_clk(radio_clk), .radio_rst(radio_rst),
	   .rx0(rx_data0), .rx1(rx_data1),
	   .tx0(tx_data0), .tx1(tx_data1),
	   .tx_running_chnl(tx_running_chnl),
	   .fe0_gpio_out(radio0_gpio), .fe1_gpio_out(radio1_gpio),
	   .fp_gpio_in(fp_gpio_in), .fp_gpio_out(fp_gpio_out), .fp_gpio_ddr(fp_gpio_ddr),
	   
	   .pps_int(CLK_SYNC_INT), .pps_ext(CLK_SYNC_EXT),
 
	   .rxd(GPS_RX), .txd(GPS_TX),
	   .sclk(sclk), .sen(sen), .mosi(mosi), .miso(miso),
	   .rb_misc({31'b0, CLK_MUX_OUT}), .misc_outs(misc_outs), 
	   .lock_signals(CAT_CTL_OUT[7:6]),
	   .debug()
	);

    gpio_atr_io #(.WIDTH(8)) gpio_atr_io_inst (   // B210 with UART
        .clk(radio_clk), .gpio_pins(fp_gpio),
        .gpio_ddr(fp_gpio_ddr[7:0]), .gpio_out(fp_gpio_out[7:0]), .gpio_in(fp_gpio_in[7:0])
    );
    assign fp_gpio_in[9:8] = 2'b00;

    eth_radio_stream_control#(
        .CHDR_W                  ( 64 ),
        .USER_W                  ( 16 ),
		.BYPASS_RX_DEEP_FIFO 	 ( 1  )
    )u_eth_radio_stream_control(
        .clk                     ( bus_clk                     ),
        .rst                     ( bus_rst                     ),
        .e2v_tdata               ( e2v_tdata               ),
        .e2v_tuser               ( e2v_tuser               ),
        .e2v_tlast               ( e2v_tlast               ),
        .e2v_tvalid              ( e2v_tvalid              ),
        .e2v_tready              ( e2v_tready              ),
        .ctrl_tdata              ( ctrl_tdata              ),
        .ctrl_tlast              ( ctrl_tlast              ),
        .ctrl_tvalid             ( ctrl_tvalid             ),
        .ctrl_tready             ( ctrl_tready             ),
        .h2c_fifo_pre_tdata      ( h2c_fifo_pre_tdata      ),
        .h2c_fifo_pre_tvalid     ( h2c_fifo_pre_tvalid     ),
        .h2c_fifo_pre_tready     ( h2c_fifo_pre_tready     ),
        .h2c_fifo_pre_wr_count   ( h2c_fifo_pre_wr_count   ),
        .h2c_fifo_post_tdata     ( h2c_fifo_post_tdata     ),
        .h2c_fifo_post_tvalid    ( h2c_fifo_post_tvalid    ),
        .h2c_fifo_post_tready    ( h2c_fifo_post_tready    ),
        .h2c_fifo_post_rd_count  ( h2c_fifo_post_rd_count  ),

		.c2h_fifo_pre_tdata      ( c2h_fifo_pre_tdata      ),
		.c2h_fifo_pre_tvalid     ( c2h_fifo_pre_tvalid     ),
		.c2h_fifo_pre_tready     ( c2h_fifo_pre_tready     ),
		.c2h_fifo_post_tdata     ( c2h_fifo_post_tdata     ),
		.c2h_fifo_post_tvalid    ( c2h_fifo_post_tvalid    ),
		.c2h_fifo_post_tready    ( c2h_fifo_post_tready    ),
		.c2h_fifo_post_rd_count  ( c2h_fifo_post_rd_count  ),
		.c2h_fifo_pre_wr_count   ( c2h_fifo_pre_wr_count   ),
        
        .tx_tdata                ( tx_tdata                ),
        .tx_tlast                ( tx_tlast                ),
        .tx_tvalid               ( tx_tvalid               ),
        .tx_tready               ( tx_tready               ),
        .resp_tdata              ( resp_tdata              ),
        .resp_tlast              ( resp_tlast              ),
        .resp_tvalid             ( resp_tvalid             ),
        .resp_tready             ( resp_tready             ),
        .rx_tdata                ( rx_tdata                ),
        .rx_tlast                ( rx_tlast                ),
        .rx_tvalid               ( rx_tvalid               ),
        .rx_tready               ( rx_tready               ),
        .v2e_tdata               ( v2e_tdata               ),
        .v2e_tuser               ( v2e_tuser               ),
        .v2e_tlast               ( v2e_tlast               ),
        .v2e_tvalid              ( v2e_tvalid              ),
        .v2e_tready              ( v2e_tready              )
    );

	//====================================================
	// PL DRAM
	//====================================================

	pl_dram_buffer_wrapper u_pl_dram_buffer_wrapper(
		.bus_clk                ( bus_clk                ),
		.deep_fifo_rst_n        ( ~bus_rst        		 ),
		.c2h_fifo_post_rd_count ( c2h_fifo_post_rd_count ),
		.c2h_fifo_post_tdata    ( c2h_fifo_post_tdata    ),
		.c2h_fifo_post_tready   ( c2h_fifo_post_tready   ),
		.c2h_fifo_post_tvalid   ( c2h_fifo_post_tvalid   ),
		.c2h_fifo_pre_tdata     ( c2h_fifo_pre_tdata     ),
		.c2h_fifo_pre_tready    ( c2h_fifo_pre_tready    ),
		.c2h_fifo_pre_tvalid    ( c2h_fifo_pre_tvalid    ),
		.c2h_fifo_pre_wr_count  ( c2h_fifo_pre_wr_count  ),
		.h2c_fifo_post_rd_count ( h2c_fifo_post_rd_count ),
		.h2c_fifo_post_tdata    ( h2c_fifo_post_tdata    ),
		.h2c_fifo_post_tready   ( h2c_fifo_post_tready   ),
		.h2c_fifo_post_tvalid   ( h2c_fifo_post_tvalid   ),
		.h2c_fifo_pre_tdata     ( h2c_fifo_pre_tdata     ),
		.h2c_fifo_pre_tready    ( h2c_fifo_pre_tready    ),
		.h2c_fifo_pre_tvalid    ( h2c_fifo_pre_tvalid    ),
		.h2c_fifo_pre_wr_count  ( h2c_fifo_pre_wr_count  ),
		.pl_ddr3_addr           ( pl_ddr3_addr           ),
		.pl_ddr3_ba             ( pl_ddr3_ba             ),
		.pl_ddr3_cas_n          ( pl_ddr3_cas_n          ),
		.pl_ddr3_ck_n           ( pl_ddr3_ck_n           ),
		.pl_ddr3_ck_p           ( pl_ddr3_ck_p           ),
		.pl_ddr3_cke            ( pl_ddr3_cke            ),
		.pl_ddr3_cs_n           ( pl_ddr3_cs_n           ),
		.pl_ddr3_dm             ( pl_ddr3_dm             ),
		.pl_ddr3_dq             ( pl_ddr3_dq             ),
		.pl_ddr3_dqs_n          ( pl_ddr3_dqs_n          ),
		.pl_ddr3_dqs_p          ( pl_ddr3_dqs_p          ),
		.pl_ddr3_odt            ( pl_ddr3_odt            ),
		.pl_ddr3_ras_n          ( pl_ddr3_ras_n          ),
		.pl_ddr3_reset_n        ( pl_ddr3_reset_n        ),
		.pl_ddr3_we_n           ( pl_ddr3_we_n           ),

		.pl_ddr3_rst_n          ( ~bus_rst          ),
		.pl_ddr_ref_clk_n       ( pl_ddr_ref_clk_n       ),
		.pl_ddr_ref_clk_p       ( pl_ddr_ref_clk_p       )
	);

	/////////////////////////////////////////////////////////////////////
	//
	// Clocks and PPS
	//
	/////////////////////////////////////////////////////////////////////

	wire pps_refclk;
	wire [1:0] pps_select;
	wire ref_select;
	wire refclk_locked_busclk;

	assign clk40   = FCLK_CLK1;   // 40 MHz
	assign bus_clk = FCLK_CLK3;   // 200 MHz
	assign reg_clk = clk40;

	e320_clocking e320_clocking_i (
		.global_rst(global_rst),
		.ref_clk_from_pin(CLK_REF_RAW),
		.ref_clk(),
		.clk156(xgige_clk156),
		.ddr3_dma_clk(ddr3_dma_clk),
		.clocks_locked(clocks_locked),
		.ext_pps_from_pin(CLK_SYNC_EXT),
		.gps_pps_from_pin(CLK_SYNC_INT),
		.pps_select(pps_select),
		.pps_refclk(pps_refclk)
	);

	// assign CLK_REF_SEL = ref_select;

	synchronizer synchronize_rf_clk_lock (
		.clk(bus_clk), .rst(1'b0), .in(CLK_MUX_OUT), .out(refclk_locked_busclk)
	);



	//--------------------------------------------------------------
	// SFP Reference Clocks:
	// 1G requires 125 MHz reference clock
	//--------------------------------------------------------------

	wire gige_refclk;
	wire gige_refclk_bufg;

	// dont_touch required for good SI on clock
	(* dont_touch = "true" *) IBUFDS_GTE2 gige_refclk_ibuf (
		.ODIV2(),
		.CEB  (1'b0),
		.I (CLK_MGT_125M_P),
		.IB(CLK_MGT_125M_N),
		.O (gige_refclk)
	);

	BUFG bufg_gige_refclk_i (
		.I(gige_refclk),
		.O(gige_refclk_bufg)
	);

	//--------------------------------------------------------------
	// SFP Reference Clocks:
	// XG requires 156.25 MHz reference clock
	//--------------------------------------------------------------

	wire xgige_refclk;
	wire xgige_dclk;

	// dont_touch required for good SI on clock
	(* dont_touch = "true" *) IBUFDS_GTE2 ten_gige_refclk_ibuf (
		.ODIV2(),
		.CEB  (1'b0),
		.I (CLK_MGT_156_25M_P),
		.IB(CLK_MGT_156_25M_N),
		.O (xgige_refclk)
	);

	ten_gige_phy_clk_gen xgige_clk_gen_i (
		.refclk_ibuf(xgige_refclk),
		.clk156(xgige_clk156),
		.dclk(xgige_dclk)
	);


	// We support the HG, XG, XA, AA targets, all of which require
	// the 156.25MHz reference clock. Instantiate it here.

	wire qpllreset;
	wire qpllreset_sfp0, qpllreset_sfp1, qpllreset_npio0, qpllreset_npio1;
	wire qplllock;
	wire qplloutclk;
	wire qplloutrefclk;
	wire sfp0_gt_pll_lock, sfp1_gt_pll_lock;

	// We reuse this GT_COMMON wrapper for both ethernet and Aurora because
	// the behavior is identical
	ten_gig_eth_pcs_pma_gt_common # (
		.WRAPPER_SIM_GTRESET_SPEEDUP("TRUE") //Does not affect hardware
	) ten_gig_eth_pcs_pma_gt_common_block (
		.refclk(xgige_refclk),
		.qpllreset(qpllreset), //from 2nd sfp
		.qplllock(qplllock),
		.qplloutclk(qplloutclk),
		.qplloutrefclk(qplloutrefclk),
		.qpllrefclksel(3'b101 /*GTSOUTHREFCLK0*/)
	);

	// The quad's QPLL should reset if any of the channels request it
	// This should never really happen because we are not changing the reference clock
	// source for the QPLL.
	assign qpllreset = qpllreset_sfp0 | qpllreset_sfp1 | qpllreset_npio0 | qpllreset_npio1;

	//--------------------------------------------------------------
	// SFP Reference Clocks:
	// XG requires 156.25 MHz reference clock
	//--------------------------------------------------------------

	wire aurora_refclk;
	wire aurora_clk156;
	wire aurora_init_clk;

	// Use the 156.25MHz reference clock for Aurora
	assign aurora_refclk = xgige_refclk;
	assign aurora_clk156 = xgige_clk156;
	assign aurora_init_clk = xgige_dclk;

	wire sfp_gt_refclk;
	wire sfp_gb_refclk;
	wire sfp_misc_clk;

	// Make SFP1_RS1 open drain to avoid a short circuit when it is connected to
	// ground by the SFP module (per the SFP+ specification).
	wire SFP1_RS1_t;
	assign SFP1_RS1 = SFP1_RS1_t ? 1'bZ : 1'b0;

	// Select Reference Clock according to Protocol
	generate
	if (PROTOCOL == "10GbE") begin

		assign sfp_gt_refclk = xgige_refclk;
		assign sfp_gb_refclk = xgige_clk156;
		assign sfp_misc_clk  = xgige_dclk;
		assign SFP1_RS0      = 1'b1;
		assign SFP1_RS1_t    = 1'b1;

	end else if (PROTOCOL == "1GbE") begin

		assign sfp_gt_refclk = gige_refclk;
		assign sfp_gb_refclk = gige_refclk_bufg;
		assign sfp_misc_clk  = gige_refclk_bufg;
		assign SFP1_RS0      = 1'b0;
		assign SFP1_RS1_t    = 1'b0;

	end else if (PROTOCOL == "Aurora") begin

		assign sfp_gt_refclk = aurora_refclk;
		assign sfp_gb_refclk = aurora_clk156;
		assign sfp_misc_clk  = aurora_init_clk;
		assign SFP1_RS0      = 1'b1;
		assign SFP1_RS1_t    = 1'b1;

	end else begin

		assign sfp_gt_refclk = 1'b0;
		assign sfp_gb_refclk = 1'b0;
		assign sfp_misc_clk  = 1'b0;
		assign SFP1_RS0      = 1'b0;
		assign SFP1_RS1_t    = 1'b0;

	end
	endgenerate



	/////////////////////////////////////////////////////////////////////
	//
	// SFP Wrapper: All protocols (1G/XG/AA) + eth_switch
	//
	/////////////////////////////////////////////////////////////////////

	n3xx_sfp_wrapper #(
		.PROTOCOL(PROTOCOL),
		.MDIO_EN(MDIO_EN),
		.MDIO_PHYADDR(MDIO_PHYADDR),
		.DWIDTH(REG_DWIDTH),     // Width of the AXI4-Lite data bus (must be 32 or 64)
		.AWIDTH(REG_AWIDTH),     // Width of the address bus
		.PORTNUM(SFP_PORTNUM)
	) sfp_wrapper_sfp0 (
		.areset(bus_rst),
		.gt_refclk(sfp_gt_refclk),
		.gb_refclk(sfp_gb_refclk),
		.misc_clk(sfp_misc_clk),

		.bus_rst(bus_rst),
		.bus_clk(bus_clk),
		.user_clk(),
		.sync_clk(),

		// GT_COMMON
		.qpllreset(qpllreset_sfp0),
		.qplllock(qplllock),
		.qplloutclk(qplloutclk),
		.qplloutrefclk(qplloutrefclk),
		.qpllrefclklost(),
   
		.mmcm_locked(1'b0),
		.gt_pll_lock(sfp0_gt_pll_lock),

		.txp(SFP0_TX_P),
		.txn(SFP0_TX_N),
		.rxp(SFP0_RX_P),
		.rxn(SFP0_RX_N),

		.sfpp_rxlos(SFP0_RXLOS),
		.sfpp_tx_fault(SFP0_TXFAULT),
		.sfpp_tx_disable(SFP0_TXDISABLE),

		// Clock and reset
		.s_axi_aclk(reg_clk),
		.s_axi_aresetn(reg_rstn),
		// AXI4-Lite: Write address port (domain: s_axi_aclk)
		.s_axi_awaddr(m_axi_net_awaddr[REG_AWIDTH-1:0]),
		.s_axi_awvalid(m_axi_net_awvalid),
		.s_axi_awready(m_axi_net_awready),
		// AXI4-Lite: Write data port (domain: s_axi_aclk)
		.s_axi_wdata(m_axi_net_wdata),
		.s_axi_wstrb(m_axi_net_wstrb),
		.s_axi_wvalid(m_axi_net_wvalid),
		.s_axi_wready(m_axi_net_wready),
		// AXI4-Lite: Write response port (domain: s_axi_aclk)
		.s_axi_bresp(m_axi_net_bresp),
		.s_axi_bvalid(m_axi_net_bvalid),
		.s_axi_bready(m_axi_net_bready),
		// AXI4-Lite: Read address port (domain: s_axi_aclk)
		.s_axi_araddr(m_axi_net_araddr[REG_AWIDTH-1:0]),
		.s_axi_arvalid(m_axi_net_arvalid),
		.s_axi_arready(m_axi_net_arready),
		// AXI4-Lite: Read data port (domain: s_axi_aclk)
		.s_axi_rdata(m_axi_net_rdata),
		.s_axi_rresp(m_axi_net_rresp),
		.s_axi_rvalid(m_axi_net_rvalid),
		.s_axi_rready(m_axi_net_rready),

		// Ethernet to Vita
		.e2v_tdata(e2v_tdata),
		.e2v_tuser(e2v_tuser),
		.e2v_tlast(e2v_tlast),
		.e2v_tvalid(e2v_tvalid),
		.e2v_tready(e2v_tready),

		// Vita to Ethernet
		.v2e_tdata(v2e_tdata),
		.v2e_tuser(v2e_tuser),
		.v2e_tlast(v2e_tlast),
		.v2e_tvalid(v2e_tvalid),
		.v2e_tready(v2e_tready),


		// Ethernet to CPU
		.e2c_tdata(arm_eth_rx_tdata_b),
		.e2c_tkeep(arm_eth_rx_tkeep_b),
		.e2c_tlast(arm_eth_rx_tlast_b),
		.e2c_tvalid(arm_eth_rx_tvalid_b),
		.e2c_tready(arm_eth_rx_tready_b),

		// CPU to Ethernet
		.c2e_tdata(arm_eth_tx_tdata_b),
		.c2e_tkeep(arm_eth_tx_tkeep_b),
		.c2e_tlast(arm_eth_tx_tlast_b),
		.c2e_tvalid(arm_eth_tx_tvalid_b),
		.c2e_tready(arm_eth_tx_tready_b),

		// Misc
		.port_info(sfp_port_info),
		.device_id(device_id),

		// LED
		.link_up(sfp_link_up),
		.activity(LED_ACT1)
	);

	// assign ps_gpio_in[60] = ps_gpio_tri[60] ? sfp_link_up : ps_gpio_out[60];

	assign LED_LINK1 = sfp_link_up;

	/////////////////////////////////////////////////////////////////////
	//
	// Ethernet DMA (SFP to ARM)
	//
	//////////////////////////////////////////////////////////////////////

	assign  IRQ_F2P[0] = arm_eth_rx_irq;
	assign  IRQ_F2P[1] = arm_eth_tx_irq;

	axi_eth_dma inst_axi_eth_dma (
		.s_axi_lite_aclk(clk40),
		.m_axi_sg_aclk(clk40),
		.m_axi_mm2s_aclk(clk40),
		.m_axi_s2mm_aclk(clk40),
		.axi_resetn(clk40_rstn),

		.s_axi_lite_awaddr(m_axi_eth_dma_awaddr), //FIXME: Synthesis Warning: port width(10) doesn't match 32
		.s_axi_lite_awvalid(m_axi_eth_dma_awvalid),
		.s_axi_lite_awready(m_axi_eth_dma_awready),

		.s_axi_lite_wdata(m_axi_eth_dma_wdata),
		.s_axi_lite_wvalid(m_axi_eth_dma_wvalid),
		.s_axi_lite_wready(m_axi_eth_dma_wready),

		.s_axi_lite_bresp(m_axi_eth_dma_bresp),
		.s_axi_lite_bvalid(m_axi_eth_dma_bvalid),
		.s_axi_lite_bready(m_axi_eth_dma_bready),

		.s_axi_lite_araddr(m_axi_eth_dma_araddr), //FIXME: Synthesis Warning: port width(10) doesn't match 32
		.s_axi_lite_arvalid(m_axi_eth_dma_arvalid),
		.s_axi_lite_arready(m_axi_eth_dma_arready),

		.s_axi_lite_rdata(m_axi_eth_dma_rdata),
		.s_axi_lite_rresp(m_axi_eth_dma_rresp),
		.s_axi_lite_rvalid(m_axi_eth_dma_rvalid),
		.s_axi_lite_rready(m_axi_eth_dma_rready),

		.m_axi_sg_awaddr(s_axi_eth_descriptor_awaddr),
		.m_axi_sg_awlen(s_axi_eth_descriptor_awlen),
		.m_axi_sg_awsize(s_axi_eth_descriptor_awsize),
		.m_axi_sg_awburst(s_axi_eth_descriptor_awburst),
		.m_axi_sg_awprot(s_axi_eth_descriptor_awprot),
		.m_axi_sg_awcache(s_axi_eth_descriptor_awcache),
		.m_axi_sg_awvalid(s_axi_eth_descriptor_awvalid),
		.m_axi_sg_awready(s_axi_eth_descriptor_awready),
		.m_axi_sg_wdata(s_axi_eth_descriptor_wdata),
		.m_axi_sg_wstrb(s_axi_eth_descriptor_wstrb),
		.m_axi_sg_wlast(s_axi_eth_descriptor_wlast),
		.m_axi_sg_wvalid(s_axi_eth_descriptor_wvalid),
		.m_axi_sg_wready(s_axi_eth_descriptor_wready),
		.m_axi_sg_bresp(s_axi_eth_descriptor_bresp),
		.m_axi_sg_bvalid(s_axi_eth_descriptor_bvalid),
		.m_axi_sg_bready(s_axi_eth_descriptor_bready),
		.m_axi_sg_araddr(s_axi_eth_descriptor_araddr),
		.m_axi_sg_arlen(s_axi_eth_descriptor_arlen),
		.m_axi_sg_arsize(s_axi_eth_descriptor_arsize),
		.m_axi_sg_arburst(s_axi_eth_descriptor_arburst),
		.m_axi_sg_arprot(s_axi_eth_descriptor_arprot),
		.m_axi_sg_arcache(s_axi_eth_descriptor_arcache),
		.m_axi_sg_arvalid(s_axi_eth_descriptor_arvalid),
		.m_axi_sg_arready(s_axi_eth_descriptor_arready),
		.m_axi_sg_rdata(s_axi_eth_descriptor_rdata),
		.m_axi_sg_rresp(s_axi_eth_descriptor_rresp),
		.m_axi_sg_rlast(s_axi_eth_descriptor_rlast),
		.m_axi_sg_rvalid(s_axi_eth_descriptor_rvalid),
		.m_axi_sg_rready(s_axi_eth_descriptor_rready),

		.m_axi_mm2s_araddr(s_axi_hp0_araddr),
		.m_axi_mm2s_arlen(s_axi_hp0_arlen),
		.m_axi_mm2s_arsize(s_axi_hp0_arsize),
		.m_axi_mm2s_arburst(s_axi_hp0_arburst),
		.m_axi_mm2s_arprot(s_axi_hp0_arprot),
		.m_axi_mm2s_arcache(s_axi_hp0_arcache),
		.m_axi_mm2s_arvalid(s_axi_hp0_arvalid),
		.m_axi_mm2s_arready(s_axi_hp0_arready),
		.m_axi_mm2s_rdata(s_axi_hp0_rdata),
		.m_axi_mm2s_rresp(s_axi_hp0_rresp),
		.m_axi_mm2s_rlast(s_axi_hp0_rlast),
		.m_axi_mm2s_rvalid(s_axi_hp0_rvalid),
		.m_axi_mm2s_rready(s_axi_hp0_rready),

		.mm2s_prmry_reset_out_n(),
		.m_axis_mm2s_tdata(arm_eth_tx_tdata),
		.m_axis_mm2s_tkeep(arm_eth_tx_tkeep),
		.m_axis_mm2s_tvalid(arm_eth_tx_tvalid),
		.m_axis_mm2s_tready(arm_eth_tx_tready),
		.m_axis_mm2s_tlast(arm_eth_tx_tlast),

		.m_axi_s2mm_awaddr(s_axi_hp0_awaddr),
		.m_axi_s2mm_awlen(s_axi_hp0_awlen),
		.m_axi_s2mm_awsize(s_axi_hp0_awsize),
		.m_axi_s2mm_awburst(s_axi_hp0_awburst),
		.m_axi_s2mm_awprot(s_axi_hp0_awprot),
		.m_axi_s2mm_awcache(s_axi_hp0_awcache),
		.m_axi_s2mm_awvalid(s_axi_hp0_awvalid),
		.m_axi_s2mm_awready(s_axi_hp0_awready),
		.m_axi_s2mm_wdata(s_axi_hp0_wdata),
		.m_axi_s2mm_wstrb(s_axi_hp0_wstrb),
		.m_axi_s2mm_wlast(s_axi_hp0_wlast),
		.m_axi_s2mm_wvalid(s_axi_hp0_wvalid),
		.m_axi_s2mm_wready(s_axi_hp0_wready),
		.m_axi_s2mm_bresp(s_axi_hp0_bresp),
		.m_axi_s2mm_bvalid(s_axi_hp0_bvalid),
		.m_axi_s2mm_bready(s_axi_hp0_bready),

		.s2mm_prmry_reset_out_n(),
		.s_axis_s2mm_tdata(arm_eth_rx_tdata),
		.s_axis_s2mm_tkeep(arm_eth_rx_tkeep),
		.s_axis_s2mm_tvalid(arm_eth_rx_tvalid),
		.s_axis_s2mm_tready(arm_eth_rx_tready),
		.s_axis_s2mm_tlast(arm_eth_rx_tlast),

		.mm2s_introut(arm_eth_tx_irq),
		.s2mm_introut(arm_eth_rx_irq),
		.axi_dma_tstvec()
	);

	// Clock crossing fifo from dma(clk40) to sfp(bus_clk)
	axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_tx_fifo_2clk_i (
		.reset(clk40_rst),
		.i_aclk(clk40),
		.i_tdata({arm_eth_tx_tlast, arm_eth_tx_tkeep, arm_eth_tx_tdata}),
		.i_tvalid(arm_eth_tx_tvalid),
		.i_tready(arm_eth_tx_tready),
		.o_aclk(bus_clk),
		.o_tdata({arm_eth_tx_tlast_b, arm_eth_tx_tkeep_b, arm_eth_tx_tdata_b}),
		.o_tvalid(arm_eth_tx_tvalid_b),
		.o_tready(arm_eth_tx_tready_b)
	);

	// Clock crossing fifo from sfp(bus_clk) to dma(clk40)
	axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_rx_fifo_2clk_i (
		.reset(bus_rst),
		.i_aclk(bus_clk),
		.i_tdata({arm_eth_rx_tlast_b, arm_eth_rx_tkeep_b, arm_eth_rx_tdata_b}),
		.i_tvalid(arm_eth_rx_tvalid_b),
		.i_tready(arm_eth_rx_tready_b),
		.o_aclk(clk40),
		.o_tdata({arm_eth_rx_tlast, arm_eth_rx_tkeep, arm_eth_rx_tdata}),
		.o_tvalid(arm_eth_rx_tvalid),
		.o_tready(arm_eth_rx_tready)
	);




	/////////////////////////////////////////////////////////////////////
	//
	// SFP Wrapper: All protocols (1G/XG/AA) + eth_switch
	//
	/////////////////////////////////////////////////////////////////////

	n3xx_sfp_wrapper #(
		.PROTOCOL(PROTOCOL),
		.MDIO_EN(MDIO_EN),
		.MDIO_PHYADDR(MDIO_PHYADDR),
		.DWIDTH(REG_DWIDTH),     // Width of the AXI4-Lite data bus (must be 32 or 64)
		.AWIDTH(REG_AWIDTH),     // Width of the address bus
		.PORTNUM(SFP_PORTNUM)
	) sfp_wrapper_sfp1 (
		.areset(bus_rst),
		.gt_refclk(sfp_gt_refclk),
		.gb_refclk(sfp_gb_refclk),
		.misc_clk(sfp_misc_clk),

		.bus_rst(bus_rst),
		.bus_clk(bus_clk),
		.user_clk(),
		.sync_clk(),

		// GT_COMMON
		.qpllreset(qpllreset_sfp1),
		.qplllock(qplllock),
		.qplloutclk(qplloutclk),
		.qplloutrefclk(qplloutrefclk),
		.qpllrefclklost(),
   
		.mmcm_locked(1'b0),
		.gt_pll_lock(sfp1_gt_pll_lock),

		.txp(SFP1_TX_P),
		.txn(SFP1_TX_N),
		.rxp(SFP1_RX_P),
		.rxn(SFP1_RX_N),

		.sfpp_rxlos(SFP1_RXLOS),
		.sfpp_tx_fault(SFP1_TXFAULT),
		.sfpp_tx_disable(SFP1_TXDISABLE),

		// Clock and reset
		.s_axi_aclk(reg_clk),
		.s_axi_aresetn(reg_rstn),
		// AXI4-Lite: Write address port (domain: s_axi_aclk)
		.s_axi_awaddr(m_axi_net_sfp1_awaddr[REG_AWIDTH-1:0]),
		.s_axi_awvalid(m_axi_net_sfp1_awvalid),
		.s_axi_awready(m_axi_net_sfp1_awready),
		// AXI4-Lite: Write data port (domain: s_axi_aclk)
		.s_axi_wdata(m_axi_net_sfp1_wdata),
		.s_axi_wstrb(m_axi_net_sfp1_wstrb),
		.s_axi_wvalid(m_axi_net_sfp1_wvalid),
		.s_axi_wready(m_axi_net_sfp1_wready),
		// AXI4-Lite: Write response port (domain: s_axi_aclk)
		.s_axi_bresp(m_axi_net_sfp1_bresp),
		.s_axi_bvalid(m_axi_net_sfp1_bvalid),
		.s_axi_bready(m_axi_net_sfp1_bready),
		// AXI4-Lite: Read address port (domain: s_axi_aclk)
		.s_axi_araddr(m_axi_net_sfp1_araddr[REG_AWIDTH-1:0]),
		.s_axi_arvalid(m_axi_net_sfp1_arvalid),
		.s_axi_arready(m_axi_net_sfp1_arready),
		// AXI4-Lite: Read data port (domain: s_axi_aclk)
		.s_axi_rdata(m_axi_net_sfp1_rdata),
		.s_axi_rresp(m_axi_net_sfp1_rresp),
		.s_axi_rvalid(m_axi_net_sfp1_rvalid),
		.s_axi_rready(m_axi_net_sfp1_rready),

		// Ethernet to Vita
		.e2v_tdata(e2v_sfp1_tdata),
		.e2v_tuser(e2v_sfp1_tuser),
		.e2v_tlast(e2v_sfp1_tlast),
		.e2v_tvalid(e2v_sfp1_tvalid),
		.e2v_tready(e2v_sfp1_tready),

		// Vita to Ethernet
		.v2e_tdata(v2e_sfp1_tdata),
		.v2e_tuser(v2e_sfp1_tuser),
		.v2e_tlast(v2e_sfp1_tlast),
		.v2e_tvalid(v2e_sfp1_tvalid),
		.v2e_tready(v2e_sfp1_tready),


		// Ethernet to CPU
		.e2c_tdata(arm_eth_sfp1_rx_tdata_b),
		.e2c_tkeep(arm_eth_sfp1_rx_tkeep_b),
		.e2c_tlast(arm_eth_sfp1_rx_tlast_b),
		.e2c_tvalid(arm_eth_sfp1_rx_tvalid_b),
		.e2c_tready(arm_eth_sfp1_rx_tready_b),

		// CPU to Ethernet
		.c2e_tdata(arm_eth_sfp1_tx_tdata_b),
		.c2e_tkeep(arm_eth_sfp1_tx_tkeep_b),
		.c2e_tlast(arm_eth_sfp1_tx_tlast_b),
		.c2e_tvalid(arm_eth_sfp1_tx_tvalid_b),
		.c2e_tready(arm_eth_sfp1_tx_tready_b),

		// Misc
		.port_info(sfp1_port_info),
		.device_id(device_id),

		// LED
		.link_up(sfp1_link_up),
		.activity(LED_ACT2)
	);

	// assign ps_gpio_in[60] = ps_gpio_tri[60] ? sfp_link_up : ps_gpio_out[60];

	assign LED_LINK2 = sfp1_link_up;

	/////////////////////////////////////////////////////////////////////
	//
	// Ethernet DMA (SFP to ARM)
	//
	//////////////////////////////////////////////////////////////////////

	assign  IRQ_F2P[4] = arm_eth_sfp1_rx_irq;
	assign  IRQ_F2P[5] = arm_eth_sfp1_tx_irq;

	axi_eth_dma inst_axi_eth_sfp1_dma (
		.s_axi_lite_aclk(clk40),
		.m_axi_sg_aclk(clk40),
		.m_axi_mm2s_aclk(clk40),
		.m_axi_s2mm_aclk(clk40),
		.axi_resetn(clk40_rstn),

		.s_axi_lite_awaddr(m_axi_eth_dma_sfp1_awaddr), //FIXME: Synthesis Warning: port width(10) doesn't match 32
		.s_axi_lite_awvalid(m_axi_eth_dma_sfp1_awvalid),
		.s_axi_lite_awready(m_axi_eth_dma_sfp1_awready),

		.s_axi_lite_wdata(m_axi_eth_dma_sfp1_wdata),
		.s_axi_lite_wvalid(m_axi_eth_dma_wvalid),
		.s_axi_lite_wready(m_axi_eth_dma_sfp1_wready),

		.s_axi_lite_bresp(m_axi_eth_dma_sfp1_bresp),
		.s_axi_lite_bvalid(m_axi_eth_dma_sfp1_bvalid),
		.s_axi_lite_bready(m_axi_eth_dma_sfp1_bready),

		.s_axi_lite_araddr(m_axi_eth_dma_sfp1_araddr), //FIXME: Synthesis Warning: port width(10) doesn't match 32
		.s_axi_lite_arvalid(m_axi_eth_dma_sfp1_arvalid),
		.s_axi_lite_arready(m_axi_eth_dma_sfp1_arready),

		.s_axi_lite_rdata(m_axi_eth_dma_sfp1_rdata),
		.s_axi_lite_rresp(m_axi_eth_dma_sfp1_rresp),
		.s_axi_lite_rvalid(m_axi_eth_dma_sfp1_rvalid),
		.s_axi_lite_rready(m_axi_eth_dma_sfp1_rready),

		.m_axi_sg_awaddr(s_axi_eth_sfp1_descriptor_awaddr),
		.m_axi_sg_awlen(s_axi_eth_sfp1_descriptor_awlen),
		.m_axi_sg_awsize(s_axi_eth_sfp1_descriptor_awsize),
		.m_axi_sg_awburst(s_axi_eth_sfp1_descriptor_awburst),
		.m_axi_sg_awprot(s_axi_eth_sfp1_descriptor_awprot),
		.m_axi_sg_awcache(s_axi_eth_sfp1_descriptor_awcache),
		.m_axi_sg_awvalid(s_axi_eth_sfp1_descriptor_awvalid),
		.m_axi_sg_awready(s_axi_eth_sfp1_descriptor_awready),
		.m_axi_sg_wdata(s_axi_eth_sfp1_descriptor_wdata),
		.m_axi_sg_wstrb(s_axi_eth_sfp1_descriptor_wstrb),
		.m_axi_sg_wlast(s_axi_eth_sfp1_descriptor_wlast),
		.m_axi_sg_wvalid(s_axi_eth_sfp1_descriptor_wvalid),
		.m_axi_sg_wready(s_axi_eth_sfp1_descriptor_wready),
		.m_axi_sg_bresp(s_axi_eth_sfp1_descriptor_bresp),
		.m_axi_sg_bvalid(s_axi_eth_sfp1_descriptor_bvalid),
		.m_axi_sg_bready(s_axi_eth_sfp1_descriptor_bready),
		.m_axi_sg_araddr(s_axi_eth_sfp1_descriptor_araddr),
		.m_axi_sg_arlen(s_axi_eth_sfp1_descriptor_arlen),
		.m_axi_sg_arsize(s_axi_eth_sfp1_descriptor_arsize),
		.m_axi_sg_arburst(s_axi_eth_sfp1_descriptor_arburst),
		.m_axi_sg_arprot(s_axi_eth_sfp1_descriptor_arprot),
		.m_axi_sg_arcache(s_axi_eth_sfp1_descriptor_arcache),
		.m_axi_sg_arvalid(s_axi_eth_sfp1_descriptor_arvalid),
		.m_axi_sg_arready(s_axi_eth_sfp1_descriptor_arready),
		.m_axi_sg_rdata(s_axi_eth_sfp1_descriptor_rdata),
		.m_axi_sg_rresp(s_axi_eth_sfp1_descriptor_rresp),
		.m_axi_sg_rlast(s_axi_eth_sfp1_descriptor_rlast),
		.m_axi_sg_rvalid(s_axi_eth_sfp1_descriptor_rvalid),
		.m_axi_sg_rready(s_axi_eth_sfp1_descriptor_rready),

		.m_axi_mm2s_araddr(s_axi_sfp1_hp0_araddr),
		.m_axi_mm2s_arlen(s_axi_sfp1_hp0_arlen),
		.m_axi_mm2s_arsize(s_axi_sfp1_hp0_arsize),
		.m_axi_mm2s_arburst(s_axi_sfp1_hp0_arburst),
		.m_axi_mm2s_arprot(s_axi_sfp1_hp0_arprot),
		.m_axi_mm2s_arcache(s_axi_sfp1_hp0_arcache),
		.m_axi_mm2s_arvalid(s_axi_sfp1_hp0_arvalid),
		.m_axi_mm2s_arready(s_axi_sfp1_hp0_arready),
		.m_axi_mm2s_rdata(s_axi_sfp1_hp0_rdata),
		.m_axi_mm2s_rresp(s_axi_sfp1_hp0_rresp),
		.m_axi_mm2s_rlast(s_axi_sfp1_hp0_rlast),
		.m_axi_mm2s_rvalid(s_axi_sfp1_hp0_rvalid),
		.m_axi_mm2s_rready(s_axi_sfp1_hp0_rready),

		.mm2s_prmry_reset_out_n(),
		.m_axis_mm2s_tdata(arm_eth_sfp1_tx_tdata),
		.m_axis_mm2s_tkeep(arm_eth_sfp1_tx_tkeep),
		.m_axis_mm2s_tvalid(arm_eth_sfp1_tx_tvalid),
		.m_axis_mm2s_tready(arm_eth_sfp1_tx_tready),
		.m_axis_mm2s_tlast(arm_eth_sfp1_tx_tlast),

		.m_axi_s2mm_awaddr(s_axi_sfp1_hp0_awaddr),
		.m_axi_s2mm_awlen(s_axi_sfp1_hp0_awlen),
		.m_axi_s2mm_awsize(s_axi_sfp1_hp0_awsize),
		.m_axi_s2mm_awburst(s_axi_sfp1_hp0_awburst),
		.m_axi_s2mm_awprot(s_axi_sfp1_hp0_awprot),
		.m_axi_s2mm_awcache(s_axi_sfp1_hp0_awcache),
		.m_axi_s2mm_awvalid(s_axi_sfp1_hp0_awvalid),
		.m_axi_s2mm_awready(s_axi_sfp1_hp0_awready),
		.m_axi_s2mm_wdata(s_axi_sfp1_hp0_wdata),
		.m_axi_s2mm_wstrb(s_axi_sfp1_hp0_wstrb),
		.m_axi_s2mm_wlast(s_axi_sfp1_hp0_wlast),
		.m_axi_s2mm_wvalid(s_axi_sfp1_hp0_wvalid),
		.m_axi_s2mm_wready(s_axi_sfp1_hp0_wready),
		.m_axi_s2mm_bresp(s_axi_sfp1_hp0_bresp),
		.m_axi_s2mm_bvalid(s_axi_sfp1_hp0_bvalid),
		.m_axi_s2mm_bready(s_axi_sfp1_hp0_bready),

		.s2mm_prmry_reset_out_n(),
		.s_axis_s2mm_tdata(arm_eth_sfp1_rx_tdata),
		.s_axis_s2mm_tkeep(arm_eth_sfp1_rx_tkeep),
		.s_axis_s2mm_tvalid(arm_eth_sfp1_rx_tvalid),
		.s_axis_s2mm_tready(arm_eth_sfp1_rx_tready),
		.s_axis_s2mm_tlast(arm_eth_sfp1_rx_tlast),

		.mm2s_introut(arm_eth_sfp1_tx_irq),
		.s2mm_introut(arm_eth_sfp1_rx_irq),
		.axi_dma_tstvec()
	);

	// Clock crossing fifo from dma(clk40) to sfp(bus_clk)
	axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_sfp1_tx_fifo_2clk_i (
		.reset(clk40_rst),
		.i_aclk(clk40),
		.i_tdata({arm_eth_sfp1_tx_tlast, arm_eth_sfp1_tx_tkeep, arm_eth_sfp1_tx_tdata}),
		.i_tvalid(arm_eth_sfp1_tx_tvalid),
		.i_tready(arm_eth_sfp1_tx_tready),
		.o_aclk(bus_clk),
		.o_tdata({arm_eth_sfp1_tx_tlast_b, arm_eth_sfp1_tx_tkeep_b, arm_eth_sfp1_tx_tdata_b}),
		.o_tvalid(arm_eth_sfp1_tx_tvalid_b),
		.o_tready(arm_eth_sfp1_tx_tready_b)
	);

	// Clock crossing fifo from sfp(bus_clk) to dma(clk40)
	axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_sfp1_rx_fifo_2clk_i (
		.reset(bus_rst),
		.i_aclk(bus_clk),
		.i_tdata({arm_eth_sfp1_rx_tlast_b, arm_eth_sfp1_rx_tkeep_b, arm_eth_sfp1_rx_tdata_b}),
		.i_tvalid(arm_eth_sfp1_rx_tvalid_b),
		.i_tready(arm_eth_sfp1_rx_tready_b),
		.o_aclk(clk40),
		.o_tdata({arm_eth_sfp1_rx_tlast, arm_eth_sfp1_rx_tkeep, arm_eth_sfp1_rx_tdata}),
		.o_tvalid(arm_eth_sfp1_rx_tvalid),
		.o_tready(arm_eth_sfp1_rx_tready)
	);
	/////////////////////////////////////////////////////////////////////
	//
	// Internal Ethernet Interface
	//
	//////////////////////////////////////////////////////////////////////
	eth_internal #(
		.DWIDTH(REG_DWIDTH),
		.AWIDTH(REG_AWIDTH),
		.PORTNUM(8'd1)
	) eth_internal_i (
		// Resets
		.bus_rst (bus_rst),

		// Clocks
		.bus_clk (bus_clk),

		//Axi-lite
		.s_axi_aclk     (clk40),
		.s_axi_aresetn  (clk40_rstn),
		.s_axi_awaddr   (m_axi_eth_internal_awaddr),
		.s_axi_awvalid  (m_axi_eth_internal_awvalid),
		.s_axi_awready  (m_axi_eth_internal_awready),

		.s_axi_wdata    (m_axi_eth_internal_wdata),
		.s_axi_wstrb    (m_axi_eth_internal_wstrb),
		.s_axi_wvalid   (m_axi_eth_internal_wvalid),
		.s_axi_wready   (m_axi_eth_internal_wready),

		.s_axi_bresp    (m_axi_eth_internal_bresp),
		.s_axi_bvalid   (m_axi_eth_internal_bvalid),
		.s_axi_bready   (m_axi_eth_internal_bready),

		.s_axi_araddr   (m_axi_eth_internal_araddr),
		.s_axi_arvalid  (m_axi_eth_internal_arvalid),
		.s_axi_arready  (m_axi_eth_internal_arready),

		.s_axi_rdata    (m_axi_eth_internal_rdata),
		.s_axi_rresp    (m_axi_eth_internal_rresp),
		.s_axi_rvalid   (m_axi_eth_internal_rvalid),
		.s_axi_rready   (m_axi_eth_internal_rready),

		// Host-Ethernet DMA interface
		.e2h_tdata    (e2h_tdata),
		.e2h_tkeep    (e2h_tkeep),
		.e2h_tlast    (e2h_tlast),
		.e2h_tvalid   (e2h_tvalid),
		.e2h_tready   (e2h_tready),

		.h2e_tdata    (h2e_tdata),
		.h2e_tkeep    (h2e_tkeep),
		.h2e_tlast    (h2e_tlast),
		.h2e_tvalid   (h2e_tvalid),
		.h2e_tready   (h2e_tready),

		// Vita router interface
		.e2v_tdata    (m_axis_dma_tdata),
		.e2v_tlast    (m_axis_dma_tlast),
		.e2v_tvalid   (m_axis_dma_tvalid),
		.e2v_tready   (m_axis_dma_tready),

		.v2e_tdata    (s_axis_dma_tdata),
		.v2e_tlast    (s_axis_dma_tlast),
		.v2e_tvalid   (s_axis_dma_tvalid),
		.v2e_tready   (s_axis_dma_tready),

		// MISC
		.port_info    (),
		.device_id    (device_id),

		.link_up      (),
		.activity     ()

	);




	/////////////////////////////////////////////////////////////////////
	//
	// PS Connections
	//
	//////////////////////////////////////////////////////////////////////

	wire [63:0] ps_gpio_in;
	wire [63:0] ps_gpio_out;
	wire [63:0] ps_gpio_tri;


	assign ps_gpio_in[60] = sfp_link_up;
	t310_ps_bd e320_ps_bd_i (
		// DDR Interface
		.DDR_VRN(PS_DDR3_VRN),
		.DDR_VRP(PS_DDR3_VRP),
		.DDR_addr(PS_DDR3_ADDR),
		.DDR_ba(PS_DDR3_BA),
		.DDR_cas_n(PS_DDR3_CAS_N),
		.DDR_ck_n(DDR_MODCLK_N),
		.DDR_ck_p(DDR_MODCLK_P),
		.DDR_cke(PS_DDR3_CKE),
		.DDR_cs_n(PS_DDR3_CS_N),
		.DDR_dm(PS_DDR3_DM),
		.DDR_dq(PS_DDR3_DQ),
		.DDR_dqs_n(PS_DDR3_DQS_N),
		.DDR_dqs_p(PS_DDR3_DQS_P),
		.DDR_odt(PS_DDR3_ODT),
		.DDR_ras_n(PS_DDR3_RAS_N),
		.DDR_reset_n(PS_DDR3_RESET_N),
		.DDR_we_n(PS_DDR3_WE_N),

		// Clocks
		.FCLK_CLK0(FCLK_CLK0),
		.FCLK_CLK1(FCLK_CLK1),
		.FCLK_CLK2(FCLK_CLK2),
		.FCLK_CLK3(FCLK_CLK3),

		// Resets
		.FCLK_RESET0_N(FCLK_RESET0_N),

		// GPIO
		.GPIO_0_tri_i(ps_gpio_in),
		.GPIO_0_tri_o(ps_gpio_out),
		.GPIO_0_tri_t(ps_gpio_tri),

		// Interrupts
		// .IRQ_F2P(IRQ_F2P),
		.arm_eth_rx_irq (arm_eth_rx_irq),
		.arm_eth_tx_irq (arm_eth_tx_irq),
		.arm_eth_sfp1_rx_irq (arm_eth_sfp1_rx_irq),
		.arm_eth_sfp1_tx_irq (arm_eth_sfp1_tx_irq),

		// MIO
		.MIO(PS_MIO),

		.PS_CLK(PS_CLK),
		.PS_PORB(PS_POR_B),
		.PS_SRSTB(PS_SRST_B),

		// SPI
		.SPI0_MISO_I(),
		.SPI0_MISO_O(),
		.SPI0_MISO_T(),
		.SPI0_MOSI_I(1'b0),
		.SPI0_MOSI_O(),
		.SPI0_MOSI_T(),
		.SPI0_SCLK_I(1'b0),
		.SPI0_SCLK_O(),
		.SPI0_SCLK_T(),
		.SPI0_SS1_O(),
		.SPI0_SS2_O(),
		.SPI0_SS_I(1'b1),
		.SPI0_SS_O(),
		.SPI0_SS_T(),

		.SPI1_MISO_I(1'b0),
		.SPI1_MISO_O(),
		.SPI1_MISO_T(),
		.SPI1_MOSI_I(1'b0),
		.SPI1_MOSI_O(),
		.SPI1_MOSI_T(),
		.SPI1_SCLK_I(1'b0),
		.SPI1_SCLK_O(),
		.SPI1_SCLK_T(),
		.SPI1_SS1_O(),
		.SPI1_SS2_O(),
		.SPI1_SS_I(1'b1),
		.SPI1_SS_O(),
		.SPI1_SS_T(),

		// Eth DMA Descriptor
		.s_axi_eth_descriptor_araddr(s_axi_eth_descriptor_araddr),
		.s_axi_eth_descriptor_arburst(s_axi_eth_descriptor_arburst),
		.s_axi_eth_descriptor_arcache(s_axi_eth_descriptor_arcache),
		.s_axi_eth_descriptor_arlen(s_axi_eth_descriptor_arlen),
		.s_axi_eth_descriptor_arlock(1'b0),
		.s_axi_eth_descriptor_arprot(s_axi_eth_descriptor_arprot),
		.s_axi_eth_descriptor_arqos(4'b0),
		.s_axi_eth_descriptor_arready(s_axi_eth_descriptor_arready),
		.s_axi_eth_descriptor_arsize(s_axi_eth_descriptor_arsize),
		.s_axi_eth_descriptor_arvalid(s_axi_eth_descriptor_arvalid),
		.s_axi_eth_descriptor_awaddr(s_axi_eth_descriptor_awaddr),
		.s_axi_eth_descriptor_awburst(s_axi_eth_descriptor_awburst),
		.s_axi_eth_descriptor_awcache(s_axi_eth_descriptor_awcache),
		.s_axi_eth_descriptor_awlen(s_axi_eth_descriptor_awlen),
		.s_axi_eth_descriptor_awlock(1'b0),
		.s_axi_eth_descriptor_awprot(s_axi_eth_descriptor_awprot),
		.s_axi_eth_descriptor_awqos(4'b0),
		.s_axi_eth_descriptor_awready(s_axi_eth_descriptor_awready),
		.s_axi_eth_descriptor_awsize(s_axi_eth_descriptor_awsize),
		.s_axi_eth_descriptor_awvalid(s_axi_eth_descriptor_awvalid),
		.s_axi_eth_descriptor_bready(s_axi_eth_descriptor_bready),
		.s_axi_eth_descriptor_bresp(s_axi_eth_descriptor_bresp),
		.s_axi_eth_descriptor_bvalid(s_axi_eth_descriptor_bvalid),
		.s_axi_eth_descriptor_rdata(s_axi_eth_descriptor_rdata),
		.s_axi_eth_descriptor_rlast(s_axi_eth_descriptor_rlast),
		.s_axi_eth_descriptor_rready(s_axi_eth_descriptor_rready),
		.s_axi_eth_descriptor_rresp(s_axi_eth_descriptor_rresp),
		.s_axi_eth_descriptor_rvalid(s_axi_eth_descriptor_rvalid),
		.s_axi_eth_descriptor_wdata(s_axi_eth_descriptor_wdata),
		.s_axi_eth_descriptor_wlast(s_axi_eth_descriptor_wlast),
		.s_axi_eth_descriptor_wready(s_axi_eth_descriptor_wready),
		.s_axi_eth_descriptor_wstrb(s_axi_eth_descriptor_wstrb),
		.s_axi_eth_descriptor_wvalid(s_axi_eth_descriptor_wvalid),


		.s_axi_eth_sfp1_descriptor_araddr(s_axi_eth_sfp1_descriptor_araddr),
		.s_axi_eth_sfp1_descriptor_arburst(s_axi_eth_sfp1_descriptor_arburst),
		.s_axi_eth_sfp1_descriptor_arcache(s_axi_eth_sfp1_descriptor_arcache),
		.s_axi_eth_sfp1_descriptor_arlen(s_axi_eth_sfp1_descriptor_arlen),
		.s_axi_eth_sfp1_descriptor_arlock(1'b0),
		.s_axi_eth_sfp1_descriptor_arprot(s_axi_eth_sfp1_descriptor_arprot),
		.s_axi_eth_sfp1_descriptor_arqos(4'b0),
		.s_axi_eth_sfp1_descriptor_arready(s_axi_eth_sfp1_descriptor_arready),
		.s_axi_eth_sfp1_descriptor_arsize(s_axi_eth_sfp1_descriptor_arsize),
		.s_axi_eth_sfp1_descriptor_arvalid(s_axi_eth_sfp1_descriptor_arvalid),
		.s_axi_eth_sfp1_descriptor_awaddr(s_axi_eth_sfp1_descriptor_awaddr),
		.s_axi_eth_sfp1_descriptor_awburst(s_axi_eth_sfp1_descriptor_awburst),
		.s_axi_eth_sfp1_descriptor_awcache(s_axi_eth_sfp1_descriptor_awcache),
		.s_axi_eth_sfp1_descriptor_awlen(s_axi_eth_sfp1_descriptor_awlen),
		.s_axi_eth_sfp1_descriptor_awlock(1'b0),
		.s_axi_eth_sfp1_descriptor_awprot(s_axi_eth_sfp1_descriptor_awprot),
		.s_axi_eth_sfp1_descriptor_awqos(4'b0),
		.s_axi_eth_sfp1_descriptor_awready(s_axi_eth_sfp1_descriptor_awready),
		.s_axi_eth_sfp1_descriptor_awsize(s_axi_eth_sfp1_descriptor_awsize),
		.s_axi_eth_sfp1_descriptor_awvalid(s_axi_eth_sfp1_descriptor_awvalid),
		.s_axi_eth_sfp1_descriptor_bready(s_axi_eth_sfp1_descriptor_bready),
		.s_axi_eth_sfp1_descriptor_bresp(s_axi_eth_sfp1_descriptor_bresp),
		.s_axi_eth_sfp1_descriptor_bvalid(s_axi_eth_sfp1_descriptor_bvalid),
		.s_axi_eth_sfp1_descriptor_rdata(s_axi_eth_sfp1_descriptor_rdata),
		.s_axi_eth_sfp1_descriptor_rlast(s_axi_eth_sfp1_descriptor_rlast),
		.s_axi_eth_sfp1_descriptor_rready(s_axi_eth_sfp1_descriptor_rready),
		.s_axi_eth_sfp1_descriptor_rresp(s_axi_eth_sfp1_descriptor_rresp),
		.s_axi_eth_sfp1_descriptor_rvalid(s_axi_eth_sfp1_descriptor_rvalid),
		.s_axi_eth_sfp1_descriptor_wdata(s_axi_eth_sfp1_descriptor_wdata),
		.s_axi_eth_sfp1_descriptor_wlast(s_axi_eth_sfp1_descriptor_wlast),
		.s_axi_eth_sfp1_descriptor_wready(s_axi_eth_sfp1_descriptor_wready),
		.s_axi_eth_sfp1_descriptor_wstrb(s_axi_eth_sfp1_descriptor_wstrb),
		.s_axi_eth_sfp1_descriptor_wvalid(s_axi_eth_sfp1_descriptor_wvalid),

		// HP0 - Eth DMA
		.S_AXI_HP0_ACLK(clk40),
		.S_AXI_HP0_ARESETN(clk40_rstn),
		.S_AXI_HP0_araddr(s_axi_hp0_araddr),
		.S_AXI_HP0_arburst(s_axi_hp0_arburst),
		.S_AXI_HP0_arcache(s_axi_hp0_arcache),
		.S_AXI_HP0_arlen(s_axi_hp0_arlen),
		.S_AXI_HP0_arlock(1'b0),
		.S_AXI_HP0_arprot(s_axi_hp0_arprot),
		.S_AXI_HP0_arqos(4'b0),
		.S_AXI_HP0_arready(s_axi_hp0_arready),
		.S_AXI_HP0_arregion(4'b0),
		.S_AXI_HP0_arsize(s_axi_hp0_arsize),
		.S_AXI_HP0_arvalid(s_axi_hp0_arvalid),
		.S_AXI_HP0_awaddr(s_axi_hp0_awaddr),
		.S_AXI_HP0_awburst(s_axi_hp0_awburst),
		.S_AXI_HP0_awcache(s_axi_hp0_awcache),
		.S_AXI_HP0_awlen(s_axi_hp0_awlen),
		.S_AXI_HP0_awlock(1'b0),
		.S_AXI_HP0_awprot(s_axi_hp0_awprot),
		.S_AXI_HP0_awqos(4'b0),
		.S_AXI_HP0_awready(s_axi_hp0_awready),
		.S_AXI_HP0_awregion(4'b0),
		.S_AXI_HP0_awsize(s_axi_hp0_awsize),
		.S_AXI_HP0_awvalid(s_axi_hp0_awvalid),
		.S_AXI_HP0_bready(s_axi_hp0_bready),
		.S_AXI_HP0_bresp(s_axi_hp0_bresp),
		.S_AXI_HP0_bvalid(s_axi_hp0_bvalid),
		.S_AXI_HP0_rdata(s_axi_hp0_rdata),
		.S_AXI_HP0_rlast(s_axi_hp0_rlast),
		.S_AXI_HP0_rready(s_axi_hp0_rready),
		.S_AXI_HP0_rresp(s_axi_hp0_rresp),
		.S_AXI_HP0_rvalid(s_axi_hp0_rvalid),
		.S_AXI_HP0_wdata(s_axi_hp0_wdata),
		.S_AXI_HP0_wlast(s_axi_hp0_wlast),
		.S_AXI_HP0_wready(s_axi_hp0_wready),
		.S_AXI_HP0_wstrb(s_axi_hp0_wstrb),
		.S_AXI_HP0_wvalid(s_axi_hp0_wvalid),

		.S_AXI_SFP1_HP0_araddr(s_axi_sfp1_hp0_araddr),
		.S_AXI_SFP1_HP0_arburst(s_axi_sfp1_hp0_arburst),
		.S_AXI_SFP1_HP0_arcache(s_axi_sfp1_hp0_arcache),
		.S_AXI_SFP1_HP0_arlen(s_axi_sfp1_hp0_arlen),
		.S_AXI_SFP1_HP0_arlock(1'b0),
		.S_AXI_SFP1_HP0_arprot(s_axi_sfp1_hp0_arprot),
		.S_AXI_SFP1_HP0_arqos(4'b0),
		.S_AXI_SFP1_HP0_arready(s_axi_sfp1_hp0_arready),
		.S_AXI_SFP1_HP0_arregion(4'b0),
		.S_AXI_SFP1_HP0_arsize(s_axi_sfp1_hp0_arsize),
		.S_AXI_SFP1_HP0_arvalid(s_axi_sfp1_hp0_arvalid),
		.S_AXI_SFP1_HP0_awaddr(s_axi_sfp1_hp0_awaddr),
		.S_AXI_SFP1_HP0_awburst(s_axi_sfp1_hp0_awburst),
		.S_AXI_SFP1_HP0_awcache(s_axi_sfp1_hp0_awcache),
		.S_AXI_SFP1_HP0_awlen(s_axi_sfp1_hp0_awlen),
		.S_AXI_SFP1_HP0_awlock(1'b0),
		.S_AXI_SFP1_HP0_awprot(s_axi_sfp1_hp0_awprot),
		.S_AXI_SFP1_HP0_awqos(4'b0),
		.S_AXI_SFP1_HP0_awready(s_axi_sfp1_hp0_awready),
		.S_AXI_SFP1_HP0_awregion(4'b0),
		.S_AXI_SFP1_HP0_awsize(s_axi_sfp1_hp0_awsize),
		.S_AXI_SFP1_HP0_awvalid(s_axi_sfp1_hp0_awvalid),
		.S_AXI_SFP1_HP0_bready(s_axi_sfp1_hp0_bready),
		.S_AXI_SFP1_HP0_bresp(s_axi_sfp1_hp0_bresp),
		.S_AXI_SFP1_HP0_bvalid(s_axi_sfp1_hp0_bvalid),
		.S_AXI_SFP1_HP0_rdata(s_axi_sfp1_hp0_rdata),
		.S_AXI_SFP1_HP0_rlast(s_axi_sfp1_hp0_rlast),
		.S_AXI_SFP1_HP0_rready(s_axi_sfp1_hp0_rready),
		.S_AXI_SFP1_HP0_rresp(s_axi_sfp1_hp0_rresp),
		.S_AXI_SFP1_HP0_rvalid(s_axi_sfp1_hp0_rvalid),
		.S_AXI_SFP1_HP0_wdata(s_axi_sfp1_hp0_wdata),
		.S_AXI_SFP1_HP0_wlast(s_axi_sfp1_hp0_wlast),
		.S_AXI_SFP1_HP0_wready(s_axi_sfp1_hp0_wready),
		.S_AXI_SFP1_HP0_wstrb(s_axi_sfp1_hp0_wstrb),
		.S_AXI_SFP1_HP0_wvalid(s_axi_sfp1_hp0_wvalid),


		// Ethernet DMA engines
		.m_axi_eth_dma_araddr(m_axi_eth_dma_araddr),
		.m_axi_eth_dma_arprot(),
		.m_axi_eth_dma_arready(m_axi_eth_dma_arready),
		.m_axi_eth_dma_arvalid(m_axi_eth_dma_arvalid),
		.m_axi_eth_dma_awaddr(m_axi_eth_dma_awaddr),
		.m_axi_eth_dma_awprot(),
		.m_axi_eth_dma_awready(m_axi_eth_dma_awready),
		.m_axi_eth_dma_awvalid(m_axi_eth_dma_awvalid),
		.m_axi_eth_dma_bready(m_axi_eth_dma_bready),
		.m_axi_eth_dma_bresp(m_axi_eth_dma_bresp),
		.m_axi_eth_dma_bvalid(m_axi_eth_dma_bvalid),
		.m_axi_eth_dma_rdata(m_axi_eth_dma_rdata),
		.m_axi_eth_dma_rready(m_axi_eth_dma_rready),
		.m_axi_eth_dma_rresp(m_axi_eth_dma_rresp),
		.m_axi_eth_dma_rvalid(m_axi_eth_dma_rvalid),
		.m_axi_eth_dma_wdata(m_axi_eth_dma_wdata),
		.m_axi_eth_dma_wready(m_axi_eth_dma_wready),
		.m_axi_eth_dma_wstrb(m_axi_eth_dma_wstrb),
		.m_axi_eth_dma_wvalid(m_axi_eth_dma_wvalid),


		.m_axi_eth_dma_sfp1_araddr(m_axi_eth_dma_sfp1_araddr),
		.m_axi_eth_dma_sfp1_arprot(),
		.m_axi_eth_dma_sfp1_arready(m_axi_eth_dma_sfp1_arready),
		.m_axi_eth_dma_sfp1_arvalid(m_axi_eth_dma_sfp1_arvalid),
		.m_axi_eth_dma_sfp1_awaddr(m_axi_eth_dma_sfp1_awaddr),
		.m_axi_eth_dma_sfp1_awprot(),
		.m_axi_eth_dma_sfp1_awready(m_axi_eth_dma_sfp1_awready),
		.m_axi_eth_dma_sfp1_awvalid(m_axi_eth_dma_sfp1_awvalid),
		.m_axi_eth_dma_sfp1_bready(m_axi_eth_dma_sfp1_bready),
		.m_axi_eth_dma_sfp1_bresp(m_axi_eth_dma_sfp1_bresp),
		.m_axi_eth_dma_sfp1_bvalid(m_axi_eth_dma_sfp1_bvalid),
		.m_axi_eth_dma_sfp1_rdata(m_axi_eth_dma_sfp1_rdata),
		.m_axi_eth_dma_sfp1_rready(m_axi_eth_dma_sfp1_rready),
		.m_axi_eth_dma_sfp1_rresp(m_axi_eth_dma_sfp1_rresp),
		.m_axi_eth_dma_sfp1_rvalid(m_axi_eth_dma_sfp1_rvalid),
		.m_axi_eth_dma_sfp1_wdata(m_axi_eth_dma_sfp1_wdata),
		.m_axi_eth_dma_sfp1_wready(m_axi_eth_dma_sfp1_wready),
		.m_axi_eth_dma_sfp1_wstrb(m_axi_eth_dma_sfp1_wstrb),
		.m_axi_eth_dma_sfp1_wvalid(m_axi_eth_dma_sfp1_wvalid),



		.m_axi_eth_internal_araddr(m_axi_eth_internal_araddr),
		.m_axi_eth_internal_arprot(),
		.m_axi_eth_internal_arready(m_axi_eth_internal_arready),
		.m_axi_eth_internal_arvalid(m_axi_eth_internal_arvalid),
		.m_axi_eth_internal_awaddr(m_axi_eth_internal_awaddr),
		.m_axi_eth_internal_awprot(),
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

		// MGT IO Regport
		.m_axi_net_araddr(m_axi_net_araddr),
		.m_axi_net_arprot(),
		.m_axi_net_arready(m_axi_net_arready),
		.m_axi_net_arvalid(m_axi_net_arvalid),
		.m_axi_net_awaddr(m_axi_net_awaddr),
		.m_axi_net_awprot(),
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


		.m_axi_net_sfp1_araddr(m_axi_net_sfp1_araddr),
		.m_axi_net_sfp1_arprot(),
		.m_axi_net_sfp1_arready(m_axi_net_sfp1_arready),
		.m_axi_net_sfp1_arvalid(m_axi_net_sfp1_arvalid),
		.m_axi_net_sfp1_awaddr(m_axi_net_sfp1_awaddr),
		.m_axi_net_sfp1_awprot(),
		.m_axi_net_sfp1_awready(m_axi_net_sfp1_awready),
		.m_axi_net_sfp1_awvalid(m_axi_net_sfp1_awvalid),
		.m_axi_net_sfp1_bready(m_axi_net_sfp1_bready),
		.m_axi_net_sfp1_bresp(m_axi_net_sfp1_bresp),
		.m_axi_net_sfp1_bvalid(m_axi_net_sfp1_bvalid),
		.m_axi_net_sfp1_rdata(m_axi_net_sfp1_rdata),
		.m_axi_net_sfp1_rready(m_axi_net_sfp1_rready),
		.m_axi_net_sfp1_rresp(m_axi_net_sfp1_rresp),
		.m_axi_net_sfp1_rvalid(m_axi_net_sfp1_rvalid),
		.m_axi_net_sfp1_wdata(m_axi_net_sfp1_wdata),
		.m_axi_net_sfp1_wready(m_axi_net_sfp1_wready),
		.m_axi_net_sfp1_wstrb(m_axi_net_sfp1_wstrb),
		.m_axi_net_sfp1_wvalid(m_axi_net_sfp1_wvalid),


		// XBAR Regport
		.m_axi_xbar_araddr(m_axi_xbar_araddr),
		.m_axi_xbar_arprot(),
		.m_axi_xbar_arready(m_axi_xbar_arready),
		.m_axi_xbar_arvalid(m_axi_xbar_arvalid),
		.m_axi_xbar_awaddr(m_axi_xbar_awaddr),
		.m_axi_xbar_awprot(),
		.m_axi_xbar_awready(m_axi_xbar_awready),
		.m_axi_xbar_awvalid(m_axi_xbar_awvalid),
		.m_axi_xbar_bready(m_axi_xbar_bready),
		.m_axi_xbar_bresp(m_axi_xbar_bresp),
		.m_axi_xbar_bvalid(m_axi_xbar_bvalid),
		.m_axi_xbar_rdata(m_axi_xbar_rdata),
		.m_axi_xbar_rready(m_axi_xbar_rready),
		.m_axi_xbar_rresp(m_axi_xbar_rresp),
		.m_axi_xbar_rvalid(m_axi_xbar_rvalid),
		.m_axi_xbar_wdata(m_axi_xbar_wdata),
		.m_axi_xbar_wready(m_axi_xbar_wready),
		.m_axi_xbar_wstrb(m_axi_xbar_wstrb),
		.m_axi_xbar_wvalid(m_axi_xbar_wvalid),

		// USB
		.USBIND_0_port_indctl(),
		.USBIND_0_vbus_pwrfault(),
		.USBIND_0_vbus_pwrselect(),

		.bus_clk(bus_clk),
		.bus_rstn(~bus_rst),
		.clk40(clk40),
		.clk40_rstn(clk40_rstn),
		.S_AXI_GP0_ACLK(clk40),
		.S_AXI_GP0_ARESETN(clk40_rstn),

		// DMA
		.s_axis_dma_tdata(e2h_tdata),
		.s_axis_dma_tkeep(e2h_tkeep),
		.s_axis_dma_tlast(e2h_tlast),
		.s_axis_dma_tready(e2h_tready),
		.s_axis_dma_tvalid(e2h_tvalid),
		.m_axis_dma_tdata(h2e_tdata),
		.m_axis_dma_tkeep(h2e_tkeep),
		.m_axis_dma_tlast(h2e_tlast),
		.m_axis_dma_tready(h2e_tready),
		.m_axis_dma_tvalid(h2e_tvalid)
	);


endmodule // e320
`default_nettype wire
