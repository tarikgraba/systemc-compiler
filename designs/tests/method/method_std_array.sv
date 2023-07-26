//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test ()
//
module test // "t"
(
);

// Variables generated for SystemC signals
logic [31:0] s;

// Local parameters generated for C++ constants
localparam logic [2:0] c[3] = '{ 1, 2, 3 };
localparam logic signed [31:0] a[3] = '{ 2, 3, 4 };
localparam logic signed [31:0] b[3] = '{ 5, 6, 7 };
localparam logic signed [11:0] bx[3] = '{ 8, -5'sd9, 10 };
localparam logic signed [31:0] r[3] = '{ 1, 2, 3 };
localparam logic signed [31:0] p[3] = '{ 1, 2, 3 };
localparam logic signed [31:0] q[3] = '{ 1, 2, 3 };
localparam logic signed [31:0] g[3] = '{ 1, -3'sd2, 3 };
localparam logic [63:0] g1[3] = '{ 4, 5, 6 };
localparam logic signed [31:0] h[3] = '{ 1, 2, 3 };

//------------------------------------------------------------------------------
// Method process: const_array_test (test_std_array.cpp:44:5) 

always_comb 
begin : const_array_test     // test_std_array.cpp:44:5
    integer l;
    integer unsigned i;
    i = s;
    l = a[1];
    l = b[2];
    l = c[0];
    l = a[i] + a[i + 1] + a[s] + a[c[i]];
    l = b[i] + b[i + 1] + b[s] + b[c[i]];
    l = bx[0];
    l = 1 - bx[i - 1];
end

//------------------------------------------------------------------------------
// Method process: array_test (test_std_array.cpp:67:5) 

// Process-local variables
logic signed [31:0] f[3];
logic signed [31:0] d[3];
logic signed [31:0] e[3][2];

always_comb 
begin : array_test     // test_std_array.cpp:67:5
    integer l;
    integer unsigned i;
    i = s;
    f[0] = 41;
    d[0] = 42;
    d[1] = c[i];
    l = f[0];
    l = d[0];
    l = |d[1] ? d[f[1]] : e[s + 1][1];
    if (|e[2][l])
    begin
        e[0][1] = d[i];
    end
end

//------------------------------------------------------------------------------
// Method process: static_const_array_test (test_std_array.cpp:106:5) 

always_comb 
begin : static_const_array_test     // test_std_array.cpp:106:5
    integer l;
    integer unsigned i;
    i = s;
    l = r[0] + p[0] + q[0];
    l = g[0] + g1[1];
    l = h[0];
    l = r[0] + q[1];
    l = r[i] / q[i - 1];
    l = g[r[1]] + g1[q[i]];
end

endmodule


