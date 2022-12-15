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
//  Stream aggregation for rx data and resp
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
// 2022-11-18     Chaochen Wei  1.0         2 tx channel flow control resp
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
`timescale 1ns / 1ps

module stream_aggregation #(
    parameter CHDR_W = 64,
    parameter USER_W = 16,
    parameter BUFFER = 0
    )(
    input clk, input reset, input clear,
    input [CHDR_W-1:0] i0_tdata, input i0_tlast, input i0_tvalid, output i0_tready,
    input [CHDR_W-1:0] i1_tdata, input i1_tlast, input i1_tvalid, output i1_tready,
    output [CHDR_W-1:0] o_tdata, output [USER_W-1:0] o_tuser, output o_tlast, output o_tvalid, input o_tready
    );

    localparam MX_IDLE = 4'b0000;
    localparam MX_0    = 4'b0001;
    localparam MX_1    = 4'b0010;
    localparam MX_2    = 4'b0100;
    localparam MX_3    = 4'b1000;

    localparam R0_CTRL_SID = 8'h10;
    localparam U0_CTRL_SID = 8'h30;
    localparam L0_CTRL_SID = 8'h40;
    localparam R0_DATA_SID = 8'h50;
    localparam R1_DATA_SID = 8'h60;
    localparam DEMUX_SID_MASK = 8'hf0;

    reg [3:0] 	  mx_state;

    wire [CHDR_W-1:0]    i0_tdata_int;
    wire 	             i0_tlast_int;
    wire                 i0_tvalid_int;
    wire                 i0_tready_int;

    wire [CHDR_W-1:0]    i1_tdata_int;
    wire 	             i1_tlast_int;
    wire                 i1_tvalid_int;
    wire                 i1_tready_int;

    reg [CHDR_W-1:0]    o_tdata_int;
    reg  [USER_W-1:0]   o_tuser_int;
    reg                 o_tvalid_int;
    reg 	            o_tlast_int;
    wire                o_tready_int;

    generate
        if(BUFFER == 0) begin
            assign i0_tdata_int = i0_tdata;
            assign i0_tlast_int = i0_tlast;
            assign i0_tvalid_int = i0_tvalid;
            assign i0_tready = i0_tready_int;
        end
        else
            axi_fifo #(
                .WIDTH(64+1),.SIZE(5)
            ) buffer_stream0 (
                .clk(clk), .reset(reset), .clear(1'b0),
                .i_tdata({i0_tlast,i0_tdata}), 
                .i_tvalid(i0_tvalid), .i_tready(i0_tready),
                .o_tdata({i0_tlast_int,i0_tdata_int}), 
                .o_tvalid(i0_tvalid_int), .o_tready(i0_tready_int),
                .space(), .occupied()
            );
    endgenerate

    generate
        if(BUFFER == 0) begin
            assign i1_tdata_int = i1_tdata;
            assign i1_tlast_int = i1_tlast;
            assign i1_tvalid_int = i1_tvalid;
            assign i1_tready = i1_tready_int;
        end
        else
            axi_fifo #(
                .WIDTH(64+1),.SIZE(11)
            ) buffer_stream1 (
                .clk(clk), .reset(reset), .clear(1'b0),
                .i_tdata({i1_tlast,i1_tdata}), 
                .i_tvalid(i1_tvalid), .i_tready(i1_tready),
                .o_tdata({i1_tlast_int,i1_tdata_int}), 
                .o_tvalid(i1_tvalid_int), .o_tready(i1_tready_int),
                .space(), .occupied()
            );
    endgenerate



    always @(posedge clk)
        if(reset | clear)
            mx_state <= MX_IDLE;
        else
        case (mx_state)
            MX_IDLE :
                // the resp is tx channel0 flow control 
                if(i0_tvalid_int && i0_tdata_int[31:16] == R0_DATA_SID && i0_tdata_int[63]==1'b1)
                    mx_state <= MX_0;
                // the resp is tx channel 1 flow control
                else if(i0_tvalid_int && i0_tdata_int[31:16] == R1_DATA_SID && i0_tdata_int[63]==1'b1)
                    mx_state <= MX_1;
                // the resp is ctrl resp
                else if (i0_tvalid_int & i0_tdata_int[63]==1'b1) begin
                    mx_state <= MX_2;
                end
                // this is rx data
                else if(i1_tvalid_int)
                    mx_state <= MX_3;
            MX_0 :
                if(o_tready_int & o_tvalid_int & o_tlast_int)
                    mx_state <= MX_IDLE;

            MX_1 :
                if(o_tready_int & o_tvalid_int & o_tlast_int)
                    mx_state <= MX_IDLE;

            MX_2 :
                if(o_tready_int & o_tvalid_int & o_tlast_int)
                    mx_state <= MX_IDLE;
            
            MX_3 :
                if(o_tready_int & o_tvalid_int & o_tlast_int)
                    mx_state <= MX_IDLE;

            default :
                mx_state <= MX_IDLE;
        endcase // case (mx_state)

    // assign {i2_tready, i1_tready, i0_tready} = mx_state & {3{o_tready_int}};
        
    assign i0_tready_int = ((mx_state == MX_0) || (mx_state == MX_1) || (mx_state == MX_2)) & o_tready_int;
    assign i1_tready_int = (mx_state == MX_3) & o_tready_int;


    // stream 0 is resp will route to udp port 49200
    // stream 1 is tx channel0 flow control resp will route to port 49202
    // stream 2 is tx channel1 flow control resp will route to port 49203
    // stream 3 is rx data stream will route to udp port 40204

    always @(*) begin
        case(mx_state)
            MX_0 : begin
                o_tvalid_int = i0_tvalid_int;
                o_tlast_int = i0_tlast_int;
                o_tdata_int = i0_tdata_int;
                o_tuser_int = 49202;
            end

            MX_1 : begin
                o_tvalid_int = i0_tvalid_int;
                o_tlast_int = i0_tlast_int;
                o_tdata_int = i0_tdata_int;
                o_tuser_int = 49203;
            end

            MX_2 : begin
                o_tvalid_int = i0_tvalid_int;
                o_tlast_int = i0_tlast_int;
                o_tdata_int = i0_tdata_int;
                o_tuser_int = 49200;
            end

            MX_3 : begin
                o_tvalid_int = i1_tvalid_int;
                o_tlast_int = i1_tlast_int;
                o_tdata_int = i1_tdata_int;
                o_tuser_int = 49204;
            end

            default : begin
                o_tvalid_int = 1'b0;
                o_tdata_int = 0;
                o_tlast_int = 0;
                o_tuser_int = 49200;
            end
        endcase
    end



    generate
        if(BUFFER == 0) begin
            assign o_tdata = o_tdata_int;
            assign o_tlast = o_tlast_int;
            assign o_tvalid = o_tvalid_int;
            assign o_tready_int = o_tready;
        end
        else
            axi_fifo_flop2 #(.WIDTH(CHDR_W+USER_W+1)) axi_fifo_flop2
                           (.clk(clk), .reset(reset), .clear(clear),
                            .i_tdata({o_tlast_int,o_tuser_int,o_tdata_int}), .i_tvalid(o_tvalid_int), .i_tready(o_tready_int),
                            .o_tdata({o_tlast,o_tuser,o_tdata}), .o_tvalid(o_tvalid), .o_tready(o_tready),
                            .space(), .occupied());
    endgenerate
endmodule
