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
//  Convert deepfifo output data to CHDR packet format, add the tlast signal to
//  the tx_data stream.
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
`timescale 1ns / 1ps
module deep_fifo_to_radio(
    input   wire            clk     ,
    input   wire            rst     ,

    //data stream from deep_fifo
    input   wire    [63:0]  h2c_fifo_post_tdata     ,
    input   wire            h2c_fifo_post_tvalid    ,
    output  reg             h2c_fifo_post_tready    ,

    input   wire    [8:0]   h2c_fifo_post_rd_count  ,
    input   wire    [8:0]   h2c_fifo_pre_wr_count   , 

    // data stream to radio
    output  wire    [63:0]  tx_tdata    ,  
    output  wire            tx_tlast    ,  
    output  reg             tx_tvalid   , 
    input   wire            tx_tready      

    );


    //====================================================
    // parameter define
    //====================================================
    localparam IDLE         = 6'b000001;
    localparam CHECK_HEAD   = 6'b000010;
    localparam DUMP         = 6'b000100;
    localparam CTRL_PKT     = 6'b001000;
    localparam DATA_PKT     = 6'b010000;
    localparam ERROR        = 6'b100000;

    parameter R0_CTRL_SID = 32'h10;
    parameter U0_CTRL_SID = 32'h30;
    parameter L0_CTRL_SID = 32'h40;
    parameter R0_DATA_SID = 32'h50;
    parameter R1_DATA_SID = 32'h60;
    parameter DEMUX_SID_MASK = 32'hffff_fff0;

    localparam PKT_TYPE_DATA        = 3'b000;
    localparam PKT_TYPE_DATA_EOB    = 3'b001;
    localparam PKT_TYPE_DATA_FC     = 3'b010;
    localparam PKT_TYPE_CTRL        = 3'b100;
    localparam PKT_TYPE_RESP        = 3'b110;
    localparam PKT_TYPE_RESP_ERR    = 3'b111;

    //====================================================
    // internal signals and registers
    //====================================================

    reg     [5:0]   state;
    reg     [5:0]   state_dly   ;

    reg     [15:0]  pkt_len         ;
    reg     [15:0]  cnt_tx_data     ;
    wire    [15:0]  pkt_length_in_bytes     ;
    wire    [31:0]  pkt_sid                 ;
    wire            pkt_is_resp_packet      ;
    wire            pkt_is_resp_err_packet  ;
    wire            pkt_is_data_packet      ;
    wire            pkt_is_data_samp_packet ;
    wire            pkt_is_data_eob_packet  ;
    wire            pkt_is_data_fc_packet   ;

    wire    [2:0]   packet_type             ;
    wire            sending_ctrl_packet     ;
    wire            sending_data_packet     ;

    assign packet_type = {h2c_fifo_post_tdata[63:62], h2c_fifo_post_tdata[60]};
    assign pkt_length_in_bytes =  h2c_fifo_post_tdata[47:32];
    assign pkt_sid = h2c_fifo_post_tdata[31:0];
    assign pkt_is_data_samp_packet = (packet_type == PKT_TYPE_DATA) && 
                                ((pkt_sid == R0_DATA_SID) || (pkt_sid == R1_DATA_SID)) ;
    
    assign pkt_is_data_eob_packet = (packet_type == PKT_TYPE_DATA_EOB) && 
                                ((pkt_sid == R0_DATA_SID) || (pkt_sid == R1_DATA_SID)) ;

    assign pkt_is_data_fc_packet = (packet_type == PKT_TYPE_DATA_FC) && 
                                ((pkt_sid == R0_DATA_SID) || (pkt_sid == R1_DATA_SID)) ;

  
    assign pkt_is_data_packet = pkt_is_data_eob_packet | pkt_is_data_samp_packet | pkt_is_data_fc_packet;           
   

    assign sending_data_packet = tx_tready & tx_tvalid;

    //----------------state------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            state <= IDLE;
        end
        else  begin
            case (state)
                IDLE: begin
                    if (h2c_fifo_post_tvalid) begin
                        state <= CHECK_HEAD;
                    end
                end

                CHECK_HEAD : begin
                    // the packet is data packet and this packet is send to radio core
                    if (pkt_is_data_packet == 1'b1 ) begin
                        state <= DATA_PKT;
                    end
                end

                DATA_PKT : begin
                    if (sending_data_packet && cnt_tx_data == pkt_len-1) begin
                        state <= IDLE;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

    always @(posedge clk ) begin
        if (rst==1'b1) begin
            state_dly <= IDLE;
        end
        else  begin
            state_dly <= state;
        end
    end

    //----------------pkt_len------------------
    // packet length in QWORD(8 bytes)
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            pkt_len <= 'd0;
        end
        else if (state == CHECK_HEAD &&  pkt_is_data_packet) begin
            pkt_len <= h2c_fifo_post_tdata[47:35] + (|h2c_fifo_post_tdata[34:32]);
        end
    end

    //----------------h2c_fifo_post_tready------------------
    always @(*) begin
        case(state)
            CHECK_HEAD: h2c_fifo_post_tready = pkt_is_data_packet ? 1'b0 : 1'b1;
            DATA_PKT : h2c_fifo_post_tready = tx_tready ;
            default  : h2c_fifo_post_tready = 1'b0;
        endcase
    end

    //----------------cnt_tx_data------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            cnt_tx_data <= 'd0;
        end
        else if ( sending_data_packet && cnt_tx_data == pkt_len-1) begin
            cnt_tx_data <= 'd0;
        end
        else if (sending_data_packet) begin
            cnt_tx_data <=  cnt_tx_data + 1'b1;
        end
    end



    always @(*) begin
        if (state == DATA_PKT) begin
            tx_tvalid = h2c_fifo_post_tvalid;
        end
        else begin
            tx_tvalid = 1'b0;
        end
    end


    assign tx_tlast     = (state == DATA_PKT) && sending_data_packet && (cnt_tx_data == pkt_len-1);
    assign tx_tdata     =  h2c_fifo_post_tdata ;


    // wire [255:0] probe0;
    // assign probe0 = {
    //     state,
    //     state_dly   ,
    
    //     pkt_len         ,
    //     cnt_tx_data     ,
    //     pkt_is_data_packet      ,
    //     pkt_is_data_samp_packet ,
    //     pkt_is_data_eob_packet  ,
    //     pkt_is_data_fc_packet   ,
    
    //     packet_type             ,
    //     sending_data_packet     ,
    //     tx_tdata    ,
    //     tx_tlast    ,
    //     tx_tvalid   ,
    //     tx_tready   ,

    //     h2c_fifo_post_tdata ,
    //     h2c_fifo_post_tvalid    ,
    //     h2c_fifo_post_tready    

    // };

    // ila_0 u_ila_deepfifo2user (
    //     .clk(clk), // input wire clk


    //     .probe0(probe0) // input wire [255:0] probe0
    // );


endmodule
