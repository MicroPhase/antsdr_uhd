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
//  xport to user module, generate a key:value map, if this key_value
//  is not store in the kv_map, then write this key:value into kv_map.
//  The tuser signal to the downstream module is the udp port.
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
// 2022-10-09     Chaochen Wei  1.0         Original
// 
// 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
module xport2user#(
    parameter        CHDR_W       = 64,
    parameter        VAL_W     = 112,
    parameter        KEY_W     = 16
  )(
    input   wire                    clk     ,
    input   wire                    rst     ,
    
    /* input stream */
    input   wire    [CHDR_W-1: 0]       e2x_tdata   ,
    input   wire    [VAL_W-1:0]         e2x_tuser   ,
    input   wire                        e2x_tvalid  ,
    input   wire                        e2x_tlast   ,
    output  wire                        e2x_tready  ,

    /* output stream */
    output  wire    [CHDR_W-1: 0]       x2v_tdata   ,
    output  wire    [KEY_W-1:0]         x2v_tuser   ,
    output  wire                        x2v_tvalid  ,
    output  wire                        x2v_tlast   ,
    input   wire                        x2v_tready  ,

    /* kv map insert and search */
    output  reg                     insert_key_stb  ,
    output  wire    [KEY_W-1 :0]    insert_key      ,
    output  wire    [VAL_W-1 :0]    insert_value    ,

    output  reg                     find_key_stb    ,
    output  wire    [KEY_W-1:0]     find_key        ,
    input   wire                    kv_map_busy   ,
    input   wire                    find_res_stb    ,
    input   wire                    find_res_match  ,
    input   wire    [VAL_W-1:0]     find_res_value  
);

    //====================================================
    // parameter define
    //====================================================
    localparam IDLE         = 5'b00001;
    localparam FIND         = 5'b00010;
    localparam INSERT       = 5'b00100;
    localparam INSERT_WAIT  = 5'b01000;
    localparam SKIP_INSERT  = 5'b10000;

    //====================================================
    //internal signals and registers
    //====================================================
    reg     [4:0]   state;
    wire            key_value_tvalid     ;
    reg             key_value_tready     ;
    reg     [VAL_W-1:0] insert_value_last_time   ;




    
    axi_fifo #(
        .WIDTH(64+32+1),.SIZE(6)
    ) x2v_pipe (
        .clk(clk), .reset(rst), .clear(1'b0),
        .i_tdata({e2x_tlast, e2x_tuser[VAL_W-1 -:16], e2x_tdata}),
        .i_tvalid(e2x_tvalid), .i_tready(e2x_tready),
        .o_tdata({x2v_tlast, x2v_tuser, x2v_tdata}),
        .o_tvalid(x2v_tvalid), .o_tready(x2v_tready),
        .space(), .occupied()
    );

    // store the vey:value info when a packet finished
    axi_fifo #(
        .WIDTH(VAL_W),.SIZE(8)
    ) key_value_fifo (
        .clk(clk), .reset(rst), .clear(1'b0),
        .i_tdata(e2x_tuser[VAL_W-1:0]),
        .i_tvalid(e2x_tvalid & e2x_tready & e2x_tlast), .i_tready(),
        .o_tdata(insert_value),
        .o_tvalid(key_value_tvalid), .o_tready(key_value_tready),
        .space(), .occupied()
    );

    assign insert_key = insert_value[VAL_W-1 -:16];
    

    //----------------state------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            state <= IDLE;
        end
        else  begin
            case (state)
                IDLE : begin
                    // if the cam is not busy now
                    if(kv_map_busy == 1'b0)begin
                        // the key_value fifo is not empty, and the key:value is 
                        // different with last time , need to check if this
                        // key:value needs to be written into kv_map 
                        if(key_value_tvalid && insert_value_last_time != insert_value)begin
                            state <= INSERT;
                        end
                        // the key:value is same with last time skip insert
                        else if(key_value_tvalid && insert_value_last_time == insert_value)begin
                            state <= SKIP_INSERT;
                        end
                    end
                end 

                // FIND : begin
                //     // the kv_map already has this key_value, so this key:value
                //     // will not be written into kv_map
                //     if(find_res_stb == 1'b1 && find_res_match == 1'b1 && find_res_value ==  insert_value)begin
                //         state <= SKIP_INSERT;
                //     end
                //     // the kv_map has this key, but the value needs to be update
                //     else if (find_res_stb == 1'b1 && find_res_match == 1'b1 && find_res_value !=  insert_value) begin
                //         // the kv_map is busy now, we will wait the kv_map to be ready to accpet the key:value
                //         if (kv_map_busy) begin
                //             state <= INSERT_WAIT;
                //         end
                //         // the kv_map is not busy, we can insert the key:value now
                //         else begin
                //             state <= INSERT;
                //         end
                //     end
                //     // the kv_map do not have this key:value
                //     else if (find_res_stb & ~find_res_match) begin
                //          // the kv_map is busy now, we will wait the kv_map to be ready to accpet the key:value
                //         if (kv_map_busy) begin
                //             state <= INSERT_WAIT;
                //         end
                //         // the kv_map is not busy, we can insert the key:value now
                //         else begin
                //             state <= INSERT;
                //         end
                //     end
                // end

                INSERT_WAIT : begin
                    // the kv_map is now ready
                    if (~kv_map_busy) begin
                        state <= INSERT;
                    end
                end
                
                INSERT : begin
                    // when this key:value is inserted into kv_map
                    if (insert_key_stb) begin
                        state <= IDLE;
                    end
                end

                SKIP_INSERT: begin
                    // when the key:value pop from fifo
                    if (key_value_tready & key_value_tvalid) begin
                        state <= IDLE;
                    end
                    
                end

                default: state <= IDLE;
            endcase
        end
    end

    //----------------find_key_stb------------------
    // for some case, we don't want to find key in this module, so we just skip
    // the find procedure.
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            find_key_stb <= 1'b0;
        end
        // the key:value fifo is not empty, check whether the kv_map need to be update
        // else if (state == IDLE && key_value_tvalid == 1'b1 
        //          && insert_value_last_time != insert_value 
        //          && kv_map_busy == 1'b0) begin
        //     find_key_stb <= 1'b1;
        // end
        else  begin
            find_key_stb <=  1'b0;
        end
    end

    assign find_key = insert_value[VAL_W-1 -:16];

    //----------------key_value_tready------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            key_value_tready <= 1'b0;
            insert_key_stb <= 1'b0;
        end
        // // while in the fining match state, if the kv_map already had this key:value inside
        // // we will pop the key:value and will not insert this key:value
        // else if (state == FIND) begin
        //     if (find_res_stb == 1'b1 & find_res_match == 1'b1 && find_res_value ==  insert_value) begin
        //         key_value_tready <= 1'b1;
        //     end
        // end
        // in insert state, we will insert the key:value into kv_map, so we need to
        // pop key:value from fifo
        else if (state == INSERT && insert_key_stb == 1'b0) begin
            key_value_tready <=  1'b1;
            insert_key_stb <= 1'b1;
        end
        // in skip state, we will pop(delete) one key:value
        else if (state == SKIP_INSERT && key_value_tready == 1'b0) begin
            key_value_tready <=  1'b1;
        end
        else begin
            key_value_tready <= 1'b0;
            insert_key_stb <= 1'b0;
        end
    end

    //----------------insert_value_last_time------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            insert_value_last_time <= 'd0;
        end
        else if (insert_key_stb) begin
            insert_value_last_time <= insert_value;
        end
    end

endmodule