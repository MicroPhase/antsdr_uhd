
#################################################################################################################
#
# VCTCXO and reference clock
#
#################################################################################################################
set_property  -dict {PACKAGE_PIN  T9   IOSTANDARD  LVCMOS33} [get_ports  CLK_40M_DAC_nSYNC] ;
set_property  -dict {PACKAGE_PIN  V5   IOSTANDARD  LVCMOS33} [get_ports  CLK_40M_DAC_SCLK] ;
set_property  -dict {PACKAGE_PIN  U10  IOSTANDARD  LVCMOS33} [get_ports  CLK_40M_DAC_DIN]  ;

set_property  -dict {PACKAGE_PIN  Y7   IOSTANDARD  LVCMOS33} [get_ports  PPS_IN_EXT]  ;
set_property  -dict {PACKAGE_PIN  U9   IOSTANDARD  LVCMOS33} [get_ports  PPS_IN_INT]  ;
set_property  -dict {PACKAGE_PIN  L16  IOSTANDARD  LVCMOS18} [get_ports  CLK_40MHz_FPGA]  ;
set_property  -dict {PACKAGE_PIN  J18  IOSTANDARD  LVCMOS18} [get_ports  CLKIN_10MHz]  ;

set_property  -dict {PACKAGE_PIN  Y8   IOSTANDARD  LVCMOS33} [get_ports  GPS_LOCK]  ;
set_property  -dict {PACKAGE_PIN  Y6   IOSTANDARD  LVCMOS33} [get_ports  REF_PPS_LOCK]  ;
set_property  -dict {PACKAGE_PIN  Y9   IOSTANDARD  LVCMOS33} [get_ports  REF_10M_LOCK]  ;

#################################################################################################################
#
# RF switch and PA
#
#################################################################################################################
set_property  -dict {PACKAGE_PIN  T5   IOSTANDARD  LVCMOS33} [get_ports  FE_RX1_SEL1]  ;
set_property  -dict {PACKAGE_PIN  Y12  IOSTANDARD  LVCMOS33} [get_ports  FE_RX2_SEL1]  ;
set_property  -dict {PACKAGE_PIN  V11  IOSTANDARD  LVCMOS33} [get_ports  FE_TXRX1_SEL1]  ;
set_property  -dict {PACKAGE_PIN  V6   IOSTANDARD  LVCMOS33} [get_ports  FE_TXRX2_SEL1]  ;
set_property  -dict {PACKAGE_PIN  W11  IOSTANDARD  LVCMOS33} [get_ports  tx_amp_en1]  ;
set_property  -dict {PACKAGE_PIN  Y11  IOSTANDARD  LVCMOS33} [get_ports  tx_amp_en2]  ;

#################################################################################################################
#
#GPS MISC
#
#################################################################################################################
set_property  -dict {PACKAGE_PIN  W8   IOSTANDARD  LVCMOS33} [get_ports  GPS_NRST]  ;
set_property  -dict {PACKAGE_PIN  W9   IOSTANDARD  LVCMOS33} [get_ports  GPS_PWEN]  ;

set_property  -dict {PACKAGE_PIN  Y13  IOSTANDARD  LVCMOS33} [get_ports  GPS_RX]  ;
set_property  -dict {PACKAGE_PIN  W10  IOSTANDARD  LVCMOS33} [get_ports  GPS_TX]  ;


#################################################################################################################
#
# ethernet
#
#################################################################################################################
set_property  -dict {PACKAGE_PIN  C20   IOSTANDARD  LVCMOS18} [get_ports  rgmii_txd[3]]  ;
set_property  -dict {PACKAGE_PIN  D19   IOSTANDARD  LVCMOS18} [get_ports  rgmii_txd[2]]  ;
set_property  -dict {PACKAGE_PIN  D20   IOSTANDARD  LVCMOS18} [get_ports  rgmii_txd[1]]  ;
set_property  -dict {PACKAGE_PIN  F19   IOSTANDARD  LVCMOS18} [get_ports  rgmii_txd[0]]  ;
set_property  -dict {PACKAGE_PIN  E18   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rxd[3]]  ;
set_property  -dict {PACKAGE_PIN  E19   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rxd[2]]  ;
set_property  -dict {PACKAGE_PIN  E17   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rxd[1]]  ;
set_property  -dict {PACKAGE_PIN  F16   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rxd[0]]  ;

set_property  -dict {PACKAGE_PIN  F20   IOSTANDARD  LVCMOS18} [get_ports  rgmii_tx_ctl]  ;
set_property  -dict {PACKAGE_PIN  D18   IOSTANDARD  LVCMOS18} [get_ports  rgmii_txc]     ;
set_property  -dict {PACKAGE_PIN  G17   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rx_ctl]  ;
set_property  -dict {PACKAGE_PIN  H16   IOSTANDARD  LVCMOS18} [get_ports  rgmii_rxc]     ;
set_property  -dict {PACKAGE_PIN  B19   IOSTANDARD  LVCMOS18} [get_ports  eth_phy_rst_n]   ;
set_property  -dict {PACKAGE_PIN  A20   IOSTANDARD  LVCMOS18} [get_ports  mdio]         ;
set_property  -dict {PACKAGE_PIN  B20   IOSTANDARD  LVCMOS18} [get_ports  mdc]          ;

create_clock -period  8.000          [get_ports rgmii_rxc] 

#################################################################################################################
#
# AD9361
#
#################################################################################################################

