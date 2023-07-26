//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
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
logic signed [31:0] s;
logic signed [31:0] t1;
logic signed [31:0] t2;

// Local parameters generated for C++ constants
localparam logic a = 1;
localparam logic [3:0] x = 11;

//------------------------------------------------------------------------------
// Method process: local_var (test_name_conflict1.cpp:33:5) 

always_comb 
begin : local_var     // test_name_conflict1.cpp:33:5
    logic a_1;
    integer i_1;
    logic [3:0] x_1;
    logic signed [63:0] sum_1;
    x_1 = 0;
    i_1 = s;
    sum_1 = a_1 ? i_1 : 32'(x_1);
    t1 = sum_1;
end

//------------------------------------------------------------------------------
// Method process: member_var (test_name_conflict1.cpp:45:5) 

// Process-local variables
logic signed [31:0] i;
logic signed [63:0] sum;

always_comb 
begin : member_var     // test_name_conflict1.cpp:45:5
    i = s;
    sum = 32'(x);
    t2 = sum;
end

endmodule


