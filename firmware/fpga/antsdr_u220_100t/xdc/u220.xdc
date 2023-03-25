set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports CLK_40M_DAC_nSYNC]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports CLK_40M_DAC_SCLK]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports CLK_40M_DAC_DIN]


set_property -dict {PACKAGE_PIN Y18  IOSTANDARD LVCMOS33} [get_ports PPS_IN_EXT]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports PPS_IN_INT]
set_property -dict {PACKAGE_PIN V13  IOSTANDARD LVCMOS18} [get_ports CLK_40MHz_FPGA]



set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS18} [get_ports REF_CLK_REQ]

set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports PPS_LOCKED]
set_property -dict {PACKAGE_PIN T20  IOSTANDARD LVCMOS33} [get_ports REF_LOCKED]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports GPS_nRST]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports GPS_UART_TX]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports GPS_UART_RX]


# #### FX3 Lines ##############################################################
# GPIF Data lines
set_property  -dict {PACKAGE_PIN  C2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[0] } ] ;
set_property  -dict {PACKAGE_PIN  B1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[1] } ] ;
set_property  -dict {PACKAGE_PIN  A1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[2] } ] ;
set_property  -dict {PACKAGE_PIN  D2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[3] } ] ;
set_property  -dict {PACKAGE_PIN  F4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[4] } ] ;
set_property  -dict {PACKAGE_PIN  B2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[5] } ] ;
set_property  -dict {PACKAGE_PIN  D1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[6] } ] ;
set_property  -dict {PACKAGE_PIN  G4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[7] } ] ;
set_property  -dict {PACKAGE_PIN  E2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[8] } ] ;
set_property  -dict {PACKAGE_PIN  H2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[9] } ] ;
set_property  -dict {PACKAGE_PIN  E1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[10]} ] ; 
set_property  -dict {PACKAGE_PIN  F1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[11]} ] ; 
set_property  -dict {PACKAGE_PIN  F3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[12]} ] ; 
set_property  -dict {PACKAGE_PIN  G2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[13]} ] ; 
set_property  -dict {PACKAGE_PIN  J2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[14]} ] ; 
set_property  -dict {PACKAGE_PIN  E3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[15]} ] ; 
set_property  -dict {PACKAGE_PIN  L5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[16]} ] ; 
set_property  -dict {PACKAGE_PIN  M5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[17]} ] ; 
set_property  -dict {PACKAGE_PIN  M6  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[18]} ] ; 
set_property  -dict {PACKAGE_PIN  M2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[19]} ] ; 
set_property  -dict {PACKAGE_PIN  M3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[20]} ] ; 
set_property  -dict {PACKAGE_PIN  N5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[21]} ] ; 
set_property  -dict {PACKAGE_PIN  M1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[22]} ] ; 
set_property  -dict {PACKAGE_PIN  N4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[23]} ] ; 
set_property  -dict {PACKAGE_PIN  P6  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[24]} ] ; 
set_property  -dict {PACKAGE_PIN  L6  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[25]} ] ; 
set_property  -dict {PACKAGE_PIN  N3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[26]} ] ; 
set_property  -dict {PACKAGE_PIN  L4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[27]} ] ; 
set_property  -dict {PACKAGE_PIN  K4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[28]} ] ; 
set_property  -dict {PACKAGE_PIN  N2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[29]} ] ; 
set_property  -dict {PACKAGE_PIN  P1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[30]} ] ; 
set_property  -dict {PACKAGE_PIN  K3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[31]} ] ;

set_property  -dict {PACKAGE_PIN  K1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports IFCLK]     ;
set_property  -dict {PACKAGE_PIN  H5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports FX3_EXTINT] ;
# FX3 CTRL
set_property  -dict {PACKAGE_PIN  G1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL0]  ;
set_property  -dict {PACKAGE_PIN  J1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL1]  ;
set_property  -dict {PACKAGE_PIN  J6  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL2]  ;
set_property  -dict {PACKAGE_PIN  H4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL3]  ;
set_property  -dict {PACKAGE_PIN  H3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL4]  ;
set_property  -dict {PACKAGE_PIN  J4  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL5]  ;
set_property  -dict {PACKAGE_PIN  K6  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL6]  ;
set_property  -dict {PACKAGE_PIN  G3  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL7]  ;
set_property  -dict {PACKAGE_PIN  P5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL8]  ;
set_property  -dict {PACKAGE_PIN  J5  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL9]  ;
set_property  -dict {PACKAGE_PIN  K2  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL11] ;
set_property  -dict {PACKAGE_PIN  L1  IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL12] ;


