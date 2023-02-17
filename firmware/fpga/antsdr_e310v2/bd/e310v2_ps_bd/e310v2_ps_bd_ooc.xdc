################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name bus_clk -period 10 [get_ports bus_clk]
create_clock -name clk40 -period 25 [get_ports clk40]
create_clock -name processing_system7_0_FCLK_CLK0 -period 25 [get_pins processing_system7_0/FCLK_CLK0]
create_clock -name processing_system7_0_FCLK_CLK1 -period 6.667 [get_pins processing_system7_0/FCLK_CLK1]
create_clock -name processing_system7_0_FCLK_CLK2 -period 25 [get_pins processing_system7_0/FCLK_CLK2]

################################################################################