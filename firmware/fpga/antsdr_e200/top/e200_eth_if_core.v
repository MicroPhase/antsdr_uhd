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
//  Control interface for 1gige rgmii ethernet interface. This file is based on 
//  Ettus.
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
// 2022-10-09     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

module e200_eth_if_core #(
  parameter        PROTOCOL     = "1GbE",    // Must be {10GbE, 1GbE, Aurora, Disabled}
  parameter [13:0] REG_BASE     = 14'h0,
  parameter        REG_DWIDTH   = 32,
  parameter        RGMII        = 1,
  parameter        REG_AWIDTH   = 14,
  parameter [7:0]  PORTNUM      = 8'd0,
  parameter        MDIO_EN      = 0,
  parameter [4:0]  MDIO_PHYADDR = 5'd0
)(
  // Resets
  input                   areset,
  input                   bus_rst,
  // Clocks
  input                   bus_clk,

  // rgmii interface  
  output                  mdc_ext,
  output                  mdio_out,
  output                  mdio_tri,   // Assert to tristate driver.
  input                   mdio_in,

  input	 			            rgmii_rxc		,
	input	 			            rgmii_rx_ctl,
	input	 	[3:0]	          rgmii_rxd 	,
	output	 			          rgmii_txc 	,
	output	 			          rgmii_tx_ctl,
	output 	[3:0]	          rgmii_txd   ,

  // Data port: Ethernet TX
  input  [63:0]           s_axis_tdata,
  input  [3:0]            s_axis_tuser,
  input                   s_axis_tlast,
  input                   s_axis_tvalid,
  output                  s_axis_tready,
  // Data port: Ethernet RX
  output [63:0]           m_axis_tdata,
  output [3:0]            m_axis_tuser,
  output                  m_axis_tlast,
  output                  m_axis_tvalid,
  input                   m_axis_tready,
  // Register port
  input                   reg_wr_req,
  input  [REG_AWIDTH-1:0] reg_wr_addr,
  input  [REG_DWIDTH-1:0] reg_wr_data,
  input                   reg_rd_req,
  input  [REG_AWIDTH-1:0] reg_rd_addr,
  output                  reg_rd_resp,
  output [REG_DWIDTH-1:0] reg_rd_data,
  // Misc
  output [31:0]           port_info,
  output                  link_up,
  output reg              activity
);

  //-----------------------------------------------------------------
  // Registers
  //-----------------------------------------------------------------
  localparam [7:0] COMPAT_NUM         = 8'd2;

  // Common registers
  localparam REG_PORT_INFO            = REG_BASE + 'h0;
  localparam REG_MAC_CTRL_STATUS      = REG_BASE + 'h4;
  localparam REG_PHY_CTRL_STATUS      = REG_BASE + 'h8;
  localparam REG_MAC_LED_CTL          = REG_BASE + 'hC;

  // Ethernet specific
  localparam REG_ETH_MDIO_BASE        = REG_BASE + 'h10;
  // Aurora specific
  localparam REG_AURORA_OVERRUNS      = REG_BASE + 'h20;
  localparam REG_CHECKSUM_ERRORS      = REG_BASE + 'h24;
  localparam REG_BIST_CHECKER_SAMPS   = REG_BASE + 'h28;
  localparam REG_BIST_CHECKER_ERRORS  = REG_BASE + 'h2C;

  wire                  reg_rd_resp_mdio;
  reg                   reg_rd_resp_glob = 1'b0;
  wire [REG_DWIDTH-1:0] reg_rd_data_mdio;
  reg  [REG_DWIDTH-1:0] reg_rd_data_glob = 32'h0;

  // Protocol specific constants
  wire [7:0]  mgt_protocol;
  wire [31:0] mac_ctrl_rst_val, phy_ctrl_rst_val;
  wire [1:0]  mac_led_ctl_rst_val = 2'h0;

  // Flush logic: If the link is not up, we will flush all packets coming from
  // the device. This avoids the MAC backpressuring when the PHY is down.
  // The device will always send discovery packets to the transports during
  // initialization, and they have no way of knowing if it's safe to travel
  // down this route. c2mac == "CHDR to MAC"
  wire  [63:0]     c2mac_tdata;
  wire  [3:0]      c2mac_tuser;
  wire             c2mac_tlast;
  wire             c2mac_tvalid;
  wire             c2mac_tready;

  axis_packet_flush #(
    .WIDTH(64+3), // tdata + tuser
    .TIMEOUT_W(1), // Not using timeout
    .FLUSH_PARTIAL_PKTS(0),
    .PIPELINE("NONE")
  ) linkup_flush (
    .clk(bus_clk),
    .reset(bus_rst),
    .enable(~link_up), // enable flushing when link down
    .timeout(1'b0),
    .flushing(/* not required */),
    .done(/* not required */),
    // Input from device/crossbar
    .s_axis_tdata  ({s_axis_tuser, s_axis_tdata}),
    .s_axis_tlast  (s_axis_tlast),
    .s_axis_tvalid (s_axis_tvalid),
    .s_axis_tready (s_axis_tready),
    // Output to MAC
    .m_axis_tdata  ({c2mac_tuser, c2mac_tdata}),
    .m_axis_tlast  (c2mac_tlast),
    .m_axis_tvalid (c2mac_tvalid),
    .m_axis_tready (c2mac_tready)
  );

  generate
    if (PROTOCOL == "Aurora") begin
      assign mgt_protocol     = 8'd3;
      assign mac_ctrl_rst_val = 32'h0;
      assign phy_ctrl_rst_val = 32'h0;
    end else if (PROTOCOL == "10GbE") begin
      assign mgt_protocol     = 8'd2;
      assign mac_ctrl_rst_val = {31'h0, 1'b1}; // tx_enable on reset
      assign phy_ctrl_rst_val = 32'h0;
    end else if (PROTOCOL == "1GbE") begin
      assign mgt_protocol     = 8'd1;
      assign mac_ctrl_rst_val = {31'h0, 1'b1}; // tx_enable on reset
      assign phy_ctrl_rst_val = 32'h0;
    end else begin
      assign mgt_protocol     = 8'd0;
      assign mac_ctrl_rst_val = 32'h0;
      assign phy_ctrl_rst_val = 32'h0;
    end
  endgenerate

  // Writable registers
  reg [31:0] mac_ctrl_reg = 32'h0;
  reg [31:0] phy_ctrl_reg = 32'h0;
  reg [1:0]  mac_led_ctl  =  2'h0;

  always @(posedge bus_clk) begin
    if (bus_rst) begin
      mac_ctrl_reg <= mac_ctrl_rst_val;
      phy_ctrl_reg <= phy_ctrl_rst_val;
      mac_led_ctl  <= mac_led_ctl_rst_val;
    end else if (reg_wr_req) begin
      case(reg_wr_addr)
        REG_MAC_CTRL_STATUS:
          mac_ctrl_reg <= reg_wr_data;
        REG_PHY_CTRL_STATUS:
          phy_ctrl_reg <= reg_wr_data;
        REG_MAC_LED_CTL:
          mac_led_ctl <= reg_wr_data[1:0];
      endcase
    end
  end

  // Readable registers
  wire [31:0] overruns;
  wire [31:0] checksum_errors;
  wire [47:0] bist_checker_samps;
  wire [47:0] bist_checker_errors;
  wire [31:0] mac_status, phy_status;
  wire [31:0] mac_status_bclk, phy_status_bclk;

  assign port_info = {COMPAT_NUM, 6'h0, activity, link_up, mgt_protocol, PORTNUM};

  always @(posedge bus_clk) begin
    // No reset handling needed for readback
    if (reg_rd_req) begin
      reg_rd_resp_glob <= 1'b1;
      case(reg_rd_addr)
        REG_PORT_INFO:
          reg_rd_data_glob <= port_info;
        REG_MAC_CTRL_STATUS:
          reg_rd_data_glob <= mac_status_bclk;
        REG_PHY_CTRL_STATUS:
          reg_rd_data_glob <= phy_status_bclk;
        REG_MAC_LED_CTL:
          reg_rd_data_glob <= {30'd0, mac_led_ctl};
        REG_AURORA_OVERRUNS:
          reg_rd_data_glob <= overruns;
        REG_CHECKSUM_ERRORS:
          reg_rd_data_glob <= checksum_errors;
        REG_BIST_CHECKER_SAMPS:
          reg_rd_data_glob <= bist_checker_samps[47:16];  //Scale num samples by 2^16
        REG_BIST_CHECKER_ERRORS:
          reg_rd_data_glob <= bist_checker_errors[31:0];  //Don't scale errors
        default:
          reg_rd_resp_glob <= 1'b0;
      endcase
    end if (reg_rd_resp_glob) begin
      reg_rd_resp_glob <= 1'b0;
    end
  end

  synchronizer #( .STAGES(2), .WIDTH(32), .INITIAL_VAL(32'h0) ) mac_status_sync_i (
     .clk(bus_clk), .rst(1'b0), .in(mac_status), .out(mac_status_bclk)
  );

  synchronizer #( .STAGES(2), .WIDTH(32), .INITIAL_VAL(32'h0) ) phy_status_sync_i (
     .clk(bus_clk), .rst(1'b0), .in(phy_status), .out(phy_status_bclk)
  );

  // Regport Mux for response
  regport_resp_mux #(
    .WIDTH      (REG_DWIDTH),
    .NUM_SLAVES (2)
  ) reg_resp_mux_i (
    .clk(bus_clk), .reset(bus_rst),
    .sla_rd_resp({reg_rd_resp_mdio, reg_rd_resp_glob}),
    .sla_rd_data({reg_rd_data_mdio, reg_rd_data_glob}),
    .mst_rd_resp(reg_rd_resp), .mst_rd_data(reg_rd_data)
  );

  //-----------------------------------------------------------------
  // Ethernet Specific: MDIO
  //-----------------------------------------------------------------

  wire mdc, mdio_m2s, mdio_s2m, mdio_s2m_sync;

  wire    mdio_gem_mdc  ;
  wire    mdio_gem_i  ;
  wire    mdio_gem_o  ;
  wire    mdio_gem_t  ;
  // generate
  //   if ((PROTOCOL == "10GbE" || PROTOCOL == "1GbE") && (MDIO_EN == 1)) begin
  //     mdio_master #(
  //       .REG_BASE     (REG_ETH_MDIO_BASE),
  //       .REG_AWIDTH   (REG_AWIDTH),
  //       .MDC_DIVIDER  (8'd200)
  //     ) mdio_master_i (
  //       .clk          (bus_clk),
  //       .rst          (bus_rst),
  //       .mdc          (mdc),
  //       .mdio_in      (mdio_in),
  //       .mdio_out     (mdio_out),
  //       .mdio_tri     (mdio_tri),
  //       .reg_wr_req   (reg_wr_req),
  //       .reg_wr_addr  (reg_wr_addr),
  //       .reg_wr_data  (reg_wr_data),
  //       .reg_rd_req   (reg_rd_req),
  //       .reg_rd_addr  (reg_rd_addr),
  //       .reg_rd_data  (reg_rd_data_mdio),
  //       .reg_rd_resp  (reg_rd_resp_mdio)
  //     );
  //     // We can cross mdio_s2m into the bus_clk domain. A synchronizer is safe
  //     // here because the bit is inherently async
  //     synchronizer #(.INITIAL_VAL(1'b0)) mdio_s2m_sync_i (
  //       .clk(bus_clk), .rst(1'b0 /* no reset */), .in(mdio_s2m), .out(mdio_s2m_sync)
  //     );
  //   end else begin
  //     assign mdc              = 1'b0;
  //     assign mdio_m2s         = 1'b0;
  //     assign reg_rd_resp_mdio = 1'b0;
  //     assign reg_rd_data_mdio = 32'h0;
  //   end
  // endgenerate


      mdio_master #(
        .REG_BASE     (REG_ETH_MDIO_BASE),
        .REG_AWIDTH   (REG_AWIDTH),
        .MDC_DIVIDER  (8'd200)
      ) mdio_master_external (
        .clk          (bus_clk),
        .rst          (bus_rst),
        .mdc          (mdc_ext),
        .mdio_in      (mdio_in),
        .mdio_out     (mdio_out),
        .mdio_tri     (mdio_tri),
        .reg_wr_req   (reg_wr_req),
        .reg_wr_addr  (reg_wr_addr),
        .reg_wr_data  (reg_wr_data),
        .reg_rd_req   (reg_rd_req),
        .reg_rd_addr  (reg_rd_addr),
        .reg_rd_data  (reg_rd_data_mdio),
        .reg_rd_resp  (reg_rd_resp_mdio)
      );
      // We can cross mdio_s2m into the bus_clk domain. A synchronizer is safe
      // here because the bit is inherently async
      synchronizer #(.INITIAL_VAL(1'b0)) mdio_s2m_sync_i (
        .clk(bus_clk), .rst(1'b0 /* no reset */), .in(mdio_s2m), .out(mdio_s2m_sync)
      );

 

      wire    eth_rst   ;
      //-----------------------------------------------------------------
      // 1 Gigabit Ethernet
      //-----------------------------------------------------------------
      wire [7:0]  gmii_txd, gmii_rxd;
      wire        gmii_tx_en, gmii_tx_er, gmii_rx_dv, gmii_rx_er;
      wire        gmii_clk;

      // Synchronous reset for the gmii_clk domain
      reset_sync ethernet_rst_sync (
        .clk(gmii_clk),
        .reset_in(areset),
        .reset_out(eth_rst)
      );



      rgmii_phy u_rgmii_phy(
          .rst           ( eth_rst        ),
          .rgmii_rxc     ( rgmii_rxc     ),
          .rgmii_rx_ctl  ( rgmii_rx_ctl  ),
          .rgmii_rd      ( rgmii_rxd      ),
          .rgmii_txc     ( rgmii_txc     ),
          .rgmii_tx_ctl  ( rgmii_tx_ctl  ),
          .rgmii_td      ( rgmii_txd      ),
          .gmii_rxc      ( gmii_clk      ),
          .gmii_rx_dv    ( gmii_rx_dv    ),
          .gmii_rx_er    ( gmii_rx_er    ),
          .gmii_rd       ( gmii_rxd      ),
          .gmii_tx_en    ( gmii_tx_en    ),
          .gmii_tx_er    ( gmii_tx_er    ),
          .gmii_td       ( gmii_txd      )
      );
    //   wire [255:0] probe0;

    //   assign probe0 ={
    //     gmii_tx_en  ,
    //     gmii_tx_er  ,
    //     gmii_txd  ,
    //     gmii_rx_dv  ,
    //     gmii_rx_er  ,
    //     gmii_rxd

    //   };
    // ila_0 ila_gmii (
    //   .clk(gmii_clk), // input wire clk


    //   .probe0(probe0) // input wire [255:0] probe0
    // );



      wire link_status        ;
      wire [1 : 0] clock_speed;
      wire duplex_status      ;
      wire [1:0] speed_mode;

      simple_gemac_wrapper #(.RX_FLOW_CTRL(0), .PORTNUM(PORTNUM)) simple_gemac_wrapper_i
      (
        .clk125(gmii_clk),
        .reset(eth_rst),

        .GMII_GTX_CLK(),
        .GMII_TX_EN(gmii_tx_en),
        .GMII_TX_ER(gmii_tx_er),
        .GMII_TXD(gmii_txd),
        .GMII_RX_CLK(gmii_clk),
        .GMII_RX_DV(gmii_rx_dv),
        .GMII_RX_ER(gmii_rx_er),
        .GMII_RXD(gmii_rxd),

        .sys_clk(bus_clk),
        .rx_tdata(m_axis_tdata),
        .rx_tuser(m_axis_tuser),
        .rx_tlast(m_axis_tlast),
        .rx_tvalid(m_axis_tvalid),
        .rx_tready(m_axis_tready),
        .tx_tdata(c2mac_tdata),
        .tx_tuser(c2mac_tuser),
        .tx_tlast(c2mac_tlast),
        .tx_tvalid(c2mac_tvalid),
        .tx_tready(c2mac_tready),

        .wb_clk_i(1'b0),
        .wb_rst_i(1'b0),
        .wb_adr_i(8'h0),
        .wb_dat_i(32'h0),
        .wb_we_i(1'b0),
        .wb_stb_i(1'b0),
        .wb_cyc_i(1'b0),
        .wb_dat_o(),
        .wb_ack_o(),
        .wb_int_o(),
        .mdc(),
        .mdio_out(1'b0),
        .mdio_tri(),
        .mdio_in(),
        .debug_tx(),
        .debug_rx()
      );

      assign phy_status[31:16] = 16'h0;
      assign phy_status[1:0] = 2'b11;
      assign phy_status[11:10] = 2'b10;
      assign phy_status[12] = 1;
      assign mac_status[31:0]  = 32'h0;
      assign link_up = phy_status_bclk[0];

      assign gt_tx_out_clk_unbuf = 1'b0;


  wire identify_enable = mac_led_ctl[0];
  wire identify_value  = mac_led_ctl[1];

  //-----------------------------------------------------------------
  // Activity detector
  //-----------------------------------------------------------------
  wire activity_int;

  pulse_stretch act_pulse_str_i (
    .clk(bus_clk),
    .rst(bus_rst | ~link_up),
    .pulse((s_axis_tvalid & s_axis_tready) | (m_axis_tvalid & m_axis_tready)),
    .pulse_stretched(activity_int)
  );

  always @ (posedge bus_clk) activity <= identify_enable ? identify_value : activity_int;

endmodule
