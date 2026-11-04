set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports pll_ce]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports pll_sclk]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports pll_mosi]


set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports PPS_IN_EXT]

# set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports PPS_IN_EXT]

set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports PPS_IN_INT]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS18} [get_ports codec_main_clk]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz_REQ]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS18} [get_ports CLKIN_10MHz]

set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports PPS_LOCKED]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports REF_LOCKED]

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports gps_rst_n]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports gps_rxd]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports gps_txd]



set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports eeprom_scl]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports eeprom_sda]


set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports uart_rxd]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports uart_txd]



# #### FX3 Lines ##############################################################
# GPIF Data lines
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[0]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[1]}]
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[2]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[3]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[4]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[5]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[6]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[7]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[8]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[9]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[10]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[11]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[12]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[13]}]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[14]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[15]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[16]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[17]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[18]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[19]}]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[20]}]
set_property -dict {PACKAGE_PIN N5 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[21]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[22]}]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[23]}]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[24]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[25]}]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[26]}]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[27]}]
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[28]}]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[29]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[30]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports {GPIF_D[31]}]

set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports IFCLK]
set_property PACKAGE_PIN H5 [get_ports FX3_EXTINT]
set_property IOSTANDARD LVCMOS33 [get_ports FX3_EXTINT]
# FX3 CTRL
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL0]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL1]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL2]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL3]
set_property PACKAGE_PIN H3 [get_ports GPIF_CTL4]
set_property IOSTANDARD LVCMOS33 [get_ports GPIF_CTL4]
set_property PACKAGE_PIN J4 [get_ports GPIF_CTL5]
set_property IOSTANDARD LVCMOS33 [get_ports GPIF_CTL5]
set_property PACKAGE_PIN K6 [get_ports GPIF_CTL6]
set_property IOSTANDARD LVCMOS33 [get_ports GPIF_CTL6]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL7]
set_property PACKAGE_PIN P5 [get_ports GPIF_CTL8]
set_property IOSTANDARD LVCMOS33 [get_ports GPIF_CTL8]
set_property PACKAGE_PIN J5 [get_ports GPIF_CTL9]
set_property IOSTANDARD LVCMOS33 [get_ports GPIF_CTL9]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL11]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33 SLEW SLOW} [get_ports GPIF_CTL12]


# set_property  -dict {PACKAGE_PIN  D14  IOSTANDARD LVCMOS33 } [get_ports FPGA_RXD0 ]; # B16_L1_P
# set_property  -dict {PACKAGE_PIN  D15  IOSTANDARD LVCMOS33 } [get_ports FPGA_TXD0 ]; # B16_L1_N



set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_reset]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_en_agc]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_enable]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_txrx]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_sync]

# SPI
set_property PACKAGE_PIN H14 [get_ports cat_ce]
set_property IOSTANDARD LVCMOS18 [get_ports cat_ce]
set_property SLEW SLOW [get_ports cat_ce]
set_property PULLUP true [get_ports cat_ce]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_sclk]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_mosi]
set_property PACKAGE_PIN J15 [get_ports cat_miso]
set_property IOSTANDARD LVCMOS18 [get_ports cat_miso]
# Control Lines
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[0]}]
set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[1]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[2]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[3]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[4]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[5]}]
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[6]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[7]}]

set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[0]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[1]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[2]}]
set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[3]}]


# TX Bus P1
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[0]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[1]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[2]}]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[3]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[4]}]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[5]}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[6]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[7]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[8]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[9]}]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[10]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS18} [get_ports {tx_codec_d[11]}]

# Rx Bus P0
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[0]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[1]}]
set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[2]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[3]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[4]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[5]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[6]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[7]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[8]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[9]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[10]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS18} [get_ports {rx_codec_d[11]}]


