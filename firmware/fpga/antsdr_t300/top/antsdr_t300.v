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
//  This is the top level of antsdr t200 fpga project, which is
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
// 2023-1-3     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

`default_nettype none
module antsdr_t300 (
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

        ///////////////////////////////////
        //
        // High Speed SPF+ signals and clocking
        //
        ///////////////////////////////////

        // These clock inputs must always be enabled with a buffer regardless of the build
        // target to avoid damage to the FPGA.
        input   wire             NETCLK_P,
        input   wire             NETCLK_N,
        input   wire             MGT156MHZ_CLK1_P,
        input   wire             MGT156MHZ_CLK1_N,
        input   wire             SFP_0_RX_P, 
        input   wire             SFP_0_RX_N,
        output  wire             SFP_0_TX_P,
        output  wire             SFP_0_TX_N,
        input   wire             SFP_1_RX_P, 
        input   wire             SFP_1_RX_N,
        output  wire             SFP_1_TX_P,
        output  wire             SFP_1_TX_N,

        ///////////////////////////////////
        //
        // Supporting I/O for SPF+ interfaces
        //  (non high speed stuff)
        //
        ///////////////////////////////////

        //SFP+ 0, Slow Speed, Bank 13 3.3V
        input   wire            SFP_0_I2C_NPRESENT,
        output  wire            SFP_0_LED_A,
        output  wire            SFP_0_LED_B,
        input   wire            SFP_0_LOS,
        output  wire            SFP_0_RS0,
        output  wire            SFP_0_RS1,
        output  wire            SFP_0_TXDISABLE,


        //SFP+ 1, Slow Speed, Bank 13 3.3V
        //input SFP_1_I2C_NPRESENT,
        output  wire            SFP_1_LED_A,
        output  wire            SFP_1_LED_B,
        input   wire            SFP_1_LOS,
        output  wire            SFP_1_RS0,
        output  wire            SFP_1_RS1,
        output  wire            SFP_1_TXDISABLE,




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

    wire        xgige_refclk;
    wire        xgige_clk156;
    wire        xgige_dclk;
    wire        gige_refclk;
    wire        gige_refclk_bufg;

    // Resets
    wire global_rst;
    wire bus_rst;
    wire reg_rstn;
    wire clk40_rst;
    wire clk40_rstn;
    wire FCLK_RESET0_N;
    wire FCLK_RESET1_N;

    wire [63:0] gpio_i;
    wire [63:0] gpio_o;
    wire [63:0] gpio_t;


    



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
    wire pps_refclk;
    wire [1:0] pps_select;
    wire pps_fpga_int;
    wire ref_select;
    wire refclk_locked_busclk;

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

    wire [1:0] refsel;
    wire ref_sel;
    wire ext_ref;
    wire ext_ref_is_pps;
    wire ext_ref_locked;
    wire lpps;
    
    // pps_select == 2'b00 ----> onboard gps module pps
    // pps_select == 2'b01 ----> external pps/10M
    // pps_select == 2'b10 ----> internal pps genreated by fpga

    assign ext_ref =    (pps_select == 2'b01)? PPS_IN_EXT :
                        (pps_select == 2'b10 && ref_sel == 1'b0)? PPS_IN_EXT : // ref_sel selects the external or gpsdo clock source
                        (pps_select == 2'b10)? pps_fpga_int: 1'b0;
    wire is10meg;
    wire ispps;

    assign refsel = (pps_select == 2'b01 || pps_select == 2'b10) ? 2'b11 : 
                    (pps_select == 2'b00)? 2'b00: 2'b01;
    assign CLKIN_10MHz_REQ = 1'b1;

    gen_clks u_gen_clocks_main(
        .clk_out1(),
        .clk_out2(bus_clk),
        .clk_out3(clk200),    

        .locked(),      
        .clk_in1(clk_int40)
    ); 


    ppsloop #(
        .DEVICE("E200")
    )u_ppsloop(
        .reset   ( 1'b0   ),
        .xoclk   ( FCLK_CLK2),
        .ppsgps  ( 1'b0     ),
        .ppsext  ( ext_ref  ),
        .refsel  ( refsel  ),
        .lpps    ( lpps    ),
        .is10meg ( is10meg ),
        .ispps   ( ispps   ),
        .reflck  ( ext_ref_locked  ),
        .plllck  ( locked  ),
        .clk_int40 ( clk_int40 ),
        .sclk    ( CLK_40M_DAC_SCLK    ),
        .mosi    ( CLK_40M_DAC_DIN    ),
        .sync_n  ( CLK_40M_DAC_nSYNC  ),
        .dac_dflt  ( 16'h7fff  )
    );


    ///////////////////////////////////////////////////////////////////////
    // AD936x I/O
    ///////////////////////////////////////////////////////////////////////
    wire [31:0] rx_data0, rx_data1;
    wire [31:0] tx_data0, tx_data1;
    wire mimo;

    antsdr_u205_io  u_antsdr_t300_io (
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

        .pps_ref(lpps),
        .pps_fpga_int(pps_fpga_int),
        .pps_select(pps_select),

        .sclk(sclk), .sen(sen), .mosi(mosi), .miso(miso),
        .rb_misc({31'b0, ext_ref_locked}), .misc_outs(misc_outs),
        .lock_signals(CAT_CTL_OUT[7:6]),
        .debug()
    );


    eth_radio_stream_control#(
        .CHDR_W                  ( 64 ),
        .USER_W                  ( 16 )
    )u_eth_radio_stream_control(
        .clk                     ( bus_clk                     ),
        .rst                     ( bus_rst                     ),
        .e2v_tdata               ( e2v_sfp0_tdata               ),
        .e2v_tuser               ( e2v_sfp0_tuser               ),
        .e2v_tlast               ( e2v_sfp0_tlast               ),
        .e2v_tvalid              ( e2v_sfp0_tvalid              ),
        .e2v_tready              ( e2v_sfp0_tready              ),
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
        .v2e_tdata               ( v2e_sfp0_tdata               ),
        .v2e_tuser               ( v2e_sfp0_tuser               ),
        .v2e_tlast               ( v2e_sfp0_tlast               ),
        .v2e_tvalid              ( v2e_sfp0_tvalid              ),
        .v2e_tready              ( v2e_sfp0_tready              )
    );



    //--------------------------------------------------------------
    // SFP/MGT Reference Clocks
    //--------------------------------------------------------------
    IBUFDS_GTE2 gige_refclk_ibuf (
        .ODIV2(),
        .CEB  (1'b0),
        .I (NETCLK_P),
        .IB(NETCLK_N),
        .O (gige_refclk)
    );
  
    IBUFDS_GTE2 ten_gige_refclk_ibuf (
        .ODIV2(),
        .CEB  (1'b0),
        .I (MGT156MHZ_CLK1_P),
        .IB(MGT156MHZ_CLK1_N),
        .O (xgige_refclk)
    );

    // We support the HG, XG, XA, AA targets, all of which require
    // the 156.25MHz reference clock. Instantiate it here.
    ten_gige_phy_clk_gen xgige_clk_gen_i (
        .refclk_ibuf(xgige_refclk),
        .clk156(xgige_clk156),
        .dclk(xgige_dclk)
    );

    wire qpllreset;
    wire qpllreset_sfp0, qpllreset_sfp1;
    wire qplllock;
    wire qplloutclk;
    wire qplloutrefclk;

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
    assign qpllreset = qpllreset_sfp0 | qpllreset_sfp1;


    BUFG bufg_gige_refclk_i (
        .I(gige_refclk),
        .O(gige_refclk_bufg)
    );

    // Regport for SFP
    wire        m_axi_net0_arvalid;
    wire        m_axi_net0_awvalid;
    wire        m_axi_net0_bready;
    wire        m_axi_net0_rready;
    wire        m_axi_net0_wvalid;
    wire [11:0] m_axi_net0_arid;
    wire [11:0] m_axi_net0_awid;
    wire [11:0] m_axi_net0_wid;
    wire [31:0] m_axi_net0_araddr;
    wire [31:0] m_axi_net0_awaddr;
    wire [31:0] m_axi_net0_wdata;
    wire [3:0]  m_axi_net0_wstrb;
    wire        m_axi_net0_arready;
    wire        m_axi_net0_awready;
    wire        m_axi_net0_bvalid;
    wire        m_axi_net0_rlast;
    wire        m_axi_net0_rvalid;
    wire        m_axi_net0_wready;
    wire [1:0]  m_axi_net0_bresp;
    wire [1:0]  m_axi_net0_rresp;
    wire [31:0] m_axi_net0_rdata;

    wire        m_axi_net1_arvalid;
    wire        m_axi_net1_awvalid;
    wire        m_axi_net1_bready;
    wire        m_axi_net1_rready;
    wire        m_axi_net1_wvalid;
    wire [11:0] m_axi_net1_arid;
    wire [11:0] m_axi_net1_awid;
    wire [11:0] m_axi_net1_wid;
    wire [31:0] m_axi_net1_araddr;
    wire [31:0] m_axi_net1_awaddr;
    wire [31:0] m_axi_net1_wdata;
    wire [3:0]  m_axi_net1_wstrb;
    wire        m_axi_net1_arready;
    wire        m_axi_net1_awready;
    wire        m_axi_net1_bvalid;
    wire        m_axi_net1_rlast;
    wire        m_axi_net1_rvalid;
    wire        m_axi_net1_wready;
    wire [1:0]  m_axi_net1_bresp;
    wire [1:0]  m_axi_net1_rresp;
    wire [31:0] m_axi_net1_rdata;


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

    // ARM ethernet 0 bridge signals
    wire [63:0] arm_eth0_tx_tdata;
    wire        arm_eth0_tx_tvalid;
    wire        arm_eth0_tx_tlast;
    wire        arm_eth0_tx_tready;
    wire [3:0]  arm_eth0_tx_tuser;
    wire [7:0]  arm_eth0_tx_tkeep;

    wire [63:0] arm_eth0_tx_tdata_b;
    wire        arm_eth0_tx_tvalid_b;
    wire        arm_eth0_tx_tlast_b;
    wire        arm_eth0_tx_tready_b;
    wire [3:0]  arm_eth0_tx_tuser_b;
    wire [7:0]  arm_eth0_tx_tkeep_b;

    wire [63:0] arm_eth0_rx_tdata;
    wire        arm_eth0_rx_tvalid;
    wire        arm_eth0_rx_tlast;
    wire        arm_eth0_rx_tready;
    wire [3:0]  arm_eth0_rx_tuser;
    wire [7:0]  arm_eth0_rx_tkeep;

    wire [63:0] arm_eth0_rx_tdata_b;
    wire        arm_eth0_rx_tvalid_b;
    wire        arm_eth0_rx_tlast_b;
    wire        arm_eth0_rx_tready_b;
    wire [3:0]  arm_eth0_rx_tuser_b;
    wire [7:0]  arm_eth0_rx_tkeep_b;



    // ARM ethernet 1 bridge signals
    wire [63:0] arm_eth1_tx_tdata;
    wire        arm_eth1_tx_tvalid;
    wire        arm_eth1_tx_tlast;
    wire        arm_eth1_tx_tready;
    wire [3:0]  arm_eth1_tx_tuser;
    wire [7:0]  arm_eth1_tx_tkeep;

    wire [63:0] arm_eth1_tx_tdata_b;
    wire        arm_eth1_tx_tvalid_b;
    wire        arm_eth1_tx_tlast_b;
    wire        arm_eth1_tx_tready_b;
    wire [3:0]  arm_eth1_tx_tuser_b;
    wire [7:0]  arm_eth1_tx_tkeep_b;


    wire [63:0] arm_eth1_rx_tdata;
    wire        arm_eth1_rx_tvalid;
    wire        arm_eth1_rx_tlast;
    wire        arm_eth1_rx_tready;
    wire [3:0]  arm_eth1_rx_tuser;
    wire [7:0]  arm_eth1_rx_tkeep;

    wire [63:0] arm_eth1_rx_tdata_b;
    wire        arm_eth1_rx_tvalid_b;
    wire        arm_eth1_rx_tlast_b;
    wire        arm_eth1_rx_tready_b;
    wire [3:0]  arm_eth1_rx_tuser_b;
    wire [7:0]  arm_eth1_rx_tkeep_b;




    // Vita to Ethernet
    wire  [63:0]  v2e_sfp0_tdata;
    wire  [15:0]  v2e_sfp0_tuser;
    wire          v2e_sfp0_tlast;
    wire          v2e_sfp0_tvalid;
    wire          v2e_sfp0_tready;

    wire  [63:0]  v2e_sfp1_tdata;
    wire  [15:0]  v2e_sfp1_tuser;
    wire          v2e_sfp1_tlast;
    wire          v2e_sfp1_tvalid;
    wire          v2e_sfp1_tready;

    // Ethernet to Vita
    wire  [63:0]  e2v_sfp0_tdata;
    wire  [15:0]  e2v_sfp0_tuser;
    wire          e2v_sfp0_tlast;
    wire          e2v_sfp0_tvalid;
    wire          e2v_sfp0_tready;

    wire  [63:0]  e2v_sfp1_tdata;
    wire  [15:0]  e2v_sfp1_tuser;
    wire          e2v_sfp1_tlast;
    wire          e2v_sfp1_tvalid;
    wire          e2v_sfp1_tready;

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


    // Misc
    wire [31:0] port_info;
    wire        link_up;
    wire [15:0] device_id;


    // Misc
    wire [31:0] sfp_port0_info;
    wire [31:0] sfp_port1_info;
    wire sfp0_link_up, sfp1_link_up;

    wire            SFP_0_TXFAULT;
    wire            SFP_1_TXFAULT;


    // SFP 1 is always set to run at ~10Gbps rates.
    assign SFP_1_RS0  = 1'b1;
    assign SFP_1_RS1  = 1'b1;
    assign SFP_0_TXFAULT = 1'b1;
    assign SFP_1_TXFAULT = 1'b1;

    // SFP port specific reference clocks
    wire  sfp0_gt_refclk, sfp1_gt_refclk;
    wire  sfp0_gb_refclk, sfp1_gb_refclk;
    wire  sfp0_misc_clk, sfp1_misc_clk;


    assign sfp0_gt_refclk = gige_refclk;
    assign sfp0_gb_refclk = gige_refclk_bufg;
    assign sfp0_misc_clk  = gige_refclk_bufg;
    assign sfp1_gt_refclk = xgige_refclk;
    assign sfp1_gb_refclk = xgige_clk156;
    assign sfp1_misc_clk  = xgige_dclk;


    // Instantiate Aurora MMCM if either of the SFPs
    // or NPIOs are Aurora
    wire au_tx_clk;
    wire au_mmcm_reset;
    wire au_user_clk;
    wire au_sync_clk;
    wire au_mmcm_locked;
    wire sfp0_tx_out_clk, sfp1_tx_out_clk;
    wire sfp0_gt_pll_lock, sfp1_gt_pll_lock;
    wire npio0_tx_out_clk, npio1_tx_out_clk;
    wire npio0_gt_pll_lock, npio1_gt_pll_lock;

    //NOTE: need to declare one of these defines in order to enable Aurora on
    //any SFP or NPIO lane.
    `ifdef SFP1_AURORA
    `define SFP_AU_MMCM
        assign au_tx_clk     = sfp1_tx_out_clk;
        assign au_mmcm_reset = ~sfp1_gt_pll_lock;
    `endif


    `ifdef SFP_AU_MMCM
        aurora_phy_mmcm au_phy_mmcm_i (
            .aurora_tx_clk_unbuf(au_tx_clk),
            .mmcm_reset(au_mmcm_reset),
            .user_clk(au_user_clk),
            .sync_clk(au_sync_clk),
            .mmcm_locked(au_mmcm_locked)
        );
    `else
        assign au_user_clk = 1'b0;
        assign au_sync_clk = 1'b0;
        assign au_mmcm_locked = 1'b0;
    `endif


    /////////////////////////////////////////////////////////////////////
    //
    // SFP Wrapper 0: Network Interface (1/10G or Aurora)
    //
    //////////////////////////////////////////////////////////////////////

    n3xx_mgt_channel_wrapper #(
        .LANES(1),
        .PROTOCOL("1GbE"),
        .MDIO_EN(1'b1),
        .MDIO_PHYADDR(5'd4), // PHYADDR must match the "reg" property for PHY in DTS file
        .REG_DWIDTH(REG_DWIDTH), // Width of the AXI4-Lite data bus (must be 32 or 64)
        .REG_AWIDTH(REG_AWIDTH), // Width of the address bus
        .GT_COMMON(1),
        .PORTNUM_BASE(8'd0)
    ) sfp_wrapper_0 (
        .areset(global_rst),
        .gt_refclk(sfp0_gt_refclk),
        .gb_refclk(sfp0_gb_refclk),
        .misc_clk(sfp0_misc_clk),
        .user_clk(au_user_clk),
        .sync_clk(au_sync_clk),
        .gt_tx_out_clk_unbuf(sfp0_tx_out_clk),

        .bus_rst(bus_rst),
        .bus_clk(bus_clk),

        .qpllreset(qpllreset_sfp0),
        .qplllock(qplllock),
        .qplloutclk(qplloutclk),
        .qplloutrefclk(qplloutrefclk),
        .qpllrefclklost(),

        .mmcm_locked(au_mmcm_locked),
        .gt_pll_lock(sfp0_gt_pll_lock),

        .txp(SFP_0_TX_P),
        .txn(SFP_0_TX_N),
        .rxp(SFP_0_RX_P),
        .rxn(SFP_0_RX_N),

        .mod_present_n(SFP_0_I2C_NPRESENT),
        .mod_rxlos(SFP_0_LOS),
        .mod_tx_fault(SFP_0_TXFAULT),
        .mod_tx_disable(SFP_0_TXDISABLE),

        // Clock and reset
        .s_axi_aclk(clk40),
        .s_axi_aresetn(clk40_rstn),
        // AXI4-Lite: Write address port (domain: s_axi_aclk)
        // AXI4-Lite: Write address port (domain: s_axi_aclk)
        .s_axi_awaddr(m_axi_net0_awaddr[REG_AWIDTH-1:0]),
        .s_axi_awvalid(m_axi_net0_awvalid),
        .s_axi_awready(m_axi_net0_awready),
        // AXI4-Lite: Write data port (domain: s_axi_aclk)
        .s_axi_wdata(m_axi_net0_wdata),
        .s_axi_wstrb(m_axi_net0_wstrb),
        .s_axi_wvalid(m_axi_net0_wvalid),
        .s_axi_wready(m_axi_net0_wready),
        // AXI4-Lite: Write response port (domain: s_axi_aclk)
        .s_axi_bresp(m_axi_net0_bresp),
        .s_axi_bvalid(m_axi_net0_bvalid),
        .s_axi_bready(m_axi_net0_bready),
        // AXI4-Lite: Read address port (domain: s_axi_aclk)
        .s_axi_araddr(m_axi_net0_araddr[REG_AWIDTH-1:0]),
        .s_axi_arvalid(m_axi_net0_arvalid),
        .s_axi_arready(m_axi_net0_arready),
        // AXI4-Lite: Read data port (domain: s_axi_aclk)
        .s_axi_rdata(m_axi_net0_rdata),
        .s_axi_rresp(m_axi_net0_rresp),
        .s_axi_rvalid(m_axi_net0_rvalid),
        .s_axi_rready(m_axi_net0_rready),

        // Ethernet to Vita
        .e2v_tdata(e2v_sfp0_tdata),
        .e2v_tlast(e2v_sfp0_tlast),
        .e2v_tvalid(e2v_sfp0_tvalid),
        .e2v_tready(e2v_sfp0_tready),

        // Vita to Ethernet
        .v2e_tdata(v2e_sfp0_tdata),
        .v2e_tlast(v2e_sfp0_tlast),
        .v2e_tvalid(v2e_sfp0_tvalid),
        .v2e_tready(v2e_sfp0_tready),

        // Ethernet to CPU
        .e2c_tdata(arm_eth0_rx_tdata_b),
        .e2c_tkeep(arm_eth0_rx_tkeep_b),
        .e2c_tlast(arm_eth0_rx_tlast_b),
        .e2c_tvalid(arm_eth0_rx_tvalid_b),
        .e2c_tready(arm_eth0_rx_tready_b),

        // CPU to Ethernet
        .c2e_tdata(arm_eth0_tx_tdata_b),
        .c2e_tkeep(arm_eth0_tx_tkeep_b),
        .c2e_tlast(arm_eth0_tx_tlast_b),
        .c2e_tvalid(arm_eth0_tx_tvalid_b),
        .c2e_tready(arm_eth0_tx_tready_b),

        // Misc
        .port_info(sfp_port0_info),
        .device_id(device_id),

        // LED
        .link_up(sfp0_link_up),
        .activity(SFP_0_LED_A)
    );

    assign gpio_i[60] = gpio_t[60] ? sfp0_link_up : gpio_o[60];
    assign SFP_0_LED_B = sfp0_link_up;


    axi_fifo_2clk #(
        .WIDTH(1+8+64),
        .SIZE(5)
    ) eth_tx_0_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth0_tx_tlast, arm_eth0_tx_tkeep, arm_eth0_tx_tdata}),
        .i_tvalid(arm_eth0_tx_tvalid),
        .i_tready(arm_eth0_tx_tready),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth0_tx_tlast_b, arm_eth0_tx_tkeep_b, arm_eth0_tx_tdata_b}),
        .o_tvalid(arm_eth0_tx_tvalid_b),
        .o_tready(arm_eth0_tx_tready_b)
    );

    axi_fifo_2clk #(
        .WIDTH(1+8+64),
        .SIZE(5)
    ) eth_rx_0_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth0_rx_tlast_b, arm_eth0_rx_tkeep_b, arm_eth0_rx_tdata_b}),
        .i_tvalid(arm_eth0_rx_tvalid_b),
        .i_tready(arm_eth0_rx_tready_b),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth0_rx_tlast, arm_eth0_rx_tkeep, arm_eth0_rx_tdata}),
        .o_tvalid(arm_eth0_rx_tvalid),
        .o_tready(arm_eth0_rx_tready)
    );


    /////////////////////////////////////////////////////////////////////
    //
    // SFP Wrapper 1: Network Interface (1/10G or Aurora)
    //
    //////////////////////////////////////////////////////////////////////

    n3xx_mgt_channel_wrapper #(
        .LANES(1),
        .PROTOCOL("10GbE"),
        .MDIO_EN(1'b1),
        .MDIO_PHYADDR(5'd4), // PHYADDR must match the "reg" property for PHY in DTS file
        .REG_DWIDTH(REG_DWIDTH),     // Width of the AXI4-Lite data bus (must be 32 or 64)
        .REG_AWIDTH(REG_AWIDTH),     // Width of the address bus
        .GT_COMMON(1),
        .PORTNUM_BASE(8'd1)
    ) sfp_wrapper_1 (
        .areset(global_rst),

        .gt_refclk(sfp1_gt_refclk),
        .gb_refclk(sfp1_gb_refclk),
        .misc_clk(sfp1_misc_clk),
        .user_clk(au_user_clk),
        .sync_clk(au_sync_clk),
        .gt_tx_out_clk_unbuf(sfp1_tx_out_clk),

        .bus_rst(bus_rst),
        .bus_clk(bus_clk),

        .qpllreset(qpllreset_sfp1),
        .qplllock(qplllock),
        .qplloutclk(qplloutclk),
        .qplloutrefclk(qplloutrefclk),
        .qpllrefclklost(),

        .mmcm_locked(au_mmcm_locked),
        .gt_pll_lock(sfp1_gt_pll_lock),

        .txp(SFP_1_TX_P),
        .txn(SFP_1_TX_N),
        .rxp(SFP_1_RX_P),
        .rxn(SFP_1_RX_N),

        .mod_rxlos(SFP_1_LOS),
        .mod_tx_fault(SFP_1_TXFAULT),
        .mod_tx_disable(SFP_1_TXDISABLE),

        // Clock and reset
        .s_axi_aclk(clk40),
        .s_axi_aresetn(clk40_rstn),
        // AXI4-Lite: Write address port (domain: s_axi_aclk)
        .s_axi_awaddr(m_axi_net1_awaddr[REG_AWIDTH-1:0]),
        .s_axi_awvalid(m_axi_net1_awvalid),
        .s_axi_awready(m_axi_net1_awready),
        // AXI4-Lite: Write data port (domain: s_axi_aclk)
        .s_axi_wdata(m_axi_net1_wdata),
        .s_axi_wstrb(m_axi_net1_wstrb),
        .s_axi_wvalid(m_axi_net1_wvalid),
        .s_axi_wready(m_axi_net1_wready),
        // AXI4-Lite: Write response port (domain: s_axi_aclk)
        .s_axi_bresp(m_axi_net1_bresp),
        .s_axi_bvalid(m_axi_net1_bvalid),
        .s_axi_bready(m_axi_net1_bready),
        // AXI4-Lite: Read address port (domain: s_axi_aclk)
        .s_axi_araddr(m_axi_net1_araddr[REG_AWIDTH-1:0]),
        .s_axi_arvalid(m_axi_net1_arvalid),
        .s_axi_arready(m_axi_net1_arready),
        // AXI4-Lite: Read data port (domain: s_axi_aclk)
        .s_axi_rdata(m_axi_net1_rdata),
        .s_axi_rresp(m_axi_net1_rresp),
        .s_axi_rvalid(m_axi_net1_rvalid),
        .s_axi_rready(m_axi_net1_rready),

        // Ethernet to Vita
        .e2v_tdata(e2v_sfp1_tdata),
        .e2v_tlast(e2v_sfp1_tlast),
        .e2v_tvalid(e2v_sfp1_tvalid),
        .e2v_tready(e2v_sfp1_tready),

        // Vita to Ethernet
        .v2e_tdata(v2e_sfp1_tdata),
        .v2e_tlast(v2e_sfp1_tlast),
        .v2e_tvalid(v2e_sfp1_tvalid),
        .v2e_tready(v2e_sfp1_tready),

        // Ethernet to CPU
        .e2c_tdata(arm_eth1_rx_tdata_b),
        .e2c_tkeep(arm_eth1_rx_tkeep_b),
        .e2c_tlast(arm_eth1_rx_tlast_b),
        .e2c_tvalid(arm_eth1_rx_tvalid_b),
        .e2c_tready(arm_eth1_rx_tready_b),

        // CPU to Ethernet
        .c2e_tdata(arm_eth1_tx_tdata_b),
        .c2e_tkeep(arm_eth1_tx_tkeep_b),
        .c2e_tlast(arm_eth1_tx_tlast_b),
        .c2e_tvalid(arm_eth1_tx_tvalid_b),
        .c2e_tready(arm_eth1_tx_tready_b),

        // Misc
        .port_info(sfp_port1_info),
        .device_id(device_id),

        // LED
        .link_up(sfp1_link_up),
        .activity(SFP_1_LED_A)
    );

    assign gpio_i[61] = gpio_t[61] ? sfp1_link_up : gpio_o[61];
    assign SFP_1_LED_B = sfp1_link_up;

    axi_fifo_2clk #(
        .WIDTH(1+8+64),
        .SIZE(5)
    ) eth_tx_1_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth1_tx_tlast, arm_eth1_tx_tkeep, arm_eth1_tx_tdata}),
        .i_tvalid(arm_eth1_tx_tvalid),
        .i_tready(arm_eth1_tx_tready),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth1_tx_tlast_b, arm_eth1_tx_tkeep_b, arm_eth1_tx_tdata_b}),
        .o_tvalid(arm_eth1_tx_tvalid_b),
        .o_tready(arm_eth1_tx_tready_b)
    );

    axi_fifo_2clk #(
        .WIDTH(1+8+64),
        .SIZE(5)
    ) eth_rx_1_fifo_2clk_i (
        .reset(bus_rst),
        .i_aclk(bus_clk),
        .i_tdata({arm_eth1_rx_tlast_b, arm_eth1_rx_tkeep_b, arm_eth1_rx_tdata_b}),
        .i_tvalid(arm_eth1_rx_tvalid_b),
        .i_tready(arm_eth1_rx_tready_b),
        .o_aclk(bus_clk),
        .o_tdata({arm_eth1_rx_tlast, arm_eth1_rx_tkeep, arm_eth1_rx_tdata}),
        .o_tvalid(arm_eth1_rx_tvalid),
        .o_tready(arm_eth1_rx_tready)
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
        .PORTNUM(8'd2)
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


    t300_ps_bd_wrapper u_t300_ps_bd_wrapper(
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

        .arm_eth0_rx_tdata          ( arm_eth0_rx_tdata          ),
        .arm_eth0_rx_tkeep          ( arm_eth0_rx_tkeep          ),
        .arm_eth0_rx_tlast          ( arm_eth0_rx_tlast          ),
        .arm_eth0_rx_tready         ( arm_eth0_rx_tready         ),
        .arm_eth0_rx_tvalid         ( arm_eth0_rx_tvalid         ),

        .arm_eth0_tx_tdata          ( arm_eth0_tx_tdata          ),
        .arm_eth0_tx_tkeep          ( arm_eth0_tx_tkeep          ),
        .arm_eth0_tx_tlast          ( arm_eth0_tx_tlast          ),
        .arm_eth0_tx_tready         ( arm_eth0_tx_tready         ),
        .arm_eth0_tx_tvalid         ( arm_eth0_tx_tvalid         ),

        .arm_eth1_rx_tdata          ( arm_eth1_rx_tdata          ),
        .arm_eth1_rx_tkeep          ( arm_eth1_rx_tkeep          ),
        .arm_eth1_rx_tlast          ( arm_eth1_rx_tlast          ),
        .arm_eth1_rx_tready         ( arm_eth1_rx_tready         ),
        .arm_eth1_rx_tvalid         ( arm_eth1_rx_tvalid         ),

        .arm_eth1_tx_tdata          ( arm_eth1_tx_tdata          ),
        .arm_eth1_tx_tkeep          ( arm_eth1_tx_tkeep          ),
        .arm_eth1_tx_tlast          ( arm_eth1_tx_tlast          ),
        .arm_eth1_tx_tready         ( arm_eth1_tx_tready         ),
        .arm_eth1_tx_tvalid         ( arm_eth1_tx_tvalid         ),

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


        .m_axi_net0_araddr          ( m_axi_net0_araddr          ),
        .m_axi_net0_arready         ( m_axi_net0_arready         ),
        .m_axi_net0_arvalid         ( m_axi_net0_arvalid         ),
        .m_axi_net0_awaddr          ( m_axi_net0_awaddr          ),
        .m_axi_net0_awready         ( m_axi_net0_awready         ),
        .m_axi_net0_awvalid         ( m_axi_net0_awvalid         ),
        .m_axi_net0_bready          ( m_axi_net0_bready          ),
        .m_axi_net0_bresp           ( m_axi_net0_bresp           ),
        .m_axi_net0_bvalid          ( m_axi_net0_bvalid          ),
        .m_axi_net0_rdata           ( m_axi_net0_rdata           ),
        .m_axi_net0_rready          ( m_axi_net0_rready          ),
        .m_axi_net0_rresp           ( m_axi_net0_rresp           ),
        .m_axi_net0_rvalid          ( m_axi_net0_rvalid          ),
        .m_axi_net0_wdata           ( m_axi_net0_wdata           ),
        .m_axi_net0_wready          ( m_axi_net0_wready          ),
        .m_axi_net0_wstrb           ( m_axi_net0_wstrb           ),
        .m_axi_net0_wvalid          ( m_axi_net0_wvalid          ),

        .m_axi_net1_araddr          ( m_axi_net1_araddr          ),
        .m_axi_net1_arready         ( m_axi_net1_arready         ),
        .m_axi_net1_arvalid         ( m_axi_net1_arvalid         ),
        .m_axi_net1_awaddr          ( m_axi_net1_awaddr          ),
        .m_axi_net1_awready         ( m_axi_net1_awready         ),
        .m_axi_net1_awvalid         ( m_axi_net1_awvalid         ),
        .m_axi_net1_bready          ( m_axi_net1_bready          ),
        .m_axi_net1_bresp           ( m_axi_net1_bresp           ),
        .m_axi_net1_bvalid          ( m_axi_net1_bvalid          ),
        .m_axi_net1_rdata           ( m_axi_net1_rdata           ),
        .m_axi_net1_rready          ( m_axi_net1_rready          ),
        .m_axi_net1_rresp           ( m_axi_net1_rresp           ),
        .m_axi_net1_rvalid          ( m_axi_net1_rvalid          ),
        .m_axi_net1_wdata           ( m_axi_net1_wdata           ),
        .m_axi_net1_wready          ( m_axi_net1_wready          ),
        .m_axi_net1_wstrb           ( m_axi_net1_wstrb           ),
        .m_axi_net1_wvalid          ( m_axi_net1_wvalid          ),
        
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
