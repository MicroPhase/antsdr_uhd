`timescale 1ns / 1ps
module gmii2rgmii_wrapper(
    input   wire        rst     ,
    output  wire [3:0]  rgmii_txd   ,
    output  wire        rgmii_tx_ctl,
    output  wire        rgmii_txc   ,
    input   wire [3:0]  rgmii_rxd   ,
    input   wire        rgmii_rx_ctl,
    input   wire        rgmii_rxc   ,
    input   wire [7:0]  gmii_txd    ,
    input   wire        gmii_tx_en  ,
    input   wire        gmii_tx_er  ,
    
    output  wire        gmii_crs    ,
    output  wire        gmii_col    ,
    output  wire [7:0]  gmii_rxd    ,
    output  wire        gmii_rx_dv  ,
    output  wire        gmii_rx_er  ,
    output  wire        gmii_rx_clk
    
    );

    wire        gmii_tx_clk ;
    wire [7:0]  gmii_txd_t    ;
    wire        gmii_tx_en_t  ;
    wire        gmii_tx_er_t  ;
    wire        rd_en;
    wire        full, empty;


    // gmii_to_rgmii_0 u_gmii_to_rgmii_0 (
    //     .tx_reset(rst),                    // input wire tx_reset
    //     .rx_reset(rst),                    // input wire rx_reset
    //     .clkin(clk200),                          // input wire clkin
    //     .ref_clk_out(),              // output wire ref_clk_out
    //     .mmcm_locked_out(),      // output wire mmcm_locked_out
    //     .gmii_clk_125m_out(),  // output wire gmii_clk_125m_out
    //     .gmii_clk_25m_out(),    // output wire gmii_clk_25m_out
    //     .gmii_clk_2_5m_out(),  // output wire gmii_clk_2_5m_out
    //     .rgmii_txd(rgmii_txd),                  // output wire [3 : 0] rgmii_txd
    //     .rgmii_tx_ctl(rgmii_tx_ctl),            // output wire rgmii_tx_ctl
    //     .rgmii_txc(rgmii_txc),                  // output wire rgmii_txc
    //     .rgmii_rxd(rgmii_rxd),                  // input wire [3 : 0] rgmii_rxd
    //     .rgmii_rx_ctl(rgmii_rx_ctl),            // input wire rgmii_rx_ctl
    //     .rgmii_rxc(rgmii_rxc),                  // input wire rgmii_rxc
    //     .link_status(),              // output wire link_status
    //     .clock_speed(),              // output wire [1 : 0] clock_speed
    //     .duplex_status(),          // output wire duplex_status
    //     .mdio_gem_mdc(1'b0),            // input wire mdio_gem_mdc
    //     .mdio_gem_i(),                // output wire mdio_gem_i
    //     .mdio_gem_o(1'b0),                // input wire mdio_gem_o
    //     .mdio_gem_t(1'b0),                // input wire mdio_gem_t
    //     .mdio_phy_mdc(),            // output wire mdio_phy_mdc
    //     .mdio_phy_i(1'b0),                // input wire mdio_phy_i
    //     .mdio_phy_o(),                // output wire mdio_phy_o
    //     .mdio_phy_t(),                // output wire mdio_phy_t
    //     .gmii_txd(gmii_txd_t),                    // input wire [7 : 0] gmii_txd
    //     .gmii_tx_en(gmii_tx_en_t),                // input wire gmii_tx_en
    //     .gmii_tx_er(gmii_tx_er_t),                // input wire gmii_tx_er
    //     .gmii_tx_clk(gmii_tx_clk),              // output wire gmii_tx_clk
    //     .gmii_crs(gmii_crs),                    // output wire gmii_crs
    //     .gmii_col(gmii_col),                    // output wire gmii_col
    //     .gmii_rxd(gmii_rxd),                    // output wire [7 : 0] gmii_rxd
    //     .gmii_rx_dv(gmii_rx_dv),                // output wire gmii_rx_dv
    //     .gmii_rx_er(gmii_rx_er),                // output wire gmii_rx_er
    //     .gmii_rx_clk(gmii_rx_clk),              // output wire gmii_rx_clk
    //     .speed_mode(speed_mode)                // output wire [1 : 0] speed_mode
    // );

    util_gmii_to_rgmii u_util_gmii_to_rgmii(
        .reset           ( rst           ),
        .rgmii_td        ( rgmii_txd        ),
        .rgmii_tx_ctl    ( rgmii_tx_ctl    ),
        .rgmii_txc       ( rgmii_txc       ),
        .rgmii_rd        ( rgmii_rxd        ),
        .rgmii_rx_ctl    ( rgmii_rx_ctl    ),
        .rgmii_rxc       ( rgmii_rxc       ),
        .gmii_txd        ( gmii_txd        ),
        .gmii_tx_en      ( gmii_tx_en      ),
        .gmii_tx_er      ( gmii_tx_er      ),
        .gmii_tx_clk     ( gmii_tx_clk     ),
        .gmii_crs        ( gmii_crs        ),
        .gmii_col        ( gmii_col        ),
        .gmii_rxd        ( gmii_rxd        ),
        .gmii_rx_dv      ( gmii_rx_dv      ),
        .gmii_rx_er      ( gmii_rx_er      ),
        .gmii_rx_clk     ( gmii_rx_clk     ),
        .speed_selection ( 2'b10 ),
        .duplex_mode     ( 1'b1     )
    );



    // fifo_generator_0 u_fifo_generator_0 (
    //     .wr_clk(gmii_rx_clk),  // input wire wr_clk
    //     .rd_clk(gmii_tx_clk),  // input wire rd_clk
    //     .din({gmii_txd, gmii_tx_en, gmii_tx_er}),        // input wire [9 : 0] din
    //     .wr_en(1'b1),    // input wire wr_en
    //     .rd_en(rd_en),    // input wire rd_en
    //     .dout({gmii_txd_t, gmii_tx_en_t, gmii_tx_er_t}),      // output wire [9 : 0] dout
    //     .full(full),      // output wire full
    //     .empty(empty)    // output wire empty
    // );

    // assign rd_en =~empty;

endmodule