# set_property  -dict {PACKAGE_PIN  D14  IOSTANDARD LVCMOS33 } [get_ports FPGA_RXD0 ]; # B16_L1_P
# set_property  -dict {PACKAGE_PIN  D15  IOSTANDARD LVCMOS33 } [get_ports FPGA_TXD0 ]; # B16_L1_N








set_property  -dict {PACKAGE_PIN  G13  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_RESETn]  ; # Transceiver Global Reset
set_property  -dict {PACKAGE_PIN  J14  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_EN_AGC] ; # Transceiver AGC Enable
set_property  -dict {PACKAGE_PIN  G15  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_EN] ; # Transceiver Globe Enable
set_property  -dict {PACKAGE_PIN  L15  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_TXnRX]   ; # Transceiver Globe TX and RX control
set_property  -dict {PACKAGE_PIN  K13  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_SYNC]   ; # Transceiver Globe TX and RX control

# SPI
set_property  -dict {PACKAGE_PIN  H14  IOSTANDARD LVCMOS18 SLEW SLOW  PULLTYPE PULLUP} [get_ports CAT_SPI_EN]  ; # Transceiver Controller SPI Latch
set_property  -dict {PACKAGE_PIN  H13  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_SPI_CLK]  ; # Transceiver Controller SPI Serial Clock
set_property  -dict {PACKAGE_PIN  J15  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_SPI_DO]  ; # Transceiver Controller SPI Data In
set_property  -dict {PACKAGE_PIN  K14  IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports CAT_SPI_DI]  ; # Transceiver Controller SPI Data Out

# Control Lines
set_property  -dict {PACKAGE_PIN  M13  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[0]} ]  ; 
set_property  -dict {PACKAGE_PIN  G16  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[1]} ]  ;
set_property  -dict {PACKAGE_PIN  K16  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[2]} ]  ;
set_property  -dict {PACKAGE_PIN  L16  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[3]} ]  ;
set_property  -dict {PACKAGE_PIN  J16  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[4]} ]  ;
set_property  -dict {PACKAGE_PIN  H15  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[5]} ]  ;
set_property  -dict {PACKAGE_PIN  L13  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[6]} ]  ;
set_property  -dict {PACKAGE_PIN  L14  IOSTANDARD LVCMOS18 } [get_ports {CAT_CTL_OUT[7]} ]  ;

set_property  -dict {PACKAGE_PIN  Y16  IOSTANDARD LVCMOS18  SLEW  SLOW} [get_ports {CAT_CTL_IN[0]}] ;
set_property  -dict {PACKAGE_PIN  Y17  IOSTANDARD LVCMOS18  SLEW  SLOW} [get_ports {CAT_CTL_IN[1]}] ;
set_property  -dict {PACKAGE_PIN  M17  IOSTANDARD LVCMOS18  SLEW  SLOW} [get_ports {CAT_CTL_IN[2]}] ;
set_property  -dict {PACKAGE_PIN  AA16 IOSTANDARD LVCMOS18  SLEW  SLOW} [get_ports {CAT_CTL_IN[3]}] ;

# TX Bus P1
set_property  -dict {PACKAGE_PIN  G18  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[0]}]  ;
set_property  -dict {PACKAGE_PIN  G17  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[1]}]  ;
set_property  -dict {PACKAGE_PIN  H22  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[2]}]  ;
set_property  -dict {PACKAGE_PIN  J22  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[3]}]  ;
set_property  -dict {PACKAGE_PIN  G20  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[4]}]  ;
set_property  -dict {PACKAGE_PIN  H20  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[5]}]  ;
set_property  -dict {PACKAGE_PIN  K22  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[6]}]  ;
set_property  -dict {PACKAGE_PIN  K21  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[7]}]  ;
set_property  -dict {PACKAGE_PIN  H18  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[8]}]  ;
set_property  -dict {PACKAGE_PIN  H17  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[9]}]  ;
set_property  -dict {PACKAGE_PIN  L21  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[10]}] ;
set_property  -dict {PACKAGE_PIN  M21  IOSTANDARD LVCMOS18 } [get_ports {CAT_P1_D[11]}] ;