# Frame syncs
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS18} [get_ports codec_data_clk_p]
# set_property  -dict {PACKAGE_PIN  J21  IOSTANDARD LVCMOS18 } [get_ports codec_data_clk_n]  ;
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS18} [get_ports rx_frame_p]
# set_property  -dict {PACKAGE_PIN  H19  IOSTANDARD LVCMOS18 } [get_ports rx_frame_n]         ;
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS18} [get_ports tx_frame_p]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS18} [get_ports codec_fb_clk_p]





#R18 SFDX1_RX
#V18 SFDX1_TX
#AA21 SRX1_RX
#V19 SRX1_TX
#W17 SFDX2_RX
#V20 SFDX2_TX
#N13 SRX2_RX
#U20 SRX2_TX


set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports SFDX1_RX]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports SFDX1_TX]
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports SRX1_RX]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports SRX1_TX]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports SFDX2_RX]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports SFDX2_TX]
set_property -dict {PACKAGE_PIN N13 IOSTANDARD LVCMOS33} [get_ports SRX2_RX]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports SRX2_TX]

set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports FPGA_RXD0]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports FPGA_TXD0]

set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[0]}]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[1]}]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[2]}]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[3]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[4]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[5]}]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[6]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {fp_gpio[7]}]


set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports tx_enable1]
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports tx_enable2]

set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports tx_bandsel_a]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports tx_bandsel_b]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_a]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_b]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_c]

#N14 FE_RX_SEL1
#P16 FE_RX_SEL2
#R17 FE_RX_SEL3

#P14 FE_TXRX_SEL1
#P15 FE_TXRX_SEL2
# set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS33 } [get_ports rx_bais_en ]; #
# set_property  -dict {PACKAGE_PIN  U18  IOSTANDARD LVCMOS33 } [get_ports tx_bais_en ]; #

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

create_clock -period 16.270 -name codec_data_clk_p [get_ports codec_data_clk_p]
create_clock -period 25.000 -name codec_main_clk -waveform {0.000 12.500} [get_ports codec_main_clk]

# create_generated_clock -name clk_200M_o -source [get_ports CLK_40MHz_FPGA] -divide_by 6 -multiply_by 30 [get_pins u_ppsloop/clkgen/CLKOUT0];
# create_generated_clock -name clk_int40 -source [get_ports CLK_40MHz_FPGA] -multiply_by 1 [get_pins u_ppsloop/clkgen/CLKOUT1];
create_generated_clock -name codec_fb_clk_p -source [get_pins u_antsdr_e200_io/oddr_clk/C] -multiply_by 1 [get_ports codec_fb_clk_p]
create_generated_clock -name ifclk -source [get_pins gen_clks/CLK_OUT2_100_gpif] -multiply_by 1 [get_ports IFCLK]

set_clock_groups -asynchronous -group [get_clocks codec_data_clk_p] -group [get_clocks -of_objects [get_pins u_antsdr_e200_io/BUFR_inst/O]]

create_generated_clock -name clk_40_int -source [get_pins u_ppsloop/codec_main_clk_IBUF] -multiply_by 1 -add -master_clock codec_main_clk [get_pins u_ppsloop/x_clk_gen_40/O]

# set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks codec_data_clk_p] -group [get_clocks -include_generated_clocks clk_40_int]

set_clock_groups -asynchronous -group [get_clocks codec_data_clk_p] -group [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins u_antsdr_e200_io/BUFR_inst/O]] -group [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]] -group [get_clocks codec_data_clk_p]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]] -group [get_clocks -of_objects [get_pins u_antsdr_e200_io/BUFR_inst/O]]
set_clock_groups -name async_clk0_clk1 -asynchronous -group [get_clocks -include_generated_clocks codec_data_clk_p] -group [get_clocks -include_generated_clocks codec_main_clk]

set_false_path -from [get_clocks -of_objects [get_pins u_ppsloop/clkgen/CLKOUT0]] -to [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]]

set_false_path -from [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT2]] -to [get_clocks -of_objects [get_pins u_ppsloop/clkgen/CLKOUT0]]
# set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
# set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
# set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
# connect_debug_port dbg_hub/clk [get_nets bus_clk]
