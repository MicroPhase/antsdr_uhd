# Generated from the saved Vivado project by export_current_project_scripts.sh.
# Review with Git, then edit the Vivado project and export again when it changes.

if {![info exists root_dir]} {
    set script_dir [file normalize [file dirname [info script]]]
    set root_dir [file normalize [file join $script_dir ".." ".."]]
}

proc antsdr_add_rel_files {fileset root_dir rel_files} {
    set files [list]
    foreach rel $rel_files {
        set path [file normalize [file join $root_dir $rel]]
        if {![file exists $path]} { error "tracked FPGA source is missing: $rel ($path)" }
        lappend files $path
    }
    if {[llength $files] > 0} { add_files -fileset $fileset -norecurse $files }
}

set e310v2_ip_repo_rel_paths [list \
    "ip/deep_fifo" \
    "ip/get_dna" \
]
set ip_repo_paths [list]
foreach rel $e310v2_ip_repo_rel_paths { lappend ip_repo_paths [file join $root_dir $rel] }
if {[llength $ip_repo_paths] > 0} {
    set_property ip_repo_paths $ip_repo_paths [current_project]
    update_ip_catalog
}
set e310v2_verilog_defines [list \
    "TARGET_B210=1" \
]
set_property verilog_define $e310v2_verilog_defines [get_filesets sources_1]

