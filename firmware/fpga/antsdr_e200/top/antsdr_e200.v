// --------------------------------------------------------------------------------
// Copyright (c) 2019 ~ 2022 by MicroPhase Technologies Inc. 
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
/// --------------------------------------------------------------------------------
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
//  This is the top level of antsdr e200 fpga project, which is
//  compatible to usrp b210.
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
// 2022-11-21     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

`default_nettype none
module antsdr_e200 (
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
        output wire 	 		CAT_FBCLK_P     , // Clock to AD936x (TX)
        output wire    			CAT_FBCLK_N     ,
        input  wire [11:0]  	CAT_P0_D        , // RX data is on Port 0
        output wire [11:0] 		CAT_P1_D        , // TX data is on Port 1
        input  wire	 			CAT_RX_FR_P     ,
        output wire 	 		CAT_TX_FR_P     ,
        output wire    			CAT_TX_FR_N     ,

        // AD936x - Always on 40MHz clock:
        input  wire	 			CLK_40MHz_FPGA  ,

        // PPS or 10 MHz 
        input  wire             PPS_IN_EXT      ,
        input  wire             CLKIN_10MHz     ,
        input  wire             CLKIN_10MHz_REQ ,

        // Clock disciplining / AD5662 controls
        output wire             CLK_40M_DAC_nSYNC,
        output wire             CLK_40M_DAC_SCLK ,
        output wire             CLK_40M_DAC_DIN ,

        // RF Hardware Control
        output wire             tx_amp_en1,


        // rgmii interface
        output  wire          	mdc 			,
        inout   wire          	mdio 			,
        input	wire			rgmii_rxc		,
        input	wire			rgmii_rx_ctl	,
        input	wire	[3:0]	rgmii_rxd 		,
        output  wire	 		rgmii_txc 		,
        output  wire	 		rgmii_tx_ctl	,
        output  wire	[3:0]	rgmii_txd    	,
        output  wire          	eth_phy_rst_n  	,

        // PS Connections
        inout   wire    [14:0]  PS_DDR3_addr    ,
        inout   wire    [2:0]   PS_DDR3_ba      ,
        inout   wire            PS_DDR3_cas_n   ,
        inout   wire            PS_DDR3_ck_n    ,
        inout   wire            PS_DDR3_ck_p    ,
        inout   wire            PS_DDR3_cke     ,
        inout   wire            PS_DDR3_cs_n    ,
        inout   wire    [3:0]   PS_DDR3_dm      ,
        inout   wire    [31:0]  PS_DDR3_dq      ,
        inout   wire    [3:0]   PS_DDR3_dqs_n   ,
        inout   wire    [3:0]   PS_DDR3_dqs_p   ,
        inout   wire            PS_DDR3_odt     ,
        inout   wire            PS_DDR3_ras_n   ,
        inout   wire            PS_DDR3_reset_n ,
        inout   wire            PS_DDR3_we_n    ,
        inout   wire            PS_MIO_ddr_vrn  ,
        inout   wire            PS_MIO_ddr_vrp  ,
        inout   wire    [53:0]  PS_MIO_mio      ,
        inout   wire            PS_MIO_ps_clk   ,
        inout   wire            PS_MIO_ps_porb  ,
        inout   wire            PS_MIO_ps_srstb

    );


    parameter PROTOCOL = "1GbE";
    parameter RGMII = 1;
    parameter MDIO_EN = 1'b1;
    parameter MDIO_PHYADDR = 5'd1;


    // Constants
    localparam REG_AWIDTH = 14; // log2(0x4000)
    localparam REG_DWIDTH = 32;
    localparam SFP_PORTNUM = 8'b0; // Only one SFP port

    // Clocks
    wire bus_clk;
    wire radio_clk;
    wire reg_clk;
    wire clk40;
    wire clk200;
    wire FCLK_CLK0;
    wire FCLK_CLK1;
    wire FCLK_CLK2;

    // Resets
    wire global_rst;
    wire bus_rst;
    wire reg_rstn;
    wire clk40_rst;
    wire clk40_rstn;
    wire FCLK_RESET0_N;
    wire FCLK_RESET1_N;

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


    // ETH DMA

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

    // Vita to Ethernet
    wire [63:0] v2e_tdata;
    wire [15:0] v2e_tuser;
    wire        v2e_tlast;
    wire        v2e_tvalid;
    wire        v2e_tready;

    // Ethernet to Vita
    wire [63:0] e2v_tdata;
    wire [15:0] e2v_tuser;
    wire        e2v_tlast;
    wire        e2v_tvalid;
    wire        e2v_tready;

    // Misc
    wire [31:0] port_info;
    wire        link_up;
    wire [15:0] device_id;

    ///////////////////////////////////////////////////////////////////////
    // generate clocks from always on codec main clk
    ///////////////////////////////////////////////////////////////////////
    wire locked;


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

    // Synchronous reset for the bus_clk domain
    reset_sync bus_reset_gen (
        .clk(bus_clk),
        .reset_in(~locked),
        .reset_out(bus_rst)
    );

    assign global_rst = bus_rst;

    reset_sync clk40_reset_gen (
        .clk(clk40),
        .reset_in(~FCLK_RESET0_N),
        .reset_out(clk40_rst)
    );
    // Invert for various modules.
    assign clk40_rstn = ~clk40_rst;
    assign reg_rstn = clk40_rstn;

    /////////////////////////////////////////////////////////////////////
    //
    // Clocks and PPS
    //
    /////////////////////////////////////////////////////////////////////
    wire clk_int40;
    wire [1:0] pps_select;
    wire pps_fpga_int;

    assign clk40   = FCLK_CLK0;   // 40 MHz
    assign reg_clk = clk40;

    reg [15:0] clocks_ready_count;
    reg clocks_ready;
    always @(posedge bus_clk or posedge global_rst or negedge locked) begin
        if (global_rst | !locked) begin
            clocks_ready_count <= 16'b0;
            clocks_ready <= 1'b0;
        end
        else if (!clocks_ready) begin
            clocks_ready_count <= clocks_ready_count + 1'b1;
            clocks_ready <= (clocks_ready_count == 16'hffff);
        end
    end

    ///////////////////////////////////////////////////////////////////////
    // Create sync reset signals
    ///////////////////////////////////////////////////////////////////////
    
    wire   radio_rst;
    reset_sync radio_sync(.clk(radio_clk), .reset_in(!clocks_ready), .reset_out(radio_rst));

    wire ref_sel;
    wire ext_ref;
    wire ref_pll_clk;
    wire ext_ref_locked;
    wire lpps;
    
    wire [15:0] dac_stable;
    wire int_40mhz;
    wire is10meg;
    wire ispps;
    wire pps_ref;
    // pps_select == 2'b00 ----> onboard gps module pps
    // pps_select == 2'b01 ----> external pps/10M
    // pps_select == 2'b10 ----> internal pps genreated by fpga

    assign ext_ref =    (pps_select == 2'b00)? PPS_IN_EXT :
                        (pps_select == 2'b01)? PPS_IN_EXT :
                        (pps_select == 2'b10 && ref_sel == 1'b0)? CLKIN_10MHz : // ref_sel selects the external or gpsdo clock source
                        (pps_select == 2'b10)? pps_fpga_int: 1'b0;
    assign CLKIN_10MHz_REQ = 1'b1;

    assign pps_ref =    (pps_select == 2'b00)? PPS_IN_EXT :
                        (pps_select == 2'b01)? PPS_IN_EXT :
                        (pps_select == 2'b10)? pps_fpga_int: 1'b0;
    PLLE2_ADV #(.BANDWIDTH("OPTIMIZED"), .COMPENSATION("INTERNAL"),
        .DIVCLK_DIVIDE(1),
        .CLKFBOUT_MULT(30),
        .CLKOUT0_DIVIDE(6),
        .CLKOUT1_DIVIDE(30),
        .CLKOUT2_DIVIDE(12),
        .CLKOUT3_DIVIDE(6),
        .CLKIN1_PERIOD(25.0)
    )
    clkgen (
        .PWRDWN(1'b0), .RST(1'b0),
        .CLKIN1(CLK_40MHz_FPGA),
        .CLKOUT0(ref_pll_clk),
        .CLKOUT1(int_40mhz),
        .CLKOUT2(bus_clk),
        .CLKOUT3(clk200),
        .LOCKED(locked)
    );

    // gen_clks instance_name(
    //     // Clock out ports
    //     .clk_out1(int_40mhz),     // output clk_out1
    //     .clk_out2(bus_clk),     // output clk_out2
    //     .clk_out3(ref_pll_clk),     // output clk_out3
    //     .clk_out4(clk200),     // output clk_out4
    //     // Status and control signals
    //     .locked(locked),       // output locked

    //     .clk_in1(CLK_40MHz_FPGA));      // input clk_in1

    b205_ref_pll #(
        .DEVICE("LTC2630")
    ) u_b205_ref_pll(
        .reset      ( 1'b0      ),
        .clk        ( ref_pll_clk        ),
        .refclk     ( int_40mhz     ),
        .ref_x      ( ext_ref        ),
        .locked     ( ext_ref_locked     ),
        .dac_stable ( dac_stable ),
        .dac_dflt   ( 16'hB7D0  ),
        .sclk       ( CLK_40M_DAC_SCLK       ),
        .mosi       ( CLK_40M_DAC_DIN       ),
        .sync_n     ( CLK_40M_DAC_nSYNC     )
    );



    // vio_0 your_instance_name (
    //     .clk(bus_clk),              // input wire clk
    //     .probe_in0(pps_select),  // input wire [1 : 0] probe_in0
    //     .probe_in1(is10meg),  // input wire [0 : 0] probe_in1
    //     .probe_in2(ispps),  // input wire [0 : 0] probe_in2
    //     .probe_in3(ext_ref_locked),  // input wire [0 : 0] probe_in3
    //     .probe_in4(ref_sel),  // input wire [0 : 0] probe_in4
    //     .probe_in5(lpps)  // input wire [0 : 0] probe_in5
    //   );
    ///////////////////////////////////////////////////////////////////////
    // AD936x I/O
    ///////////////////////////////////////////////////////////////////////
    wire [31:0] rx_data0, rx_data1;
    wire [31:0] tx_data0, tx_data1;
    wire mimo;

    antsdr_u205_io  u_antsdr_e200_io (
       .areset                  ( global_rst        ),
       .mimo                    ( mimo              ),
       .rx_clk                  ( CAT_DCLK_P        ),
       .rx_frame                ( CAT_RX_FR_P       ),
       .rx_data                 ( CAT_P0_D          ),
       .rx_i0                   ( rx_data0[31:20]   ),
       .rx_q0                   ( rx_data0[15:4]    ),
       .rx_i1                   ( rx_data1[31:20]   ),
       .rx_q1                   ( rx_data1[15:4]    ),
       .radio_clk               ( radio_clk         ),
       .tx_clk                  ( CAT_FBCLK_P       ),
       .tx_frame                ( CAT_TX_FR_P        ),
       .tx_data                 ( CAT_P1_D          ),
       .tx_i0                   ( tx_data0[31:20]   ),
       .tx_q0                   ( tx_data0[15:4]    ),
       .tx_i1                   ( tx_data1[31:20]   ),
       .tx_q1                   ( tx_data1[15:4]    ),
       .radio_rst               (                   ),
       .rx_stb                  (                   ),
       .tx_stb                  (                   )
     );
    assign {rx_data0[19:16],rx_data0[3:0],rx_data1[19:16],rx_data1[3:0]} = 16'h0;

    
    assign CAT_FBCLK_N = 1'b0;
    assign CAT_TX_FR_N = 1'b0;

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



    wire swap_atr_n;
    wire [7:0] radio0_gpio, radio1_gpio;
    reg [7:0] fe0_gpio, fe1_gpio;
 
    always @(posedge radio_clk) begin //Registers in the IOB
       fe0_gpio <= swap_atr_n ? radio1_gpio : radio0_gpio;
       fe1_gpio <= swap_atr_n ? radio0_gpio : radio1_gpio;
    end
 
    // assign {tx_amp_en1, SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX, LED_RX1, LED_TXRX1_RX, LED_TXRX1_TX} = fe0_gpio;
    // assign {tx_amp_en2, SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX, LED_RX2, LED_TXRX2_RX, LED_TXRX2_TX} = fe1_gpio;

    assign tx_amp_en1 = fe0_gpio[7];
   
 
    wire [31:0] misc_outs; reg [31:0] misc_outs_r;
 
    always @(posedge bus_clk) misc_outs_r <= misc_outs; //register misc ios to ease routing to flop
 
    wire codec_arst;
    wire tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c;
    
    assign { swap_atr_n, tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c, codec_arst, mimo, ref_sel } = misc_outs_r[8:0];
 
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
        .fe0_gpio_out(radio0_gpio), .fe1_gpio_out(radio1_gpio),
        .fp_gpio_in(fp_gpio_in), .fp_gpio_out(fp_gpio_out), .fp_gpio_ddr(fp_gpio_ddr),

        .pps_ref(pps_ref),
        .pps_fpga_int(pps_fpga_int),
        .pps_select(pps_select),

        .sclk(sclk), .sen(sen), .mosi(mosi), .miso(miso),
        .rb_misc({31'b0, ext_ref_locked}), .misc_outs(misc_outs),
        .lock_signals(CAT_CTL_OUT[7:6]),
        .debug()
    );


    eth_radio_stream_control#(
        .CHDR_W                  ( 64 ),
        .USER_W                  ( 16 ),
        .BYPASS_RX_DEEP_FIFO     ( 1  )
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


    wire  mdio_out;
    wire  mdio_tri;
    wire  mdio_in;

    // assign mdio = mdio_tri ? mdio_out : 1'bz;
    // assign mdio_in = mdio;
    assign eth_phy_rst_n = 1'b1;

    IOBUF MDIO_PHY_mdio_iobuf(
        .I(mdio_out),
        .IO(mdio),
        .O(mdio_in),
        .T(mdio_tri)
    );


    wire        rgmii_rx_ctl_dly;
    wire [3:0]  rgmii_rxd_dly;
    rgmii_if_idelay u_rgmii_if_idelay(
        .ref_clk          ( clk200          ),
        .rst              ( bus_rst          ),
        .rgmii_rx_ctl     ( rgmii_rx_ctl     ),
        .rgmii_rxd        ( rgmii_rxd        ),
        .rgmii_rx_ctl_dly ( rgmii_rx_ctl_dly ),
        .rgmii_rxd_dly    ( rgmii_rxd_dly    )
    );



    e200_rgmii_wrapper #(
        .PROTOCOL(PROTOCOL),
        .MDIO_EN(MDIO_EN),
        .RGMII(RGMII),
        .MDIO_PHYADDR(MDIO_PHYADDR),
        .DWIDTH(REG_DWIDTH),     // Width of the AXI4-Lite data bus (must be 32 or 64)
        .AWIDTH(REG_AWIDTH),     // Width of the address bus
        .PORTNUM(SFP_PORTNUM)
    ) u_e200_rgmii_wrapper (
        .areset(bus_rst),
        .bus_rst(bus_rst),
        .bus_clk(bus_clk),

        .mdc            (mdc),
        .mdio_out       (mdio_out),
        .mdio_tri       (mdio_tri),
        .mdio_in        (mdio_in),
        .rgmii_rxc      (rgmii_rxc),
        .rgmii_rx_ctl   (rgmii_rx_ctl_dly),
        .rgmii_rxd      (rgmii_rxd_dly),
        .rgmii_txc      (rgmii_txc),
        .rgmii_tx_ctl   (rgmii_tx_ctl),
        .rgmii_txd      (rgmii_txd),

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
        .port_info(port_info),
        .device_id(device_id),

        // LED
        .link_up(link_up),
        .activity()
    );

    // assign ps_gpio_in[60] = ps_gpio_tri[60] ? link_up : ps_gpio_out[60];

    // assign LED_LINK1 = link_up;


    axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_tx_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth_tx_tlast, arm_eth_tx_tkeep, arm_eth_tx_tdata}),
        .i_tvalid(arm_eth_tx_tvalid),
        .i_tready(arm_eth_tx_tready),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth_tx_tlast_b, arm_eth_tx_tkeep_b, arm_eth_tx_tdata_b}),
        .o_tvalid(arm_eth_tx_tvalid_b),
        .o_tready(arm_eth_tx_tready_b)
    );


    axi_fifo_2clk #(.WIDTH(1+8+64), .SIZE(5)) eth_rx_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth_rx_tlast_b, arm_eth_rx_tkeep_b, arm_eth_rx_tdata_b}),
        .i_tvalid(arm_eth_rx_tvalid_b),
        .i_tready(arm_eth_rx_tready_b),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth_rx_tlast, arm_eth_rx_tkeep, arm_eth_rx_tdata}),
        .o_tvalid(arm_eth_rx_tvalid),
        .o_tready(arm_eth_rx_tready)
    );

    /////////////////////////////////////////////////////////////////////
    //
    // Internal Ethernet Interface
    // This module will be used in the future
    // This module will implement a ethernet interface in the fpga pl 
    // so that the device can work in a standalone mode.
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

    wire [63:0] gpio_i;
    wire [63:0] gpio_o;
    wire [63:0] gpio_t;


    assign gpio_i[60] = link_up;

    e200_ps_bd_wrapper u_e200_ps_bd_wrapper(
        .FCLK_CLK0                  ( FCLK_CLK0                  ),
        .FCLK_CLK1                  ( FCLK_CLK1                  ),
        .FCLK_CLK2                  ( FCLK_CLK2                  ),
        .FCLK_RESET0_N              ( FCLK_RESET0_N              ),
        .FCLK_RESET1_N              ( FCLK_RESET1_N              ),
        .PS_DDR3_addr               ( PS_DDR3_addr               ),
        .PS_DDR3_ba                 ( PS_DDR3_ba                 ),
        .PS_DDR3_cas_n              ( PS_DDR3_cas_n              ),
        .PS_DDR3_ck_n               ( PS_DDR3_ck_n               ),
        .PS_DDR3_ck_p               ( PS_DDR3_ck_p               ),
        .PS_DDR3_cke                ( PS_DDR3_cke                ),
        .PS_DDR3_cs_n               ( PS_DDR3_cs_n               ),
        .PS_DDR3_dm                 ( PS_DDR3_dm                 ),
        .PS_DDR3_dq                 ( PS_DDR3_dq                 ),
        .PS_DDR3_dqs_n              ( PS_DDR3_dqs_n              ),
        .PS_DDR3_dqs_p              ( PS_DDR3_dqs_p              ),
        .PS_DDR3_odt                ( PS_DDR3_odt                ),
        .PS_DDR3_ras_n              ( PS_DDR3_ras_n              ),
        .PS_DDR3_reset_n            ( PS_DDR3_reset_n            ),
        .PS_DDR3_we_n               ( PS_DDR3_we_n               ),
        .PS_MIO_ddr_vrn             ( PS_MIO_ddr_vrn             ),
        .PS_MIO_ddr_vrp             ( PS_MIO_ddr_vrp             ),
        .PS_MIO_mio                 ( PS_MIO_mio                 ),
        .PS_MIO_ps_clk              ( PS_MIO_ps_clk              ),
        .PS_MIO_ps_porb             ( PS_MIO_ps_porb             ),
        .PS_MIO_ps_srstb            ( PS_MIO_ps_srstb            ),

        .arm_eth_rx_tdata           ( arm_eth_rx_tdata           ),
        .arm_eth_rx_tkeep           ( arm_eth_rx_tkeep           ),
        .arm_eth_rx_tlast           ( arm_eth_rx_tlast           ),
        .arm_eth_rx_tready          ( arm_eth_rx_tready          ),
        .arm_eth_rx_tvalid          ( arm_eth_rx_tvalid          ),

        .arm_eth_tx_tdata           ( arm_eth_tx_tdata           ),
        .arm_eth_tx_tkeep           ( arm_eth_tx_tkeep           ),
        .arm_eth_tx_tlast           ( arm_eth_tx_tlast           ),
        .arm_eth_tx_tready          ( arm_eth_tx_tready          ),
        .arm_eth_tx_tvalid          ( arm_eth_tx_tvalid          ),
        .bus_clk                    ( bus_clk                    ),
        .bus_rstn                   ( ~bus_rst                   ),
        .clk40                      ( clk40                      ),
        .clk40_rstn                 ( clk40_rstn                 ),

        .gpio_i                     ( gpio_i                     ),
        .gpio_o                     ( gpio_o                     ),
        .gpio_t                     ( gpio_t                     ),

        .h2c_fifo_post_tdata        (  h2c_fifo_post_tdata       ),
        .h2c_fifo_post_tready       (  h2c_fifo_post_tready      ),
        .h2c_fifo_post_tvalid       (  h2c_fifo_post_tvalid      ),
        .h2c_fifo_post_rd_count     (  h2c_fifo_post_rd_count   ),

        .h2c_fifo_pre_tdata         ( h2c_fifo_pre_tdata         ),
        .h2c_fifo_pre_tready        ( h2c_fifo_pre_tready        ),
        .h2c_fifo_pre_tvalid        ( h2c_fifo_pre_tvalid        ),
        .h2c_fifo_pre_wr_count      ( h2c_fifo_pre_wr_count ),

        .m_axi_eth_internal_araddr  ( m_axi_eth_internal_araddr  ),
        .m_axi_eth_internal_arready ( m_axi_eth_internal_arready ),
        .m_axi_eth_internal_arvalid ( m_axi_eth_internal_arvalid ),
        .m_axi_eth_internal_awaddr  ( m_axi_eth_internal_awaddr  ),
        .m_axi_eth_internal_awready ( m_axi_eth_internal_awready ),
        .m_axi_eth_internal_awvalid ( m_axi_eth_internal_awvalid ),
        .m_axi_eth_internal_bready  ( m_axi_eth_internal_bready  ),
        .m_axi_eth_internal_bresp   ( m_axi_eth_internal_bresp   ),
        .m_axi_eth_internal_bvalid  ( m_axi_eth_internal_bvalid  ),
        .m_axi_eth_internal_rdata   ( m_axi_eth_internal_rdata   ),
        .m_axi_eth_internal_rready  ( m_axi_eth_internal_rready  ),
        .m_axi_eth_internal_rresp   ( m_axi_eth_internal_rresp   ),
        .m_axi_eth_internal_rvalid  ( m_axi_eth_internal_rvalid  ),
        .m_axi_eth_internal_wdata   ( m_axi_eth_internal_wdata   ),
        .m_axi_eth_internal_wready  ( m_axi_eth_internal_wready  ),
        .m_axi_eth_internal_wstrb   ( m_axi_eth_internal_wstrb   ),
        .m_axi_eth_internal_wvalid  ( m_axi_eth_internal_wvalid  ),

        .m_axi_net_araddr           ( m_axi_net_araddr           ),
        .m_axi_net_arready          ( m_axi_net_arready          ),
        .m_axi_net_arvalid          ( m_axi_net_arvalid          ),
        .m_axi_net_awaddr           ( m_axi_net_awaddr           ),
        .m_axi_net_awready          ( m_axi_net_awready          ),
        .m_axi_net_awvalid          ( m_axi_net_awvalid          ),
        .m_axi_net_bready           ( m_axi_net_bready           ),
        .m_axi_net_bresp            ( m_axi_net_bresp            ),
        .m_axi_net_bvalid           ( m_axi_net_bvalid           ),
        .m_axi_net_rdata            ( m_axi_net_rdata            ),
        .m_axi_net_rready           ( m_axi_net_rready           ),
        .m_axi_net_rresp            ( m_axi_net_rresp            ),
        .m_axi_net_rvalid           ( m_axi_net_rvalid           ),
        .m_axi_net_wdata            ( m_axi_net_wdata            ),
        .m_axi_net_wready           ( m_axi_net_wready           ),
        .m_axi_net_wstrb            ( m_axi_net_wstrb            ),
        .m_axi_net_wvalid           ( m_axi_net_wvalid           ),

        .m_axis_dma_tdata           ( h2e_tdata           ),
        .m_axis_dma_tkeep           ( h2e_tkeep           ),
        .m_axis_dma_tlast           ( h2e_tlast           ),
        .m_axis_dma_tready          ( h2e_tready          ),
        .m_axis_dma_tvalid          ( h2e_tvalid          ),

        .s_axis_dma_tdata           ( e2h_tdata           ),
        .s_axis_dma_tkeep           ( e2h_tkeep           ),
        .s_axis_dma_tlast           ( e2h_tlast           ),
        .s_axis_dma_tready          ( e2h_tready          ),
        .s_axis_dma_tvalid          ( e2h_tvalid          )
    );
    
endmodule
`default_nettype wire
