set_property  -dict {PACKAGE_PIN  V6    IOSTANDARD  LVCMOS18} [get_ports  CLK_40M_DAC_nSYNC] ;
set_property  -dict {PACKAGE_PIN  W6    IOSTANDARD  LVCMOS18} [get_ports  CLK_40M_DAC_SCLK] ;
set_property  -dict {PACKAGE_PIN  V10   IOSTANDARD  LVCMOS18} [get_ports  CLK_40M_DAC_DIN]  ;


set_property  -dict {PACKAGE_PIN  V11   IOSTANDARD  LVCMOS18} [get_ports  PPS_IN]  ;
set_property  -dict {PACKAGE_PIN  K17   IOSTANDARD  LVCMOS18} [get_ports  CLK_40MHz_FPGA]  ;


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
set_property  -dict {PACKAGE_PIN  A20   IOSTANDARD  LVCMOS18} [get_ports  mdio]      ;
set_property  -dict {PACKAGE_PIN  B20   IOSTANDARD  LVCMOS18} [get_ports  mdc]       ;




set_property  -dict {PACKAGE_PIN  G15   IOSTANDARD  LVCMOS18} [get_ports  cTXDRV_PWEN]  ;
set_property  -dict {PACKAGE_PIN  J20   IOSTANDARD  LVCMOS18} [get_ports  CLKIN_10MHz]  ;
set_property  -dict {PACKAGE_PIN  H20   IOSTANDARD  LVCMOS18} [get_ports  CLKIN_10MHz_REQ]  ;


# create_clock -name rx_clk       -period  8 [get_ports rgmii_rxc]


set_property  -dict {PACKAGE_PIN    T15   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[7]]              ;
set_property  -dict {PACKAGE_PIN    K16   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[6]]              ;
set_property  -dict {PACKAGE_PIN    P14   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[5]]              ;
set_property  -dict {PACKAGE_PIN    P15   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[4]]              ;
set_property  -dict {PACKAGE_PIN    R14   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[3]]              ;
set_property  -dict {PACKAGE_PIN    J16   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[2]]              ;
set_property  -dict {PACKAGE_PIN    J15   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[1]]              ;
set_property  -dict {PACKAGE_PIN    T10   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_OUT[0]]              ;
set_property  -dict {PACKAGE_PIN    T11   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[3]]               ;
set_property  -dict {PACKAGE_PIN    V13   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[2]]               ;
set_property  -dict {PACKAGE_PIN    T14   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[1]]               ;
set_property  -dict {PACKAGE_PIN    U13   IOSTANDARD LVCMOS18} [get_ports CAT_CTL_IN[0]]               ;
set_property  -dict {PACKAGE_PIN    P16   IOSTANDARD LVCMOS18} [get_ports CAT_EN_AGC]                  ;

set_property  -dict {PACKAGE_PIN    T17   IOSTANDARD LVCMOS18} [get_ports CAT_RESETn]                  ;
set_property  -dict {PACKAGE_PIN    R18   IOSTANDARD LVCMOS18} [get_ports CAT_EN]                      ;
set_property  -dict {PACKAGE_PIN    N17   IOSTANDARD LVCMOS18} [get_ports CAT_TXnRX]                   ;

set_property  -dict {PACKAGE_PIN    T20   IOSTANDARD LVCMOS18  PULLTYPE PULLUP} [get_ports CAT_SPI_EN] ;
set_property  -dict {PACKAGE_PIN    R19   IOSTANDARD LVCMOS18} [get_ports CAT_SPI_CLK]                 ;
set_property  -dict {PACKAGE_PIN    T19   IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DO]                  ;
set_property  -dict {PACKAGE_PIN    P18   IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DI]                  ;



