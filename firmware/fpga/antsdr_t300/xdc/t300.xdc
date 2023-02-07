set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_nSYNC] ;
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_SCLK] ;
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_DIN] ;

set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS18} [get_ports PPS_IN_EXT] ;
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS18} [get_ports CLK_40MHz_FPGA] ;

set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS18} [get_ports tx_amp_en1] ;
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz] ;
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz_REQ] ;


set_property -dict {PACKAGE_PIN AH19 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[7]}] ;
set_property -dict {PACKAGE_PIN AJ19 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[6]}] ;
set_property -dict {PACKAGE_PIN AF19 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[5]}] ;
set_property -dict {PACKAGE_PIN AG19 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[4]}] ;
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[3]}] ;
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[2]}] ;
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[1]}] ;
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[0]}] ;
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[3]}]  ;
set_property -dict {PACKAGE_PIN Y23 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[2]}]  ;
set_property -dict {PACKAGE_PIN AA24 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[1]}]  ;
set_property -dict {PACKAGE_PIN AB24 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[0]}]  ;

set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS18} [get_ports CAT_EN_AGC]       ;
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS18} [get_ports CAT_RESETn] ;
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS18} [get_ports CAT_EN] ;
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS18} [get_ports CAT_TXnRX] ;
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS18} [get_ports CAT_SYNC] ;

set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS18 PULLUP true} [get_ports CAT_SPI_EN] ;
set_property -dict {PACKAGE_PIN AA23 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_CLK] ;
set_property -dict {PACKAGE_PIN AC22 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DO] ;
set_property -dict {PACKAGE_PIN AC23 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DI] ;

# ad9361 ;
set_property -dict {PACKAGE_PIN AG21 IOSTANDARD LVCMOS18} [get_ports CAT_FBCLK_P] ;
set_property -dict {PACKAGE_PIN AH21 IOSTANDARD LVCMOS18} [get_ports CAT_FBCLK_N] ;
set_property -dict {PACKAGE_PIN AJ25 IOSTANDARD LVCMOS18} [get_ports CAT_TX_FR_P] ;
set_property -dict {PACKAGE_PIN AK25 IOSTANDARD LVCMOS18} [get_ports CAT_TX_FR_N] ;
set_property -dict {PACKAGE_PIN AJ21 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[11]}] ;
set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[10]}] ;
set_property -dict {PACKAGE_PIN AJ23 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[9]}] ;
set_property -dict {PACKAGE_PIN AJ24 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[8]}] ;
set_property -dict {PACKAGE_PIN AH23 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[7]}] ;
set_property -dict {PACKAGE_PIN AH24 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[6]}] ;
set_property -dict {PACKAGE_PIN AG22 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[5]}] ;
set_property -dict {PACKAGE_PIN AH22 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[4]}] ;
set_property -dict {PACKAGE_PIN AC24 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[3]}] ;
set_property -dict {PACKAGE_PIN AD24 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[2]}] ;
set_property -dict {PACKAGE_PIN AG24 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[1]}] ;
set_property -dict {PACKAGE_PIN AG25 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[0]}] ;

# set_property  -dict {PACKAGE_PIN  AF22  IOSTANDARD LVCMOS18 }     [get_ports CAT_DCLK_N] ; ;
# set_property  -dict {PACKAGE_PIN  AK23  IOSTANDARD LVCMOS18 }     [get_ports CAT_RX_FR_N]; ;
set_property -dict {PACKAGE_PIN AE22 IOSTANDARD LVCMOS18} [get_ports CAT_DCLK_P] ;
set_property -dict {PACKAGE_PIN AK22 IOSTANDARD LVCMOS18} [get_ports CAT_RX_FR_P] ;
set_property -dict {PACKAGE_PIN AF23 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[11]}] ;
set_property -dict {PACKAGE_PIN AF24 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[10]}] ;
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[9]}] ;
set_property -dict {PACKAGE_PIN AE21 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[8]}] ;
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[7]}] ;
set_property -dict {PACKAGE_PIN AE23 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[6]}] ;
set_property -dict {PACKAGE_PIN AF20 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[5]}] ;
set_property -dict {PACKAGE_PIN AG20 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[4]}] ;
set_property -dict {PACKAGE_PIN AJ20 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[3]}] ;
set_property -dict {PACKAGE_PIN AK20 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[2]}] ;
set_property -dict {PACKAGE_PIN AK17 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[1]}] ;
set_property -dict {PACKAGE_PIN AK18 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[0]}] ;



