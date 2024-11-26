//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "mod"
(
    input logic clk
);


//------------------------------------------------------------------------------
// Child module instances

A modA
(
  .clk(clk)
);

endmodule



//==============================================================================
//
// Module: A (test_const_large.cpp:67:5)
//
module A // "mod.modA"
(
    input logic clk
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [63:0] BIG_CONST1 = 64'hFFFFFFFFFFFFFFFF;
localparam logic [63:0] BIG_CONST2 = 64'hFFFFFFFFFFFFFFFF;
localparam logic [63:0] BIG_CONST3 = 64'hFFFFFFFFFFFFFFFF;
localparam logic signed [63:0] BIG_CONST5 = -5'sd8;
localparam logic [63:0] BIG_CONST6 = 64'h8000000000000000;
localparam logic [63:0] BIG_CONST7 = 47;
localparam logic [63:0] INT_CONST1 = 2147483647;
localparam logic [31:0] INT_CONST2 = 32'h80000000;
localparam logic signed [63:0] INT_CONST3 = -32'sd2147483647;
localparam logic signed [63:0] INT_CONST4 = -33'sh80000000;
localparam logic signed [63:0] INT_CONST5 = -3'sd2;
localparam logic signed [63:0] INT_CONST6 = -32'sd1073741824;
localparam logic signed [63:0] INT_CONST7 = -32'sd1073741824;
localparam logic signed [63:0] INT_CONST8 = -31'sd1073741823;
localparam logic signed [63:0] INT_CONST9 = -31'sd1073741823;

//------------------------------------------------------------------------------
// Method process: constMeth (test_const_large.cpp:45:5) 

always_comb 
begin : constMeth     // test_const_large.cpp:45:5
    logic [63:0] a;
    logic signed [63:0] b;
    logic [63:0] c;
    integer i;
    logic signed [63:0] d;
    a = BIG_CONST1 + BIG_CONST2 + BIG_CONST3 + INT_CONST1 + INT_CONST2 + INT_CONST3 + INT_CONST4 + INT_CONST6 + INT_CONST7 + INT_CONST8 + INT_CONST9;
    b = 34'h2540BE400;
    b = -35'sh2540BE400;
    b = a + 34'h2540BE400;
    c = BIG_CONST5 + BIG_CONST6 + BIG_CONST7;
    i = (-10'sh100) - 100;
    d = INT_CONST3;
    d = INT_CONST5;
    d = -32'sd2147483647;
    d = -33'sh80000000;
    d = -3'sd2;
end

endmodule