set_property  -dict {PACKAGE_PIN  V13     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[7]]                   ; 
set_property  -dict {PACKAGE_PIN  U13     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[6]]                   ; 
set_property  -dict {PACKAGE_PIN  T20     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[5]]                   ; 
set_property  -dict {PACKAGE_PIN  T19     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[4]]                   ; 
set_property  -dict {PACKAGE_PIN  T17     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[3]]                   ; 
set_property  -dict {PACKAGE_PIN  T15     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[2]]                   ; 
set_property  -dict {PACKAGE_PIN  T14     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[1]]                   ; 
set_property  -dict {PACKAGE_PIN  T11     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[0]]                   ; 
set_property  -dict {PACKAGE_PIN  M20     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[3]]                    ; 
set_property  -dict {PACKAGE_PIN  M19     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[2]]                    ; 
set_property  -dict {PACKAGE_PIN  F17     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[1]]                    ; 
set_property  -dict {PACKAGE_PIN  T10     IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[0]]                    ; 
set_property  -dict {PACKAGE_PIN  P16     IOSTANDARD LVCMOS18} [get_ports CAT_EN_AGC]                       ; 
set_property  -dict {PACKAGE_PIN  U20     IOSTANDARD LVCMOS18} [get_ports CAT_SYNC]                         ; 
set_property  -dict {PACKAGE_PIN  N17     IOSTANDARD LVCMOS18} [get_ports CAT_RESETn]                       ; 
set_property  -dict {PACKAGE_PIN  R18     IOSTANDARD LVCMOS18} [get_ports CAT_EN]                           ; 
set_property  -dict {PACKAGE_PIN  P14     IOSTANDARD LVCMOS18} [get_ports CAT_TXnRX]                        ; 

set_property  -dict {PACKAGE_PIN  P18     IOSTANDARD LVCMOS18  PULLTYPE PULLUP} [get_ports CAT_SPI_EN]      ; 
set_property  -dict {PACKAGE_PIN  R14     IOSTANDARD LVCMOS18} [get_ports CAT_SPI_CLK]                      ; 
set_property  -dict {PACKAGE_PIN  P15     IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DI]                       ; 
set_property  -dict {PACKAGE_PIN  R19     IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DO]  


set_property  -dict {PACKAGE_PIN  N18  IOSTANDARD LVCMOS18 }     [get_ports CAT_DCLK_P]    ; 
set_property  -dict {PACKAGE_PIN  N20  IOSTANDARD LVCMOS18 }     [get_ports CAT_RX_FR_P]   ; 
set_property  -dict {PACKAGE_PIN  W18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[11]]  ; 
set_property  -dict {PACKAGE_PIN  W19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[10]]  ; 
set_property  -dict {PACKAGE_PIN  Y18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[9]]   ; 
set_property  -dict {PACKAGE_PIN  Y19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[8]]   ; 
set_property  -dict {PACKAGE_PIN  V20  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[7]]   ; 
set_property  -dict {PACKAGE_PIN  W20  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[6]]   ; 
set_property  -dict {PACKAGE_PIN  V17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[5]]   ; 
set_property  -dict {PACKAGE_PIN  V18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[4]]   ; 
set_property  -dict {PACKAGE_PIN  T16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[3]]   ; 
set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[2]]   ; 
set_property  -dict {PACKAGE_PIN  V15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[1]]   ; 
set_property  -dict {PACKAGE_PIN  W15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[0]]   ; 

set_property  -dict {PACKAGE_PIN  Y16  IOSTANDARD LVCMOS18 }     [get_ports CAT_FBCLK_P]   ;
set_property  -dict {PACKAGE_PIN  Y17  IOSTANDARD LVCMOS18 }     [get_ports CAT_FBCLK_N]   ;
set_property  -dict {PACKAGE_PIN  W14  IOSTANDARD LVCMOS18 }     [get_ports CAT_TX_FR_P]   ; 
set_property  -dict {PACKAGE_PIN  Y14  IOSTANDARD LVCMOS18 }     [get_ports CAT_TX_FR_N]   ;
set_property  -dict {PACKAGE_PIN  U14  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[11]]  ; 
set_property  -dict {PACKAGE_PIN  U15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[10]]  ; 
set_property  -dict {PACKAGE_PIN  R16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[9]]   ; 
set_property  -dict {PACKAGE_PIN  R17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[8]]   ; 
set_property  -dict {PACKAGE_PIN  V16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[7]]   ; 
set_property  -dict {PACKAGE_PIN  W16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[6]]   ; 
set_property  -dict {PACKAGE_PIN  V12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[5]]   ; 
set_property  -dict {PACKAGE_PIN  W13  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[4]]   ; 
set_property  -dict {PACKAGE_PIN  U18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[3]]   ; 
set_property  -dict {PACKAGE_PIN  U19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[2]]   ; 
set_property  -dict {PACKAGE_PIN  T12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[1]]   ; 
set_property  -dict {PACKAGE_PIN  U12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[0]]   ; 




#################################################################################################################
#
# GPIO
#
#################################################################################################################




set_false_path -from [get_pins clk40_reset_gen/reset_out_reg/C] -to [get_pins {eth_internal_i/eth_dma_reg_mst_i/rdresp_fifo_2clk_i/i_rst_sync_i/synchronizer_false_path/stages[0].value_reg[0][0]/D}];
set_false_path -from [get_pins clk40_reset_gen/reset_out_reg/C] -to [get_pins {u_e200_rgmii_wrapper/sfp_reg_mst_i/rdresp_fifo_2clk_i/i_rst_sync_i/synchronizer_false_path/stages[0].value_reg[0][0]/D}];
