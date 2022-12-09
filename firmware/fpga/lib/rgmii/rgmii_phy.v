// -----------------------------------------------------------------------------
// Copyright (c) 2019-2022 All rights reserved
// -----------------------------------------------------------------------------
// Author 	 : WCC 1530604142@qq.com
// File   	 : rgmii_phy
// Create 	 : 2022-08-24
// Revise 	 : 2022-
// Editor 	 : Vscode, tab size (4)
// Functions : rgmii phy module
// 			   
// -----------------------------------------------------------------------------

module rgmii_phy(

	input	wire 			rst 		    ,

	input	wire 			rgmii_rxc		,
	input	wire 			rgmii_rx_ctl	,
	input	wire 	[3:0]	rgmii_rd 		,

	output	wire 			gmii_rxc 		,
	output  wire 			gmii_rx_dv 		,
	output	wire			gmii_rx_er  	,
	output	wire	[7:0]	gmii_rd         , 


	input	wire 			gmii_tx_en	,
    input   wire            gmii_tx_er  ,
	input 	wire 	[7:0]	gmii_td 	,

	output	wire 			rgmii_txc 	,
	output	wire 			rgmii_tx_ctl,
	output 	wire 	[3:0]	rgmii_td 
);

    wire    rgmii_clk_90;
    wire    gmii_txc    ;

    assign gmii_txc = gmii_rxc;

    rgmii_to_gmii u_rgmii_to_gmii(
        .rst           ( rst           ),
        .rgmii_rxc     ( rgmii_rxc  ),
        .rgmii_rx_ctl  ( rgmii_rx_ctl  ),
        .rgmii_rd      ( rgmii_rd      ),
        .gmii_rxc      ( gmii_rxc      ),
        .gmii_rx_dv    ( gmii_rx_dv    ),
        .gmii_rx_er    ( gmii_rx_er    ),
        .gmii_rd       ( gmii_rd       )
    );



    gmii_to_rgmii u_gmii_to_rgmii(
        .rst          ( rst          ),
        .gmii_txc     ( gmii_txc     ),
        .gmii_tx_en   ( gmii_tx_en   ),
        .gmii_tx_er   ( gmii_tx_er   ),
        .gmii_td      ( gmii_td      ),
        .rgmii_txc    ( rgmii_txc    ),
        .rgmii_tx_ctl ( rgmii_tx_ctl ),
        .rgmii_td     ( rgmii_td     )
    );



endmodule