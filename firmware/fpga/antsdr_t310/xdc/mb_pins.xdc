###########################################################################################
# This is the real SFP1
###########################################################################################
set_property PACKAGE_PIN P6 [get_ports SFP0_RX_P];
set_property PACKAGE_PIN P5 [get_ports SFP0_RX_N];
set_property PACKAGE_PIN N4 [get_ports SFP0_TX_P];
set_property PACKAGE_PIN N3 [get_ports SFP0_TX_N];
set_property -dict {PACKAGE_PIN AD15 IOSTANDARD LVCMOS33} [get_ports LED_LINK2];
set_property -dict {PACKAGE_PIN AC14 IOSTANDARD LVCMOS33} [get_ports LED_ACT2];
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS33} [get_ports SFP0_RXLOS];
set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS33} [get_ports SFP0_RS0];
set_property -dict {PACKAGE_PIN AC12 IOSTANDARD LVCMOS33} [get_ports SFP0_RS1];
set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS33} [get_ports SFP0_TXDISABLE];
set_property -dict {PACKAGE_PIN AC13 IOSTANDARD LVCMOS33} [get_ports SFP0_TXFAULT];

set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports {PL_LED[0]}];
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports {PL_LED[1]}];
set_property -dict {PACKAGE_PIN R23 IOSTANDARD LVCMOS33} [get_ports {PL_LED[2]}];
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {PL_LED[3]}];



## SFP + ###################################################################
##
############################################################################

set_property PACKAGE_PIN N8 [get_ports CLK_MGT_156_25M_P];
set_property PACKAGE_PIN N7 [get_ports CLK_MGT_156_25M_N];
set_property PACKAGE_PIN R8 [get_ports CLK_MGT_125M_P];
set_property PACKAGE_PIN R7 [get_ports CLK_MGT_125M_N];


###########################################################################################
# This is the real SFP0, used as sfp0 to test the hardware
###########################################################################################
set_property PACKAGE_PIN T6 [get_ports SFP1_RX_P];
set_property PACKAGE_PIN T5 [get_ports SFP1_RX_N];
set_property PACKAGE_PIN P2 [get_ports SFP1_TX_P];
set_property PACKAGE_PIN P1 [get_ports SFP1_TX_N];

set_property -dict {PACKAGE_PIN AE17 IOSTANDARD LVCMOS33} [get_ports LED_LINK1];
set_property -dict {PACKAGE_PIN AD16 IOSTANDARD LVCMOS33} [get_ports LED_ACT1];
set_property -dict {PACKAGE_PIN AA17 IOSTANDARD LVCMOS33} [get_ports SFP1_RXLOS];
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS33} [get_ports SFP1_RS0];
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS33} [get_ports SFP1_RS1];
set_property -dict {PACKAGE_PIN AC17 IOSTANDARD LVCMOS33} [get_ports SFP1_TXDISABLE];
set_property -dict {PACKAGE_PIN AB14 IOSTANDARD LVCMOS33} [get_ports SFP1_TXFAULT];

## XCVR ####################################################################
## Catalina AD9361 Connections
##   -- Data Buses
##   -- Clocks
##   -- SPI
##   -- TX Amplifier
##   -- LEDs
##
############################################################################

set_property  -dict {PACKAGE_PIN  AJ20   IOSTANDARD LVCMOS25   PULLTYPE PULLUP} [get_ports CAT_SPI_EN]         	; 
set_property  -dict {PACKAGE_PIN  W23    IOSTANDARD LVCMOS25}  [get_ports CAT_SPI_CLK]                           ; 
set_property  -dict {PACKAGE_PIN  AA23   IOSTANDARD LVCMOS25}  [get_ports CAT_SPI_DI]                            ; 
set_property  -dict {PACKAGE_PIN  AC21   IOSTANDARD LVCMOS25}  [get_ports CAT_SPI_DO]                            ; 