# Rx Bus P0
set_property  -dict {PACKAGE_PIN  M22  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[0]}] ;
set_property  -dict {PACKAGE_PIN  N22  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[1]}] ;
set_property  -dict {PACKAGE_PIN  M16  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[2]}] ;
set_property  -dict {PACKAGE_PIN  M15  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[3]}] ;
set_property  -dict {PACKAGE_PIN  M20  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[4]}] ;
set_property  -dict {PACKAGE_PIN  N20  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[5]}] ;
set_property  -dict {PACKAGE_PIN  L18  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[6]}] ;
set_property  -dict {PACKAGE_PIN  M18  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[7]}] ;
set_property  -dict {PACKAGE_PIN  N19  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[8]}] ;
set_property  -dict {PACKAGE_PIN  N18  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[9]}] ;
set_property  -dict {PACKAGE_PIN  J17  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[10]}];
set_property  -dict {PACKAGE_PIN  K17  IOSTANDARD LVCMOS18 } [get_ports {CAT_P0_D[11]}];


# Frame syncs
set_property  -dict {PACKAGE_PIN  J20  IOSTANDARD LVCMOS18 } [get_ports CAT_DCLK_P]          ;   
# set_property  -dict {PACKAGE_PIN  J21  IOSTANDARD LVCMOS18 } [get_ports CAT_DCLK_N]          ; 
set_property  -dict {PACKAGE_PIN  J19  IOSTANDARD LVCMOS18 } [get_ports CAT_RX_FR_P]         ;      
# set_property  -dict {PACKAGE_PIN  H19  IOSTANDARD LVCMOS18 } [get_ports CAT_RX_FR_N]         ;      
set_property  -dict {PACKAGE_PIN  K18  IOSTANDARD LVCMOS18 } [get_ports CAT_TX_FR_P]         ;      
set_property  -dict {PACKAGE_PIN  K19  IOSTANDARD LVCMOS18 } [get_ports CAT_TX_FR_N]         ;       
set_property  -dict {PACKAGE_PIN  L19  IOSTANDARD LVCMOS18 } [get_ports CAT_FBCLK_P]        ;
set_property  -dict {PACKAGE_PIN  L20  IOSTANDARD LVCMOS18 } [get_ports CAT_FBCLK_N]        ;


set_property  -dict {PACKAGE_PIN  R18  IOSTANDARD LVCMOS33 } [get_ports FE_RX1_SEL1   ] ; # FE_TXRX1_SEL1
# set_property  -dict {PACKAGE_PIN  T18  IOSTANDARD LVCMOS33 } [get_ports FE_RX1_SEL2   ] ; # FE_TXRX1_SEL2
set_property  -dict {PACKAGE_PIN  N13  IOSTANDARD LVCMOS33 } [get_ports FE_RX2_SEL1     ] ; # FE_RX1_SEL1
# set_property  -dict {PACKAGE_PIN  N14  IOSTANDARD LVCMOS33 } [get_ports FE_RX2_SEL2     ] ; # FE_RX1_SEL2
set_property  -dict {PACKAGE_PIN  P14  IOSTANDARD LVCMOS33 } [get_ports FE_TXRX1_SEL1   ] ; # FE_TXRX2_SEL1
# set_property  -dict {PACKAGE_PIN  R14  IOSTANDARD LVCMOS33 } [get_ports FE_TXRX1_SEL2   ] ; # FE_TXRX2_SEL2
set_property  -dict {PACKAGE_PIN  P15  IOSTANDARD LVCMOS33 } [get_ports FE_TXRX2_SEL1     ] ; # FE_RX2_SEL1
# set_property  -dict {PACKAGE_PIN  R16  IOSTANDARD LVCMOS33 } [get_ports FE_TXRX2_SEL2     ] ; # FE_RX2_SEL2

set_property  -dict {PACKAGE_PIN  N17  IOSTANDARD LVCMOS33 } [get_ports tx_amp_en1 ]; # TX AMP power enable
set_property  -dict {PACKAGE_PIN  P17  IOSTANDARD LVCMOS33 } [get_ports tx_amp_en2 ]; # TX AMP power enable
# set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS33 } [get_ports rx_bais_en ]; # TX AMP power enable
# set_property  -dict {PACKAGE_PIN  U18  IOSTANDARD LVCMOS33 } [get_ports tx_bais_en ]; # TX AMP power enable

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]