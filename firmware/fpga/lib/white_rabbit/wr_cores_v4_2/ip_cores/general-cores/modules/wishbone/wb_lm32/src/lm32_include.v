// =============================================================================
//                           COPYRIGHT NOTICE
// Copyright 2006 (c) Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// This confidential and proprietary software may be used only as authorised by
// a licensing agreement from Lattice Semiconductor Corporation.
// The entire notice above must be reproduced on all authorized copies and
// copies may only be made to the extent permitted by a licensing agreement from
// Lattice Semiconductor Corporation.
//
// Lattice Semiconductor Corporation        TEL : 1-800-Lattice (USA and Canada)
// 5555 NE Moore Court                            408-826-6000 (other locations)
// Hillsboro, OR 97124                     web  : http://www.latticesemi.com/
// U.S.A                                   email: techsupport@latticesemi.com
// =============================================================================/
//                         FILE DETAILS
// Project          : LatticeMico32
// File             : lm32_include.v
// Title            : CPU global macros
// Version          : 6.1.17
//                  : Initial Release
// Version          : 7.0SP2, 3.0
//                  : No Change
// Version          : 3.1
//                  : No Change
// Version          : 3.2
//                  : No Change
// Version          : 3.3
//                  : Support for extended configuration register
// =============================================================================

`ifdef LM32_INCLUDE_V
`else
`define LM32_INCLUDE_V

// Configuration options
//`include "system_conf.v"

`ifdef TRUE
`else
`define TRUE    1'b1
`define FALSE   1'b0
`define TRUE_N  1'b0
`define FALSE_N 1'b1
`endif

// Wishbone configuration
`ifndef CFG_IRAM_ENABLED
`define CFG_IWB_ENABLED
`endif

`define CFG_DWB_ENABLED

// Data-path width
`define LM32_WORD_WIDTH                 32
`define LM32_WORD_RNG                   (`LM32_WORD_WIDTH-1):0
`define LM32_SHIFT_WIDTH                5
`define LM32_SHIFT_RNG                  (`LM32_SHIFT_WIDTH-1):0
`define LM32_BYTE_SELECT_WIDTH          4
`define LM32_BYTE_SELECT_RNG            (`LM32_BYTE_SELECT_WIDTH-1):0

// Register file size
`define LM32_REGISTERS                  32
`define LM32_REG_IDX_WIDTH              5
`define LM32_REG_IDX_RNG                (`LM32_REG_IDX_WIDTH-1):0

// Standard register numbers
`define LM32_RA_REG                     `LM32_REG_IDX_WIDTH'd29
`define LM32_EA_REG                     `LM32_REG_IDX_WIDTH'd30
`define LM32_BA_REG                     `LM32_REG_IDX_WIDTH'd31

// Range of Program Counter. Two LSBs are always 0. 
`ifdef CFG_ICACHE_ENABLED
`define LM32_PC_WIDTH                   (clogb2(`CFG_ICACHE_LIMIT-`CFG_ICACHE_BASE_ADDRESS)-2)
`else
`ifdef CFG_IWB_ENABLED
`define LM32_PC_WIDTH                   (`LM32_WORD_WIDTH-2)
`else
`define LM32_IRAM_ADDRESS_WIDTH 32
`define LM32_PC_WIDTH                   (`LM32_IRAM_ADDRESS_WIDTH-2)
`endif
`endif
`define LM32_PC_RNG                     (`LM32_PC_WIDTH+2-1):2

