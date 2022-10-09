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
//  user to xport module, read the kv_map for current stream to get
//  the route information.
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
module user2xport#(
    parameter        CHDR_W    = 64,
    parameter        KEY_W     = 16,
    parameter        VAL_W     = 112
)(
    input   wire                    clk     ,
    input   wire                    rst     ,
    
    /* input stream */
    input   wire    [CHDR_W-1: 0]       v2x_tdata   ,
    input   wire    [KEY_W-1:0]         v2x_tuser   ,
    input   wire                        v2x_tvalid  ,
    input   wire                        v2x_tlast   ,
    output  wire                        v2x_tready  ,

    /* output stream */
    output  wire    [CHDR_W-1: 0]       x2e_tdata   ,
    output  wire    [VAL_W-1:0]         x2e_tuser   ,
    output  wire                        x2e_tvalid  ,
    output  wire                        x2e_tlast   ,
    input   wire                        x2e_tready  ,

    /* kv map search */
    output  reg                         find_key_stb    ,
    output  wire    [KEY_W-1:0]         find_key        ,
    input   wire                        kv_map_busy     ,
    input   wire                        find_res_stb    ,
    input   wire                        find_res_match  ,
    input   wire    [VAL_W-1:0]         find_res_value  

);

    //====================================================
    //parameter define
    //====================================================
    localparam IDLE = 2'b01;
    localparam FRAME = 2'b10;


    //====================================================
    //insternal signals 
    //====================================================
    reg     [1:0]   state;


    wire        o_x2e_data_tvalid, o_x2e_user_tvalid;
    wire        o_x2e_data_tready, o_x2e_user_tready;
  
    axi_fifo #(
      .WIDTH(VAL_W),.SIZE(8)
    ) route_info_fifo_i (
      .clk(clk), .reset(rst), .clear(1'b0),
      .i_tdata(find_res_value),
      .i_tvalid(find_res_stb & find_res_match ), .i_tready(/* Always ready */),
      .o_tdata(x2e_tuser),
      .o_tvalid(o_x2e_user_tvalid), .o_tready(o_x2e_user_tready),
      .space(), .occupied()
    );


    axi_packet_gate #(
      .WIDTH(CHDR_W ), .SIZE(11), .USE_AS_BUFF(1), .MIN_PKT_SIZE(1)
    ) packet_gate_fifo_i (
      .clk(clk), .reset(rst), .clear(1'b0),
      .i_tdata({v2x_tdata}), .i_tlast(v2x_tlast), .i_terror(1'b0 /* this should zero*/ ),
      .i_tvalid(v2x_tvalid), .i_tready(v2x_tready),
      .o_tdata({x2e_tdata}), .o_tlast(x2e_tlast),
      .o_tvalid(o_x2e_data_tvalid), .o_tready(o_x2e_data_tready)
    );
  
    assign x2e_tvalid = o_x2e_data_tvalid & o_x2e_user_tvalid;
    assign o_x2e_user_tready = x2e_tready & x2e_tvalid & x2e_tlast;
    assign o_x2e_data_tready = x2e_tready & o_x2e_user_tvalid;


    //----------------state------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            state <= IDLE;
        end
        else  begin
            case(state)
                IDLE : begin
                    if(v2x_tvalid & v2x_tready)begin
                        state <= FRAME;
                    end
                end

                FRAME : begin
                    if(v2x_tvalid & v2x_tready & v2x_tlast)begin
                        state <= IDLE;
                    end
                end

                default : state <= IDLE;
            endcase
        end
    end


    wire        key_fifo_tvalid     ;
    wire        key_fifo_tready     ;

    //----------------find_key_stb------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            find_key_stb <= 1'b0;

        end
        else if (key_fifo_tvalid == 1'b1 && kv_map_busy == 1'b0 && find_key_stb == 1'b0) begin
            find_key_stb <= 1'b1;
        end
        else  begin
            find_key_stb <=  1'b0;
        end
    end

    assign key_fifo_tready = key_fifo_tvalid & find_res_match & find_res_stb;

    // store the vey:value info when a packet finished
    axi_fifo #(
        .WIDTH(16),.SIZE(8)
    ) key_fifo (
        .clk(clk), .reset(rst), .clear(1'b0),
        .i_tdata(v2x_tuser),
        .i_tvalid(state == IDLE && v2x_tvalid && v2x_tready), .i_tready(),
        .o_tdata(find_key),
        .o_tvalid(key_fifo_tvalid), .o_tready(key_fifo_tready),
        .space(), .occupied()
    );
endmodule