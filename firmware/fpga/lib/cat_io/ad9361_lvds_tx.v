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
// Major Functions:	ad9361 tx lvds interface
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
// 2023-07-03     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
module ad9361_lvds_tx (
    input   wire            ref_clk     ,
    input   wire            radio_clk   ,
    input   wire            radio_rst   ,
    input   wire            mimo        ,
    input   wire            tx_chnl_sel ,
    input   wire    [11:0]  tx_data_i0  ,
    input   wire    [11:0]  tx_data_q0  ,
    input   wire    [11:0]  tx_data_i1  ,
    input   wire    [11:0]  tx_data_q1  ,
    
    input   wire            fb_clk      ,
    output  wire            tx_clk_p    ,
    output  wire            tx_clk_n    ,
    output  wire            tx_frame_p  ,
    output  wire            tx_frame_n  ,
    output  wire    [5:0]   tx_d_p      ,
    output  wire    [5:0]   tx_d_n  
);


    //====================================================
    //parameter define  
    //====================================================
    localparam  IDLE = 3'b001;
    localparam  MODE_1R1T = 3'b010;
    localparam  MODE_2R2T = 3'b100;

    //====================================================
    //internal signal and registers
    //====================================================
    wire            rst                 ;
    reg  	[2:0]	cnt_data 			;
    reg             mimo_sync           ;
    reg             tx_chnl_sel_sync    ;
    reg     [2:0]   state            ;

    wire  	[11:0]	dac_data_i0 		;
    wire  	[11:0]	dac_data_q0 		;
    wire  	[11:0]	dac_data_i1 		;
    wire  	[11:0]	dac_data_q1 		;

    reg  	[1:0]	tx_frame_shift 		;
    reg  	[5:0]	tx_data_i 			;
    reg 	[5:0]	tx_data_q 			;
    wire  	[5:0]	tx_data_out 		;
    wire   			tx_frame_out 		;
    wire  			tx_clk_out 			;

    reg             rd_fifo_en          ;
    wire            full                ;
    wire            empty               ;
    wire            wr_rst_busy         ;
    wire            rd_rst_busy         ;
    wire            fifo_busy           ;

    assign fifo_busy = wr_rst_busy | rd_rst_busy;

    synchronizer #(
        .INITIAL_VAL (1'b1)
    ) synchronizer_radio_rst_2x (
        .clk (fb_clk),
        .rst (1'b0),
        .in  (radio_rst),
        .out (rst)
    );


    // lvds_if_fifo u_lvds_if_fifo_tx (
    //     .wr_clk(radio_clk),            // input wire wr_clk
    //     .rd_clk(fb_clk),            // input wire rd_clk
    //     .din({tx_data_i0, tx_data_q0, tx_data_i1, tx_data_q1}), // input wire [47 : 0] din
    //     .wr_en(~full),              // input wire wr_en
    //     .rd_en(rd_fifo_en & (~empty)),              // input wire rd_en
    //     .dout({dac_data_i0, dac_data_q0, dac_data_i1, dac_data_q1}),                // output wire [47 : 0] dout
    //     .full(full),                // output wire full
    //     .empty(empty)              // output wire empty
    // );
    
    async_fifo#(
        .DSIZE  ( 48 ),
        .ASIZE  ( 10 ),
        .FALLTHROUGH ( "TRUE" )
    )u_async_fifo_tx(
        .wclk   ( radio_clk   ),
        .wrst_n ( ~rst ),
        .winc   ( ~full   ),
        .wdata  ( {tx_data_i0, tx_data_q0, tx_data_i1, tx_data_q1}  ),
        .wfull  ( full  ),
        .awfull (  ),
        .rclk   ( fb_clk   ),
        .rrst_n ( ~rst ),
        .rinc   ( rd_fifo_en & (~empty)  ),
        .rdata  ( {dac_data_i0, dac_data_q0, dac_data_i1, dac_data_q1}  ),
        .rempty ( empty ),
        .arempty  (   )
    );
    //----------------state------------------
    always @(posedge fb_clk ) begin
        if (rst==1'b1) begin
            state  <= IDLE;
        end  else begin
            case (state)
                IDLE : begin
                    if (mimo == 1'b1) begin
                        state <= MODE_2R2T;
                    end else begin
                        state <= MODE_1R1T;
                    end
                end

                MODE_1R1T : begin
                    if (mimo == 1'b1 && cnt_data == 'd1) begin
                        state <= MODE_2R2T;
                    end
                end

                MODE_2R2T : begin
                    if (mimo == 1'b0 && cnt_data == 'd3) begin
                        state <= MODE_1R1T;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end


    //----------------cnt_data------------------
    always @(posedge fb_clk ) begin
        if (rst==1'b1) begin
            cnt_data <= 'd0;
        end
        // 2r2t mode
        else if (mimo_sync == 1'b1 && empty == 1'b0) begin
            if (cnt_data == 'd3) begin
                cnt_data <= 'd0;
            end
            else begin
                cnt_data <= cnt_data + 1'b1;
            end
        end
        // 1r1t mode
        else if (mimo_sync == 1'b0 && empty == 1'b0) begin
            if (cnt_data == 'd1) begin
                cnt_data <= 'd0;
            end
            else begin
                cnt_data <= cnt_data + 1'b1;
            end
        end
    end

    //----------------mimo_sync------------------
    always @(posedge fb_clk ) begin
        if (rst==1'b1) begin
            mimo_sync <= 1'b0;
        end else if (state == IDLE) begin
            mimo_sync <= mimo;
        end else if (state == MODE_1R1T && mimo == 1'b1 && cnt_data == 'd1) begin
            mimo_sync <= 1'b1;
        end else if (state == MODE_2R2T && mimo == 1'b0 && cnt_data == 'd3) begin
            mimo_sync <= 1'b0;
        end
    end

    always @(*) begin
        if (mimo_sync == 1'b0) begin
            rd_fifo_en = (cnt_data == 'd1) ? 1'b1 : 1'b0;
        end else begin
            rd_fifo_en = (cnt_data == 'd3) ? 1'b1 : 1'b0;
        end
    end

    //----------------tx_frame_shift------------------
    always @(posedge fb_clk ) begin
        if (rst==1'b1) begin
            tx_frame_shift <= 'd0;
        end
        else if (mimo_sync == 1'b0) begin
            case (cnt_data)
                0 : tx_frame_shift <= 2'b11;
                1 : tx_frame_shift <= 2'b00; 
                default: tx_frame_shift <= 2'b00;
            endcase
        end
        else if (mimo_sync == 1'b1) begin
            case (cnt_data)
                0 : tx_frame_shift <= 2'b11;
                1 : tx_frame_shift <= 2'b11;
                2 : tx_frame_shift <= 2'b00; 
                3 : tx_frame_shift <= 2'b00; 
                default: tx_frame_shift <= 2'b00;
            endcase
        end 
    end

    //----------------tx_iq_data------------------
    always @(posedge fb_clk ) begin
        if (rst==1'b1) begin
            tx_data_i <= 'd0;
            tx_data_q <= 'd0;
        end
        // 1r1t mode
        else if (mimo == 1'b0) begin
            if (tx_chnl_sel == 1'b0) begin
                case(cnt_data)
                    0 : begin
                        tx_data_i <= dac_data_i0[11:6];
                        tx_data_q <= dac_data_q0[11:6];
                    end

                    1 : begin
                        tx_data_i <= dac_data_i0[5:0];
                        tx_data_q <= dac_data_q0[5:0];
                    end

                    default : begin
                        tx_data_i <= 'd0;
                        tx_data_q <= 'd0;
                    end
                endcase
            end else begin
                case(cnt_data)
                    0 : begin
                        tx_data_i <= dac_data_i1[11:6];
                        tx_data_q <= dac_data_q1[11:6];
                    end

                    1 : begin
                        tx_data_i <= dac_data_i1[5:0];
                        tx_data_q <= dac_data_q1[5:0];
                    end

                    default : begin
                        tx_data_i <= 'd0;
                        tx_data_q <= 'd0;
                    end
                endcase
            end
            
        end
        // 2r2t mode
        else if (mimo == 1'b1 ) begin
            case(cnt_data)
                0 : begin
                    tx_data_i <= dac_data_i0[11:6];
                    tx_data_q <= dac_data_q0[11:6];
                end
                
                1 : begin
                    tx_data_i <= dac_data_i0[5:0];
                    tx_data_q <= dac_data_q0[5:0];
                end

                2 : begin
                    tx_data_i <= dac_data_i1[11:6];
                    tx_data_q <= dac_data_q1[11:6];
                end
                
                3 : begin
                    tx_data_i <= dac_data_i1[5:0];
                    tx_data_q <= dac_data_q1[5:0];
                end

                default : begin
                    tx_data_i <= 'd0;
                    tx_data_q <= 'd0;
                end
            endcase
        end
        else begin
            tx_data_i <= 'd0;
            tx_data_q <= 'd0;
        end
    end



    genvar i;
    //====================================================
    //Serialization IQ data and frame signal
    //====================================================

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
        .INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
        .SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
    ) 	ODDR_inst_frame (
        .Q(tx_frame_out),       // 1-bit DDR output
        .C(fb_clk),   	    // 1-bit clock input
        .CE(1'b1), 			    // 1-bit clock enable input
        .D1(tx_frame_shift[1]), 	    // 1-bit data input (positive edge)
        .D2(tx_frame_shift[0]), 	    // 1-bit data input (negative edge)
        .R(1'b0),   		    // 1-bit reset
        .S(1'b0)    		    // 1-bit set
    );     

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
        .INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
        .SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
    ) 	ODDR_inst_clock (
        .Q(tx_clk_out),   	// 1-bit DDR output
        .C(fb_clk),   	// 1-bit clock input
        .CE(1'b1), 			// 1-bit clock enable input
        .D1(1'b1), 			// 1-bit data input (positive edge)
        .D2(1'b0), 			// 1-bit data input (negative edge)
        .R(1'b0),   		// 1-bit reset
        .S(1'b0)    		// 1-bit set
    );

    generate
        for (i = 0; i < 6; i = i + 1) begin
            ODDR #(
                .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
                .INIT(1'b0),    			// Initial value of Q: 1'b0 or 1'b1
                .SRTYPE("SYNC") 			// Set/Reset type: "SYNC" or "ASYNC" 
            ) 	ODDR_inst_clock (
                .Q(tx_data_out[i]),   		// 1-bit DDR output
                .C(fb_clk),   			// 1-bit clock input
                .CE(1'b1), 					// 1-bit clock enable input
                .D1(tx_data_i[i]), 		// 1-bit data input (positive edge)
                .D2(tx_data_q[i]), 		// 1-bit data input (negative edge)
                .R(1'b0),   				// 1-bit reset
                .S(1'b0)    				// 1-bit set
            );
        end
    endgenerate



    OBUFDS OBUFDS_clock_inst (
        .O(tx_clk_p),     // Diff_p output (connect directly to top-level port)
        .OB(tx_clk_n),   // Diff_n output (connect directly to top-level port)
        .I(tx_clk_out)      // Buffer input
    );

    OBUFDS OBUFDS_frame_inst (
        .O(tx_frame_p),     // Diff_p output (connect directly to top-level port)
        .OB(tx_frame_n),   // Diff_n output (connect directly to top-level port)
        .I(tx_frame_out)      // Buffer input
    );

    generate
        for (i = 0; i < 6; i = i + 1) begin
            OBUFDS OBUFDS_frame_inst (
                .O(tx_d_p[i]),     // Diff_p output (connect directly to top-level port)
                .OB(tx_d_n[i]),   // Diff_n output (connect directly to top-level port)
                .I(tx_data_out[i])      // Buffer input
            );
        end
    endgenerate
    


    // wire [255:0] probe0;
    // assign probe0 = {
    //     mimo    ,
    //     tx_chnl_sel ,
    //     tx_data_i0  ,
    //     tx_data_q0  ,
    //     tx_data_i1  ,
    //     tx_data_q1  ,
    //     rst ,
    //     cnt_data    ,
    //     mimo_sync   ,
    //     tx_chnl_sel_sync    ,
    //     state   ,
    //     dac_data_i0 ,
    //     dac_data_q0 ,
    //     dac_data_i1 ,
    //     dac_data_q1 ,
    //     tx_frame_shift  ,
    //     tx_data_i   ,
    //     tx_data_q   , 

    //     rd_fifo_en  ,
    //     full    ,
    //     empty   ,
    //     wr_rst_busy ,
    //     rd_rst_busy ,
    //     fifo_busy

    // };
    // ila_0 u_ila_lvds_tx (
    //     .clk(ref_clk), // input wire clk


    //     .probe0(probe0) // input wire [255:0] probe0
    // );
endmodule