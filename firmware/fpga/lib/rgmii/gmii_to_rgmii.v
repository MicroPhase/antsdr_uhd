`timescale 1ns / 1ps
module gmii_to_rgmii(
	input	wire 			rst 		,
	input 	wire 			gmii_txc 	,
	input	wire	[1:0]	speed		,
	input	wire 			gmii_tx_en	,
	input 	wire  			gmii_tx_er 	,
	input 	wire 	[7:0]	gmii_td 	,

	output	wire			gmii_tx_ce	,
	output	wire 			rgmii_txc 	,
	output	wire 			rgmii_tx_ctl,
	output 	wire 	[3:0]	rgmii_td 
    );

wire 	        tmp_rgmii_tx_ctl1;
wire 	        tmp_rgmii_tx_ctl2;
wire            rgmii_txc_r     ;
wire            rgmii_tx_ctl_r  ;
wire    [3:0]   rgmii_td_r      ;

/*
 * RGMII encodes one byte per clock at 1 Gb/s.  At 10/100 Mb/s the
 * interface clock is 2.5/25 MHz and each MII nibble is repeated on both
 * DDR edges.  Keep the byte-oriented MAC on the RGMII clock, but only let
 * it advance after both nibbles of a byte have been transmitted.
 *
 * speed: 00 = 10 Mb/s, 01 = 100 Mb/s, 10/11 = 1000 Mb/s.
 */
wire speed_1000 = speed[1];
reg  low_speed_phase = 1'b0;
wire [3:0] low_speed_nibble = low_speed_phase ? gmii_td[7:4]
                                               : gmii_td[3:0];
wire [3:0] rgmii_td_posedge = speed_1000 ? gmii_td[3:0]
                                         : low_speed_nibble;
wire [3:0] rgmii_td_negedge = speed_1000 ? gmii_td[7:4]
                                         : low_speed_nibble;

always @(posedge gmii_txc) begin
	if (rst || speed_1000)
		low_speed_phase <= 1'b0;
	else
		low_speed_phase <= ~low_speed_phase;
end

assign gmii_tx_ce = speed_1000 | low_speed_phase;

assign rgmii_txc = rgmii_txc_r;
assign rgmii_tx_ctl = rgmii_tx_ctl_r;
assign rgmii_td = rgmii_td_r;

assign 	tmp_rgmii_tx_ctl1 = gmii_tx_en;
assign  tmp_rgmii_tx_ctl2 = gmii_tx_en ^ gmii_tx_er; 
//----------------clock------------------
   ODDR #(
      	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      	.INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_clock (
      	.Q(rgmii_txc_r),  // 1-bit DDR output
      	.C(gmii_txc),   // 1-bit clock input
      	.CE(1'b1), 		// 1-bit clock enable input
      	.D1(1'b1), 		// 1-bit data input (positive edge)
      	.D2(1'b0), 		// 1-bit data input (negative edge)
        .R(rst),           // 1-bit reset
        .S(1'b0)           // 1-bit set
   );

  //----------------control------------------
   ODDR #(
      	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      	.INIT(1'b0),    	// Initial value of Q: 1'b0 or 1'b1
      	.SRTYPE("SYNC") 	// Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_ctrl (
      	.Q(rgmii_tx_ctl_r),   // 1-bit DDR output
      	.C(gmii_txc),   	// 1-bit clock input
      	.CE(1'b1), 			// 1-bit clock enable input
      	.D1(tmp_rgmii_tx_ctl1), 	// 1-bit data input (positive edge)
      	.D2(tmp_rgmii_tx_ctl2), 			// 1-bit data input (negative edge)
        .R(rst),           // 1-bit reset
        .S(1'b0)           // 1-bit set
   );

//----------------data------------------
generate
	genvar i;
	for(i = 0; i < 4; i = i + 1)begin
		ODDR #(
	      	.DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
	      	.INIT(1'b0),    	// Initial value of Q: 1'b0 or 1'b1
	      	.SRTYPE("SYNC") 	// Set/Reset type: "SYNC" or "ASYNC" 
	   ) ODDR_data (
	      	.Q(rgmii_td_r[i]),   	// 1-bit DDR output
	      	.C(gmii_txc),   	// 1-bit clock input
	      	.CE(1'b1), 			// 1-bit clock enable input
	        .D1(rgmii_td_posedge[i]), // 1-bit data input (positive edge)
	        .D2(rgmii_td_negedge[i]), // 1-bit data input (negative edge)
            .R(rst),           // 1-bit reset
            .S(1'b0)           // 1-bit set
	   );
	end
endgenerate

endmodule