set_property  -dict { PACKAGE_PIN  AF20  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports CAT_DCLK_P]      ; 
set_property  -dict { PACKAGE_PIN  AG20  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports CAT_DCLK_N]      ; 
set_property  -dict { PACKAGE_PIN  AC24  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports CAT_RX_FR_P]     ; 
set_property  -dict { PACKAGE_PIN  AD24  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports CAT_RX_FR_N]     ; 
set_property  -dict { PACKAGE_PIN  AG24  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[5]]    ; 
set_property  -dict { PACKAGE_PIN  AG25  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[5]]    ; 
set_property  -dict { PACKAGE_PIN  AK17  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[4]]     ; 
set_property  -dict { PACKAGE_PIN  AK18  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[4]]     ; 
set_property  -dict { PACKAGE_PIN  AB21  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[3]]     ; 
set_property  -dict { PACKAGE_PIN  AB22  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[3]]     ; 
set_property  -dict { PACKAGE_PIN  AA24  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[2]]     ; 
set_property  -dict { PACKAGE_PIN  AB24  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[2]]     ; 
set_property  -dict { PACKAGE_PIN  Y22   IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[1]]     ; 
set_property  -dict { PACKAGE_PIN  Y23   IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[1]]     ; 
set_property  -dict { PACKAGE_PIN  AH19  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_P[0]]     ; 
set_property  -dict { PACKAGE_PIN  AJ19  IOSTANDARD LVDS_25 DIFF_TERM TRUE } [get_ports RX_DATA_N[0]]     ; 

set_property  -dict { PACKAGE_PIN  AG21  IOSTANDARD LVDS_25 }   [get_ports CAT_FBCLK_P]                    ; 
set_property  -dict { PACKAGE_PIN  AH21  IOSTANDARD LVDS_25 }   [get_ports CAT_FBCLK_N]                    ; 
set_property  -dict { PACKAGE_PIN  AF19  IOSTANDARD LVDS_25 }   [get_ports CAT_TX_FR_P]                    ; 
set_property  -dict { PACKAGE_PIN  AG19  IOSTANDARD LVDS_25 }   [get_ports CAT_TX_FR_N]                    ; 
set_property  -dict { PACKAGE_PIN  AD21  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[5]]                   ; 
set_property  -dict { PACKAGE_PIN  AE21  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[5]]                   ; 
set_property  -dict { PACKAGE_PIN  AK22  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[4]]                    ; 
set_property  -dict { PACKAGE_PIN  AK23  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[4]]                    ; 
set_property  -dict { PACKAGE_PIN  AJ23  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[3]]                    ; 
set_property  -dict { PACKAGE_PIN  AJ24  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[3]]                    ; 
set_property  -dict { PACKAGE_PIN  AD23  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[2]]                    ; 
set_property  -dict { PACKAGE_PIN  AE23  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[2]]                    ; 
set_property  -dict { PACKAGE_PIN  AE22  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[1]]                    ; 
set_property  -dict { PACKAGE_PIN  AF22  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[1]]                    ; 
set_property  -dict { PACKAGE_PIN  AF23  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_P[0]]                    ; 
set_property  -dict { PACKAGE_PIN  AF24  IOSTANDARD LVDS_25 }   [get_ports TX_DATA_N[0]]                    ; 
 


