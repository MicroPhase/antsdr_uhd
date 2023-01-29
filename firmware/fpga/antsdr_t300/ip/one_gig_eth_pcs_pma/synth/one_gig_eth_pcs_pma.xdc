
#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------


  # Clock period for the Txout clock
  #create_clock  -period 16.000 [get_pins -hier -filter {name =~  *transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i/TXOUTCLK}]
  create_clock  -period 16.000 [get_pins -of [get_cells -hierarchical -filter {NAME =~ *transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i}] -filter {REF_PIN_NAME =~ TXOUTCLK}]
  

  #-----------------------------------------------------------
  # Receive Clock period Constraint: please do not relax
  #-----------------------------------------------------------
  # Clock period for the recovered Rx clock
  #create_clock  -period 16.000 [get_pins -hier -filter { name =~ *transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i/RXOUTCLK}]
  create_clock  -period 16.000 [get_pins -of [get_cells -hierarchical -filter {NAME =~ *transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i}] -filter {REF_PIN_NAME =~ RXOUTCLK}]



#***********************************************************
# The following constraints target the Transceiver Physical*
# Interface which is instantiated in the Example Design.   *
#***********************************************************


#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------





#-----------------------------------------------------------
# GT Initialization circuitry clock domain crossing
#-----------------------------------------------------------

#set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/gt0_txresetfsm_i/sync_*/*D } ]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gtwizard_inst/*/gt0_txresetfsm_i/sync_*}] -filter {REF_PIN_NAME =~ *D}]
#set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/gt0_rxresetfsm_i/sync_*/*D } ]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gtwizard_inst/*/gt0_rxresetfsm_i/sync_*}] -filter {REF_PIN_NAME =~ *D}]

#set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/sync_*/*D } ]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gtwizard_inst/*/sync_*}] -filter {REF_PIN_NAME =~ *D}]




# false path constraints to async inputs coming directly to synchronizer
#set_false_path -to [get_pins -hier -filter {name =~ *SYNC_*/data_sync*/D }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *SYNC_*/data_sync*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -to [get_pins -hier -filter {name =~ *transceiver_inst/sync_block_data_valid/data_sync*/D }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *transceiver_inst/sync_block_data_valid/data_sync*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -to [get_pins -hier -filter {name =~ *sync_block_tx_reset_done/data_sync*/D }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *sync_block_tx_reset_done/data_sync*}] -filter {REF_PIN_NAME =~ D}]
#set_false_path -to [get_pins -hier -filter {name =~ *sync_block_rx_reset_done/data_sync*/D }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *sync_block_rx_reset_done/data_sync*}] -filter {REF_PIN_NAME =~ D}]



#set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *reset_sync*}] -filter {REF_PIN_NAME =~ PRE}]

## timing for MDIO interface
#set_max_delay 6.000 -datapath_only -from [get_pins -hier -filter { name =~ */*MDIO_INTERFACE_*/MDIO_OUT_reg/C } ]
set_max_delay 6.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_OUT_reg}] -filter {REF_PIN_NAME =~ C}]
#set_max_delay 6.000 -datapath_only -from [get_pins -hier -filter { name =~ */*MDIO_INTERFACE_*/MDIO_TRI_reg/C } ]
set_max_delay 6.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ */*MDIO_INTERFACE_*/MDIO_TRI_reg}] -filter {REF_PIN_NAME =~ C}]

