//
// Copyright 2013 Ettus Research LLC
// Copyright 2017 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//


/***********************************************************
 * B200 Module Declaration
 **********************************************************/
module b200 (


   // SPI Interfaces
   output 	 cat_ce,
   input 	 cat_miso,
   output 	 cat_mosi,
   output 	 cat_sclk,



   output 	 pll_ce,
   output 	 pll_mosi,
   output 	 pll_sclk,

   // UART
   // By default these provide an FX3 UART console output. Under compile time control they can alternatively
   // provide 2 (1.8V) GPIO pins which are logically bits [9:8] of the fp_gpio bus.
   // Used as a UART RXD is an input and TXD an output electrically.
  // input 	 FPGA_RXD0, // These pins goto 3 pin 0.1" header on B2x0 and
  // output 	 FPGA_TXD0, // carry FX3 UART.
   // inout 	 FPGA_RXD0, // These pins goto 3 pin 0.1" header J400 on B2x0 and
   // inout 	 FPGA_TXD0, // carry FX3 UART.

   // Catalina Controls
   output 	 codec_enable,
   output 	 codec_en_agc,
   output 	 codec_reset,
   output 	 codec_sync,
   output 	 codec_txrx,
   output [3:0]  codec_ctrl_in, // These should be outputs
   input [7:0] 	 codec_ctrl_out, // MUST BE INPUT

   // Catalina Data
   input 	 codec_data_clk_p, // Clock from CAT (RX)
   output 	 codec_fb_clk_p, // Clock to CAT (TX)
   input [11:0]  rx_codec_d,
   output [11:0] tx_codec_d,
   input 	 rx_frame_p,
   output 	 tx_frame_p,


   //always on 40MHz clock
   input 	 codec_main_clk,

   inout     eeprom_scl ,
   inout     eeprom_sda ,
   input     uart_rxd   ,
   output    uart_txd   ,

   // GPIF, FX3 Slave FIFO
   output 	 IFCLK, // pclk
   input 	 FX3_EXTINT,
   output 	 GPIF_CTL0, // n_slcs
   output 	 GPIF_CTL1, // n_slwr
   output 	 GPIF_CTL2, // n_sloe
   output 	 GPIF_CTL3, // n_slrd
   output 	 GPIF_CTL7, // n_pktend
   input 	 GPIF_CTL4, // slfifo_flags[0]
   input 	 GPIF_CTL5, // slfifo_flags[1]
   input 	 GPIF_CTL6, // Serial settings bus from FX3. SDA
   input 	 GPIF_CTL8, // Serial settings bus from FX3. SCL
   output 	 GPIF_CTL11, // slfifo_addr[1]
   output 	 GPIF_CTL12, // slfifo_addr[0]
   inout [31:0]  GPIF_D,
   input 	 GPIF_CTL9, // global_reset

   // GPS
   output 	 gps_rxd,
   input 	 gps_txd, // FPGA has pullup for unpopulated GPS
   output    gps_rst_n  ,

   input    FPGA_RXD0,
   output   FPGA_TXD0,



   // GPIO Header J504  - 10 pin 0.1" 3.3V.
   // Only present on Rev6 and later boards...these pins unused on Rev5 and earlier.
   // NOTE: These pins are allocated from complimentry pairs and could potentially be used
   // as differential style I/O.
  `ifdef TARGET_B210
   inout [7:0] 	 fp_gpio,
  `endif


   // PPS
   input 	 PPS_IN_EXT,
   input 	 PPS_IN_INT,
   input     CLKIN_10MHz,
   output    CLKIN_10MHz_REQ,

   output   PPS_LOCKED,
   output   REF_LOCKED,

   // RF Hardware Control
   output 	 SFDX1_RX,
   output 	 SFDX1_TX,
   output 	 SFDX2_RX,
   output 	 SFDX2_TX,
   output 	 SRX1_RX,
   output 	 SRX1_TX,
   output 	 SRX2_RX,
   output 	 SRX2_TX,
   output 	 tx_bandsel_a,
   output 	 tx_bandsel_b,
   output 	 tx_enable1,
   output 	 tx_enable2,
   output 	 rx_bandsel_a,
   output 	 rx_bandsel_b,
   output 	 rx_bandsel_c
   );


   wire 	 ref_sel;
   wire 	 pll_lock;
    wire reset_global;
    wire lpps;
    wire clk_int40;

    assign  reset_global = GPIF_CTL9;
    assign gps_rst_n =1'b1;

    ///////////////////////////////////////////////////////////////////////
    // generate clocks from always on codec main clk
    ///////////////////////////////////////////////////////////////////////
    wire bus_clk, gpif_clk, radio_clk, ref_pll_clk, int_40mhz;
    wire locked;
    wire ref_pll_rst;
    b200_clk_gen gen_clks
    (
        .CLK_IN1_40(clk_int40),
        .CLK_OUT1_40_int(int_40mhz), .CLK_OUT2_100_gpif(gpif_clk), .CLK_OUT3_100_bus(bus_clk), .clk_out4(ref_pll_clk),
        .reset(reset_global), .locked(locked)
    );

   // Bus Clock and GPIF Clock both same 100MHz clock.
   // assign bus_clk = gpif_clk;

   wire ext_ref_locked;
   wire ext_ref ;
   wire [1:0] pps_select;
   wire pps_fpga_int;
   wire is10meg;
   wire ispps;
   wire [1:0]  refsel;
   wire pps_for_local;
   wire pps_ext_ibuf;

   IBUF IBUF_inst (
      .O(pps_ext_ibuf),     // Buffer output
      .I(PPS_IN_EXT)      // Buffer input (connect directly to top-level port)
   );


   assign ext_ref =  (pps_select == 2'b01)? pps_ext_ibuf :
                     (pps_select == 2'b10 && ref_sel == 1'b0)? CLKIN_10MHz : // ref_sel selects the external or gpsdo clock source
                     (pps_select == 2'b10)? pps_fpga_int: 1'b0;

   assign refsel = (pps_select == 2'b01 || pps_select == 2'b10) ? 2'b11 :
                  (pps_select == 2'b00)? 2'b00: 2'b01;

   assign pps_for_local = (pps_select == 2'b00)? PPS_IN_INT :
                        (pps_select == 2'b01)? pps_ext_ibuf:
                        (pps_select == 2'b10)? pps_fpga_int : 1'b0;

   wire [15:0] dac_stable;
   wire [15:0] stored_dac_value;
   wire dac_enbale;

   ppsloop #(
      .DEVICE("LTC2630")
   )u_ppsloop(
      .reset   ( 1'b0   ),
      .dac_enbale (1'b1),
      .xoclk   ( codec_main_clk   ),
      .ppsgps  ( PPS_IN_INT     ),
      .ppsext  ( ext_ref  ),
      .refsel  ( refsel  ),
      .lpps    ( lpps    ),
      .is10meg ( is10meg ),
      .ispps   ( ispps   ),
      .reflck  ( ext_ref_locked  ),
      .plllck  (   ),
      .clk_int40 ( clk_int40 ),
      .sclk    ( pll_sclk    ),
      .mosi    ( pll_mosi    ),
      .sync_n  ( pll_ce  ),
      .dac_stable(dac_stable),
      // .dac_dflt  ( 16'd46300  )
      .dac_dflt  ( 16'd46300  )

   );

   assign CLKIN_10MHz_REQ = 1'b1;

   assign PPS_LOCKED = ext_ref_locked & ispps;
   assign REF_LOCKED = ext_ref_locked & is10meg;

   //hold-off logic for clocks ready
    reg [15:0] clocks_ready_count;
    reg clocks_ready;
    always @(posedge bus_clk or posedge reset_global or negedge locked) begin
        if (reset_global | !locked) begin
            clocks_ready_count <= 16'b0;
            clocks_ready <= 1'b0;
        end
        else if (!clocks_ready) begin
            clocks_ready_count <= clocks_ready_count + 1'b1;
            clocks_ready <= (clocks_ready_count == 16'hffff);
        end
    end

    ///////////////////////////////////////////////////////////////////////
    // drive output clocks
    ///////////////////////////////////////////////////////////////////////
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
    ///////////////////////////////////////////////////////////////////////
    // Create sync reset signals
    ///////////////////////////////////////////////////////////////////////
    wire gpif_rst, bus_rst, radio_rst;
    reset_sync gpif_sync(.clk(gpif_clk), .reset_in(!clocks_ready), .reset_out(gpif_rst));
    reset_sync bus_sync(.clk(bus_clk), .reset_in(!clocks_ready), .reset_out(bus_rst));
    reset_sync radio_sync(.clk(radio_clk), .reset_in(!clocks_ready), .reset_out(radio_rst));
    reset_sync ref_pll_sync(.clk(ref_pll_clk), .reset_in(!clocks_ready), .reset_out(ref_pll_rst));

   ///////////////////////////////////////////////////////////////////////
   // I/O
   ///////////////////////////////////////////////////////////////////////
   wire [31:0] rx_data0, rx_data1;
   wire [31:0] tx_data0, tx_data1;
   wire mimo;
      antsdr_u205_io  u_antsdr_e200_io (
         .areset                  ( reset_global        ),
         .mimo                    ( mimo              ),
         .rx_clk                  ( codec_data_clk_p        ),
         .rx_frame                ( rx_frame_p       ),
         .rx_data                 ( rx_codec_d          ),
         .rx_i0                   ( rx_data0[31:20]   ),
         .rx_q0                   ( rx_data0[15:4]    ),
         .rx_i1                   ( rx_data1[31:20]   ),
         .rx_q1                   ( rx_data1[15:4]    ),
         .radio_clk               ( radio_clk         ),
         .tx_clk                  ( codec_fb_clk_p       ),
         .tx_frame                ( tx_frame_p        ),
         .tx_data                 ( tx_codec_d          ),
         .tx_i0                   ( tx_data0[31:20]   ),
         .tx_q0                   ( tx_data0[15:4]    ),
         .tx_i1                   ( tx_data1[31:20]   ),
         .tx_q1                   ( tx_data1[15:4]    ),
         .radio_rst               (                   ),
         .rx_stb                  (                   ),
         .tx_stb                  (                   )
       );

   assign {rx_data0[19:16],rx_data0[3:0],rx_data1[19:16],rx_data1[3:0]} = 16'h0;

   ///////////////////////////////////////////////////////////////////////
   // SPI connections
   ///////////////////////////////////////////////////////////////////////
   wire mosi,  miso, sclk;
   wire [7:0]  sen;

   //AD9361 Slave
   assign cat_ce   = sen[0];
   assign cat_mosi = ~sen[0] & mosi;
   assign cat_sclk = ~sen[0] & sclk;
   assign miso     = cat_miso;    //PLL does not have a miso


   ///////////////////////////////////////////////////////////////////////
   // bus signals
   ///////////////////////////////////////////////////////////////////////
   wire [63:0] ctrl_tdata, resp_tdata, rx_tdata, tx_tdata;
   wire ctrl_tlast, resp_tlast, rx_tlast, tx_tlast;
   wire ctrl_tvalid, resp_tvalid, rx_tvalid, tx_tvalid;
   wire ctrl_tready, resp_tready, rx_tready, tx_tready;


   ///////////////////////////////////////////////////////////////////////
   // frontend assignments
   // Most B2x0's have frontends swapped (radio0 to FE2), but some hardware revisions do not.
   // The ATR pins are mapped from radio to frontend here based on the swap_atr_n bit.
   ///////////////////////////////////////////////////////////////////////
   // LEDS
   wire 	 LED_RX1;
   wire 	 LED_RX2;
   wire 	 LED_TXRX1_RX;
   wire 	 LED_TXRX1_TX;
   wire 	 LED_TXRX2_RX;
   wire 	 LED_TXRX2_TX;

   wire swap_atr_n;
   wire [7:0] radio0_gpio, radio1_gpio;
   reg [7:0] fe0_gpio, fe1_gpio;
   always @(posedge radio_clk) begin //Registers in the IOB
      fe0_gpio <= swap_atr_n ? radio1_gpio : radio0_gpio;
      fe1_gpio <= swap_atr_n ? radio0_gpio : radio1_gpio;
   end
   assign {tx_enable1, SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX, LED_RX1, LED_TXRX1_RX, LED_TXRX1_TX} = fe0_gpio;
   assign {tx_enable2, SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX, LED_RX2, LED_TXRX2_RX, LED_TXRX2_TX} = fe1_gpio;

   wire [31:0] misc_outs; reg [31:0] misc_outs_r;

   always @(posedge bus_clk) misc_outs_r <= misc_outs; //register misc ios to ease routing to flop

   wire codec_arst;

   assign { swap_atr_n, tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c, codec_arst, mimo, ref_sel } = misc_outs_r[8:0];

   assign codec_ctrl_in = 4'b1;
   assign codec_en_agc = 1'b1;
   assign codec_txrx = 1'b1;
   assign codec_enable = 1'b1;
   assign codec_reset = ~codec_arst;   // Codec Reset // RESETB // Operates active-low
   assign codec_sync = 1'b0;

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

      .rxd(gps_txd), .txd(gps_rxd),
      .pps_ref(pps_for_local),
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

      .lock_signals(codec_ctrl_out[7:6]),
      .debug()
   );

`ifdef TARGET_B210
   `ifdef DEBUG_UART
      gpio_atr_io #(.WIDTH(8)) gpio_atr_io_inst (   // B210 with UART
         .clk(radio_clk), .gpio_pins(fp_gpio),
         .gpio_ddr(fp_gpio_ddr[7:0]), .gpio_out(fp_gpio_out[7:0]), .gpio_in(fp_gpio_in[7:0])
      );
      assign fp_gpio_in[9:8] = 2'b00;
   `else
      gpio_atr_io #(.WIDTH(10)) gpio_atr_io_inst (  // B210 no UART
         .clk(radio_clk), .gpio_pins({FPGA_RXD0, FPGA_TXD0, fp_gpio}),
         .gpio_ddr(fp_gpio_ddr), .gpio_out(fp_gpio_out), .gpio_in(fp_gpio_in)
      );
   `endif
`else
   `ifdef DEBUG_UART
      assign fp_gpio_in = 10'h000;                  // B200 with UART
   `else
      gpio_atr_io #(.WIDTH(2)) gpio_atr_io_inst (   // B200 no UART
         .clk(radio_clk), .gpio_pins({FPGA_RXD0, FPGA_TXD0}),
         .gpio_ddr(fp_gpio_ddr[9:8]), .gpio_out(fp_gpio_out[9:8]), .gpio_in(fp_gpio_in[9:8])
      );
      assign fp_gpio_in[7:0] = 8'h00;
   `endif
`endif

    ///////////////////////////////////////////////////////////////////////
    // GPIF2
    ///////////////////////////////////////////////////////////////////////

   gpif2_slave_fifo32 #(.DATA_RX_FIFO_SIZE(15), .DATA_TX_FIFO_SIZE(14)) slave_fifo32
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

   // wire [31:0] probe0;
   // assign probe0={
   //    swap_atr_n, tx_bandsel_a, tx_bandsel_b, rx_bandsel_a, rx_bandsel_b, rx_bandsel_c, codec_arst, mimo, ref_sel,
   //    tx_enable1, SFDX1_RX, SFDX1_TX, SRX1_RX, SRX1_TX, LED_RX1, LED_TXRX1_RX, LED_TXRX1_TX,
   //    tx_enable2, SFDX2_RX, SFDX2_TX, SRX2_RX, SRX2_TX, LED_RX2, LED_TXRX2_RX, LED_TXRX2_TX
   // };

   // ila_1 u_ila_1 (
	// .clk(bus_clk), // input wire clk


	// .probe0(probe0) // input wire [31:0] probe0
   // );

endmodule // B200