# constraints (pzsdr2.e)
# ad9361
set_property  -dict {PACKAGE_PIN  N18  IOSTANDARD LVCMOS18 }     [get_ports CAT_FBCLK_P]  ; 
set_property  -dict {PACKAGE_PIN  P19  IOSTANDARD LVCMOS18 }     [get_ports CAT_FBCLK_N]  ; 
set_property  -dict {PACKAGE_PIN  V16  IOSTANDARD LVCMOS18 }     [get_ports CAT_TX_FR_P]  ; 
set_property  -dict {PACKAGE_PIN  W16  IOSTANDARD LVCMOS18 }     [get_ports CAT_TX_FR_N]  ; 
set_property  -dict {PACKAGE_PIN  W14  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[11]] ; 
set_property  -dict {PACKAGE_PIN  Y14  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[10]] ; 
set_property  -dict {PACKAGE_PIN  V20  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[9]]  ; 
set_property  -dict {PACKAGE_PIN  W20  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[8]]  ; 
set_property  -dict {PACKAGE_PIN  R16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[7]]  ; 
set_property  -dict {PACKAGE_PIN  R17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[6]]  ; 
set_property  -dict {PACKAGE_PIN  W18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[5]]  ; 
set_property  -dict {PACKAGE_PIN  W19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[4]]  ; 
set_property  -dict {PACKAGE_PIN  V17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[3]]  ; 
set_property  -dict {PACKAGE_PIN  V18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[2]]  ; 
set_property  -dict {PACKAGE_PIN  Y18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[1]]  ; 
set_property  -dict {PACKAGE_PIN  Y19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P1_D[0]]  ; 



# set_property  -dict {PACKAGE_PIN  P20  IOSTANDARD LVCMOS18 }     [get_ports CAT_DCLK_N] ; 
# set_property  -dict {PACKAGE_PIN  Y17  IOSTANDARD LVCMOS18 }     [get_ports CAT_RX_FR_N]; 
set_property  -dict {PACKAGE_PIN  N20  IOSTANDARD LVCMOS18 }     [get_ports CAT_DCLK_P]   ; 
set_property  -dict {PACKAGE_PIN  Y16  IOSTANDARD LVCMOS18 }     [get_ports CAT_RX_FR_P]  ; 
set_property  -dict {PACKAGE_PIN  V15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[11]] ; 
set_property  -dict {PACKAGE_PIN  W15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[10]] ; 
set_property  -dict {PACKAGE_PIN  T12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[9]]  ; 
set_property  -dict {PACKAGE_PIN  U12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[8]]  ; 
set_property  -dict {PACKAGE_PIN  V12  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[7]]  ; 
set_property  -dict {PACKAGE_PIN  W13  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[6]]  ; 
set_property  -dict {PACKAGE_PIN  U14  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[5]]  ; 
set_property  -dict {PACKAGE_PIN  U15  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[4]]  ; 
set_property  -dict {PACKAGE_PIN  U18  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[3]]  ; 
set_property  -dict {PACKAGE_PIN  U19  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[2]]  ; 
set_property  -dict {PACKAGE_PIN  T16  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[1]]  ; 
set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS18 }     [get_ports CAT_P0_D[0]]  ; 





# clocks

# create_clock -name rx_clk       -period  4 [get_ports rx_clk_in_p]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]


set_false_path -from [get_pins bus_reset_gen/reset_out_reg/C] -to [get_pins {sfp_wrapper_i/mgt_io_i/ethernet_rst_sync/reset_double_sync/synchronizer_false_path/stages[0].value_reg[0][0]/D}]

set_false_path -from [get_pins {misc_outs_r_reg[0]/C}] -to [get_pins {ref_pll/refsmp_reg[1]_srl2/D}]
set_false_path -from [get_pins clocks_ready_reg_inv/C] -to [get_pins {ref_pll_sync/reset_double_sync/synchronizer_false_path/stages[0].value_reg[0][0]/D}]

# set_false_path -from [get_pins {b205_core/sr_sync/out_reg[0]/C}] -to [get_pins {ref_pll/refsmp_reg[1]_srl2/D}]

# set_false_path -from [get_pins {b205_core/sr_sync/out_reg[1]/C}] -to [get_pins {ref_pll/refsmp_reg[1]_srl2/D}]
# set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
# set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
# set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
# connect_debug_port dbg_hub/clk [get_nets bus_clk]