set_property PACKAGE_PIN AD10 [get_ports MGT156MHZ_CLK1_P];
set_property PACKAGE_PIN AD9  [get_ports MGT156MHZ_CLK1_N];
set_property PACKAGE_PIN AF10 [get_ports NETCLK_P];
set_property PACKAGE_PIN AF9  [get_ports NETCLK_N];
set_property PACKAGE_PIN AE8  [get_ports SFP_0_RX_P];
set_property PACKAGE_PIN AE7  [get_ports SFP_0_RX_N];
set_property PACKAGE_PIN AK2  [get_ports SFP_0_TX_P];
set_property PACKAGE_PIN AK1  [get_ports SFP_0_TX_N];
set_property PACKAGE_PIN AG8  [get_ports SFP_1_RX_P];
set_property PACKAGE_PIN AG7  [get_ports SFP_1_RX_N];
set_property PACKAGE_PIN AJ4  [get_ports SFP_1_TX_P];
set_property PACKAGE_PIN AJ3  [get_ports SFP_1_TX_N];

set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS33} [get_ports SFP_0_LED_A];
set_property -dict {PACKAGE_PIN AC12 IOSTANDARD LVCMOS33} [get_ports SFP_0_LED_B];
set_property -dict {PACKAGE_PIN AF12 IOSTANDARD LVCMOS33} [get_ports SFP_0_LOS];
set_property -dict {PACKAGE_PIN AC13 IOSTANDARD LVCMOS33} [get_ports SFP_0_RS0];
set_property -dict {PACKAGE_PIN AE12 IOSTANDARD LVCMOS33} [get_ports SFP_0_RS1];
set_property -dict {PACKAGE_PIN AD16 IOSTANDARD LVCMOS33} [get_ports SFP_0_TXDISABLE];

set_property -dict {PACKAGE_PIN AJ14 IOSTANDARD LVCMOS33} [get_ports SFP_1_LED_A];
set_property -dict {PACKAGE_PIN AJ13 IOSTANDARD LVCMOS33} [get_ports SFP_1_LED_B];
set_property -dict {PACKAGE_PIN AH13 IOSTANDARD LVCMOS33} [get_ports SFP_1_LOS];
set_property -dict {PACKAGE_PIN AD14 IOSTANDARD LVCMOS33} [get_ports SFP_1_RS0];
set_property -dict {PACKAGE_PIN AD13 IOSTANDARD LVCMOS33} [get_ports SFP_1_RS1];
set_property -dict {PACKAGE_PIN AH14 IOSTANDARD LVCMOS33} [get_ports SFP_1_TXDISABLE];




# create_clock -name rx_clk       -period  4 [get_ports rx_clk_in_p] ;

# set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design] ;

set_false_path -from [get_pins clk40_reset_gen/reset_out_reg/C] -to [get_pins {eth_internal_i/eth_dma_reg_mst_i/rdresp_fifo_2clk_i/i_rst_sync_i/synchronizer_false_path/stages[0].value_reg[0][0]/D}]; ;
set_false_path -from [get_pins clk40_reset_gen/reset_out_reg/C] -to [get_pins {u_e200_rgmii_wrapper/sfp_reg_mst_i/rdresp_fifo_2clk_i/i_rst_sync_i/synchronizer_false_path/stages[0].value_reg[0][0]/D}]; ;
