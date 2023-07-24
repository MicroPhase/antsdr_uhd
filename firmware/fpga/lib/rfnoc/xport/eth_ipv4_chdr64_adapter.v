//
// Copyright 2019 Ettus Research, A National Instruments Company
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//
// Module: eth_ipv4_chdr64_adapter
// Description: A generic transport adapter module that can be used in
//   a veriety of transports. It does the following:
//   - Exposes a configuration port for mgmt packets to configure the node
//   - Implements a return-address map for packets with metadata other than
//     the CHDR. Additional metadata can be passed as a tuser to this module
//     which will store it in a map indexed by the SrcEPID in a management
//     packet. For all returning packets, the metadata will be looked up in
//     the map and attached as the outgoing tuser.
//   - Implements a loopback path for node-info discovery
//
// Parameters:
//   - PROTOVER: RFNoC protocol version {8'd<major>, 8'd<minor>}
//   - MTU: Log2 of the MTU of the packet in 64-bit words
//   - CPU_FIFO_SIZE: Log2 of the FIFO depth (in 64-bit words) for the CPU egress path
//   - RT_TBL_SIZE: Log2 of the depth of the return-address routing table
//   - NODE_INST: The node type to return for a node-info discovery
//   - DROP_UNKNOWN_MAC: Drop packets not addressed to us?
//
// Signals:
//   - device_id : The ID of the device that has instantiated this module
//   - s_mac_*: The input Ethernet stream from the MAC (plus tuser for trailing bytes + err)
//   - m_mac_*: The output Ethernet stream to the MAC (plus tuser for trailing bytes + err)
//   - s_chdr_*: The input CHDR stream from the rfnoc infrastructure
//   - m_chdr_*: The output CHDR stream to the rfnoc infrastructure
//   - s_cpu_*: The input Ethernet stream from the CPU (plus tuser for trailing bytes + err)
//   - m_cpu_*: The output Ethernet stream to the CPU (plus tuser for trailing bytes + err)
//   - my_eth_addr: The Ethernet (MAC) address of this endpoint
//   - my_ipv4_addr: The IPv4 address of this endpoint
//   - my_udp_chdr_port: The UDP port allocated for CHDR traffic on this endpoint
//

