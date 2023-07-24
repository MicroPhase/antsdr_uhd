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
//  Control the stream between ethernet and fpga radio processing module.
//  Data will be routed by udp port.
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
// 2023-05-10     Chaochen Wei  1.1         Add C2H channel buffer
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
module eth_radio_stream_control #(
    parameter CHDR_W = 64,
    parameter USER_W = 16,
    parameter BYPASS_RX_DEEP_FIFO = 0
) (
    input   wire            clk     ,
    input   wire            rst     ,
    
    // Ethernet to Vita
    input   wire    [63:0]  e2v_tdata   ,
    input   wire    [15:0]  e2v_tuser   ,
    input   wire            e2v_tlast   ,
    input   wire            e2v_tvalid  ,
    output  wire            e2v_tready  ,

    // control stream
    output  wire    [63:0]  ctrl_tdata  ,  
    output  wire            ctrl_tlast  ,  
    output  wire            ctrl_tvalid , 
    input   wire            ctrl_tready , 

    // h2c data stream to deep_fifo
    output  wire    [63:0]  h2c_fifo_pre_tdata      ,
    output  wire            h2c_fifo_pre_tvalid     ,
    input   wire            h2c_fifo_pre_tready     ,

    // h2c data stream from deep_fifo
    input   wire    [63:0]  h2c_fifo_post_tdata     ,
    input   wire            h2c_fifo_post_tvalid    ,
    output  wire            h2c_fifo_post_tready    ,

    input   wire    [8:0]   h2c_fifo_post_rd_count  ,
    input   wire    [8:0]   h2c_fifo_pre_wr_count   , 

    // c2h data stream to deep_fifo
    output  wire    [63:0]  c2h_fifo_pre_tdata      ,
    output  wire            c2h_fifo_pre_tvalid     ,
    input   wire            c2h_fifo_pre_tready     ,

    // c2h data stream from deep_fifo
    input   wire    [63:0]  c2h_fifo_post_tdata     ,
    input   wire            c2h_fifo_post_tvalid    ,
    output  wire            c2h_fifo_post_tready    ,

    input   wire    [8:0]   c2h_fifo_post_rd_count  ,
    input   wire    [8:0]   c2h_fifo_pre_wr_count   , 

    // data stream to radio
    output  wire    [63:0]  tx_tdata    ,  
    output  wire            tx_tlast    ,  
    output  wire            tx_tvalid   , 
    input   wire            tx_tready   ,   

    // resp stream from radio
    input   wire    [63:0]  resp_tdata  ,  
    input   wire            resp_tlast  ,  
    input   wire            resp_tvalid , 
    output  wire            resp_tready , 

    //rx data stream from radio
    input   wire    [63:0]  rx_tdata    ,  
    input   wire            rx_tlast    ,  
    input   wire            rx_tvalid   , 
    output  wire            rx_tready   , 

    // Vita to Ethernet
    output  wire    [63:0]  v2e_tdata    ,
    output  wire    [15:0]  v2e_tuser    ,
    output  wire            v2e_tlast    ,
    output  wire            v2e_tvalid   ,
    input   wire            v2e_tready   

);

    wire    [63:0]  v2d_tdata   ;
    wire    [15:0]  v2d_tuser   ;
    wire            v2d_tlast   ;
    wire            v2d_tvalid  ;
    wire            v2d_tready  ;



    wire    [63:0]  rx_buf_tdata    ;
    wire            rx_buf_tlast    ;
    wire            rx_buf_tvalid   ;
    wire            rx_buf_tready   ;
    
    chdr_trim_payload#(
        .CHDR_W        ( CHDR_W ),
        .USER_W        ( USER_W )
    )u_chdr_trim_payload(
        .clk           ( clk           ),
        .rst           ( rst           ),

        .s_axis_tdata  ( e2v_tdata     ),
        .s_axis_tuser  ( e2v_tuser     ),
        .s_axis_tlast  ( e2v_tlast     ),
        .s_axis_tvalid ( e2v_tvalid    ),
        .s_axis_tready ( e2v_tready    ),

        .m_axis_tdata  ( v2d_tdata     ),
        .m_axis_tuser  ( v2d_tuser     ),
        .m_axis_tlast  ( v2d_tlast     ),
        .m_axis_tvalid ( v2d_tvalid    ),
        .m_axis_tready ( v2d_tready    )
    );


    stream_split#(
        .CHDR_W    ( CHDR_W ),
        .USER_W    ( USER_W ),
        .BUFFER    ( 1 )
    )u_stream_split(
        .clk       ( clk            ),
        .reset     ( rst            ),
        .clear     ( 1'b0           ),

        .i_tdata   ( v2d_tdata      ),
        .i_tuser   ( v2d_tuser      ),
        .i_tlast   ( v2d_tlast      ),
        .i_tvalid  ( v2d_tvalid     ),
        .i_tready  ( v2d_tready     ),

        .o0_tdata  ( ctrl_tdata     ),
        .o0_tlast  ( ctrl_tlast     ),
        .o0_tvalid ( ctrl_tvalid    ),
        .o0_tready ( ctrl_tready    ),

        .o1_tdata  ( h2c_fifo_pre_tdata       ),
        .o1_tlast  (                          ),
        .o1_tvalid ( h2c_fifo_pre_tvalid      ),
        .o1_tready ( h2c_fifo_pre_tready      )
        
    );


    deep_fifo_to_radio u_deep_fifo_to_radio(
        .clk                     ( clk                     ),
        .rst                     ( rst                     ),
        .h2c_fifo_post_tdata     ( h2c_fifo_post_tdata     ),
        .h2c_fifo_post_tvalid    ( h2c_fifo_post_tvalid    ),
        .h2c_fifo_post_tready    ( h2c_fifo_post_tready    ),
        .h2c_fifo_post_rd_count  ( h2c_fifo_post_rd_count  ),
        .h2c_fifo_pre_wr_count   ( h2c_fifo_pre_wr_count   ),
        .tx_tdata                ( tx_tdata                ),
        .tx_tlast                ( tx_tlast                ),
        .tx_tvalid               ( tx_tvalid               ),
        .tx_tready               ( tx_tready               )
    );


generate
    if (BYPASS_RX_DEEP_FIFO) begin
        assign rx_buf_tdata = rx_tdata;
        assign rx_buf_tlast = rx_tlast; 
        assign rx_buf_tvalid = rx_tvalid; 
        assign rx_tready  = rx_buf_tready; 
    end  else begin
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
        end
endgenerate
    

    stream_aggregation#(
        .CHDR_W    ( CHDR_W ),
        .USER_W    ( USER_W ),
        .BUFFER    ( 1 )
    )u_stream_aggregation(
        .clk       ( clk       ),
        .reset     ( rst      ),
        .clear     ( 1'b0     ),
        .i0_tdata  ( resp_tdata  ),
        .i0_tlast  ( resp_tlast  ),
        .i0_tvalid ( resp_tvalid ),
        .i0_tready ( resp_tready ),
        .i1_tdata  ( rx_buf_tdata  ),
        .i1_tlast  ( rx_buf_tlast  ),
        .i1_tvalid ( rx_buf_tvalid ),
        .i1_tready ( rx_buf_tready ),
        .o_tdata   ( v2e_tdata   ),
        .o_tuser   ( v2e_tuser   ),
        .o_tlast   ( v2e_tlast   ),
        .o_tvalid  ( v2e_tvalid  ),
        .o_tready  ( v2e_tready  )
    );




    
endmodule