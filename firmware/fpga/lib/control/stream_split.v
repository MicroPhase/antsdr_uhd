// --------------------------------------------------------------------------------
// Copyright (c) 2019 ~ 2022 by MicroPhase Technologies Inc. 
// --------------------------------------------------------------------------------
//
// Disclaimer:
//
//  This VHDL/Verilog or C/C++ source code is intended as a design reference
//  which illustrates how these types of functions can be implemented.
//  It is the user's responsibility to verify their design for
//  consistency and functionality through the use of formal
//  verification methods.  MicroPhase provides no warranty regarding the use 
//  or functionality of this code.
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//           
//                     MicroPhase Technologies Inc
//                     Shanghai, China
//
//                     web: http://www.microphase.cn/   
//                     email: support@microphase.cn
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// Major Functions:	
//  Demux the data stream from ethernet to  control stream or tx_data stream by
//  tuser signal(udp port)
//
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// License: LGPL-3.0-or-later
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
//
// Revision History:
// Date          By            Revision    Change Description
//---------------------------------------------------------------------
// 2022-10-09    Chaochen Wei  1.0         Original
// 2022-11-18    Chaochen Wei  1.1         add 2 tx radio id support
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

module stream_split#(
    parameter CHDR_W = 64,
    parameter USER_W = 16,
    parameter BUFFER = 0
    ) 
    (
    input clk, input reset, input clear,
    input [CHDR_W-1:0] i_tdata, input [USER_W-1:0] i_tuser, input i_tlast, input i_tvalid, output i_tready,
    output [CHDR_W-1:0] o0_tdata, output o0_tlast, output o0_tvalid, input o0_tready,
    output [CHDR_W-1:0] o1_tdata, output o1_tlast, output o1_tvalid, input o1_tready
    );

    wire [CHDR_W-1:0]    i_tdata_int;
    wire [USER_W-1:0]    i_tuser_int;
    wire 	             i_tlast_int, i_tvalid_int;
    reg                  i_tready_int;

    generate
        if(BUFFER == 0) begin
            assign i_tdata_int = i_tdata;
            assign i_tlast_int = i_tlast;
            assign i_tvalid_int = i_tvalid;
            assign i_tuser_int = i_tuser;
            assign i_tready = i_tready_int;
        end
        else
            axi_fifo #(
                .WIDTH(64+16+1),.SIZE(11)
            ) stream_split_fifo (
                .clk(clk), .reset(reset), .clear(1'b0),
                .i_tdata({i_tlast,i_tuser,i_tdata}), 
                .i_tvalid(i_tvalid), .i_tready(i_tready),
                .o_tdata({i_tlast_int,i_tuser_int,i_tdata_int}), 
                .o_tvalid(i_tvalid_int), .o_tready(i_tready_int),
                .space(), .occupied()
            );
    endgenerate

    reg [3:0] 	  dm_state;
    localparam DM_IDLE = 4'b0001;
    localparam DM_0    = 4'b0010;
    localparam DM_1    = 4'b0100;
    localparam DM_2    = 4'b1000;


    always @(posedge clk)
        if(reset | clear)
            dm_state <= DM_IDLE;
        else
        case (dm_state)
            DM_IDLE :
                if(i_tvalid_int)
                case(i_tuser_int)
                    // chdr control packet
                    16'd49200 :
                        dm_state <= DM_0;
                    // chdr tx data packet
                    16'd49202, 16'd49203 :
                        dm_state <= DM_1;
                    // the 49204 port is for rx data stream, no meaning in this module ,just skip these data
                    16'd49204 :
                        dm_state <= DM_2;
                    default :
                        dm_state <= DM_IDLE;
                endcase // case (i_tdata[1:0])

            DM_0, DM_1, DM_2 :
                if(i_tvalid_int & i_tready_int & i_tlast_int)
                    dm_state <= DM_IDLE;

            default :
                dm_state <= DM_IDLE;
        endcase // case (dm_state)

    assign o0_tvalid = (dm_state == DM_0) ? i_tvalid_int : 1'b0;
    assign o1_tvalid = (dm_state == DM_1) ? i_tvalid_int : 1'b0;

    always @(*) begin
        case(dm_state)
            DM_0:
                i_tready_int = o0_tready;
            DM_1:
                i_tready_int = o1_tready;
            DM_2:
                i_tready_int = 1'b1;
            default:
                i_tready_int = 1'b0;
        endcase
    end


    assign {o0_tlast, o0_tdata} = {i_tlast_int, i_tdata_int};
    assign {o1_tlast, o1_tdata} = {i_tlast_int, i_tdata_int};

endmodule // axi_demux4
