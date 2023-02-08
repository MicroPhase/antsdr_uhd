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
//  This module stores the route information of input stream to a kv_map, when
//  local data want to be sent to remote, by lookup the kv_map, this module can
//  get the route information, so that we can know which is ethernet remote address 
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
module xport_route#(
    parameter        CHDR_W   = 64,
    parameter        KEY_W    = 16,
    parameter        VAL_W    = 112,
    parameter        TBL_SIZE = 6
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

    /* input stream */
    input   wire    [CHDR_W-1: 0]       v2x_tdata   ,
    input   wire    [KEY_W-1:0]         v2x_tuser   ,
    input   wire                        v2x_tvalid  ,
    input   wire                        v2x_tlast   ,
    output  wire                        v2x_tready  ,

    /* output stream */
    output  wire    [CHDR_W-1: 0]       x2e_tdata   ,
    output  wire    [VAL_W-1:0]         x2e_tuser   ,
    output  wire                        x2e_tvalid  ,
    output  wire                        x2e_tlast   ,
    input   wire                        x2e_tready  
);

    wire                insert_key_stb      ;     
    wire    [KEY_W-1:0] insert_key          ; 
    wire    [VAL_W-1:0] insert_value        ;     
    wire                insert_busy         ; 

    wire                find_key_stb        ;        
    wire    [KEY_W-1:0] find_key            ;    
    wire                find_key_busy       ;       
    wire                find_res_stb        ;        
    wire                find_res_match      ;      
    wire    [VAL_W-1:0] find_res_value      ;      
    wire                e2v_find_key_stb    ;            
    wire    [KEY_W-1:0] e2v_find_key        ;        
    wire                e2v_find_res_stb    ;            
    wire                e2v_find_res_match  ;          
    wire    [VAL_W-1:0] e2v_find_res_value  ;          
    wire                v2e_find_key_stb    ;            
    wire    [KEY_W-1:0] v2e_find_key        ;        
    wire                v2e_find_res_stb    ;            
    wire                v2e_find_res_match  ;          
    wire    [VAL_W-1:0] v2e_find_res_value  ;  
    
    wire                kv_map_busy         ;


    assign  kv_map_busy = insert_busy | find_key_busy;


    
    xport2user#(
        .CHDR_W       (CHDR_W ),
        .VAL_W        (VAL_W ),
        .KEY_W        (KEY_W )
    )u_xport2user(
        .clk             ( clk             ),
        .rst             ( rst             ),
        .e2x_tdata       ( e2x_tdata       ),
        .e2x_tuser       ( e2x_tuser       ),
        .e2x_tvalid      ( e2x_tvalid      ),
        .e2x_tlast       ( e2x_tlast       ),
        .e2x_tready      ( e2x_tready      ),

        .x2v_tdata       ( x2v_tdata       ),
        .x2v_tuser       ( x2v_tuser       ),
        .x2v_tvalid      ( x2v_tvalid      ),
        .x2v_tlast       ( x2v_tlast       ),
        .x2v_tready      ( x2v_tready      ),

        .insert_key_stb  ( insert_key_stb  ),
        .insert_key      ( insert_key      ),
        .insert_value    ( insert_value    ),
        .find_key_stb    ( e2v_find_key_stb    ),
        .find_key        ( e2v_find_key        ),
        .kv_map_busy     ( kv_map_busy         ),
        .find_res_stb    ( e2v_find_res_stb    ),
        .find_res_match  ( e2v_find_res_match  ),
        .find_res_value  ( e2v_find_res_value  )
    );



    user2xport#(
        .CHDR_W       (CHDR_W ),
        .VAL_W        (VAL_W ),
        .KEY_W        (KEY_W )
    )u_user2xport(
        .clk             ( clk             ),
        .rst             ( rst             ),
        .v2x_tdata       ( v2x_tdata       ),
        .v2x_tuser       ( v2x_tuser       ),
        .v2x_tvalid      ( v2x_tvalid      ),
        .v2x_tlast       ( v2x_tlast       ),
        .v2x_tready      ( v2x_tready      ),

        .x2e_tdata       ( x2e_tdata       ),
        .x2e_tuser       ( x2e_tuser       ),
        .x2e_tvalid      ( x2e_tvalid      ),
        .x2e_tlast       ( x2e_tlast       ),
        .x2e_tready      ( x2e_tready      ),

        .find_key_stb    ( v2e_find_key_stb    ),
        .find_key        ( v2e_find_key        ),
        .kv_map_busy     ( kv_map_busy         ),
        .find_res_stb    ( v2e_find_res_stb    ),
        .find_res_match  ( v2e_find_res_match  ),
        .find_res_value  ( v2e_find_res_value  )
    );


    xport_arbiter#(
        .VAL_W        (VAL_W ),
        .KEY_W        (KEY_W )
    )u_xport_arbiter(
        .clk                 ( clk                 ),
        .rst                 ( rst                 ),
        .find_key_stb        ( find_key_stb        ),
        .find_key            ( find_key            ),
        .find_key_busy       ( find_key_busy       ),
        .find_res_stb        ( find_res_stb        ),
        .find_res_match      ( find_res_match      ),
        .find_res_value      ( find_res_value      ),
        .e2v_find_key_stb    ( e2v_find_key_stb    ),
        .e2v_find_key        ( e2v_find_key        ),
        .e2v_find_res_stb    ( e2v_find_res_stb    ),
        .e2v_find_res_match  ( e2v_find_res_match  ),
        .e2v_find_res_value  ( e2v_find_res_value  ),
        .v2e_find_key_stb    ( v2e_find_key_stb    ),
        .v2e_find_key        ( v2e_find_key        ),
        .v2e_find_res_stb    ( v2e_find_res_stb    ),
        .v2e_find_res_match  ( v2e_find_res_match  ),
        .v2e_find_res_value  ( v2e_find_res_value  )
    );


    kv_map #(
        .KEY_WIDTH(KEY_W), .VAL_WIDTH(VAL_W), .SIZE(TBL_SIZE)
      ) kv_map_i (
        .clk(clk), .reset(rst),
        .insert_stb(insert_key_stb), .insert_key(insert_key), .insert_val(insert_value),
        .insert_busy(insert_busy),
        .find_key_stb(find_key_stb), .find_key(find_key),
        .find_res_stb(find_res_stb), 
        .find_res_match(find_res_match), .find_res_val(find_res_value),
        .count(/* unused */)
      );



endmodule
