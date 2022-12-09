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
// Major Functions:	rgmii interface data delay
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
// 2022-10-24     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
`timescale 1ns / 1ps


module rgmii_if_idelay(
    input   wire            ref_clk     ,
    input   wire            rst         ,

    input   wire            rgmii_rx_ctl,
    input   wire    [3:0]   rgmii_rxd   ,


    output   wire            rgmii_rx_ctl_dly,
    output   wire    [3:0]   rgmii_rxd_dly   

    );

    wire            delay_load_en   ;
    wire    [4:0]   delay_value     ;
    wire    [4:0]   mon_delay_frame ;

    // IDELAYCTRL module
    IDELAYCTRL IDELAYCTRL_inst (
        .RDY(rdy),       // 1-bit output: Ready output
        .REFCLK(ref_clk),// 1-bit input: Reference clock input
        .RST(rst)        // 1-bit input: Active high reset input
    );
    // delay frame
    IDELAYE2 #(
        .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
        .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
        .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
        .IDELAY_TYPE("FIXED"),        // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
        .IDELAY_VALUE(5'hB),                // Input delay tap setting (0-31)
        .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
        .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
        .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
    )
    IDELAYE2_inst_frame_delay (
        .CNTVALUEOUT(mon_delay_frame),// 5-bit output: Counter value output
        .DATAOUT(rgmii_rx_ctl_dly),	  // 1-bit output: Delayed data output
        .C(ref_clk),	              // 1-bit input: Clock input
        .CE(1'b0),                 	  // 1-bit input: Active high enable increment/decrement input
        .CINVCTRL(1'b0),           	  // 1-bit input: Dynamic clock inversion input
        .CNTVALUEIN(delay_value),  	  // 5-bit input: Counter value input
        .DATAIN(1'b0),         	   	  // 1-bit input: Internal delay data input
        .IDATAIN(rgmii_rx_ctl),    	  // 1-bit input: Data input from the I/O
        .INC(1'b0),                	  // 1-bit input: Increment / Decrement tap delay input
        .LD(delay_load_en),           // 1-bit input: Load IDELAY_VALUE input
        .LDPIPEEN(1'b0),           	  // 1-bit input: Enable PIPELINE register to load data input
        .REGRST(1'b0)              	  // 1-bit input: Active-high reset tap-delay input
    );

    //delay data
    generate
        genvar i;
        for (i = 0; i < 4; i = i + 1)
        begin:data_delay
            IDELAYE2 #(
                    .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
                    .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
                    .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
                    .IDELAY_TYPE("FIXED"),        // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
                    .IDELAY_VALUE('hB),                // Input delay tap setting (0-31)
                    .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
                    .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
                    .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
            )
            IDELAYE2_inst_data_delay (
                    .CNTVALUEOUT(),              // 5-bit output: Counter value output
                    .DATAOUT(rgmii_rxd_dly[i]),	 // 1-bit output: Delayed data output
                    .C(ref_clk),	             // 1-bit input: Clock input
                    .CE(1'b0),               	 // 1-bit input: Active high enable increment/decrement input
                    .CINVCTRL(1'b0),         	 // 1-bit input: Dynamic clock inversion input
                    .CNTVALUEIN(delay_value),	 // 5-bit input: Counter value input
                    .DATAIN(1'b0),         	 	 // 1-bit input: Internal delay data input
                    .IDATAIN(rgmii_rxd[i]),	     // 1-bit input: Data input from the I/O
                    .INC(1'b0),              	 // 1-bit input: Increment / Decrement tap delay input
                    .LD(delay_load_en),          // 1-bit input: Load IDELAY_VALUE input
                    .LDPIPEEN(1'b0),         	 // 1-bit input: Enable PIPELINE register to load data input
                    .REGRST(1'b0)            	 // 1-bit input: Active-high reset tap-delay input
            );
        end
    endgenerate


    // vio_0 u_vio (
    //     .clk(ref_clk),                // input wire clk
    //     .probe_in0(mon_delay_frame),    // input wire [4 : 0] probe_in0
    //     .probe_out0(delay_load_en),  // output wire [0 : 0] probe_out0
    //     .probe_out1(delay_value)  // output wire [4 : 0] probe_out1
    // );

endmodule
