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
// Major Functions:	Top level of ad9361 lvds interface
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

module ad9363_lvds_if(
	input 	wire 			ref_clk 	,//200M clock for iodelay
	input 	wire 			radio_rst 	,//system reset
	//====================================================
	//physical interface (receive-lvds)
	//====================================================
	input	wire          	rx_clk_in_p		,
	input	wire          	rx_clk_in_n		,
  	input	wire          	rx_frame_in_p	,
	input	wire          	rx_frame_in_n	,
  	input	wire  [5:0]  	rx_data_in_p	,
	input	wire  [5:0]  	rx_data_in_n	,  

  	//====================================================
  	//physical interface (transmit-lvds)
  	//====================================================
  	output 	wire 			tx_clk_out_p 	,
	output 	wire 			tx_clk_out_n 	,
  	output 	wire 			tx_frame_out_p	,
	output 	wire 			tx_frame_out_n	,
  	output 	wire  [5:0]		tx_data_out_p 	,
	output 	wire  [5:0]		tx_data_out_n 	,

  	//====================================================
  	//user rx port
  	//====================================================
	output	wire 	[11:0]	adc_data_i0	,
	output	wire 	[11:0]	adc_data_q0	,
	output	wire 	[11:0]	adc_data_i1	,
	output	wire 	[11:0]	adc_data_q1 ,
	//====================================================
	//user tx port
	//====================================================
	input 	wire 	[11:0]	dac_data_i0	,
	input 	wire 	[11:0]	dac_data_q0	,
	input 	wire 	[11:0]	dac_data_i1	,
	input 	wire 	[11:0]	dac_data_q1	,

	//====================================================
	//user control signal
	//====================================================
	input   wire   			mimo		,//1r1t mode or 2r2t mode select, 1:2r2t, 0:1r1t
	output 	wire 			radio_clk 		,
	input 	wire 	[4:0]	delay_value		,//delay_value of the IDELAY_CTRL2
	input 	wire 			delay_load_en	,//enable data delay load
	input 	wire 			data_clk_ce  	 //clock enable, only when this signal is valid,
										 	 //the user_clk can be valid
	);

    wire            data_clk    ;
    //====================================================
    //interna signals and registers
    //====================================================
    ad9361_lvds_if_rx u_ad9361_lvds_if_rx(
        .ref_clk        ( ref_clk        ),
        .rst            ( radio_rst      ),
        .rx_clk_in_p    ( rx_clk_in_p    ),
        .rx_clk_in_n    ( rx_clk_in_n    ),
        .rx_frame_in_p  ( rx_frame_in_p  ),
        .rx_frame_in_n  ( rx_frame_in_n  ),
        .rx_data_in_p   ( rx_data_in_p   ),
        .rx_data_in_n   ( rx_data_in_n   ),
        .radio_clk      ( radio_clk      ),
        .mimo           ( mimo           ),
        .adc_data_i0    ( adc_data_i0    ),
        .adc_data_q0    ( adc_data_q0    ),
        .adc_data_i1    ( adc_data_i1    ),
        .adc_data_q1    ( adc_data_q1    ),
        .rx_status      ( rx_status      ),
        .data_clk       ( data_clk       ),
        .delay_value    ( delay_value    ),
        .delay_load_en  ( delay_load_en  ),
        .data_clk_ce    ( data_clk_ce    )
    );


    ad9361_lvds_tx u_ad9361_lvds_tx(
		.ref_clk 	  ( ref_clk 	 ),
        .radio_clk    ( radio_clk    ),
        .radio_rst    ( radio_rst    ),
        .mimo         ( mimo         ),
        .tx_chnl_sel  ( tx_chnl_sel  ),
        .tx_data_i0   ( dac_data_i0   ),
        .tx_data_q0   ( dac_data_q0   ),
        .tx_data_i1   ( dac_data_i1   ),
        .tx_data_q1   ( dac_data_q1   ),
        .fb_clk       ( data_clk       ),
        .tx_clk_p     ( tx_clk_out_p   ),
        .tx_clk_n     ( tx_clk_out_n   ),
        .tx_frame_p   ( tx_frame_out_p ),
        .tx_frame_n   ( tx_frame_out_n ),
        .tx_d_p       ( tx_data_out_p  ),
        .tx_d_n       ( tx_data_out_n  )
    );

endmodule