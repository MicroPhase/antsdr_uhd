## (c) Copyright 2009 - 2014 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and 
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.

set coreclkname [get_clocks -of_objects [get_ports coreclk]]
set txusrclk2name [get_clocks -of_objects [get_ports txusrclk2]]
set dclkname [get_clocks -of_objects [get_ports dclk]]

set_false_path -from $coreclkname -to [get_cells -hierarchical -filter {NAME =~ *ratefifo*dp_ram_i*rd_data* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}]
set RXOUTCLK_OUT [get_clocks -of  [get_pins -of_objects [get_cells * -hierarchical -filter {REF_NAME=~ GTXE2_CHANNEL}] -filter {NAME =~ *RXOUTCLK}] -include_generated_clocks]

#The following path refers to registers in front of the DP RAM in the rx elastic buffer async fifo
#set_false_path -from $RXOUTCLK_OUT -to [get_cells -hierarchical -filter {NAME =~ *elastic_buffer*dp_ram_i*rd_data* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}]


# Max delays to control skew into coherent synchronizers
set_max_delay -datapath_only -from $coreclkname -to [get_pins -of_objects [get_cells -hier -filter {NAME =~ *coreclk_rxusrclk2_timer_125us_resync/*synchc_inst*d1_reg}] -filter {NAME =~ *D}] 6.400
#set_max_delay -datapath_only -from $coreclkname -to [get_pins -of_objects [get_cells -hier -filter {NAME =~ *coreclk_rxusrclk2_resyncs_i/*synchc_inst*d1_reg}] -filter {NAME =~ *D}] 6.400
set_max_delay -datapath_only -from $coreclkname -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *drp_ipif_i*synch_*q_reg*}] -filter {NAME =~ *D || NAME =~ *R || NAME =~ *S}] 3.100

