// --------------------------------------------------------------------------------
// Copyright (c) 2019 ~ 2023 by MicroPhase Technologies Inc. 
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
// 2023-05-08     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
module iq_stream_buffer(
    input   wire    clk     ,
    input   wire    rst     ,


    input   wire [63:0] c2h_fifo_post_tdata     ,
    output  wire        c2h_fifo_post_tready    ,
    input   wire        c2h_fifo_post_tvalid    ,

    output  wire [63:0] c2h_fifo_pre_tdata      ,
    input   wire        c2h_fifo_pre_tready     ,
    output  wire        c2h_fifo_pre_tvalid     ,


    input   wire [63:0] rx_tdata     ,
    output  wire        rx_tready    ,
    input   wire        rx_tvalid    ,
    input   wire        rx_tlast     ,


    output  wire [63:0] rx_buf_tdata     ,
    input   wire        rx_buf_tready    ,
    output  wire        rx_buf_tvalid    ,
    output  wire        rx_buf_tlast     
);
 
    //====================================================
    //card to host data buffer
    //====================================================
    assign c2h_fifo_pre_tdata = rx_tdata;
    assign c2h_fifo_pre_tvalid = rx_tvalid;
    assign rx_tready = c2h_fifo_pre_tready;


    deep_fifo_to_host u_deep_fifo_to_host(
        .clk                     ( clk                     ),
        .rst                     ( rst                     ),
        .c2h_fifo_post_tdata     ( c2h_fifo_post_tdata     ),
        .c2h_fifo_post_tvalid    ( c2h_fifo_post_tvalid    ),
        .c2h_fifo_post_tready    ( c2h_fifo_post_tready    ),
        .c2h_fifo_post_rd_count  (   ),
        .c2h_fifo_pre_wr_count   (   ),
        .tx_tdata                ( rx_buf_tdata            ),
        .tx_tlast                ( rx_buf_tlast            ),
        .tx_tvalid               ( rx_buf_tvalid           ),
        .tx_tready               ( rx_buf_tready           )
    );

endmodule