// Range of an instruction
`define LM32_INSTRUCTION_WIDTH          32
`define LM32_INSTRUCTION_RNG            (`LM32_INSTRUCTION_WIDTH-1):0

// Adder operation
`define LM32_ADDER_OP_ADD               1'b0
`define LM32_ADDER_OP_SUBTRACT          1'b1

// Shift direction
`define LM32_SHIFT_OP_RIGHT             1'b0
`define LM32_SHIFT_OP_LEFT              1'b1

// Derive macro that indicates whether we have single-stepping or not
`ifdef CFG_ROM_DEBUG_ENABLED
`define LM32_SINGLE_STEP_ENABLED
`else
`ifdef CFG_HW_DEBUG_ENABLED
`define LM32_SINGLE_STEP_ENABLED
`endif
`endif

// Derive macro that indicates whether JTAG interface is required
`ifdef CFG_JTAG_UART_ENABLED
`define LM32_JTAG_ENABLED
`else
`ifdef CFG_DEBUG_ENABLED
`define LM32_JTAG_ENABLED
`else
`endif
`endif

// Derive macro that indicates whether we have a barrel-shifter or not
`ifdef CFG_PL_BARREL_SHIFT_ENABLED
`define LM32_BARREL_SHIFT_ENABLED
`else // CFG_PL_BARREL_SHIFT_ENABLED
`ifdef CFG_MC_BARREL_SHIFT_ENABLED
`define LM32_BARREL_SHIFT_ENABLED
`else
`define LM32_NO_BARREL_SHIFT
`endif
`endif // CFG_PL_BARREL_SHIFT_ENABLED

// Derive macro that indicates whether we have a multiplier or not
`ifdef CFG_PL_MULTIPLY_ENABLED
`define LM32_MULTIPLY_ENABLED
`else
`ifdef CFG_MC_MULTIPLY_ENABLED
`define LM32_MULTIPLY_ENABLED
`endif
`endif

// Derive a macro that indicates whether or not the multi-cycle arithmetic unit is required
`ifdef CFG_MC_DIVIDE_ENABLED
`define LM32_MC_ARITHMETIC_ENABLED
`endif
`ifdef CFG_MC_MULTIPLY_ENABLED
`define LM32_MC_ARITHMETIC_ENABLED
`endif
`ifdef CFG_MC_BARREL_SHIFT_ENABLED
`define LM32_MC_ARITHMETIC_ENABLED
`endif

// Derive macro that indicates if we are using an EBR register file
`ifdef CFG_EBR_POSEDGE_REGISTER_FILE
`define LM32_EBR_REGISTER_FILE
`endif
`ifdef CFG_EBR_NEGEDGE_REGISTER_FILE
`define LM32_EBR_REGISTER_FILE
`endif

// Revision number
`define LM32_REVISION                   6'h02

// Logical operations - Function encoded directly in instruction
`define LM32_LOGIC_OP_RNG               3:0

// Conditions for conditional branches
`define LM32_CONDITION_WIDTH            3
`define LM32_CONDITION_RNG              (`LM32_CONDITION_WIDTH-1):0
`define LM32_CONDITION_E                3'b001
`define LM32_CONDITION_G                3'b010
`define LM32_CONDITION_GE               3'b011
`define LM32_CONDITION_GEU              3'b100
`define LM32_CONDITION_GU               3'b101
`define LM32_CONDITION_NE               3'b111
`define LM32_CONDITION_U1               3'b000
`define LM32_CONDITION_U2               3'b110

// Size of load or store instruction - Encoding corresponds to opcode
`define LM32_SIZE_WIDTH                 2
`define LM32_SIZE_RNG                   1:0
`define LM32_SIZE_BYTE                  2'b00
`define LM32_SIZE_HWORD                 2'b11
`define LM32_SIZE_WORD                  2'b10
`define LM32_ADDRESS_LSBS_WIDTH         2

