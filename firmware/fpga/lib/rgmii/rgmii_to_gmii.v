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
	input	wire	[1:0]	speed			,

	/* Keep the I/O and fabric clock networks separate.  rgmii_rxc_io is
	 * restricted to the IDDR clock pins, while rgmii_rxc may drive normal
	 * fabric registers through a BUFR/BUFG.
	 */
	input	wire 			rgmii_rxc_io	,
	input	wire 			rgmii_rxc		,
	input	wire 			rgmii_rx_ctl	,
	input	wire 	[3:0]	rgmii_rd 		,

	output	wire 			gmii_rxc 		,
	output	wire			gmii_rx_ce		,
	output  wire 			gmii_rx_dv 		,
	output	wire			gmii_rx_er 		,
	output	wire	[7:0]	gmii_rd 
    );

wire [3:0] rgmii_rd_rise;
wire [3:0] rgmii_rd_fall;
wire       rgmii_ctl_rise;
wire       rgmii_ctl_fall;
wire       speed_1000 = speed[1];

reg  [3:0] low_nibble = 4'h0;
reg  [7:0] low_speed_data = 8'h0;
reg        low_speed_dv = 1'b0;
reg        low_speed_er = 1'b0;
reg        low_speed_ce = 1'b0;
reg        have_low_nibble = 1'b0;

assign gmii_rxc = rgmii_rxc;
assign gmii_rx_ce = speed_1000 ? 1'b1 : low_speed_ce;
assign gmii_rx_dv = speed_1000 ? rgmii_ctl_rise : low_speed_dv;
assign gmii_rx_er = speed_1000 ? (rgmii_ctl_rise ^ rgmii_ctl_fall)
                               : low_speed_er;
assign gmii_rd = speed_1000 ? {rgmii_rd_fall, rgmii_rd_rise}
                            : low_speed_data;

/* Assemble two repeated low-speed RGMII nibbles into one MAC byte.  RX_CTL
 * going low realigns the nibble phase at every frame boundary. */
always @(posedge rgmii_rxc) begin
	if (rst || speed_1000) begin
		low_nibble      <= 4'h0;
		low_speed_data  <= 8'h0;
		low_speed_dv    <= 1'b0;
		low_speed_er    <= 1'b0;
		low_speed_ce    <= 1'b0;
		have_low_nibble <= 1'b0;
	end else begin
		low_speed_ce <= 1'b0;
		if (!rgmii_ctl_rise) begin
			low_speed_dv    <= 1'b0;
			low_speed_er    <= 1'b0;
			have_low_nibble <= 1'b0;
		end else if (!have_low_nibble) begin
			low_nibble      <= rgmii_rd_rise;
			low_speed_er    <= rgmii_ctl_rise ^ rgmii_ctl_fall;
			have_low_nibble <= 1'b1;
		end else begin
			low_speed_data  <= {rgmii_rd_rise, low_nibble};
			low_speed_dv    <= 1'b1;
			low_speed_er    <= low_speed_er |
			                   (rgmii_ctl_rise ^ rgmii_ctl_fall);
			low_speed_ce    <= 1'b1;
			have_low_nibble <= 1'b0;
		end
	end
end

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
	        .Q1(rgmii_rd_rise[i]), // 1-bit output for positive edge of clock
	        .Q2(rgmii_rd_fall[i]), // 1-bit output for negative edge of clock
	        .C(rgmii_rxc_io),	// I/O clock input
	      	.CE(1'b1), 			// 1-bit clock enable input
	      	.D(rgmii_rd[i]),   	// 1-bit DDR data input
            .R(rst),           // 1-bit reset
            .S(1'b0)           // 1-bit set
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
        .Q1(rgmii_ctl_rise), // 1-bit output for positive edge of clock
	        .Q2(rgmii_ctl_fall), // 1-bit output for negative edge of clock
	        .C(rgmii_rxc_io),	// I/O clock input
      	.CE(1'b1), 			// 1-bit clock enable input
      	.D(rgmii_rx_ctl),   	// 1-bit DDR data input
        .R(rst),           // 1-bit reset
        .S(1'b0)           // 1-bit set
   );
 
endmodule
