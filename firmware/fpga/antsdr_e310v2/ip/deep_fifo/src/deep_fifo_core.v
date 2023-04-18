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
//	Core module of deep fifo implementation, this module works at 2 modes, one is 
// 	bypass mode, data will not be stored in dram. another mode is non-bypass mode,
// 	in this mode, the data will be stored in the dram. Once all the data in the 
// 	was read out, this module will enter into bypass mode.
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
`timescale 1 ns / 1 ps

	module deep_fifo_core #
	(
		// Users to add parameters here
		parameter log2_ram_size_addr = 26,
		parameter FIFO_POST_WR_DATA_COUNT_WIDTH = 9,
		parameter fifo_pre_threshold = 128,	
		parameter fifo_post_threshold = 256,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Base address of targeted slave
		parameter  C_M_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		parameter integer C_M_AXI_BURST_LEN	= 16,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
		output 	 			        		fifo_pre_rd_en,
		input 			            		fifo_pre_empty,
		input [C_M_AXI_DATA_WIDTH-1:0] 	    fifo_pre_dout,
		input [FIFO_POST_WR_DATA_COUNT_WIDTH-1:0] 		fifo_pre_rd_count,

		output 	 			        		fifo_post_wr_en,
		input 			            		fifo_post_full,
		output [C_M_AXI_DATA_WIDTH-1:0] 	fifo_post_din,
		input [FIFO_POST_WR_DATA_COUNT_WIDTH-1:0] 		fifo_post_wr_count,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    	// determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,
		// Lock type. Provides additional information about the
    	// atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    	// are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    	// and security level of the transaction, and whether
    	// the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
    	// the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. This signal indicates that
    	// the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    	// lanes hold valid data. There is one write strobe
    	// bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    	// data and strobes are available
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
   	 	// can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
		// Write response valid. This signal indicates that the
    	// channel is signaling a valid write response.
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master
    	// can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial
    	// address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    	// determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the
    	// atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    	// are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    	// and security level of the transaction, and whether
    	// the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
    	// the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,
		// Read address ready. This signal indicates that
    	// the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    	// for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    	// is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    	// accept the read data and response information.
		output wire  M_AXI_RREADY
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	  // function called clogb2 that returns an integer which has the 
	  // value of the ceiling of the log base 2.                      
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction        

	//====================================================
	//parameter define
	//====================================================
	localparam addr_width = log2_ram_size_addr;		// maximum fifo addr width
	localparam ptr_width = log2_ram_size_addr + 1;	// maximum fifo ptr width
	localparam burst_in_bytes = C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8; //axi burst in bytes

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);

	// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
	// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
	 localparam integer C_MASTER_LENGTH	= 12;
	// total number of burst transfers is master length divided by burst length and burst size
	 localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M_AXI_BURST_LEN*C_M_AXI_DATA_WIDTH/8)-1);


	// AXI4LITE signals
	//AXI4 internal temp signals
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awvalid;
	wire [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	wire  	axi_wlast;
	reg  	axi_wvalid;
	reg  	axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arvalid;
	reg  	axi_rready;

	reg  						bypass_mode			;

	reg [ptr_width-1 : 0] 		wr_ram_ptr			;
	wire[addr_width-1: 0]		wr_ram_addr 		;
	wire   						wr_ram_overflow		;
	reg [ptr_width-1 : 0] 		rd_ram_ptr			;
	wire[addr_width-1: 0]		rd_ram_addr 		;
	wire  						rd_ram_overflow		;
	reg   						deep_fifo_empty		;
	reg  						deep_fifo_full		;

	reg  						b_fifo_pre_rd_en	;// pre fifo read enable in bypass mode
	reg 						b_fifo_post_wr_en	;// post fifo write enable in bypass mode
	reg [C_M_AXI_DATA_WIDTH-1 : 0]  	b_fifo_post_din		;// post fifo write data in bypass mdoe

	reg  						wr_burst_start 		;// axi write busrt start flag
	reg  						axi_wr_work_on 		;// axi write bus working flag
	reg [7: 0] 					cnt_wr_burst		;// axi write burst index
	wire  						add_cnt_wr_burst 	;
	wire  						end_cnt_wr_burst 	;

	reg  						rd_burst_start 		;// axi read burst start flag
	reg  						axi_rd_work_on 		;// axi read bus working flag
	reg [7: 0] 					cnt_rd_burst		;// axi read burst index  
	wire  						add_cnt_rd_burst 	;
	wire  						end_cnt_rd_burst 	;

	wire  						n_fifo_pre_rd_en	;// pre fifo read enable in none-bypass mode
	wire   						n_fifo_post_wr_en 	;// post fifo write enable in none-bypass mode
	wire [C_M_AXI_DATA_WIDTH-1 : 0]  	n_fifo_post_din		;// post fifo write data in none-bypass mode

	reg  						axi_rlast_dly 		;
	wire  						axi_rlast_pos_pls 	;
	wire  						axi_rlast_neg_pls 	;
	// I/O Connections assignments

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	= 'b0;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	= C_M_AXI_TARGET_SLAVE_BASE_ADDR  + wr_ram_addr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	= C_M_AXI_BURST_LEN - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST	= 2'b01;
	assign M_AXI_AWLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_AWCACHE	= 4'b0010;
	assign M_AXI_AWPROT	= 3'h0;
	assign M_AXI_AWQOS	= 4'h0;
	assign M_AXI_AWUSER	= 'b1;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	= axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WSTRB	= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
	assign M_AXI_WLAST	= axi_wlast;
	assign M_AXI_WUSER	= 'b0;
	assign M_AXI_WVALID	= axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	= 'b0;
	assign M_AXI_ARADDR	= C_M_AXI_TARGET_SLAVE_BASE_ADDR + rd_ram_addr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN	= C_M_AXI_BURST_LEN - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST	= 2'b01;
	assign M_AXI_ARLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_ARCACHE	= 4'b0010;
	assign M_AXI_ARPROT	= 3'h0;
	assign M_AXI_ARQOS	= 4'h0;
	assign M_AXI_ARUSER	= 'b1;
	assign M_AXI_ARVALID	= axi_arvalid;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Burst size in bytes
	// assign burst_size_bytes	= C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;




	assign fifo_pre_rd_en = bypass_mode ? b_fifo_pre_rd_en : n_fifo_pre_rd_en;
	assign fifo_post_din = bypass_mode ? b_fifo_post_din : n_fifo_post_din;
	assign fifo_post_wr_en = bypass_mode ? b_fifo_post_wr_en : n_fifo_post_wr_en;


	//----------------bypass_mode------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			bypass_mode <= 1'b1;
		end
		// pre fifo is above threshold and the deep_fifo is now totally empty
		else if ((fifo_pre_rd_count < fifo_pre_threshold) && (deep_fifo_empty == 1'b1) && (axi_rlast_neg_pls == 1'b1)) begin
			bypass_mode <= 1'b1;
		end
		// pre fifo is under the threshold
		else if (fifo_pre_rd_count >= fifo_pre_threshold) begin
			bypass_mode <=  1'b0;
		end
	end

	//----------------axi_rlast_dly------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			axi_rlast_dly <= 1'b1;
		end
		else  begin
			axi_rlast_dly <=  M_AXI_RLAST;
		end
	end

	assign axi_rlast_pos_pls = (~axi_rlast_dly) & M_AXI_RLAST;
	assign axi_rlast_neg_pls = axi_rlast_dly & (~M_AXI_RLAST);
	//====================================================
	// bypass mode
	//====================================================

	//----------------pre_fifo_rd_en_bypass------------------
	always @(*) begin
		if (bypass_mode == 1'b1) begin
			if( (~fifo_post_full)  & (~fifo_pre_empty))begin
				b_fifo_pre_rd_en <= 1'b1;
			end
			else begin
				b_fifo_pre_rd_en <= 1'b0;
			end
		end
		else  begin
			b_fifo_pre_rd_en <=  1'b0;
		end
	end

	//----------------b_fifo_post_wr_en/din------------------
	always @( * ) begin
		b_fifo_post_din = fifo_pre_dout;
		b_fifo_post_wr_en = b_fifo_pre_rd_en;
	end

	//====================================================
	// end of bypass mode
	//====================================================
	


	//====================================================
	// none-bypass mode
	//====================================================
	
	//----------------wr_burst_start------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			wr_burst_start <= 1'b0;
		end
		else if (bypass_mode == 1'b0) begin
			// in non-bypss mode, the deep fifo is not full, the axi bus is not working and  the pre fifo has enough data for bust
			if ((fifo_pre_rd_count >= fifo_pre_threshold) && (deep_fifo_full == 1'b0) && (axi_wr_work_on == 1'b0)) begin
				wr_burst_start <= 1'b1;
			end
			else begin
				wr_burst_start <= 1'b0;
			end
		end
		else  begin
			wr_burst_start <=  1'b0;
		end
	end

	//----------------axi_wr_worn_on------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			axi_wr_work_on <= 1'b0;
		end
		else if (bypass_mode == 1'b0) begin
			// when one axi burst is finished
			if ((axi_wr_work_on == 1'b1) && (end_cnt_wr_burst == 1'b1)) begin
				axi_wr_work_on <= 1'b0;
			end
			else if(wr_burst_start == 1'b1)begin
				axi_wr_work_on <= 1'b1;
			end
		end
		else  begin
			axi_wr_work_on <=  1'b0;
		end
	end

	//----------------axi_awvalid------------------
	always @(posedge M_AXI_ACLK)begin                                                                          
		if (M_AXI_ARESETN==1'b0) begin
			axi_awvalid <= 1'b0;
		end                 
		else if ((axi_awvalid == 1'b1) && (M_AXI_AWREADY == 1'b1)) begin
			axi_awvalid <= 1'b0;
		end
		else if ((wr_burst_start==1'b1) && (axi_awvalid == 1'b0) && (axi_wvalid == 1'b0)) begin
			axi_awvalid <= 1'b1;
		end                                                                                                                               
	end

	//----------------axi_wvalid------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			axi_wvalid <= 1'b0;
		end
		else if(end_cnt_wr_burst == 1'b1)begin
			axi_wvalid <= 1'b0;
		end
		else if ((axi_awvalid == 1'b1) && (M_AXI_AWREADY == 1'b1)) begin
			axi_wvalid <= 1'b1;
		end
	end

	// read data from pre fifo in bypass mode
	assign n_fifo_pre_rd_en = axi_wvalid & M_AXI_WREADY;
	assign axi_wdata = fifo_pre_dout;
	assign axi_wlast = end_cnt_wr_burst;

	//----------------cnt_wr_burst------------------
	always @(posedge M_AXI_ACLK) begin
		if (M_AXI_ARESETN==1'b0) begin
			cnt_wr_burst <= 'd0;
		end
		else if (add_cnt_wr_burst) begin
			if(end_cnt_wr_burst)
				cnt_wr_burst <= 'd0;
			else
				cnt_wr_burst <= cnt_wr_burst + 1'b1;
		end
	end
	
	assign add_cnt_wr_burst = axi_wvalid & M_AXI_WREADY;
	assign end_cnt_wr_burst = add_cnt_wr_burst && (cnt_wr_burst == (C_M_AXI_BURST_LEN - 1'b1));



	//----------------rd_burst_start------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			rd_burst_start <= 1'b0;
		end
		else if (bypass_mode == 1'b0) begin
			// the deep fifo is not empty, the post fifo is under the threshold  and the axi read bus is not working
			if((fifo_post_wr_count <= fifo_post_threshold - 2) && (deep_fifo_empty == 1'b0) && (axi_rd_work_on == 1'b0))begin
				rd_burst_start <= 1'b1;
			end
			else begin
				rd_burst_start <= 1'b0;
			end
		end
		else  begin
			rd_burst_start <=  1'b0;
		end
	end

	//----------------axi_rd_work_on------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			axi_rd_work_on <= 1'b0;
		end
		else if (bypass_mode == 1'b0) begin
			// when one axi read burst is finished
			if ((axi_rd_work_on == 1'b1) && (end_cnt_rd_burst == 1'b1)) begin
				axi_rd_work_on <= 1'b0;
			end
			else if(rd_burst_start == 1'b1)begin
				axi_rd_work_on <= 1'b1;
			end
		end
		else  begin
			axi_rd_work_on <=  1'b0;
		end
	end

	//----------------axi_arvalid------------------
	always @(posedge M_AXI_ACLK)begin                                                                          
		if (M_AXI_ARESETN==1'b0) begin
			axi_arvalid <= 1'b0;
		end                 
		else if ((axi_arvalid == 1'b1) && (M_AXI_ARREADY == 1'b1)) begin
			axi_arvalid <= 1'b0;
		end
		else if ((rd_burst_start==1'b1) && (axi_arvalid == 1'b0) && (M_AXI_RVALID== 1'b0)) begin
			axi_arvalid <= 1'b1;
		end                                                                                                                               
	end

	//----------------axi_rready------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			axi_rready <= 1'b0;
		end
		else if (end_cnt_rd_burst == 1'b1) begin
			axi_rready <= 1'b0;
		end
		else if ((axi_arvalid == 1'b1) && (M_AXI_ARREADY == 1'b1)) begin
			axi_rready <=  1'b1;
		end
	end

	//----------------cnt_rd_burst------------------
	always @(posedge M_AXI_ACLK) begin
		if (M_AXI_ARESETN==1'b0) begin
			cnt_rd_burst <= 'd0;
		end
		else if (add_cnt_rd_burst) begin
			if(end_cnt_rd_burst)
				cnt_rd_burst <= 'd0;
			else
				cnt_rd_burst <= cnt_rd_burst + 1'b1;
		end
	end
	
	assign add_cnt_rd_burst = M_AXI_RVALID & axi_rready;
	assign end_cnt_rd_burst = add_cnt_rd_burst && (cnt_rd_burst == (C_M_AXI_BURST_LEN -1));

	assign n_fifo_post_wr_en = M_AXI_RVALID & axi_rready;
	assign n_fifo_post_din = M_AXI_RDATA;

	//----------------wr_ram_ptr------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			wr_ram_ptr <= 'd0;
		end
		else if (end_cnt_wr_burst == 1'b1) begin
			wr_ram_ptr <= wr_ram_ptr + burst_in_bytes;
		end
	end

	//----------------rd_ram_ptr------------------
	always @(posedge M_AXI_ACLK ) begin
		if (M_AXI_ARESETN==1'b0) begin
			rd_ram_ptr <= 'd0;
		end
		else if (end_cnt_rd_burst == 1'b1) begin
			rd_ram_ptr <= rd_ram_ptr + burst_in_bytes;
		end
	end

	//----------------wr/rd_ram_overflow------------------
	assign {wr_ram_overflow, wr_ram_addr} = wr_ram_ptr;
	assign {rd_ram_overflow, rd_ram_addr} = rd_ram_ptr;

	always @(*) begin
		// The read pointer catches up with the write pointer, the deep fifo is empty
		if((wr_ram_overflow == rd_ram_overflow) && (wr_ram_addr <= rd_ram_addr))begin
			deep_fifo_empty = 1'b1;
		end
		else begin
			deep_fifo_empty = 1'b0;
		end
	end

	always @(*) begin
		// The write pointer catches up with the read pointer, the deep fifo is full
		if((wr_ram_overflow != rd_ram_overflow) && (wr_ram_addr >= rd_ram_addr))begin
			deep_fifo_full = 1'b1;
		end
		else begin
			deep_fifo_full = 1'b0;
		end
	end


	always @(posedge M_AXI_ACLK)begin                                                                 
		if (M_AXI_ARESETN == 0 ) begin                                                             
			axi_bready <= 1'b0;                                             
		end                                                                                         
		else if (M_AXI_BVALID && ~axi_bready)begin                                                             
			axi_bready <= 1'b1;                                             
		end                                                                                                
		else if (axi_bready) begin                                                             
			axi_bready <= 1'b0;                                             
		end                                                                                                     
		else                                                                
			axi_bready <= axi_bready;                                         
	end  


	// wire [255:0] probe0;

	// assign probe0 = {
	// 	bypass_mode 	,
	// 	M_AXI_ARESETN 	,
	// 	M_AXI_AWADDR	,	
	// 	M_AXI_AWVALID	,
	// 	M_AXI_AWREADY	,
	// 	M_AXI_WLAST		,
	// 	M_AXI_WVALID	,
	// 	M_AXI_WREADY	,
	// 	M_AXI_ARADDR	,
	// 	M_AXI_ARVALID	,
	// 	M_AXI_ARREADY	,
	// 	M_AXI_RLAST		,
	// 	M_AXI_RVALID	,
	// 	M_AXI_RREADY	,
	// 	wr_ram_ptr		,
	// 	rd_ram_ptr		,
	// 	deep_fifo_empty		,
	// 	deep_fifo_full		,
	// 	fifo_pre_dout		,	
	// 	fifo_pre_rd_count	,
	// 	fifo_pre_empty		,
	// 	fifo_post_full 		,
		
	// 	b_fifo_pre_rd_en	,
	// 	b_fifo_post_wr_en	,
	// 	n_fifo_pre_rd_en	,
	// 	n_fifo_post_wr_en
	// };

	// ila_deep_fifo u_ila_deep_fifo (
	// 	.clk(M_AXI_ACLK), // input wire clk


	// 	.probe0(probe0) // input wire [255:0] probe0
	// );
 

endmodule