// Width and range of a CSR index
`ifdef CFG_DEBUG_ENABLED
`define LM32_CSR_WIDTH                  5
`define LM32_CSR_RNG                    (`LM32_CSR_WIDTH-1):0
`else
`ifdef CFG_JTAG_ENABLED
`define LM32_CSR_WIDTH                  4
`define LM32_CSR_RNG                    (`LM32_CSR_WIDTH-1):0
`else
`define LM32_CSR_WIDTH                  4 // CFG2 is "a"
`define LM32_CSR_RNG                    (`LM32_CSR_WIDTH-1):0
`endif
`endif

// CSR indices
`define LM32_CSR_IE                     `LM32_CSR_WIDTH'h0
`define LM32_CSR_IM                     `LM32_CSR_WIDTH'h1
`define LM32_CSR_IP                     `LM32_CSR_WIDTH'h2
`define LM32_CSR_ICC                    `LM32_CSR_WIDTH'h3
`define LM32_CSR_DCC                    `LM32_CSR_WIDTH'h4
`define LM32_CSR_CC                     `LM32_CSR_WIDTH'h5
`define LM32_CSR_CFG                    `LM32_CSR_WIDTH'h6
`define LM32_CSR_EBA                    `LM32_CSR_WIDTH'h7
`ifdef CFG_DEBUG_ENABLED
`define LM32_CSR_DC                     `LM32_CSR_WIDTH'h8
`define LM32_CSR_DEBA                   `LM32_CSR_WIDTH'h9
`endif
`define LM32_CSR_CFG2                   `LM32_CSR_WIDTH'ha
`define LM32_CSR_SDB                    `LM32_CSR_WIDTH'hb
`define LM32_CSR_ERR_ADDR               `LM32_CSR_WIDTH'hc
`ifdef CFG_JTAG_ENABLED
`define LM32_CSR_JTX                    `LM32_CSR_WIDTH'he
`define LM32_CSR_JRX                    `LM32_CSR_WIDTH'hf
`endif
`ifdef CFG_DEBUG_ENABLED
`define LM32_CSR_BP0                    `LM32_CSR_WIDTH'h10
`define LM32_CSR_BP1                    `LM32_CSR_WIDTH'h11
`define LM32_CSR_BP2                    `LM32_CSR_WIDTH'h12
`define LM32_CSR_BP3                    `LM32_CSR_WIDTH'h13
`define LM32_CSR_WP0                    `LM32_CSR_WIDTH'h18
`define LM32_CSR_WP1                    `LM32_CSR_WIDTH'h19
`define LM32_CSR_WP2                    `LM32_CSR_WIDTH'h1a
`define LM32_CSR_WP3                    `LM32_CSR_WIDTH'h1b
`endif 

// Values for WPC CSR
`define LM32_WPC_C_RNG                  1:0
`define LM32_WPC_C_DISABLED             2'b00
`define LM32_WPC_C_READ                 2'b01
`define LM32_WPC_C_WRITE                2'b10
`define LM32_WPC_C_READ_WRITE           2'b11

// Exception IDs
`define LM32_EID_WIDTH                  3
`define LM32_EID_RNG                    (`LM32_EID_WIDTH-1):0
`define LM32_EID_RESET                  3'h0
`define LM32_EID_BREAKPOINT             3'd1
`define LM32_EID_INST_BUS_ERROR         3'h2
`define LM32_EID_WATCHPOINT             3'd3
`define LM32_EID_DATA_BUS_ERROR         3'h4
`define LM32_EID_DIVIDE_BY_ZERO         3'h5
`define LM32_EID_INTERRUPT              3'h6
`define LM32_EID_SCALL                  3'h7

// Pipeline result selection mux controls

`define LM32_D_RESULT_SEL_0_RNG          0:0
`define LM32_D_RESULT_SEL_0_REG_0        1'b0
`define LM32_D_RESULT_SEL_0_NEXT_PC      1'b1

`define LM32_D_RESULT_SEL_1_RNG          1:0
`define LM32_D_RESULT_SEL_1_ZERO         2'b00
`define LM32_D_RESULT_SEL_1_REG_1        2'b01
`define LM32_D_RESULT_SEL_1_IMMEDIATE    2'b10

`define LM32_USER_OPCODE_WIDTH           11
`define LM32_USER_OPCODE_RNG             (`LM32_USER_OPCODE_WIDTH-1):0

// Derive a macro to indicate if either of the caches are implemented
`ifdef CFG_ICACHE_ENABLED
`define LM32_CACHE_ENABLED
`else
`ifdef CFG_DCACHE_ENABLED
`define LM32_CACHE_ENABLED
`endif
`endif

/////////////////////////////////////////////////////
// Interrupts
/////////////////////////////////////////////////////

// Currently this is fixed to 32 and should not be changed
`define CFG_INTERRUPTS                  32
`define LM32_INTERRUPT_WIDTH            `CFG_INTERRUPTS
`define LM32_INTERRUPT_RNG              (`LM32_INTERRUPT_WIDTH-1):0

/////////////////////////////////////////////////////
// General
/////////////////////////////////////////////////////

// Sub-word range types
`define LM32_BYTE_WIDTH                 8
`define LM32_BYTE_RNG                   7:0
`define LM32_HWORD_WIDTH                16
`define LM32_HWORD_RNG                  15:0

// Word sub-byte indicies
`define LM32_BYTE_0_RNG                  7:0
`define LM32_BYTE_1_RNG                  15:8
`define LM32_BYTE_2_RNG                  23:16
`define LM32_BYTE_3_RNG                  31:24

// Word sub-halfword indices
`define LM32_HWORD_0_RNG                 15:0
`define LM32_HWORD_1_RNG                 31:16

// Use a synchronous reset
`define CFG_RESET_SENSITIVITY

// Wishbone defines 
// Refer to Wishbone System-on-Chip Interconnection Architecture
// These should probably be moved to a Wishbone common file

// Wishbone cycle types
`define LM32_CTYPE_WIDTH                3
`define LM32_CTYPE_RNG                  (`LM32_CTYPE_WIDTH-1):0
`define LM32_CTYPE_CLASSIC              3'b000
`define LM32_CTYPE_CONSTANT             3'b001
`define LM32_CTYPE_INCREMENTING         3'b010
`define LM32_CTYPE_END                  3'b111

// Wishbone burst types
`define LM32_BTYPE_WIDTH                2
`define LM32_BTYPE_RNG                  (`LM32_BTYPE_WIDTH-1):0
`define LM32_BTYPE_LINEAR               2'b00
`define LM32_BTYPE_4_BEAT               2'b01
`define LM32_BTYPE_8_BEAT               2'b10
`define LM32_BTYPE_16_BEAT              2'b11

`endif
