set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_nSYNC]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_SCLK]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS18} [get_ports CLK_40M_DAC_DIN]


set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS18} [get_ports PPS_IN_EXT]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS18} [get_ports CLK_40MHz_FPGA]


set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS18} [get_ports {rgmii_txd[3]}]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS18} [get_ports {rgmii_txd[2]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS18} [get_ports {rgmii_txd[1]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS18} [get_ports {rgmii_txd[0]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS18} [get_ports {rgmii_rxd[3]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS18} [get_ports {rgmii_rxd[2]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS18} [get_ports {rgmii_rxd[1]}]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports {rgmii_rxd[0]}]

set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS18} [get_ports rgmii_tx_ctl]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS18} [get_ports rgmii_txc]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS18} [get_ports rgmii_rx_ctl]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS18} [get_ports rgmii_rxc]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS18} [get_ports eth_phy_rst_n]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS18} [get_ports mdio]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS18} [get_ports mdc]




set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS18} [get_ports tx_amp_en1]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz_REQ]


# create_clock -name rx_clk       -period  8 [get_ports rgmii_rxc]


set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[7]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[6]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[5]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[4]}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[3]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[2]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[1]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_OUT[0]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[3]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[2]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[1]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS18} [get_ports {CAT_CTL_IN[0]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS18} [get_ports CAT_EN_AGC]

set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS18} [get_ports CAT_RESETn]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS18} [get_ports CAT_EN]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS18} [get_ports CAT_TXnRX]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS18} [get_ports CAT_SYNC]

set_property PACKAGE_PIN T20 [get_ports CAT_SPI_EN]
set_property IOSTANDARD LVCMOS18 [get_ports CAT_SPI_EN]
set_property PULLUP true [get_ports CAT_SPI_EN]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_CLK]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DO]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS18} [get_ports CAT_SPI_DI]



# constraints (pzsdr2.e)
# ad9361
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS18} [get_ports CAT_FBCLK_P]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS18} [get_ports CAT_FBCLK_N]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS18} [get_ports CAT_TX_FR_P]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS18} [get_ports CAT_TX_FR_N]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[11]}]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[10]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[9]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[8]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[7]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[6]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[5]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[4]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[3]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[2]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[1]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS18} [get_ports {CAT_P1_D[0]}]



# set_property  -dict {PACKAGE_PIN  P20  IOSTANDARD LVCMOS18 }     [get_ports CAT_DCLK_N] ;
# set_property  -dict {PACKAGE_PIN  Y17  IOSTANDARD LVCMOS18 }     [get_ports CAT_RX_FR_N];
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS18} [get_ports CAT_DCLK_P]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS18} [get_ports CAT_RX_FR_P]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[11]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[10]}]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[9]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[8]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[7]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[6]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[5]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[4]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[3]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[2]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[1]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS18} [get_ports {CAT_P0_D[0]}]





# clocks

# create_clock -name rx_clk       -period  4 [get_ports rx_clk_in_p]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]


create_clock -period 16.270 -name CAT_DCLK_P [get_ports CAT_DCLK_P]
create_clock -period 25.000 -name CLK_40MHz_FPGA -waveform {0.000 12.500} [get_ports CLK_40MHz_FPGA]
create_clock -period 8.000 -name rgmii_rxc -waveform {0.000 4.000} [get_ports rgmii_rxc]
create_generated_clock -source [get_pins u_antsdr_e200_io/CAT_DCLK_P_IBUF] -divide_by 2 [get_nets -hierarchical *rx_clk_mimo_bufr*]
create_generated_clock -name ref_pll_clk -source [get_ports CLK_40MHz_FPGA] -divide_by 6 -multiply_by 30 [get_pins clkgen/CLKOUT0]
create_generated_clock -name int_40mhz -source [get_ports CLK_40MHz_FPGA] -multiply_by 1 [get_pins clkgen/CLKOUT1]
create_generated_clock -name bus_clk -source [get_ports CLK_40MHz_FPGA] -divide_by 12 -multiply_by 30 [get_pins clkgen/CLKOUT2]
create_generated_clock -name clk200 -source [get_ports CLK_40MHz_FPGA] -divide_by 6 -multiply_by 30 [get_pins clkgen/CLKOUT3]

create_generated_clock -name CAT_FB_CLK -source [get_pins u_antsdr_e200_io/oddr_clk/C] -multiply_by 1 [get_ports CAT_FBCLK_P]



set_input_delay -clock [get_clocks CAT_DCLK_P] -max 5.700 [get_ports {CAT_P0_D* CAT_RX_FRAME}]
set_input_delay -clock [get_clocks CAT_DCLK_P] -min 4.500 [get_ports {CAT_P0_D* CAT_RX_FRAME}]
set_input_delay -clock [get_clocks CAT_DCLK_P] -clock_fall -max -add_delay 5.700 [get_ports {CAT_P0_D* CAT_RX_FRAME}]
set_input_delay -clock [get_clocks CAT_DCLK_P] -clock_fall -min -add_delay 4.500 [get_ports {CAT_P0_D* CAT_RX_FRAME}]


set_output_delay -clock CAT_FB_CLK -max 5.500 [get_ports {CAT_P1_D* CAT_TX_FRAME}]
set_output_delay -clock CAT_FB_CLK -min 4.500 [get_ports {CAT_P1_D* CAT_TX_FRAME}]
set_output_delay -clock CAT_FB_CLK -clock_fall -max -add_delay 5.500 [get_ports {CAT_P1_D* CAT_TX_FRAME}]
set_output_delay -clock CAT_FB_CLK -clock_fall -min -add_delay 4.500 [get_ports {CAT_P1_D* CAT_TX_FRAME}]


set_false_path -from [get_pins radio_sync/reset_out_reg/C]
set_false_path -from [get_pins clk40_reset_gen/reset_out_reg/C]

set_clock_groups -name async_clk0_clk1 -asynchronous -group [get_clocks -include_generated_clocks CAT_DCLK_P] -group [get_clocks -include_generated_clocks CLK_40MHz_FPGA]
set_clock_groups -name async_clk0_clk1 -asynchronous -group [get_clocks -include_generated_clocks rgmii_rxc] -group [get_clocks -include_generated_clocks CLK_40MHz_FPGA]

set_false_path -from [get_clocks CAT_DCLK_P] -to [get_clocks u_antsdr_e200_io/BUFR_inst/O]
