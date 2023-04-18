# create the vivado project
create_project antsdr_e310v2 ./antsdr_e310v2 -part xc7z020clg400-2

# add custom ip to the project
set_property  ip_repo_paths  { ./ip/deep_fifo ./ip/get_dna} [current_project]
update_ip_catalog

# verilog define for target b210
set_property verilog_define TARGET_B210=1 [current_fileset]

# create the block design
source ./bd/e310v2_ps_bd.tcl

# make hdl wrapper for block design
make_wrapper -files [get_files ./bd/e310v2_ps_bd/e310v2_ps_bd.bd] -top
add_files -norecurse ./bd/e310v2_ps_bd/hdl/e310v2_ps_bd_wrapper.v

# add files to this project
add_files {
    ./ip/fifo_4k_2clk/fifo_4k_2clk.xci
    ./ip/fifo_short_2clk/fifo_short_2clk.xci
    ./ip/axi64_8k_2clk_fifo/axi64_8k_2clk_fifo.xci
    ./ip/gen_clks/gen_clks.xci

   ./top/b200_core.v
   ./top/e200_eth_if_core.v
   ./top/e200_rgmii_wrapper.v
   ./top/ppsloop.v
   ./top/antsdr_e310v2.v

    ../lib/ngc/hbdec2.ngc
    ../lib/ngc/hbdec1.ngc
    ../lib/dsp/acc.v
    ../lib/control/ad5640_spi.v
    ../lib/control/ad5662_auto_spi.v
    ../lib/dsp/add2.v
    ../lib/dsp/add2_and_clip.v
    ../lib/dsp/add2_and_clip_reg.v
    ../lib/dsp/add2_and_round.v
    ../lib/dsp/add2_and_round_reg.v
    ../lib/dsp/add2_reg.v
    ../lib/dsp/add_then_mac.v
    ../lib/simple_gemac/address_filter.v
    ../lib/simple_gemac/address_filter_promisc.v
    ../lib/cat_io/antsdr_u205_io.v
    ../lib/packet_proc/arm_deframer.v
    ../lib/simple_gemac/axi64_to_ll8.v
    ../lib/xge_interface/axi64_to_xge64.v
    ../lib/fifo/axi_demux4.v
    ../lib/fifo/axi_fifo.v
    ../lib/fifo/axi_fifo_2clk.v
    ../lib/fifo/axi_fifo_bram.v
    ../lib/fifo/axi_fifo_flop.v
    ../lib/fifo/axi_fifo_flop2.v
    ../lib/fifo/axi_fifo_short.v
    ../lib/fifo/axi_mux.v
    ../lib/fifo/axi_mux4.v
    ../lib/fifo/axi_packet_gate.v
    ../lib/control/axil_regport_master.v
    ../lib/axi/axis_packet_flush.v
    ../lib/control/binary_encoder.v
    ../lib/control/map/cam.v
    ../lib/control/map/cam_bram.v
    ../lib/control/map/cam_priority_encoder.v
    ../lib/control/map/cam_srl.v
    ../lib/vita_200/chdr_12sc_to_16sc.v
    ../lib/vita_200/chdr_16sc_to_12sc.v
    ../lib/vita_200/chdr_16sc_to_32f.v
    ../lib/vita_200/chdr_16sc_to_8sc.v
    ../lib/vita_200/chdr_16sc_to_xxxx_chain.v
    ../lib/vita_200/chdr_32f_to_16sc.v
    ../lib/vita_200/chdr_8sc_to_16sc.v
    ../lib/control/chdr_trim_payload.v
    ../lib/vita_200/chdr_xxxx_to_16sc_chain.v
    ../lib/dsp/cic_dec_shifter.v
    ../lib/dsp/cic_decim.v
    ../lib/dsp/cic_int_shifter.v
    ../lib/dsp/cic_interp.v
    ../lib/dsp/cic_strober.v
    ../lib/dsp/clip.v
    ../lib/dsp/clip_reg.v
    ../lib/vita_200/context_packet_gen.v
    ../lib/dsp/cordic_stage.v
    ../lib/dsp/cordic_z24.v
    ../lib/simple_gemac/crc.v
    ../lib/control_200/cvita_uart.v
    ../lib/dsp/ddc_chain.v
    ../lib/control/deep_fifo_to_radio.v
    ../lib/simple_gemac/delay_line.v
    ../lib/dsp/duc_chain.v
    ../lib/rfnoc/xport/eth_interface.v
    ../lib/rfnoc/xport/eth_internal.v
    ../lib/rfnoc/xport/eth_ipv4_chdr64_adapter.v
    ../lib/rfnoc/xport/eth_ipv4_chdr64_dispatch.v
    ../lib/control/eth_radio_stream_control.v
    ../lib/vita_200/float_to_iq.v
    ../lib/simple_gemac/flow_ctrl_rx.v
    ../lib/simple_gemac/flow_ctrl_tx.v
    ../lib/rgmii/gmii_to_rgmii.v
    ../lib/control/gpio_atr.v
    ../lib/dsp/hb47_int.v
    ../lib/dsp/hb_dec.v
    ../lib/dsp/hb_interp.v
    ../lib/ngc/hbdec1.v
    ../lib/ngc/hbdec2.v
    ../lib/packet_proc/ip_hdr_checksum.v
    ../lib/vita_200/iq_to_float.v
    ../lib/control/map/kv_map.v
    ../lib/simple_gemac/ll8_to_axi64.v
    ../lib/simple_gemac/ll8_to_txmac.v
    ../lib/control/ltc2630_spi.v
    ../lib/simple_gemac/mdio.v
    ../lib/control/mdio_master.v
    ../lib/vita_200/new_rx_control.v
    ../lib/vita_200/new_rx_framer.v
    ../lib/vita_200/new_tx_control.v
    ../lib/vita_200/new_tx_deframer.v
    ../lib/timing/pps_generator.v
    ../lib/control/pulse_stretch.v
    ../lib/control_200/radio_ctrl_proc.v
    ../lib/radio_200/radio_legacy.v
    ../lib/control/ram_2port_impl.vh
    ../lib/control/ram_2port.v
    ../lib/control/regport_resp_mux.v
    ../lib/control/reset_sync.v
    ../lib/control/rgmii_if_idelay.v
    ../lib/rgmii/rgmii_phy.v
    ../lib/rgmii/rgmii_to_gmii.v
    ../lib/dsp/round.v
    ../lib/dsp/round_reg.v
    ../lib/dsp/round_sd.v
    ../lib/simple_gemac/rxmac_to_ll8.v
    ../lib/control/setting_reg.v
    ../lib/dsp/sign_extend.v
    ../lib/simple_gemac/simple_gemac.v
    ../lib/simple_gemac/simple_gemac_rx.v
    ../lib/simple_gemac/simple_gemac_tx.v
    ../lib/simple_gemac/simple_gemac_wrapper.v
    ../lib/control/simple_spi_core.v
    ../lib/wishbone/simple_uart_rx.v
    ../lib/wishbone/simple_uart_tx.v
    ../lib/dsp/small_hb_dec.v
    ../lib/dsp/small_hb_int.v
    ../lib/packet_proc_200/source_flow_control_legacy.v
    ../lib/dsp/srl.v
    ../lib/control/stream_aggregation.v
    ../lib/control/stream_split.v
    ../lib/control/synchronizer.v
    ../lib/control/synchronizer_impl.v
    ../lib/timing/time_compare.v
    ../lib/timing/timekeeper_legacy.v
    ../lib/vita_200/trigger_context_pkt.v
    ../lib/vita_200/tx_responder.v
    ../lib/rfnoc/xport/uoe_packet_gen.v
    ../lib/route_table/user2xport.v
    ../lib/control/user_settings.v
    ../lib/route_table/xport2user.v
    ../lib/route_table/xport_arbiter.v
    ../lib/route_table/xport_route.v
    ../lib/packet_proc/arp_responder/arp_responder.vhd

}
update_compile_order -fileset sources_1

# add constrain file
add_files -fileset constrs_1 -norecurse ./xdc/e310v2.xdc

# generate bit stream
launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1 


# copy hdf to .sdk folder
file mkdir ./antsdr_e310v2/antsdr_e310v2.sdk
file copy -force ./antsdr_e310v2/antsdr_e310v2.runs/impl_1/antsdr_e310v2.sysdef ./antsdr_e310v2/antsdr_e310v2.sdk/system_top.hdf
