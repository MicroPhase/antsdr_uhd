//
// Copyright 2019 Ettus Research, A National Instruments Company
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//
// Module: eth_ipv4_chdr64_dispatch
// Description:
//  This module serves as an Ethernet endpoint for CHDR traffic.
//  Ethernet frames arrive on the s_mac port where they are
//  inspected and classified as CHDR or !CHDR. A frame contains
//  CHDR payload if it is addressed to us (Eth and IP), is a UDP
//  packet and the destination port is one of the CHDR ports.
//  The UDP payload for CHDR frame is sent out of the m_chdr port
//  in addition to source information for Eth, IP and UDP. All
//  other traffic address to us (Eth) is sent to the m_cpu port.
//  Traffic not addressed (Eth) to us is dropped.
//
// Parameters:
//  - DROP_UNKNOWN_MAC: Drop packets not addressed to us?
//
// Signals:
//   - s_mac_*: The input Ethernet stream from the MAC (plus tuser for trailing bytes + err)
//              The tuser bits are the values defined in xge_mac_wrapper. Most
//              relevant is tuser[3], which signals a bad packet that must be
//              dropped.
//   - m_chdr_*: The output CHDR stream to the rfnoc infrastructure
//   - m_cpu_*: The output Ethernet stream to the CPU (plus tuser for trailing bytes + err)
//   - my_eth_addr: The Ethernet (MAC) address of this endpoint
//   - my_ipv4_addr: The IPv4 address of this endpoint
//   - my_udp_chdr_port: The UDP port allocated for CHDR traffic on this endpoint
//