set_property  -dict {PACKAGE_PIN  AH24  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[7]]                     ; 
set_property  -dict {PACKAGE_PIN  AA20  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[6]]                     ; 
set_property  -dict {PACKAGE_PIN  AG22  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[5]]                     ; 
set_property  -dict {PACKAGE_PIN  AC22  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[4]]                     ; 
set_property  -dict {PACKAGE_PIN  AH22  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[3]]                     ; 
set_property  -dict {PACKAGE_PIN  AC18  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[2]]                     ; 
set_property  -dict {PACKAGE_PIN  AC19  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[1]]                     ; 
set_property  -dict {PACKAGE_PIN  AK25  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_OUT[0]]                     ; 
set_property  -dict {PACKAGE_PIN  AJ25  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_IN[3]]                      ; 
set_property  -dict {PACKAGE_PIN  AK21  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_IN[2]]                      ; 
set_property  -dict {PACKAGE_PIN  AH23  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_IN[1]]                      ; 
set_property  -dict {PACKAGE_PIN  AJ21  IOSTANDARD LVCMOS25}  [get_ports CAT_CTL_IN[0]]                      ; 
set_property  -dict {PACKAGE_PIN  AC23  IOSTANDARD LVCMOS25}  [get_ports CAT_EN_AGC]                         ; 
set_property  -dict {PACKAGE_PIN  W21   IOSTANDARD LVCMOS25}  [get_ports CAT_RESETn]                         ; 
set_property  -dict {PACKAGE_PIN  Y21   IOSTANDARD LVCMOS25}  [get_ports CAT_EN]                             ; 
set_property  -dict {PACKAGE_PIN  AA22  IOSTANDARD LVCMOS25}  [get_ports CAT_TXnRX]                          ; 
set_property  -dict {PACKAGE_PIN  AK20  IOSTANDARD LVCMOS25}  [get_ports CAT_SYNC]                           ; 



## GPSDO ###################################################################
##
############################################################################
set_property -dict {PACKAGE_PIN     W26     IOSTANDARD LVCMOS33} [get_ports CLK_PLL_SLE] ;
set_property -dict {PACKAGE_PIN     U25     IOSTANDARD LVCMOS33} [get_ports CLK_PLL_SCLK] ;
set_property -dict {PACKAGE_PIN     W25     IOSTANDARD LVCMOS33} [get_ports CLK_PLL_SDATA] ;

set_property -dict {PACKAGE_PIN     P23     IOSTANDARD LVCMOS33} [get_ports CLK_SYNC_EXT] ;
set_property -dict {PACKAGE_PIN     T28     IOSTANDARD LVCMOS33} [get_ports CLK_SYNC_INT] ;
set_property -dict {PACKAGE_PIN     U26     IOSTANDARD LVCMOS33} [get_ports CLK_40MHz_FPGA] ;

set_property -dict {PACKAGE_PIN     R25     IOSTANDARD LVCMOS33} [get_ports CLKIN_10MHz] ;
set_property -dict {PACKAGE_PIN     R28     IOSTANDARD LVCMOS33} [get_ports CLK_REF_SEL] ;
set_property -dict {PACKAGE_PIN     R27     IOSTANDARD LVCMOS33} [get_ports CLK_MUX_OUT] ;
set_property -dict {PACKAGE_PIN     W28     IOSTANDARD LVCMOS33} [get_ports GPS_NRST] ;
set_property -dict {PACKAGE_PIN     N27     IOSTANDARD LVCMOS33} [get_ports GPS_RX] ;
set_property -dict {PACKAGE_PIN     N26     IOSTANDARD LVCMOS33} [get_ports GPS_TX] ;



set_property -dict {PACKAGE_PIN     H9     IOSTANDARD DIFF_SSTL15} [get_ports pl_ddr_ref_clk_p] ;
set_property -dict {PACKAGE_PIN     G9     IOSTANDARD DIFF_SSTL15} [get_ports pl_ddr_ref_clk_n] ;

set_property -dict {PACKAGE_PIN AE12 IOSTANDARD LVCMOS33} [get_ports FAN_CTRL];

