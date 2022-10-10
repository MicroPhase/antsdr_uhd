// -----------------------------------------------------------------------------
// Copyright (c) 2019-2022 All rights reserved
// -----------------------------------------------------------------------------
// Author 	 : WCC 1530604142@qq.com
// File   	 : uoe_packet_gen
// Create 	 : 2022-09-05
// Revise 	 : 2022-
// Editor 	 : Vscode, tab size (4)
// Functions : UDP offload engine packet_generate
// 			   
// -----------------------------------------------------------------------------
module uoe_packet_gen (
    input   wire        clk     ,
    input   wire        rst     ,
    input   wire [47:0] my_eth_addr ,
    input   wire [31:0] my_ipv4_addr ,
    output  wire [63:0] x2e_framed_tdata,
    output  wire [3:0]  x2e_framed_tuser,
    output  wire        x2e_framed_tlast, 
    output  wire        x2e_framed_tvalid, 
    input   wire        x2e_framed_tready,

    input   wire [63:0] x2e_tdata,
    input   wire [111:0]x2e_tuser,
    input   wire        x2e_tlast, 
    input   wire        x2e_tvalid, 
    output  wire        x2e_tready


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

    localparam [2:0] ST_IDLE           = 3'd0;
    localparam [2:0] ST_ETH_L0         = 3'd1;
    localparam [2:0] ST_ETH_L1         = 3'd2;
    localparam [2:0] ST_ETH_L2_IPV4_L0 = 3'd3;
    localparam [2:0] ST_IPV4_L1        = 3'd4;
    localparam [2:0] ST_IPV4_L2        = 3'd5;
    localparam [2:0] ST_IPV4_UDP_HDR   = 3'd6;
    localparam [2:0] ST_CHDR_PAYLOAD   = 3'd7;

    reg [2:0]  frame_state = ST_IDLE;
    reg [15:0] chdr_len = 16'd0;
    reg [63:0] frame_tdata;

    always @(posedge clk) begin
    if(rst) begin
        frame_state <= ST_IDLE;
        chdr_len <= 'd0;
    end else begin
        case(frame_state)
        ST_IDLE: begin
            if (x2e_tvalid) begin
                frame_state <= ST_ETH_L0;
                chdr_len <= chdr_get_length(x2e_tdata); // the tuser has transport length, if udp transport_len = udp_head(8) + chdr_len
            end
        end
        ST_CHDR_PAYLOAD: begin
            if (x2e_tvalid & x2e_framed_tready)
            if (x2e_tlast)
                frame_state <= ST_IDLE;
        end
        default: begin
            if(x2e_framed_tready)
            frame_state <= frame_state + 3'd1;
        end
        endcase
    end
    end

    assign x2e_tready = (frame_state == ST_CHDR_PAYLOAD) ? x2e_framed_tready : 1'b0;
    assign x2e_framed_tvalid = (frame_state == ST_CHDR_PAYLOAD) ? x2e_tvalid : (frame_state == ST_IDLE) ? 1'b0 : 1'b1;
    assign x2e_framed_tlast = (frame_state == ST_CHDR_PAYLOAD) ? x2e_tlast : 1'b0;
    assign x2e_framed_tuser = ((frame_state == ST_CHDR_PAYLOAD) & x2e_tlast) ? {1'b0, chdr_len[2:0]} : 4'b0000;
    assign x2e_framed_tdata = x2e_framed_tvalid ? frame_tdata : 'd0;

    wire [47:0] pad = 48'h0;
    wire [47:0] mac_dst = x2e_tuser[47:0];   // Extract from router lookup results
    wire [15:0] eth_type = 16'h0800;  // IPv4
    wire [15:0] misc_ip = { 4'd4 /* IPv4 */, 4'd5 /* IP HDR Len */, 8'h00 /* DSCP and ECN */};
    wire [15:0] ip_len = (16'd28 + chdr_len);  // 20 for IP, 8 for UDP
    wire [15:0] ident = 16'h0;
    wire [15:0] flag_frag = { 3'b010 /* don't fragment */, 13'h0 };
    wire [15:0] ttl_prot = { 8'h10 /* TTL */, 8'h11 /* UDP */ };
    wire [15:0] iphdr_checksum;
    wire [31:0] ip_dst = x2e_tuser[79:48];   // Extract from router lookup results
    wire [15:0] udp_dst = x2e_tuser[95:80];  // Extract from router lookup results
    wire [15:0] udp_src = x2e_tuser[111:96];
    wire [15:0] udp_len = (16'd8 + chdr_len);
    wire [15:0] udp_checksum = 16'h0;

    ip_hdr_checksum ip_hdr_checksum (
    .clk(clk), .in({misc_ip, ip_len, ident, flag_frag, ttl_prot, 16'd0,
    my_ipv4_addr, ip_dst}), .clken(1'b1), .out(iphdr_checksum)
    );

    always @(*) begin
    case(frame_state)
        ST_ETH_L0         : frame_tdata <= bswap64({pad[47:0], mac_dst[47:32]});
        ST_ETH_L1         : frame_tdata <= bswap64({mac_dst[31:0], my_eth_addr[47:16]});
        ST_ETH_L2_IPV4_L0 : frame_tdata <= bswap64({my_eth_addr[15:0], eth_type[15:0], misc_ip[15:0], ip_len[15:0]});
        ST_IPV4_L1        : frame_tdata <= bswap64({ident[15:0], flag_frag[15:0], ttl_prot[15:0], iphdr_checksum[15:0]});
        ST_IPV4_L2        : frame_tdata <= bswap64({my_ipv4_addr[31:0], ip_dst[31:0]});
        ST_IPV4_UDP_HDR   : frame_tdata <= bswap64({udp_src[15:0], udp_dst[15:0], udp_len[15:0], udp_checksum[15:0]});
        default           : frame_tdata <= {x2e_tdata[31:0], x2e_tdata[63:32]};
    endcase
    end



endmodule