`default_nettype none
module eth_ipv4_chdr64_dispatch #(
  parameter [0:0] DROP_UNKNOWN_MAC = 1
)(
  // Clocking and reset interface
  input  wire        clk,
  input  wire        rst,
  // Input 68bit AXI-Stream interface (from MAC)
  input  wire [63:0] s_mac_tdata,
  input  wire [3:0]  s_mac_tuser,
  input  wire        s_mac_tlast,
  input  wire        s_mac_tvalid,
  output wire        s_mac_tready,
  // Output AXI-Stream interface to UOE infrastructure
  output wire [63:0] m_uoe_tdata,
  output wire [111:0] m_uoe_tuser,
  output wire        m_uoe_tlast,
  output wire        m_uoe_tvalid,
  input  wire        m_uoe_tready,


  // Output AXI-Stream interface to CPU
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

  //---------------------------------------
  // Ethernet/IP/UDP Magic Numbers
  //---------------------------------------

  localparam [47:0] ETH_ADDR_BCAST = {48{1'b1}};
  localparam [15:0] ETH_TYPE_IPV4  = 16'h0800;
  localparam [7:0]  IPV4_PROTO_UDP = 8'h11;
  localparam [7:0]  IPV4_PROTO_TCP = 8'h06;
  localparam [15:0] OFFLOAD_PORT1 = 49200;
  localparam [15:0] OFFLOAD_PORT2 = 49202;
  localparam [15:0] OFFLOAD_PORT3 = 49203;
  localparam [15:0] OFFLOAD_PORT4 = 49204;

  //---------------------------------------
  // Byte-swapping function
  //---------------------------------------
  function [15:0] bswap16(
    input  [15:0] din
  );
    begin
      bswap16 = {din[0 +: 8], din[8 +: 8]};
    end
  endfunction

  function [31:0] bswap32(
    input  [31:0] din
  );
    begin
      bswap32 = {din[0 +: 8], din[8 +: 8],
                 din[16+: 8], din[24+: 8]};
    end
  endfunction

  function [63:0] bswap64(
    input  [63:0] din
  );
    begin
      bswap64 = {din[0 +: 8], din[8 +: 8], din[16 +: 8], din[24 +: 8],
                 din[32+: 8], din[40+: 8], din[48 +: 8], din[56 +: 8]};
    end
  endfunction

  //---------------------------------------
  // Input pipeline stage
  //---------------------------------------

  wire [63:0] in_tdata;
  wire [3:0]  in_tuser;
  wire        in_tlast, in_tvalid;
  reg         in_tready;

  wire [63:0] cpu_tdata;
  wire [3:0]  cpu_tuser;
  reg         cpu_tlast, cpu_terror, cpu_tvalid;
  wire        cpu_tready;

  wire [63:0] uoe_tdata;
  wire [111:0] uoe_tuser;
  wire        uoe_tlast, uoe_tvalid, uoe_tready;
  wire        uoe_terror;


  axi_fifo #(
    .WIDTH(64+4+1),.SIZE(1)
  ) in_reg_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata({s_mac_tlast, s_mac_tuser, s_mac_tdata}),
    .i_tvalid(s_mac_tvalid), .i_tready(s_mac_tready),
    .o_tdata({in_tlast, in_tuser, in_tdata}),
    .o_tvalid(in_tvalid), .o_tready(in_tready),
    .space(), .occupied()
  );

  //---------------------------------------
  // Classification state machine
  //---------------------------------------

  localparam [3:0] ST_IDLE_ETH_L0    = 4'd0;
  localparam [3:0] ST_ETH_L1         = 4'd1;
  localparam [3:0] ST_ETH_L2_IPV4_L0 = 4'd2;
  localparam [3:0] ST_IPV4_L1        = 4'd3;
  localparam [3:0] ST_IPV4_L2        = 4'd4;
  localparam [3:0] ST_IPV4_UDP_HDR   = 4'd5;
  localparam [3:0] ST_IPV4_TCP_HDR   = 4'd6;
  localparam [3:0] ST_FWD_UOE        = 4'd7;
  localparam [3:0] ST_FWD_TOE        = 4'd8;
  localparam [3:0] ST_FWD_CPU        = 4'd9;
  localparam [3:0] ST_DROP_PKT       = 4'd10;

  // State info
  reg [3:0] state = ST_IDLE_ETH_L0;
  reg       discard_cpu_pkt = 1'b0;

  // Cached fields
  reg [47:0] eth_dst_addr_cached, eth_src_addr_cached;
  reg [7:0]  ipv4_proto_type_cached;
  reg [31:0] ipv4_src_addr_cached;
  reg [15:0] udp_src_port_cached;
  reg [15:0] udp_dst_port_cached;
  reg [15:0] tcp_src_port_cached;
  reg [15:0] tcp_dst_port_cached;
  reg [15:0] transport_len_cached ;

  always @(posedge clk) begin
    if (rst) begin
      state <= ST_IDLE_ETH_L0;
      discard_cpu_pkt <= 1'b0;
      eth_dst_addr_cached <= 'd0;
      eth_src_addr_cached <= 'd0;
      ipv4_proto_type_cached <= 'd0;
      ipv4_src_addr_cached <= 'd0;
      udp_src_port_cached <= 'd0;
      udp_dst_port_cached <= 'd0;
      tcp_src_port_cached <= 'd0;
      tcp_dst_port_cached <= 'd0;
      transport_len_cached <= 'd0;
    end else if (in_tvalid && in_tready) begin
      case (state)
        // Idle or First line of Eth frame
        // ----------------------------------
        // | DstMAC_HI (16) | Preamble (48) |
        // ----------------------------------
        ST_IDLE_ETH_L0: begin
          discard_cpu_pkt <= 1'b0;
          if (!in_tlast) begin
            // Just cache addresses. No decisions to be made.
            eth_dst_addr_cached[47:32] <= bswap16(in_tdata[48 +: 16]);
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else begin
              state <= ST_ETH_L1;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end

        // Second line of Eth frame
        // -----------------------------------
        // | SrcMAC_HI (32) | DstMAC_LO (32) |
        // -----------------------------------
        ST_ETH_L1: begin
          if (!in_tlast) begin
            // Just cache addresses. No decisions to be made.
            eth_dst_addr_cached[31:0] <= bswap32(in_tdata[0 +: 32]);
            eth_src_addr_cached[47:16] <= bswap32(in_tdata[32 +: 32]);
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else begin
              state <= ST_ETH_L2_IPV4_L0;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end

        // End Eth frame and start of IP
        // --------------------------------------------------
        // | IPv4_Line0 (32)| EthType (16) | SrcMAC_LO (16) |
        // --------------------------------------------------
        ST_ETH_L2_IPV4_L0: begin
          if (!in_tlast) begin
            eth_src_addr_cached[15:0] <= bswap16(in_tdata[0 +: 16]);
            transport_len_cached <= bswap16(in_tdata[48 +:16]) - 20;
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else if (eth_dst_addr_cached == ETH_ADDR_BCAST) begin
              // If Eth destination is bcast then fwd to CPU
              state <= ST_FWD_CPU;
            end else if (eth_dst_addr_cached != my_eth_addr && DROP_UNKNOWN_MAC) begin
              // If Eth destination is not us then drop the packet
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) != ETH_TYPE_IPV4) begin
              // If this is not an IPv4 frame then fwd to CPU
              state <= ST_FWD_CPU;
            end else begin
              // Otherwise continue classification
              // We know this is an IPv4 frame
              state <= ST_IPV4_L1;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end

        // Continue IPv4 header
        // -------------------------------------
        // | IPv4_Line2 (32) | IPv4_Line1 (32) |
        // -------------------------------------
        ST_IPV4_L1: begin
          if (!in_tlast) begin
            ipv4_proto_type_cached <= in_tdata[40 +: 8];
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else if (in_tdata[40 +: 8] != IPV4_PROTO_UDP) begin
              // If this is not a UDP frame then fwd to CPU
              state <= ST_FWD_CPU;
            end else begin
              // Otherwise continue classification
              // We know this is a UDP frame
              state <= ST_IPV4_L2;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end

        // Continue IPv4 header
        // -----------------------------------
        // | IPDstAddr (32) | IPSrcAddr (32) |
        // -----------------------------------
        ST_IPV4_L2: begin
          if (!in_tlast) begin
            ipv4_src_addr_cached <= bswap32(in_tdata[0 +: 32]);
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap32(in_tdata[32 +: 32]) != my_ipv4_addr) begin
              // If IPv4 destination is not us then fwd to CPU
              state <= ST_FWD_CPU;
            end else if(ipv4_proto_type_cached == IPV4_PROTO_UDP) begin
              // if the packet is udp packet
              state <= ST_IPV4_UDP_HDR;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end

        // UDP header
        // -----------------------------------------------------------
        // | Chksum (16) | Length (16) | DstPort (16) | SrcPort (16) |
        // -----------------------------------------------------------
        ST_IPV4_UDP_HDR: begin
          if (!in_tlast) begin
            udp_src_port_cached <= bswap16(in_tdata[0 +: 16]);
            udp_dst_port_cached <= bswap16(in_tdata[16 +: 16]);
            if (in_tuser[3]) begin
              state <= ST_DROP_PKT;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) == my_udp_chdr_port) begin
              // The UDP port matches uoe port
              state <= ST_FWD_UOE;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) == OFFLOAD_PORT1) begin
              // The UDP port matches CHDR port
              state <= ST_FWD_UOE;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) == OFFLOAD_PORT2) begin
              // The UDP port matches CHDR port
              state <= ST_FWD_UOE;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) == OFFLOAD_PORT3) begin
              // The UDP port matches CHDR port
              state <= ST_FWD_UOE;
              discard_cpu_pkt <= 1'b1;
            end else if (bswap16(in_tdata[16 +: 16]) == OFFLOAD_PORT4) begin
              // The UDP port matches CHDR port
              state <= ST_FWD_UOE;
              discard_cpu_pkt <= 1'b1;
            end else begin
              // Not the CHDR port. Forward to CPU
              state <= ST_FWD_CPU;
            end
          end else begin
            // Short packet: Violates min eth size of 64 bytes
            state <= ST_IDLE_ETH_L0;
          end
        end


        // CHDR Payload
        ST_FWD_UOE: begin
          discard_cpu_pkt <= 1'b0;
          if (in_tlast)
            state <= ST_IDLE_ETH_L0;
        end


        // NotCHDR Payload: Send to CPU
        ST_FWD_CPU: begin
          if (in_tlast)
            state <= ST_IDLE_ETH_L0;
        end

        // Unwanted Payload: Drop
        ST_DROP_PKT: begin
          discard_cpu_pkt <= 1'b0;
          if (in_tlast)
            state <= ST_IDLE_ETH_L0;
        end

        // We should never get here
        default: begin
          state <= ST_IDLE_ETH_L0;
        end
      endcase
    end
  end

  always @(*) begin
    case (state)
      ST_IDLE_ETH_L0: begin
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_ETH_L1: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_ETH_L2_IPV4_L0: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_IPV4_L1: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_IPV4_L2: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_IPV4_UDP_HDR: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_IPV4_TCP_HDR: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = in_tlast;   // Illegal short packet: Drop it
      end
      ST_FWD_UOE: begin 
        in_tready   = uoe_tready & (discard_cpu_pkt ? cpu_tready : 1'b1);
        cpu_tvalid  = discard_cpu_pkt;
        cpu_tlast   = discard_cpu_pkt;
        cpu_terror  = discard_cpu_pkt;
      end
      ST_FWD_TOE: begin 
        in_tready   = uoe_tready & (discard_cpu_pkt ? cpu_tready : 1'b1);
        cpu_tvalid  = discard_cpu_pkt;
        cpu_tlast   = discard_cpu_pkt;
        cpu_terror  = discard_cpu_pkt;
      end
      ST_FWD_CPU: begin 
        in_tready   = cpu_tready;
        cpu_tvalid  = in_tvalid;
        cpu_tlast   = in_tlast;
        cpu_terror  = 1'b0;
      end
      ST_DROP_PKT: begin 
        in_tready   = discard_cpu_pkt ? cpu_tready : 1'b1;
        cpu_tvalid  = discard_cpu_pkt;
        cpu_tlast   = discard_cpu_pkt;
        cpu_terror  = discard_cpu_pkt;
      end
      default: begin
        in_tready   = 1'b0;
        cpu_tvalid  = 1'b0;
        cpu_tlast   = 1'b0;
        cpu_terror  = 1'b0;
      end
    endcase
  end


  assign cpu_tdata  = in_tdata;
  assign cpu_tuser  = in_tuser;

  assign uoe_tdata  = in_tdata;
  assign uoe_tuser  = { udp_dst_port_cached, udp_src_port_cached, ipv4_src_addr_cached, eth_src_addr_cached};
  assign uoe_tlast  = in_tlast;
  assign uoe_tvalid = in_tvalid && (state == ST_FWD_UOE);
  assign uoe_terror = in_tuser[3];


  //---------------------------------------
  // Output processing
  //---------------------------------------

  wire [63:0] o_cpu_tdata;
  wire [3:0]  o_cpu_tuser;
  wire        o_cpu_terror, o_cpu_tlast, o_cpu_tvalid, o_cpu_tready;

  axi_fifo #(
    .WIDTH(64+4+1+1),.SIZE(1)
  ) out_reg_cpu_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata({cpu_tlast, cpu_terror, cpu_tuser, cpu_tdata}),
    .i_tvalid(cpu_tvalid), .i_tready(cpu_tready),
    .o_tdata({o_cpu_tlast, o_cpu_terror, o_cpu_tuser, o_cpu_tdata}),
    .o_tvalid(o_cpu_tvalid), .o_tready(o_cpu_tready),
    .space(), .occupied()
  );

  // We cannot make a CHDR/noCHDR routing decision until we are in the middle
  // of a packet so we use a packet gate for the CPU path because we can rewind 
  // the write pointer and drop the packet in case it's destined for the CHDR
  // path.
  // NOTE: The SIZE of this FIFO must be 11 to accomodate a 9000 byte jumbo frame
  //       regardless of the CHDR MTU
  axi_packet_gate #( .WIDTH(64+4), .SIZE(11), .USE_AS_BUFF(0) ) cpu_out_gate_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata({o_cpu_tuser, o_cpu_tdata}), .i_tlast(o_cpu_tlast), .i_terror(o_cpu_terror | o_cpu_tuser[3]),
    .i_tvalid(o_cpu_tvalid), .i_tready(o_cpu_tready),
    .o_tdata({m_cpu_tuser, m_cpu_tdata}), .o_tlast(m_cpu_tlast),
    .o_tvalid(m_cpu_tvalid), .o_tready(m_cpu_tready)
  );

  wire [63:0] o_uoe_tdata;
  wire [111:0] o_uoe_tuser;
  wire        o_uoe_tlast, o_uoe_tvalid, o_uoe_tready;
  wire        o_uoe_data_tvalid, o_uoe_user_tvalid;
  wire        o_uoe_data_tready, o_uoe_user_tready;

  axi_fifo #(
    .WIDTH(112),.SIZE(8)
  ) uoe_user_fifo_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata(uoe_tuser),
    .i_tvalid(uoe_tvalid & uoe_tready & uoe_tlast & ~uoe_terror), .i_tready(/* Always ready */),
    .o_tdata(m_uoe_tuser),
    .o_tvalid(o_uoe_user_tvalid), .o_tready(o_uoe_user_tready),
    .space(), .occupied()
  );

  axi_packet_gate #(
    .WIDTH(64), .SIZE(11), .USE_AS_BUFF(1), .MIN_PKT_SIZE(1)
  ) uoe_out_gate_i (
    .clk(clk), .reset(rst), .clear(1'b0),
    .i_tdata({uoe_tdata[31:0], uoe_tdata[63:32]}), .i_tlast(uoe_tlast), .i_terror(uoe_terror),
    .i_tvalid(uoe_tvalid), .i_tready(uoe_tready),
    .o_tdata(m_uoe_tdata), .o_tlast(m_uoe_tlast),
    .o_tvalid(o_uoe_data_tvalid), .o_tready(o_uoe_data_tready)
  );

  assign m_uoe_tvalid = o_uoe_data_tvalid & o_uoe_user_tvalid;
  assign o_uoe_user_tready = m_uoe_tready & m_uoe_tvalid & m_uoe_tlast;
  assign o_uoe_data_tready = m_uoe_tready & o_uoe_user_tvalid;


endmodule // eth_ipv4_chdr64_dispatch
`default_nettype wire