`default_nettype none
module eth_ipv4_chdr64_adapter #(
  parameter [15:0] PROTOVER         = {8'd1, 8'd0},
  parameter        MTU              = 10,
  parameter        CPU_FIFO_SIZE    = MTU,
  parameter        RT_TBL_SIZE      = 6,
  parameter        NODE_INST        = 0,
  parameter [0:0]  DROP_UNKNOWN_MAC = 1,
  parameter [0:0]  IS_CPU_ARM       = 0
)(
  // Clocking and reset interface
  input  wire        clk,
  input  wire        rst,
  // Device info
  input  wire [15:0] device_id,
  // AXI-Stream interface to/from MAC
  input  wire [63:0] s_mac_tdata,
  input  wire [3:0]  s_mac_tuser,
  input  wire        s_mac_tlast,
  input  wire        s_mac_tvalid,
  output wire        s_mac_tready,
  output wire [63:0] m_mac_tdata,
  output wire [3:0]  m_mac_tuser,
  output wire        m_mac_tlast,
  output wire        m_mac_tvalid,
  input  wire        m_mac_tready,
  // AXI-Stream interface to/from CHDR infrastructure
  input  wire [63:0] v2x_tdata,
  input  wire [15:0] v2x_tuser,
  input  wire        v2x_tlast,
  input  wire        v2x_tvalid,
  output wire        v2x_tready,

  output wire [63:0] x2v_tdata,
  output wire [15:0] x2v_tuser,
  output wire        x2v_tlast,
  output wire        x2v_tvalid,
  input  wire        x2v_tready,

  // AXI-Stream interface to/from CPU
  input  wire [63:0] s_cpu_tdata,
  input  wire [3:0]  s_cpu_tuser,
  input  wire        s_cpu_tlast,
  input  wire        s_cpu_tvalid,
  output wire        s_cpu_tready,
  output wire [63:0] m_cpu_tdata,
  output wire [3:0]  m_cpu_tuser,
  output wire        m_cpu_tlast,
  output wire        m_cpu_tvalid,
  input  wire        m_cpu_tready,
  // Device addresses
  input  wire [47:0] my_eth_addr,
  input  wire [31:0] my_ipv4_addr,
  input  wire [15:0] my_udp_chdr_port
);

  //-----------------------------------------------------------------------
  // Byte-swapping function
  // Ethernet fields we wrote out left-to-right, but AXI-Stream time-orders
  // its data right-to-left.
  //-----------------------------------------------------------------------
  function [63:0] bswap64(
    input  [63:0] din
  );
    begin
      bswap64 = {din[0 +: 8], din[8 +: 8], din[16 +: 8], din[24 +: 8],
                 din[32+: 8], din[40+: 8], din[48 +: 8], din[56 +: 8]};
    end
  endfunction

  function [15:0] chdr_get_length(input [63:0] header);
    chdr_get_length = header[47:32];
  endfunction

  //---------------------------------------
  // E2X and E2C DEMUX
  //---------------------------------------
  wire [63:0] e2x_tdata;
  wire [111:0] e2x_tuser;
  wire        e2x_tlast, e2x_tvalid, e2x_tready;

  wire [63:0] e2c_chdr_tdata;
  wire [3:0]  e2c_chdr_tuser;
  wire        e2c_chdr_tlast, e2c_chdr_tvalid, e2c_chdr_tready;

  // Ethernet sink. Inspects packet and dispatches
  // to the correct port.
  eth_ipv4_chdr64_dispatch #(
    .DROP_UNKNOWN_MAC(DROP_UNKNOWN_MAC)
  ) eth_dispatch_i (
    .clk              (clk),
    .rst              (rst),
    .s_mac_tdata      (s_mac_tdata),
    .s_mac_tuser      (s_mac_tuser),
    .s_mac_tlast      (s_mac_tlast),
    .s_mac_tvalid     (s_mac_tvalid),
    .s_mac_tready     (s_mac_tready),
    .m_uoe_tdata      (e2x_tdata),
    .m_uoe_tuser      (e2x_tuser),
    .m_uoe_tlast      (e2x_tlast),
    .m_uoe_tvalid     (e2x_tvalid),
    .m_uoe_tready     (e2x_tready),


    .m_cpu_tdata      (e2c_chdr_tdata),
    .m_cpu_tuser      (e2c_chdr_tuser),
    .m_cpu_tlast      (e2c_chdr_tlast),
    .m_cpu_tvalid     (e2c_chdr_tvalid),
    .m_cpu_tready     (e2c_chdr_tready),
    .my_eth_addr      (my_eth_addr),
    .my_ipv4_addr     (my_ipv4_addr),
    .my_udp_chdr_port (my_udp_chdr_port)
  );

  //---------------------------------------
  // CHDR Transport Adapter
  //---------------------------------------

  wire [63:0] x2e_tdata;
  wire [111:0] x2e_tuser;
  wire        x2e_tlast, x2e_tvalid, x2e_tready;


  wire [63:0] e2c_fifo_tdata;
  wire [3:0]  e2c_fifo_tuser;
  wire        e2c_fifo_tlast, e2c_fifo_tvalid, e2c_fifo_tready;


  xport_route#(
      .CHDR_W      ( 64 ),
      .KEY_W       ( 16 ),
      .VAL_W       ( 112 ),
      .TBL_SIZE    ( 6 )
  )uoe_xport_route(
      .clk         ( clk         ),
      .rst         ( rst         ),
      .e2x_tdata   ( e2x_tdata   ),
      .e2x_tuser   ( e2x_tuser   ),
      .e2x_tvalid  ( e2x_tvalid  ),
      .e2x_tlast   ( e2x_tlast   ),
      .e2x_tready  ( e2x_tready  ),

      .x2v_tdata   ( x2v_tdata   ),
      .x2v_tuser   ( x2v_tuser   ),
      .x2v_tvalid  ( x2v_tvalid  ),
      .x2v_tlast   ( x2v_tlast   ),
      .x2v_tready  ( x2v_tready  ),

      .v2x_tdata   ( v2x_tdata   ),
      .v2x_tuser   ( v2x_tuser   ),
      .v2x_tvalid  ( v2x_tvalid  ),
      .v2x_tlast   ( v2x_tlast   ),
      .v2x_tready  ( v2x_tready  ),

      .x2e_tdata   ( x2e_tdata   ),
      .x2e_tuser   ( x2e_tuser   ),
      .x2e_tvalid  ( x2e_tvalid  ),
      .x2e_tlast   ( x2e_tlast   ),
      .x2e_tready  ( x2e_tready  )
  );



  generate
    if (IS_CPU_ARM == 1'b1) begin
      //---------------------------------------
      // Ethernet framer for ARM
      //---------------------------------------

      // Strip the 6 octet ethernet padding we used internally
      // before sending to ARM.
      // Put SOF into bit[3] of tuser.
      axi64_to_xge64 arm_framer (
        .clk(clk),
        .reset(rst),
        .clear(1'b0),
        .s_axis_tdata(e2c_chdr_tdata),
        .s_axis_tuser(e2c_chdr_tuser),
        .s_axis_tlast(e2c_chdr_tlast),
        .s_axis_tvalid(e2c_chdr_tvalid),
        .s_axis_tready(e2c_chdr_tready),
        .m_axis_tdata(e2c_fifo_tdata),
        .m_axis_tuser(e2c_fifo_tuser),
        .m_axis_tlast(e2c_fifo_tlast),
        .m_axis_tvalid(e2c_fifo_tvalid),
        .m_axis_tready(e2c_fifo_tready)
      );
    end else begin
      assign e2c_fifo_tdata  = e2c_chdr_tdata;
      assign e2c_fifo_tuser  = e2c_chdr_tuser;
      assign e2c_fifo_tlast  = e2c_chdr_tlast;
      assign e2c_fifo_tvalid = e2c_chdr_tvalid;
      assign e2c_chdr_tready = e2c_fifo_tready;
    end
  endgenerate

  //---------------------------------------
  // E2X and E2C Output Buffering
  //---------------------------------------

  // The CPU can be slow to respond (relative to packet wirespeed) so
  // extra buffer for packets destined there so it doesn't back up.
  axi_fifo #(
    .WIDTH(64+4+1),.SIZE(CPU_FIFO_SIZE)
  ) cpu_fifo_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata({e2c_fifo_tlast, e2c_fifo_tuser, e2c_fifo_tdata}),
    .i_tvalid(e2c_fifo_tvalid), .i_tready(e2c_fifo_tready),
    .o_tdata({m_cpu_tlast, m_cpu_tuser, m_cpu_tdata}),
    .o_tvalid(m_cpu_tvalid), .o_tready(m_cpu_tready),
    .occupied(), .space()
  );




  wire [63:0] x2e_framed_tdata  ;
  wire [3:0]  x2e_framed_tuser  ;
  wire        x2e_framed_tlast  ;
  wire        x2e_framed_tvalid ;
  wire        x2e_framed_tready ;

  uoe_packet_gen u_uoe_packet_gen(
      .clk               ( clk               ),
      .rst               ( rst               ),
      .my_eth_addr       ( my_eth_addr       ),
      .my_ipv4_addr      ( my_ipv4_addr      ),

      .x2e_framed_tdata  ( x2e_framed_tdata  ),
      .x2e_framed_tuser  ( x2e_framed_tuser  ),
      .x2e_framed_tlast  ( x2e_framed_tlast  ),
      .x2e_framed_tvalid ( x2e_framed_tvalid ),
      .x2e_framed_tready ( x2e_framed_tready ),

      .x2e_tdata         ( x2e_tdata         ),
      .x2e_tuser         ( x2e_tuser         ),
      .x2e_tlast         ( x2e_tlast         ),
      .x2e_tvalid        ( x2e_tvalid        ),
      .x2e_tready        ( x2e_tready        )
  );


  wire [63:0] c2e_tdata;
  wire [3:0]  c2e_tuser;
  wire        c2e_tlast;
  wire        c2e_tvalid;
  wire        c2e_tready;

  generate
    if (IS_CPU_ARM == 1'b1) begin
      //---------------------------------------
      // Ethernet deframer for ARM
      //---------------------------------------

      // Add pad of 6 empty bytes to the ethernet packet going from the CPU to the
      // SFP. This padding added before MAC addresses aligns the source and
      // destination IP addresses, UDP headers etc.
      // Note that the xge_mac_wrapper strips this padding to recreate the ethernet
      // packet
      arm_deframer inst_arm_deframer
      (
        .clk(clk),
        .reset(rst),
        .clear(1'b0),

        .s_axis_tdata(s_cpu_tdata),
        .s_axis_tuser(s_cpu_tuser),
        .s_axis_tlast(s_cpu_tlast),
        .s_axis_tvalid(s_cpu_tvalid),
        .s_axis_tready(s_cpu_tready),

        .m_axis_tdata(c2e_tdata),
        .m_axis_tuser(c2e_tuser),
        .m_axis_tlast(c2e_tlast),
        .m_axis_tvalid(c2e_tvalid),
        .m_axis_tready(c2e_tready)
      );
    end else begin
      assign c2e_tdata    = s_cpu_tdata;
      assign c2e_tuser    = s_cpu_tuser;
      assign c2e_tlast    = s_cpu_tlast;
      assign c2e_tvalid   = s_cpu_tvalid;
      assign s_cpu_tready = c2e_tready;
    end
  endgenerate

  //---------------------------------------
  // X2E and C2E MUX
  //---------------------------------------
  // axi_mux #(
  //   .SIZE(2), .PRIO(0), .WIDTH(64+4), .PRE_FIFO_SIZE(0), .POST_FIFO_SIZE(1)
  // ) eth_mux_i (
  //   .clk(clk), .reset(rst), .clear(1'b0),
  //   .i_tdata({c2e_tuser, c2e_tdata, x2e_framed_tuser, x2e_framed_tdata}), .i_tlast({c2e_tlast, x2e_framed_tlast}),
  //   .i_tvalid({c2e_tvalid, x2e_framed_tvalid}), .i_tready({c2e_tready, x2e_framed_tready}),
  //   .o_tdata({m_mac_tuser, m_mac_tdata}), .o_tlast(m_mac_tlast),
  //   .o_tvalid(m_mac_tvalid), .o_tready(m_mac_tready)
  // );
  axi_mux4 #(.WIDTH(64+4), .BUFFER(1)) mux_for_eth_i
  (.clk(clk), .reset(rst), .clear(1'b0),
   .i0_tdata({x2e_framed_tuser, x2e_framed_tdata}), .i0_tlast(x2e_framed_tlast), .i0_tvalid(x2e_framed_tvalid), .i0_tready(x2e_framed_tready),
   .i1_tdata({c2e_tuser, c2e_tdata}), .i1_tlast(c2e_tlast), .i1_tvalid(c2e_tvalid), .i1_tready(c2e_tready),
   .i2_tdata(68'd0), .i2_tlast(1'b0), .i2_tvalid(1'b0), .i2_tready(),
   .i3_tdata(68'd0), .i3_tlast(1'b0), .i3_tvalid(1'b0), .i3_tready(),
   .o_tdata({m_mac_tuser, m_mac_tdata}), .o_tlast(m_mac_tlast), .o_tvalid(m_mac_tvalid), .o_tready(m_mac_tready));
endmodule // eth_ipv4_chdr64_adapter
`default_nettype wire