# set_property  -dict {PACKAGE_PIN  AK13  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX1_SEL1]                    ; 
# set_property  -dict {PACKAGE_PIN  AJ16  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX2_SEL1]                    ; 
# set_property  -dict {PACKAGE_PIN  AK12  IOSTANDARD LVCMOS33}  [get_ports FE_RX1_SEL1]                      ; 
# set_property  -dict {PACKAGE_PIN  AJ15  IOSTANDARD LVCMOS33}  [get_ports FE_RX2_SEL1]                      ; 
set_property  -dict {PACKAGE_PIN  AJ14  IOSTANDARD LVCMOS33}  [get_ports tx_amp_en1]                       ; 
set_property  -dict {PACKAGE_PIN  AJ13  IOSTANDARD LVCMOS33}  [get_ports tx_amp_en2]                       ; 

set_property  -dict {PACKAGE_PIN  AK16  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX2_SEL2]                    ; 
set_property  -dict {PACKAGE_PIN  AJ16  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX2_SEL1]                    ; 
set_property  -dict {PACKAGE_PIN  AK12  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX1_SEL2]                    ; 
set_property  -dict {PACKAGE_PIN  AK13  IOSTANDARD LVCMOS33}  [get_ports FE_TXRX1_SEL1]                    ; 
set_property  -dict {PACKAGE_PIN  AK15  IOSTANDARD LVCMOS33}  [get_ports FE_RX2_SEL2]                      ; 
set_property  -dict {PACKAGE_PIN  AJ15  IOSTANDARD LVCMOS33}  [get_ports FE_RX2_SEL1]                      ; 
set_property  -dict {PACKAGE_PIN  AG14  IOSTANDARD LVCMOS33}  [get_ports FE_RX1_SEL2]                      ; 
set_property  -dict {PACKAGE_PIN  AF14  IOSTANDARD LVCMOS33}  [get_ports FE_RX1_SEL1]                      ; 



set_property  -dict {PACKAGE_PIN N29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[0]}]                      ; 
set_property  -dict {PACKAGE_PIN P29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[1]}]                      ; 
set_property  -dict {PACKAGE_PIN P28   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[2]}]                      ; 
set_property  -dict {PACKAGE_PIN T29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[3]}]                      ; 
set_property  -dict {PACKAGE_PIN U29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[4]}]                      ; 
set_property  -dict {PACKAGE_PIN V29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[5]}]                      ; 
set_property  -dict {PACKAGE_PIN W29   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[6]}]                      ; 
set_property  -dict {PACKAGE_PIN W30   IOSTANDARD LVCMOS33}  [get_ports {fp_gpio[7]}]                      ; 

set_property  -dict {PACKAGE_PIN T30   IOSTANDARD LVCMOS33}  [get_ports GPIO_EN]                      ; 



# FPGA_GPIO9	P30
# FPGA_GPIO8	
# FPGA_GPIO7	
# FPGA_GPIO6	
# FPGA_GPIO5	
# FPGA_GPIO4	
# FPGA_GPIO3	P28
# FPGA_GPIO2	P29
# FPGA_GPIO12	R30
# FPGA_GPIO11	U30
# FPGA_GPIO10	N28
# FPGA_GPIO1	N29
# FPGA_GPIO_EN	

# set_property  -dict {PACKAGE_PIN  AK13  IOSTANDARD LVCMOS33}  [get_ports CH1_FE_TXRX1_SEL1]                    ; 
# set_property  -dict {PACKAGE_PIN  AJ16  IOSTANDARD LVCMOS33}  [get_ports CH1_FE_TXRX2_SEL1]                    ; 
# set_property  -dict {PACKAGE_PIN  AK12  IOSTANDARD LVCMOS33}  [get_ports CH1_FE_RX1_SEL1]                      ; 
# set_property  -dict {PACKAGE_PIN  AJ15  IOSTANDARD LVCMOS33}  [get_ports CH1_FE_RX2_SEL1]                      ; 
# set_property  -dict {PACKAGE_PIN  AJ14  IOSTANDARD LVCMOS33}  [get_ports ch1_tx_amp_en1]                       ; 
# set_property  -dict {PACKAGE_PIN  AJ13  IOSTANDARD LVCMOS33}  [get_ports ch1_tx_amp_en2]                       ; 





set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