set e310v2_source_rel_files [list \
    "../lib/axi/axis_packet_flush.v" \
    "../lib/cat_io/antsdr_u205_io.v" \
    "../lib/control/ad5640_spi.v" \
    "../lib/control/ad5662_auto_spi.v" \
    "../lib/control/axil_regport_master.v" \
    "../lib/control/binary_encoder.v" \
    "../lib/control/chdr_trim_payload.v" \
    "../lib/control/deep_fifo_to_radio.v" \
    "../lib/control/eth_radio_stream_control.v" \
    "../lib/control/gmii2rgmii_wrapper.v" \
    "../lib/control/gpio_atr.v" \
    "../lib/control/ltc2630_spi.v" \
    "../lib/control/map/cam.v" \
    "../lib/control/map/cam_bram.v" \
    "../lib/control/map/cam_priority_encoder.v" \
    "../lib/control/map/cam_srl.v" \
    "../lib/control/map/kv_map.v" \
    "../lib/control/mdio_master.v" \
    "../lib/control/pulse_stretch.v" \
    "../lib/control/ram_2port.v" \
    "../lib/control/ram_2port_impl.vh" \
    "../lib/control/regport_resp_mux.v" \
    "../lib/control/reset_sync.v" \
    "../lib/control/rgmii_if_idelay.v" \
    "../lib/control/setting_reg.v" \
    "../lib/control/simple_spi_core.v" \
    "../lib/control/stream_aggregation.v" \
    "../lib/control/stream_split.v" \
    "../lib/control/synchronizer.v" \
    "../lib/control/synchronizer_impl.v" \
    "../lib/control/user_settings.v" \
    "../lib/control/util_gmii_to_rgmii.v" \
    "../lib/control_200/cvita_uart.v" \
    "../lib/control_200/radio_ctrl_proc.v" \
    "../lib/dsp/acc.v" \
    "../lib/dsp/add2.v" \
    "../lib/dsp/add2_and_clip.v" \
    "../lib/dsp/add2_and_clip_reg.v" \
    "../lib/dsp/add2_and_round.v" \
    "../lib/dsp/add2_and_round_reg.v" \
    "../lib/dsp/add2_reg.v" \
    "../lib/dsp/add_then_mac.v" \
    "../lib/dsp/cic_dec_shifter.v" \
    "../lib/dsp/cic_decim.v" \
    "../lib/dsp/cic_int_shifter.v" \
    "../lib/dsp/cic_interp.v" \
    "../lib/dsp/cic_strober.v" \
    "../lib/dsp/clip.v" \
    "../lib/dsp/clip_reg.v" \
    "../lib/dsp/cordic_stage.v" \
    "../lib/dsp/cordic_z24.v" \
    "../lib/dsp/ddc_chain.v" \
    "../lib/dsp/duc_chain.v" \
    "../lib/dsp/hb47_int.v" \
    "../lib/dsp/hb_dec.v" \
    "../lib/dsp/hb_interp.v" \
    "../lib/dsp/round.v" \
    "../lib/dsp/round_reg.v" \
    "../lib/dsp/round_sd.v" \
    "../lib/dsp/sign_extend.v" \
    "../lib/dsp/small_hb_dec.v" \
    "../lib/dsp/small_hb_int.v" \
    "../lib/dsp/srl.v" \
    "../lib/fifo/axi_demux4.v" \
    "../lib/fifo/axi_fifo.v" \
    "../lib/fifo/axi_fifo_2clk.v" \
    "../lib/fifo/axi_fifo_bram.v" \
    "../lib/fifo/axi_fifo_flop.v" \
    "../lib/fifo/axi_fifo_flop2.v" \
    "../lib/fifo/axi_fifo_short.v" \
    "../lib/fifo/axi_mux.v" \
    "../lib/fifo/axi_mux4.v" \
    "../lib/fifo/axi_packet_gate.v" \
    "../lib/ngc/hbdec1.ngc" \
    "../lib/ngc/hbdec1.v" \
    "../lib/ngc/hbdec2.ngc" \
    "../lib/ngc/hbdec2.v" \
    "../lib/packet_proc/arm_deframer.v" \
    "../lib/packet_proc/arp_responder/arp_responder.vhd" \
    "../lib/packet_proc/ip_hdr_checksum.v" \
    "../lib/packet_proc_200/source_flow_control_legacy.v" \
    "../lib/radio_200/radio_legacy.v" \
    "../lib/rfnoc/xport/eth_interface.v" \
    "../lib/rfnoc/xport/eth_internal.v" \
    "../lib/rfnoc/xport/eth_ipv4_chdr64_adapter.v" \
    "../lib/rfnoc/xport/eth_ipv4_chdr64_dispatch.v" \
    "../lib/rfnoc/xport/uoe_packet_gen.v" \
    "../lib/rgmii/gmii_to_rgmii.v" \
    "../lib/rgmii/rgmii_phy.v" \
    "../lib/rgmii/rgmii_to_gmii.v" \
    "../lib/route_table/user2xport.v" \
    "../lib/route_table/xport2user.v" \
    "../lib/route_table/xport_arbiter.v" \
    "../lib/route_table/xport_route.v" \
    "../lib/simple_gemac/address_filter.v" \
    "../lib/simple_gemac/address_filter_promisc.v" \
    "../lib/simple_gemac/axi64_to_ll8.v" \
    "../lib/simple_gemac/crc.v" \
    "../lib/simple_gemac/delay_line.v" \
    "../lib/simple_gemac/flow_ctrl_rx.v" \
    "../lib/simple_gemac/flow_ctrl_tx.v" \
    "../lib/simple_gemac/ll8_to_axi64.v" \
    "../lib/simple_gemac/ll8_to_txmac.v" \
    "../lib/simple_gemac/mdio.v" \
    "../lib/simple_gemac/rxmac_to_ll8.v" \
    "../lib/simple_gemac/simple_gemac.v" \
    "../lib/simple_gemac/simple_gemac_rx.v" \
    "../lib/simple_gemac/simple_gemac_tx.v" \
    "../lib/simple_gemac/simple_gemac_wrapper.v" \
    "../lib/timing/pps_generator.v" \
    "../lib/timing/time_compare.v" \
    "../lib/timing/timekeeper_legacy.v" \
    "../lib/vita_200/chdr_12sc_to_16sc.v" \
    "../lib/vita_200/chdr_16sc_to_12sc.v" \
    "../lib/vita_200/chdr_16sc_to_32f.v" \
    "../lib/vita_200/chdr_16sc_to_8sc.v" \
    "../lib/vita_200/chdr_16sc_to_xxxx_chain.v" \
    "../lib/vita_200/chdr_32f_to_16sc.v" \
    "../lib/vita_200/chdr_8sc_to_16sc.v" \
    "../lib/vita_200/chdr_xxxx_to_16sc_chain.v" \
    "../lib/vita_200/context_packet_gen.v" \
    "../lib/vita_200/float_to_iq.v" \
    "../lib/vita_200/iq_to_float.v" \
    "../lib/vita_200/new_rx_control.v" \
    "../lib/vita_200/new_rx_framer.v" \
    "../lib/vita_200/new_tx_control.v" \
    "../lib/vita_200/new_tx_deframer.v" \
    "../lib/vita_200/trigger_context_pkt.v" \
    "../lib/vita_200/tx_responder.v" \
    "../lib/wishbone/simple_uart_rx.v" \
    "../lib/wishbone/simple_uart_tx.v" \
    "../lib/xge_interface/axi64_to_xge64.v" \
    "ip/axi64_8k_2clk_fifo/axi64_8k_2clk_fifo.xci" \
    "ip/fifo_4k_2clk/fifo_4k_2clk.xci" \
    "ip/fifo_short_2clk/fifo_short_2clk.xci" \
    "ip/gen_clks/gen_clks.xci" \
    "top/antsdr_e310v2.v" \
    "top/b200_core.v" \
    "top/b205_ref_pll.v" \
    "top/e200_eth_if_core.v" \
    "top/e200_rgmii_wrapper.v" \
    "top/ppsloop.v" \
]

set e310v2_constraint_rel_files [list \
    "xdc/e310v2.xdc" \
]

antsdr_add_rel_files sources_1 $root_dir $e310v2_source_rel_files
antsdr_add_rel_files constrs_1 $root_dir $e310v2_constraint_rel_files
set_property top "antsdr_e310v2" [get_filesets sources_1]
update_compile_order -fileset sources_1
