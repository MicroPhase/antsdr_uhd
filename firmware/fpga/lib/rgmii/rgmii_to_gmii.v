// --------------------------------------------------------------------
// Copyright (c) 2019 by MicroPhase Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   MicroPhase grants permission to use and modify this code for use
//   in synthesis for all MicroPhase Development Boards.
//   Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  MicroPhase provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     MicroPhase Technologies Inc
//                     Shanghai, China
//
//                     web: http://www.microphase.cn/   
//                     email: support@microphase.cn
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//
// Major Functions:	
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//
//  Revision History:
//  Date          By            Revision    Change Description
//---------------------------------------------------------------------
//2020-04-11      Chaochen Wei  1.0          Original
//2020-                         1.1          
// --------------------------------------------------------------------
// --------------------------------------------------------------------
`timescale 1ns / 1ps
module rgmii_to_gmii(
	input	wire 			rst 			,

	input	wire 			rgmii_rxc		,
	input	wire 			rgmii_rx_ctl	,
	input	wire 	[3:0]	rgmii_rd 		,

	output	wire 			gmii_rxc 		,
	output  wire 			gmii_rx_dv 		,
	output	wire			gmii_rx_er 		,
	output	wire	[7:0]	gmii_rd 
    );

wire 	gmii_rx_err_r;
assign gmii_rxc = rgmii_rxc;
assign gmii_rx_er = 1'b0;

generate
	genvar i;
	for(i = 0 ; i < 4 ; i = i + 1)begin
		IDDR #(
	      	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
	      	                                //    or "SAME_EDGE_PIPELINED" 
	      	.INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
	      	.INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
	      	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
	   ) IDDR_inst_data (
	      	.Q1(gmii_rd[i]), 	// 1-bit output for positive edge of clock
	      	.Q2(gmii_rd[i+4]), 	// 1-bit output for negative edge of clock
	      	.C(rgmii_rxc),   	// 1-bit clock input
	      	.CE(1'b1), 			// 1-bit clock enable input
	      	.D(rgmii_rd[i]),   	// 1-bit DDR data input
	      	.R(1'b0),   		// 1-bit reset
	      	.S(rst)    			// 1-bit set
	   );
	end
endgenerate


IDDR #(
      	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
      	                                //    or "SAME_EDGE_PIPELINED" 
      	.INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      	.INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst_ctrl (
      	.Q1(gmii_rx_dv), 	// 1-bit output for positive edge of clock
      	.Q2(gmii_rx_err_r), 	// 1-bit output for negative edge of clock
      	.C(rgmii_rxc),   	// 1-bit clock input
      	.CE(1'b1), 			// 1-bit clock enable input
      	.D(rgmii_rx_ctl),   	// 1-bit DDR data input
      	.R(1'b0),   		// 1-bit reset
      	.S(rst)    			// 1-bit set
   );
 
endmodule
