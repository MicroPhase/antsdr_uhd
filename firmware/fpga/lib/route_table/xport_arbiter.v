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
//  xport arbiter, response for kv_map search
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

module xport_arbiter#(
    parameter KEY_W = 16,
    parameter VAL_W = 112
)(
    input   wire                    clk     ,
    input   wire                    rst     ,

    output  reg                     find_key_stb    ,
    output  reg   [KEY_W-1:0]       find_key        ,
    output  wire                    find_key_busy   ,
    input   wire                    find_res_stb    ,
    input   wire                    find_res_match  ,
    input   wire  [VAL_W-1:0]       find_res_value  ,


    input   wire                    e2v_find_key_stb    ,
    input   wire  [KEY_W-1:0]       e2v_find_key        ,
    output  wire                    e2v_find_res_stb    ,
    output  wire                    e2v_find_res_match  ,
    output  wire  [VAL_W-1:0]       e2v_find_res_value  ,

    input   wire                    v2e_find_key_stb    ,
    input   wire  [KEY_W-1:0]       v2e_find_key        ,
    output  wire                    v2e_find_res_stb    ,
    output  wire                    v2e_find_res_match  ,
    output  wire  [VAL_W-1:0]       v2e_find_res_value      
);

    //====================================================
    // parameter    define  
    //====================================================
    localparam IDLE       = 4'b0001;
    localparam ARBIT      = 4'b0010;
    localparam E2V_SEARCH = 4'b0100;
    localparam V2E_SEARCH = 4'b1000;

    //====================================================
    //internal signals and registers
    //====================================================
    reg     [3:0]           state;
    reg                     v2e_find_stb_cache = 0 ;
    reg     [KEY_W-1:0]     v2e_find_key_cache = 0 ;
    reg                     e2v_find_stb_cache = 0 ;
    reg     [KEY_W-1:0]     e2v_find_key_cache = 0 ;


    //----------------state------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            state <= IDLE;
        end
        else  begin
            case (state)
                IDLE :  begin
                    state <= ARBIT;
                end

                ARBIT : begin
                    //e2v xport needs to lookup the kv_map
                    if (e2v_find_key_stb == 1'b1) begin
                        state <= E2V_SEARCH;
                    end
                    //v2e xport needs to lookup the kv_map
                    else if (e2v_find_key_stb == 1'b0 && v2e_find_key_stb == 1'b1) begin
                        state <= V2E_SEARCH;
                    end                    
                end

                E2V_SEARCH: begin
                    // the e2v search is done, and there is no v2e search cache 
                    if (find_res_stb == 1'b1 &&  v2e_find_stb_cache == 1'b0) begin
                        state <= ARBIT;
                    end
                    // the e2v search is done, there is a v2e search cachce, start to search v2e
                    else if (find_res_stb == 1'b1 &&  v2e_find_stb_cache == 1'b1) begin
                        state <= V2E_SEARCH;
                    end
                end
                
                V2E_SEARCH : begin
                    // the v2e search is done, and there is no e2v search cache 
                    if (find_res_stb == 1'b1 &&  e2v_find_stb_cache == 1'b0) begin
                        state <= ARBIT;
                    end
                    // the v2e search is done, there is a e2v search cachce, start to search e2v
                    else if (find_res_stb == 1'b1 &&  e2v_find_stb_cache == 1'b1) begin
                        state <= E2V_SEARCH;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

    //----------------find_key_stb------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            find_key_stb <= 1'b0;
        end
        else if (state == ARBIT && e2v_find_key_stb == 1'b1) begin
            find_key_stb <= 1'b1;
            find_key <= e2v_find_key;
        end
        else if (state == ARBIT && e2v_find_key_stb == 1'b0 && v2e_find_key_stb == 1'b1) begin
            find_key_stb <= 1'b1;
            find_key <= v2e_find_key;
        end
        else if (state == E2V_SEARCH && find_res_stb == 1'b1 && v2e_find_stb_cache == 1'b1) begin
            find_key_stb <= 1'b1;
            find_key <= v2e_find_key_cache;
        end
        else if (state == V2E_SEARCH && find_res_stb == 1'b1 && e2v_find_stb_cache == 1'b1) begin
            find_key_stb <= 1'b1;
            find_key <= e2v_find_key_cache;
        end
        else  begin
            find_key_stb <=  1'b0;
        end
    end

    assign e2v_find_res_stb   = (state == E2V_SEARCH) ? find_res_stb : 1'b0;
    assign e2v_find_res_match = (state == E2V_SEARCH) ? find_res_match : 1'b0;
    assign e2v_find_res_value = (state == E2V_SEARCH) ? find_res_value : 'd0;


    assign v2e_find_res_stb   = (state == V2E_SEARCH) ? find_res_stb : 1'b0;
    assign v2e_find_res_match = (state == V2E_SEARCH) ? find_res_match : 1'b0;
    assign v2e_find_res_value = (state == V2E_SEARCH) ? find_res_value : 'd0;

    assign find_key_busy = (state != ARBIT) ? 1'b1 : 1'b0;


    //----------------v2e_*_cache------------------
    always @(posedge clk ) begin
        if (rst==1'b1) begin
            v2e_find_stb_cache <= 1'b0;
            v2e_find_key_cache <= 'd0;
        end
        else if (state == ARBIT && v2e_find_key_stb == 1'b1 && e2v_find_key_stb == 1'b1) begin
            v2e_find_stb_cache <= 1'b1;
            v2e_find_key_cache <= v2e_find_key;
        end
        else if (state == V2E_SEARCH) begin
            v2e_find_stb_cache <= 1'b0;
            v2e_find_key_cache <= 'd0;
        end
    end

endmodule