//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic read_fifo;
logic write_fifo;
logic [31:0] data_in;
logic reset;
logic [31:0] data_out;
logic full;
logic empty;


//------------------------------------------------------------------------------
// Child module instances

Circ_buf a_mod
(
  .clk(clk),
  .read_fifo(read_fifo),
  .write_fifo(write_fifo),
  .data_in(data_in),
  .reset(reset),
  .data_out(data_out),
  .full(full),
  .empty(empty)
);

endmodule



//==============================================================================
//
// Module: Circ_buf (test_rtl_fifo.cpp:146:5)
//
module Circ_buf // "b_mod.a_mod"
(
    input logic clk,
    input logic read_fifo,
    input logic write_fifo,
    input logic [31:0] data_in,
    input logic reset,
    output logic [31:0] data_out,
    output logic full,
    output logic empty
);

// Variables generated for SystemC signals
logic [31:0] buf0;
logic [31:0] buf0_next;
logic [31:0] buf1;
logic [31:0] buf1_next;
logic [31:0] buf2;
logic [31:0] buf2_next;
logic [31:0] buf3;
logic [31:0] buf3_next;
logic [2:0] num_in_buf;
logic [2:0] num_in_buf_next;
logic full_next;
logic empty_next;
logic [31:0] data_out_next;

//------------------------------------------------------------------------------
// Method process: ns_logic (test_rtl_fifo.cpp:91:5) 

always_comb 
begin : ns_logic     // test_rtl_fifo.cpp:91:5
    buf0_next = buf0;
    buf1_next = buf1;
    buf2_next = buf2;
    buf3_next = buf3;
    num_in_buf_next = num_in_buf;
    data_out_next = 0;
    if (read_fifo == 1)
    begin
        if (num_in_buf != 0)
        begin
            data_out_next = buf0;
            buf0_next = buf1;
            buf1_next = buf2;
            buf2_next = buf3;
            num_in_buf_next = num_in_buf - 1;
        end
    end else begin
        if (write_fifo == 1)
        begin
            case (32'(num_in_buf))
            0 : begin
                buf0_next = data_in;
                num_in_buf_next = num_in_buf + 1;
            end
            1 : begin
                buf1_next = data_in;
                num_in_buf_next = num_in_buf + 1;
            end
            2 : begin
                buf2_next = data_in;
                num_in_buf_next = num_in_buf + 1;
            end
            3 : begin
                buf3_next = data_in;
                num_in_buf_next = num_in_buf + 1;
            end
            default : begin
            end
            endcase
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: update_regs (test_rtl_fifo.cpp:69:5) 

// Thread-local variables
logic full_next0;
logic empty_next0;
logic [2:0] num_in_buf_next0;
logic [31:0] buf0_next0;
logic [31:0] buf1_next0;
logic [31:0] buf2_next0;
logic [31:0] buf3_next0;
logic [31:0] data_out_next0;

// Next-state combinational logic
always_comb begin : update_regs_comb     // test_rtl_fifo.cpp:69:5
    update_regs_func;
end
function void update_regs_func;
    buf0_next0 = buf0;
    buf1_next0 = buf1;
    buf2_next0 = buf2;
    buf3_next0 = buf3;
    data_out_next0 = data_out;
    empty_next0 = empty;
    full_next0 = full;
    num_in_buf_next0 = num_in_buf;
    full_next0 = full_next;
    empty_next0 = empty_next;
    num_in_buf_next0 = num_in_buf_next;
    buf0_next0 = buf0_next;
    buf1_next0 = buf1_next;
    buf2_next0 = buf2_next;
    buf3_next0 = buf3_next;
    data_out_next0 = data_out_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge reset) 
begin : update_regs_ff
    if ( reset ) begin
        full <= 0;
        empty <= 1;
        num_in_buf <= 0;
        buf0 <= 0;
        buf1 <= 0;
        buf2 <= 0;
        buf3 <= 0;
        data_out <= 0;
    end
    else begin
        full <= full_next0;
        empty <= empty_next0;
        num_in_buf <= num_in_buf_next0;
        buf0 <= buf0_next0;
        buf1 <= buf1_next0;
        buf2 <= buf2_next0;
        buf3 <= buf3_next0;
        data_out <= data_out_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: gen_full (test_rtl_fifo.cpp:57:5) 

always_comb 
begin : gen_full     // test_rtl_fifo.cpp:57:5
    if (num_in_buf_next == 4)
    begin
        full_next = 1;
    end else begin
        full_next = 0;
    end
end

//------------------------------------------------------------------------------
// Method process: gen_empty (test_rtl_fifo.cpp:63:5) 

always_comb 
begin : gen_empty     // test_rtl_fifo.cpp:63:5
    if (num_in_buf_next == 0)
    begin
        empty_next = 1;
    end else begin
        empty_next = 0;
    end
end

endmodule


