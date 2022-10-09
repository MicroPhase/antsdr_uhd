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
//	Map DDR3 SDRAM into a deep fifo, there are 2 small fifo for buffer small packet,
// 	if the small reaches to it's threshold, the huge fifo module will work.
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
module deepfifo_module
#(
	parameter log2_fifo_data_width = 6,
	parameter log2_ram_size_addr = 26,
	parameter log2_fifo_words = 9,
	parameter fifo_pre_threshold = 128,	
	parameter fifo_post_threshold = 128,

	parameter  C_M_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h00000000,
	parameter integer C_M_AXI_BURST_LEN	= 128,
	parameter integer C_M_AXI_ID_WIDTH	= 1,
	parameter integer C_M_AXI_ADDR_WIDTH	= 32,
	parameter integer C_M_AXI_DATA_WIDTH	= 64,
	parameter integer C_M_AXI_AWUSER_WIDTH	= 1,
	parameter integer C_M_AXI_ARUSER_WIDTH	= 1,
	parameter integer C_M_AXI_WUSER_WIDTH	= 1,
	parameter integer C_M_AXI_RUSER_WIDTH	= 1,
	parameter integer C_M_AXI_BUSER_WIDTH	= 1
)(

	//----------------sysrest------------------
	input 						sys_rst_n 	,
	//----------------user pre fifo interface------------------
	input  	wire							fifo_clk			,

	input 	wire							fifo_pre_tvalid		,
	output 	wire    						fifo_pre_tready		,
	input 	wire[C_M_AXI_DATA_WIDTH -1:0]	fifo_pre_tdata		,
	output 	wire [log2_fifo_words-1:0] 		fifo_pre_wr_count	,

	output 	wire							fifo_post_tvalid 	,
	input 	wire							fifo_post_tready 	,
	output 	wire[C_M_AXI_DATA_WIDTH -1:0]	fifo_post_tdata  	,
	output 	wire [log2_fifo_words-1:0] 		fifo_post_rd_count	,


	//----------------user post fifo interface------------------

	//----------------axi mm interface------------------
	// Global Clock Signal.
	input wire  M_AXI_ACLK,
	input wire  M_AXI_ARESETN,
	output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
	output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
	output wire [7 : 0] M_AXI_AWLEN,
	output wire [2 : 0] M_AXI_AWSIZE,
	output wire [1 : 0] M_AXI_AWBURST,
	output wire  M_AXI_AWLOCK,
	output wire [3 : 0] M_AXI_AWCACHE,
	output wire [2 : 0] M_AXI_AWPROT,
	output wire [3 : 0] M_AXI_AWQOS,
	output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
	output wire  M_AXI_AWVALID,
	input wire  M_AXI_AWREADY,
	output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
	output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
	output wire  M_AXI_WLAST,
	output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
	output wire  M_AXI_WVALID,
	input wire  M_AXI_WREADY,
	input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
	input wire [1 : 0] M_AXI_BRESP,
	input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
	input wire  M_AXI_BVALID,
	output wire  M_AXI_BREADY,
	output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
	output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
	output wire [7 : 0] M_AXI_ARLEN,
	output wire [2 : 0] M_AXI_ARSIZE,
	output wire [1 : 0] M_AXI_ARBURST,
	output wire  M_AXI_ARLOCK,
	output wire [3 : 0] M_AXI_ARCACHE,
	output wire [2 : 0] M_AXI_ARPROT,
	output wire [3 : 0] M_AXI_ARQOS,
	output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
	output wire  M_AXI_ARVALID,
	input wire  M_AXI_ARREADY,
	input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
	input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
	input wire [1 : 0] M_AXI_RRESP,
	input wire  M_AXI_RLAST,
	input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
	input wire  M_AXI_RVALID,
	output wire  M_AXI_RREADY
);	


	wire 	    					fifo_pre_wr_en			;
	wire 	    					fifo_pre_full			;
	wire [C_M_AXI_DATA_WIDTH -1:0] 	fifo_pre_din			;
	

	wire  			        		fifo_pre_rd_en			;
	wire 			            	fifo_pre_empty			;
	wire [C_M_AXI_DATA_WIDTH-1:0] 	fifo_pre_dout			;
	wire [log2_fifo_words-1:0] 		fifo_pre_rd_count		;
	
	wire  			        		fifo_post_wr_en			;
	wire 			            	fifo_post_full			;
	wire  [C_M_AXI_DATA_WIDTH-1:0] 	fifo_post_din			;
	wire [log2_fifo_words-1:0] 		fifo_post_wr_count		;

	wire         					fifo_post_rd_en			;
	wire         					fifo_post_empty			;
	wire [C_M_AXI_DATA_WIDTH -1:0] 	fifo_post_dout			;
	



	wire 			fifo_pre_wr_rst_busy;
	wire 			fifo_pre_rd_rst_busy;
	wire 			fifo_post_wr_rst_busy;
	wire 			fifo_post_rd_rst_busy;


	localparam PRE_FIFO_DEPTH  = 1 << log2_fifo_words;

    assign fifo_pre_tready = (~fifo_pre_full);
    assign fifo_pre_wr_en = fifo_pre_tready & fifo_pre_tvalid;
    assign fifo_pre_din = fifo_pre_tdata;

	fifo_64x512 fifo_pre (
		.rst			(~sys_rst_n				), 
		.wr_clk			(fifo_clk				), 
		.rd_clk			(M_AXI_ACLK				), 
		.din			(fifo_pre_din			), 
		.wr_en			(fifo_pre_wr_en			), 
		.rd_en			(fifo_pre_rd_en			), 
		.dout			(fifo_pre_dout			), 
		.full			(fifo_pre_full			), 
		.empty			(fifo_pre_empty			),   
		.rd_data_count	(fifo_pre_rd_count		), 
		.wr_data_count	(fifo_pre_wr_count		), 
		.wr_rst_busy	(fifo_pre_wr_rst_busy	), 
		.rd_rst_busy	(fifo_pre_rd_rst_busy	)  
	);


	deep_fifo_core #(
		.log2_ram_size_addr(log2_ram_size_addr),
		.log2_fifo_words(log2_fifo_words),
		.fifo_pre_threshold(fifo_pre_threshold),	
		.fifo_post_threshold(fifo_post_threshold),	

		.C_M_AXI_TARGET_SLAVE_BASE_ADDR(C_M_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_M_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_M_AXI_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M_AXI_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_M_AXI_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M_AXI_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_M_AXI_BUSER_WIDTH)	
		)u_deep_fifo_core(
		.fifo_pre_rd_en         ( fifo_pre_rd_en      ),
		.fifo_pre_empty         ( fifo_pre_empty      ),
		.fifo_pre_dout          ( fifo_pre_dout       ),
		.fifo_pre_rd_count      ( fifo_pre_rd_count   ),
		.fifo_post_wr_en        ( fifo_post_wr_en     ),
		.fifo_post_full         ( fifo_post_full      ),
		.fifo_post_din          ( fifo_post_din       ),
		.fifo_post_wr_count     ( fifo_post_wr_count  ),

		.M_AXI_ACLK             ( M_AXI_ACLK          ),
		.M_AXI_ARESETN          ( M_AXI_ARESETN       ),
		.M_AXI_AWID             ( M_AXI_AWID          ),
		.M_AXI_AWADDR           ( M_AXI_AWADDR        ),
		.M_AXI_AWLEN            ( M_AXI_AWLEN         ),
		.M_AXI_AWSIZE           ( M_AXI_AWSIZE        ),
		.M_AXI_AWBURST          ( M_AXI_AWBURST       ),
		.M_AXI_AWLOCK           ( M_AXI_AWLOCK        ),
		.M_AXI_AWCACHE          ( M_AXI_AWCACHE       ),
		.M_AXI_AWPROT           ( M_AXI_AWPROT        ),
		.M_AXI_AWQOS            ( M_AXI_AWQOS         ),
		.M_AXI_AWUSER           ( M_AXI_AWUSER        ),
		.M_AXI_AWVALID          ( M_AXI_AWVALID       ),
		.M_AXI_AWREADY          ( M_AXI_AWREADY       ),
		.M_AXI_WDATA            ( M_AXI_WDATA         ),
		.M_AXI_WSTRB            ( M_AXI_WSTRB         ),
		.M_AXI_WLAST            ( M_AXI_WLAST         ),
		.M_AXI_WUSER            ( M_AXI_WUSER         ),
		.M_AXI_WVALID           ( M_AXI_WVALID        ),
		.M_AXI_WREADY           ( M_AXI_WREADY        ),
		.M_AXI_BID              ( M_AXI_BID           ),
		.M_AXI_BRESP            ( M_AXI_BRESP         ),
		.M_AXI_BUSER            ( M_AXI_BUSER         ),
		.M_AXI_BVALID           ( M_AXI_BVALID        ),
		.M_AXI_BREADY           ( M_AXI_BREADY        ),
		.M_AXI_ARID             ( M_AXI_ARID          ),
		.M_AXI_ARADDR           ( M_AXI_ARADDR        ),
		.M_AXI_ARLEN            ( M_AXI_ARLEN         ),
		.M_AXI_ARSIZE           ( M_AXI_ARSIZE        ),
		.M_AXI_ARBURST          ( M_AXI_ARBURST       ),
		.M_AXI_ARLOCK           ( M_AXI_ARLOCK        ),
		.M_AXI_ARCACHE          ( M_AXI_ARCACHE       ),
		.M_AXI_ARPROT           ( M_AXI_ARPROT        ),
		.M_AXI_ARQOS            ( M_AXI_ARQOS         ),
		.M_AXI_ARUSER           ( M_AXI_ARUSER        ),
		.M_AXI_ARVALID          ( M_AXI_ARVALID       ),
		.M_AXI_ARREADY          ( M_AXI_ARREADY       ),
		.M_AXI_RID              ( M_AXI_RID           ),
		.M_AXI_RDATA            ( M_AXI_RDATA         ),
		.M_AXI_RRESP            ( M_AXI_RRESP         ),
		.M_AXI_RLAST            ( M_AXI_RLAST         ),
		.M_AXI_RUSER            ( M_AXI_RUSER         ),
		.M_AXI_RVALID           ( M_AXI_RVALID        ),
		.M_AXI_RREADY           ( M_AXI_RREADY        )
	);




	fifo_64x512 fifo_post (
		.rst			(~sys_rst_n				), 
		.wr_clk			(M_AXI_ACLK				), 
		.rd_clk			(fifo_clk				), 
		.din			(fifo_post_din			), 
		.wr_en			(fifo_post_wr_en		), 
		.rd_en			(fifo_post_rd_en		), 
		.dout			(fifo_post_dout			), 
		.full			(fifo_post_full			), 
		.empty			(fifo_post_empty		),   
		.rd_data_count	(fifo_post_rd_count		), 
		.wr_data_count	(fifo_post_wr_count		), 
		.wr_rst_busy	(fifo_post_wr_rst_busy	), 
		.rd_rst_busy	(fifo_post_rd_rst_busy	)  
	);

	assign fifo_post_rd_en = (fifo_post_tvalid & fifo_post_tready);
	assign fifo_post_tvalid = (~fifo_post_empty);
	assign fifo_post_tdata = fifo_post_dout;


endmodule