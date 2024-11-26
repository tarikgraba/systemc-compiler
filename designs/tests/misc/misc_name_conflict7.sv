//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: empty_proc1 (test_name_conflict7.cpp:31:5) 

integer i_next;
assign i_next = 1;
assign s = i_next + 1;

//------------------------------------------------------------------------------
// Method process: local_var1 (test_name_conflict7.cpp:36:5) 

always_comb 
begin : local_var1     // test_name_conflict7.cpp:36:5
    integer i_next_1;
    integer sum;
    i_next_1 = 1;
    sum = i_next_1 + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: reg_var1 (test_name_conflict7.cpp:42:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next0;

// Next-state combinational logic
always_comb begin : reg_var1_comb     // test_name_conflict7.cpp:42:5
    reg_var1_func;
end
function void reg_var1_func;
    logic signed [63:0] sum;
    i_next0 = i;
    sum = i_next0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : reg_var1_ff
    if ( ~rstn ) begin
        i <= 0;
    end
    else begin
        i <= i_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: empty_proc2 (test_name_conflict7.cpp:54:5) 

integer i_next_2;
assign i_next_2 = 1;
assign s = i_next_2 + 1;

//------------------------------------------------------------------------------
// Method process: local_var2 (test_name_conflict7.cpp:59:5) 

always_comb 
begin : local_var2     // test_name_conflict7.cpp:59:5
    integer i_next_1;
    integer sum;
    i_next_1 = 1;
    sum = i_next_1 + 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: reg_var2 (test_name_conflict7.cpp:65:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next1;

// Next-state combinational logic
always_comb begin : reg_var2_comb     // test_name_conflict7.cpp:65:5
    reg_var2_func;
end
function void reg_var2_func;
    logic signed [63:0] sum;
    i_next1 = i0;
    sum = i_next1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : reg_var2_ff
    if ( ~rstn ) begin
        i0 <= 0;
    end
    else begin
        i0 <= i_next1;
    end
end

endmodule


