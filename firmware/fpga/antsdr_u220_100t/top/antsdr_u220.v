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
//  This is the top level of antsdr u200 fpga project, which is
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
module antsdr_u220 (
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



        // GPIF, FX3 Slave FIFO
        output  wire	        IFCLK, // pclk
        input   wire	        FX3_EXTINT,
        output  wire	        GPIF_CTL0, // n_slcs
        output  wire	        GPIF_CTL1, // n_slwr
        output  wire	        GPIF_CTL2, // n_sloe
        output  wire	        GPIF_CTL3, // n_slrd
        output  wire	        GPIF_CTL7, // n_pktend
        input   wire	        GPIF_CTL4, // slfifo_flags[0]
        input   wire	        GPIF_CTL5, // slfifo_flags[1]
        input   wire	        GPIF_CTL6, // Serial settings bus from FX3. SDA
        input   wire	        GPIF_CTL8, // Serial settings bus from FX3. SCL
        output  wire	        GPIF_CTL11, // slfifo_addr[1]
        output  wire	        GPIF_CTL12, // slfifo_addr[0]
        inout   wire [31:0]     GPIF_D,
        input   wire	        GPIF_CTL9, // global_reset

        // AD936x - Always on 40MHz clock:
        input  wire	 			CLK_40MHz_FPGA  ,

        // PPS or 10 MHz 
        input  wire             PPS_IN_EXT      ,
        input  wire             PPS_IN_INT      ,
        input  wire             CLKIN_10MHz     ,
        output wire             REF_CLK_REQ     ,

        output wire             PPS_LOCKED      ,
        output wire             REF_LOCKED      ,

        output wire             GPS_nRST        ,
        output wire             GPS_UART_TX     ,
        input  wire             GPS_UART_RX     ,

        // Clock disciplining / AD5662 controls
        output wire             CLK_40M_DAC_nSYNC,
        output wire             CLK_40M_DAC_SCLK ,
        output wire             CLK_40M_DAC_DIN ,

        // RF Hardware Control
        output wire             tx_amp_en1,
        output wire             tx_amp_en2,
        output wire             FE_RX1_SEL1,
        output wire             FE_RX2_SEL1,
        output wire             FE_TXRX1_SEL1,
        output wire             FE_TXRX2_SEL1

    );

    // Clocks
    wire bus_clk;
    wire radio_clk;
    wire gpif_clk;
    wire clk40;
    wire clk200;

    // Resets
    wire global_rst;
    wire bus_rst;


    ///////////////////////////////////////////////////////////////////////
    // generate clocks from always on codec main clk
    ///////////////////////////////////////////////////////////////////////
    wire locked;


    // Synchronous reset for the bus_clk domain
    reset_sync bus_reset_gen (
        .clk(bus_clk),
        .reset_in(~locked),
        .reset_out(bus_rst)
    );

    assign global_rst = bus_rst;

    assign GPS_nRST = 1'b1;

    /////////////////////////////////////////////////////////////////////
    //
    // Clocks and PPS
    //
    /////////////////////////////////////////////////////////////////////
    wire clk_int40;
    wire [1:0] pps_select;
    wire pps_fpga_int;

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
    
    wire gpif_rst, radio_rst;
    reset_sync radio_sync(.clk(radio_clk), .reset_in(!clocks_ready), .reset_out(radio_rst));
    reset_sync gpif_sync(.clk(gpif_clk), .reset_in(!clocks_ready), .reset_out(gpif_rst));

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
                        (pps_select == 2'b10 && ref_sel == 1'b0)? CLKIN_10MHz : // ref_sel selects the external or gpsdo clock source
                        (pps_select == 2'b10)? pps_fpga_int: 1'b0;
    wire is10meg;
    wire ispps;

    assign refsel = (pps_select == 2'b01 || pps_select == 2'b10) ? 2'b11 : 
                    (pps_select == 2'b00)? 2'b00: 2'b01;
    assign REF_CLK_REQ = 1'b1;

    assign PPS_LOCKED = ext_ref_locked & ispps;
    assign REF_LOCKED = ext_ref_locked & is10meg;

    // always @(*) begin
    //     if (pps_select == 2'b00 && ext_ref_locked) begin
    //         {PPS_LOCKED, REF_LOCKED} = 2'b11;
    //     end else if (pps_select == 2'b01 && ext_ref_locked) begin
    //         {PPS_LOCKED, REF_LOCKED} = 2'b10;
    //     end else if (pps_select == 2'b10 && ref_sel == 1'b0 && ext_ref_locked) begin
    //         {PPS_LOCKED, REF_LOCKED} = 2'b01;
    //     end else begin
    //         {PPS_LOCKED, REF_LOCKED} = 2'b00;
    //     end
    // end

    gen_clks u_gen_clocks_main(
        .clk_out1(),
        .clk_out2(bus_clk),
        .clk_out3(gpif_clk),    

        .locked(),      
        .clk_in1(clk_int40)
    ); 


    ppsloop #(
        .DEVICE("LTC2630")
    )u_ppsloop(
        .reset   ( 1'b0   ),
        .xoclk   ( CLK_40MHz_FPGA   ),
        .ppsgps  ( PPS_IN_INT     ),
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
        .dac_dflt  ( 16'hBfff  )
    );


    // vio_0 u_vio_0 (
    //     .clk(bus_clk),              // input wire clk
    //     .probe_in0(pps_select),  // input wire [1 : 0] probe_in0
    //     .probe_in1(PPS_IN_INT),  // input wire [0 : 0] probe_in1
    //     .probe_in2(is10meg),  // input wire [0 : 0] probe_in2
    //     .probe_in3(ispps),  // input wire [0 : 0] probe_in3
    //     .probe_in4(ext_ref_locked),  // input wire [0 : 0] probe_in4
    //     .probe_in5(PPS_IN_EXT)  // input wire [0 : 0] probe_in5
    // );

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
    wire SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX;
    wire SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX;
    assign {tx_amp_en1, SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX} = fe0_gpio[7:3];
    assign {tx_amp_en2, SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX} = fe1_gpio[7:3];
    // assign {tx_amp_en1, FE_RX1_SEL2, FE_TXRX1_SEL2, FE_RX1_SEL1, FE_TXRX1_SEL1} = fe0_gpio[7:3];
    // assign {tx_amp_en2, FE_RX2_SEL1, FE_TXRX2_SEL1, FE_RX2_SEL2, FE_TXRX2_SEL2} = fe1_gpio[7:3];
    assign FE_TXRX1_SEL1 = (SFDX1_TX==1'b0 && SRX1_TX==1'b1) ? 1'b0 : 1'b1;
    assign FE_RX1_SEL1 = (SFDX1_RX==1'b0 && SRX1_RX==1'b1) ? 1'b0 : 1'b1;
    assign FE_TXRX2_SEL1 = (SFDX2_TX==1'b0 && SRX2_TX==1'b1) ? 1'b1 : 1'b0 ;
    assign FE_RX2_SEL1 = (SFDX2_RX==1'b0 && SRX2_RX==1'b1) ? 1'b1 : 1'b0; 
   
 
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
        .rxd(GPS_UART_RX), .txd(GPS_UART_TX),

        .pps_ref(lpps),
        .pps_fpga_int(pps_fpga_int),
        .pps_select(pps_select),

        .sclk(sclk), .sen(sen), .mosi(mosi), .miso(miso),
        .rb_misc({31'b0, ext_ref_locked}), .misc_outs(misc_outs),


        .debug_scl(GPIF_CTL8), .debug_sda(GPIF_CTL6),
    `ifdef DEBUG_UART
            .debug_txd(FPGA_TXD0), .debug_rxd(FPGA_RXD0),
    `else
            .debug_txd(), .debug_rxd(1'b0),
    `endif
        .lock_signals(CAT_CTL_OUT[7:6]),
        .debug()
    );


    ///////////////////////////////////////////////////////////////////////
    // GPIF2
    ///////////////////////////////////////////////////////////////////////

   gpif2_slave_fifo32 #(.DATA_RX_FIFO_SIZE(14), .DATA_TX_FIFO_SIZE(14)) slave_fifo32
   (
       .gpif_clk(gpif_clk), .gpif_rst(gpif_rst), .gpif_enb(1'b1),
       .gpif_ctl({GPIF_CTL8, GPIF_CTL6, GPIF_CTL5, GPIF_CTL4}), .fifoadr({GPIF_CTL11,GPIF_CTL12}),
       .slwr(GPIF_CTL1), .sloe(GPIF_CTL2), .slcs(GPIF_CTL0), .slrd(GPIF_CTL3), .pktend(GPIF_CTL7),
       .gpif_d(GPIF_D),

       .fifo_clk(bus_clk), .fifo_rst(bus_rst),
       .tx_tdata(tx_tdata), .tx_tlast(tx_tlast), .tx_tvalid(tx_tvalid), .tx_tready(tx_tready),
       .rx_tdata(rx_tdata), .rx_tlast(rx_tlast),  .rx_tvalid(rx_tvalid), .rx_tready(rx_tready),
       .ctrl_tdata(ctrl_tdata), .ctrl_tlast(ctrl_tlast),  .ctrl_tvalid(ctrl_tvalid), .ctrl_tready(ctrl_tready),
       .resp_tdata(resp_tdata), .resp_tlast(resp_tlast),  .resp_tvalid(resp_tvalid), .resp_tready(resp_tready),

       .debug()
   );

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
        .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
        .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
    ) ODDR_inst (
        .Q(IFCLK),   // 1-bit DDR output
        .C(gpif_clk),   // 1-bit clock input
        .CE(1'b1), // 1-bit clock enable input
        .D1(1'b1), // 1-bit data input (positive edge)
        .D2(1'b0), // 1-bit data input (negative edge)
        .R(1'b0),   // 1-bit reset
        .S(1'b0)    // 1-bit set
    );


endmodule
`default_nettype wire
