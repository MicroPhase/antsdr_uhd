# create the vivado project
create_project antsdr_u220 ./antsdr_u220 -part xc7a200tfbg484-2

# add custom ip to the project


# verilog define for target b210
set_property verilog_define TARGET_B210=1 [current_fileset]


# add files to this project
add_files {

    ./top/b200_core.v
    ./top/antsdr_u220.v
    ./top/ppsloop.v

    ./ip/fifo_4k_2clk/fifo_4k_2clk.xci
    ./ip/fifo_short_2clk/fifo_short_2clk.xci
    ./ip/gen_clks/gen_clks.xci 

    ../lib/ngc/hbdec2.ngc
    ../lib/ngc/hbdec1.ngc
    ../lib/dsp/acc.v
    ../lib/control/ad5662_auto_spi.v
    ../lib/dsp/add2.v
    ../lib/dsp/add2_and_clip.v
    ../lib/dsp/add2_and_clip_reg.v
    ../lib/dsp/add2_and_round.v
    ../lib/dsp/add2_and_round_reg.v
    ../lib/dsp/add2_reg.v
    ../lib/dsp/add_then_mac.v
    ../lib/cat_io/antsdr_u205_io.v
    ../lib/fifo/axi_demux4.v
    ../lib/fifo/axi_fifo.v
    ../lib/fifo/axi_fifo32_to_fifo64.v
    ../lib/fifo/axi_fifo64_to_fifo32.v
    ../lib/fifo/axi_fifo_2clk.v
    ../lib/fifo/axi_fifo_bram.v
    ../lib/fifo/axi_fifo_flop.v
    ../lib/fifo/axi_fifo_flop2.v
    ../lib/fifo_200/axi_fifo_legacy.v
    ../lib/fifo/axi_fifo_short.v
    ../lib/fifo/axi_mux4.v
    ../lib/fifo/axi_packet_gate.v
    ../lib/control/binary_encoder.v
    ../lib/vita_200/chdr_12sc_to_16sc.v
    ../lib/vita_200/chdr_16sc_to_12sc.v
    ../lib/vita_200/chdr_16sc_to_32f.v
    ../lib/vita_200/chdr_16sc_to_8sc.v
    ../lib/vita_200/chdr_16sc_to_xxxx_chain.v
    ../lib/vita_200/chdr_32f_to_16sc.v
    ../lib/vita_200/chdr_8sc_to_16sc.v
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
    ../lib/control_200/cvita_uart.v
    ../lib/dsp/ddc_chain.v
    ../lib/dsp/duc_chain.v
    ../lib/gpif2/fifo64_to_gpif2.v
    ../lib/vita_200/float_to_iq.v
    ../lib/gpif2/gpif2_error_checker.v
    ../lib/gpif2/gpif2_slave_fifo32.v
    ../lib/gpif2/gpif2_to_fifo64.v
    ../lib/control/gpio_atr.v
    ../lib/dsp/hb47_int.v
    ../lib/dsp/hb_dec.v
    ../lib/dsp/hb_interp.v
    ../lib/ngc/hbdec1.v
    ../lib/ngc/hbdec2.v
    ../lib/vita_200/iq_to_float.v
    ../lib/control/ltc2630_spi.v
    ../lib/vita_200/new_rx_control.v
    ../lib/vita_200/new_rx_framer.v
    ../lib/vita_200/new_tx_control.v
    ../lib/vita_200/new_tx_deframer.v
    ../lib/timing/pps_generator.v
    ../lib/control_200/radio_ctrl_proc.v
    ../lib/radio_200/radio_legacy.v
    ../lib/control/ram_2port_impl.vh
    ../lib/control/ram_2port.v
    ../lib/control/reset_sync.v
    ../lib/dsp/round.v
    ../lib/dsp/round_reg.v
    ../lib/dsp/round_sd.v
    ../lib/control/serial_to_settings.v
    ../lib/control/setting_reg.v
    ../lib/dsp/sign_extend.v
    ../lib/control/simple_spi_core.v
    ../lib/wishbone/simple_uart.v
    ../lib/wishbone/simple_uart_rx.v
    ../lib/wishbone/simple_uart_tx.v
    ../lib/dsp/small_hb_dec.v
    ../lib/dsp/small_hb_int.v
    ../lib/packet_proc_200/source_flow_control_legacy.v
    ../lib/dsp/srl.v
    ../lib/control/synchronizer.v
    ../lib/control/synchronizer_impl.v
    ../lib/timing/time_compare.v
    ../lib/timing/timekeeper_legacy.v
    ../lib/vita_200/trigger_context_pkt.v
    ../lib/vita_200/tx_responder.v
    ../lib/control/user_settings.v
    ../lib/wishbone/i2c_master_defines.v

    ./xdc/u220.xdc
}
update_compile_order -fileset sources_1

# add constrain file
add_files -fileset constrs_1 -norecurse ./xdc/u220.xdc

set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
# generate bit stream
launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1 
