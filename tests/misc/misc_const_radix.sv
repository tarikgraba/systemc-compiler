//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.17
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
// Module: A (test_const_radix.cpp:272:5)
//
module A // "mod.modA"
(
    input logic clk
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] G1 = 256;
localparam logic [31:0] G2 = 12;
localparam logic [31:0] G3 = 13;
localparam logic signed [31:0] G6 = -6'sd30;
localparam logic [15:0] G7 = 65521;
localparam logic [31:0] G4 = 255;
localparam logic [31:0] G5 = 63;
localparam logic [31:0] GE1 = 5;
localparam logic [31:0] GE2 = 254;
localparam logic [31:0] GT1 = 3;
localparam logic [31:0] GT2 = 4;
localparam logic [31:0] GT3 = 4;
localparam logic [31:0] GT4 = 5;

//------------------------------------------------------------------------------
// Method process: constLiter (test_const_radix.cpp:55:5) 

always_comb 
begin : constLiter     // test_const_radix.cpp:55:5
    integer i0;
    integer i1;
    integer i2;
    integer i3;
    integer i4;
    integer i5;
    integer i6;
    integer i7;
    integer i8;
    logic signed [64:0] b0;
    logic [63:0] uu;
    integer unsigned u;
    logic [31:0] x;
    logic [31:0] bx;
    integer i;
    logic signed [31:0] y;
    logic signed [31:0] by;
    logic signed [63:0] l1;
    i0 = 0;
    i0 = 0;
    i0 = 0;
    i1 = -2'sd1;
    i1 = -2'sh1;
    i1 = -2'sb1;
    i1 = 1;
    i1 = 1;
    i1 = 'b1;
    i2 = 'hFF;
    i3 = 'h100;
    i4 = 'h101;
    i5 = -9'shFF;
    i6 = -10'sh100;
    i7 = -10'sh101;
    i8 = -7'sd42;
    b0 = 0;
    b0 = 0;
    b0 = 0;
    b0 = 64'hFFFFFFFFFFFFFFFE;
    b0 = 64'hFFFFFFFFFFFFFFFF;
    b0 = -64'sh7FFFFFFFFFFFFFFE;
    b0 = -64'sh7FFFFFFFFFFFFFFF;
    uu = 34'h2540BE400;
    uu = 33'h100000000;
    uu = 34'h200000000;
    u = 'h40000000;
    u = 1073741824;
    u = 32'hFFFFFFFF;
    u = 32'hFFFFFFFE;
    u = 32'hFFFFFFFF;
    u = 32'hFFFFFFFE;
    x = 'h40000000;
    bx = 'h40000000;
    i = 'h40000000;
    i = 1073741824;
    i = -32'sh40000000;
    i = -32'sd1073741824;
    y = 'h40000000;
    y = -32'sh40000000;
    by = 'h40000000;
    by = -32'sh40000000;
    l1 = -(1 <<< 63);
end

//------------------------------------------------------------------------------
// Method process: constLiterOverflow (test_const_radix.cpp:117:5) 

always_comb 
begin : constLiterOverflow     // test_const_radix.cpp:117:5
    integer unsigned u;
    integer i;
    logic [31:0] x;
    logic signed [31:0] y;
    u = 0;
    i = 0;
    i = -33'sh80000000;
    i = -34'sh100000000;
    x = 0;
    y = 0;
    x = 33'h100000000;
    y = 33'h100000000;
    y = -33'sh80000000;
    y = -34'sh100000000;
end

//------------------------------------------------------------------------------
// Method process: declMeth (test_const_radix.cpp:134:5) 

always_comb 
begin : declMeth     // test_const_radix.cpp:134:5
    integer unsigned d;
    integer unsigned o;
    integer unsigned h1;
    integer h2;
    integer unsigned bi;
    logic b1;
    logic b2;
    logic b3;
    logic [9:0] arr1[3];
    integer arr2[3];
    integer l1;
    d = 15;
    o = 'o15;
    h1 = 'hF;
    h2 = -5'shF;
    bi = 'b1111;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    arr1[0] = 'h42; arr1[1] = 'o42; arr1[2] = 42;
    arr2[0] = -8'sh42; arr2[1] = -7'so42; arr2[2] = -7'sd42;
    l1 = 'hA5;
    h2 = l1;
end

//------------------------------------------------------------------------------
// Method process: assignMeth (test_const_radix.cpp:153:5) 

always_comb 
begin : assignMeth     // test_const_radix.cpp:153:5
    integer unsigned d;
    integer unsigned o;
    integer unsigned h1;
    integer h2;
    integer unsigned bi;
    logic b1;
    logic b2;
    logic b3;
    logic [9:0] arr1[3];
    integer arr2[3];
    d = 15;
    o = 'o15;
    h1 = 'hF;
    h2 = -5'shF;
    bi = 'b1111;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    arr1[0] = 0; arr1[1] = 0; arr1[2] = 0;
    arr1[1] = 'h42;
    arr1[2] = 42;
    arr2[1] = -8'sh42;
    arr2[2] = -7'sd42;
end

//------------------------------------------------------------------------------
// Method process: constMeth (test_const_radix.cpp:181:5) 

always_comb 
begin : constMeth     // test_const_radix.cpp:181:5
    integer unsigned h1;
    integer unsigned hh1;
    integer unsigned h2;
    integer unsigned hh2;
    integer h3;
    integer hh3;
    integer h4;
    integer hh4;
    integer unsigned h5;
    integer unsigned g1;
    integer unsigned g2;
    integer unsigned g4;
    integer unsigned g5;
    integer g6;
    logic [15:0] g7;
    integer unsigned ge1;
    integer unsigned ge2;
    logic [7:0] ge3;
    h1 = 'hFF;
    hh1 = h1;
    h2 = 'h100;
    hh2 = h2;
    h3 = (-9'shFF) + 1;
    hh3 = h3;
    h4 = (-10'sh100) - 10;
    hh4 = h4;
    h5 = G5;
    g1 = G1;
    g2 = G2 + G3;
    g4 = G4 / 2;
    g5 = G5 + h5;
    g6 = G6;
    g6 = G6 + 10;
    g7 = G7;
    ge1 = GE1;
    ge2 = GE2;
    ge3 = GE2 + 1;
end

//------------------------------------------------------------------------------
// Method process: templMeth (test_const_radix.cpp:208:5) 

always_comb 
begin : templMeth     // test_const_radix.cpp:208:5
    integer unsigned a1;
    integer unsigned a2;
    integer unsigned a3;
    integer unsigned a4;
    a1 = GT1;
    a2 = GT2;
    a3 = GT3;
    a4 = GT4;
end

//------------------------------------------------------------------------------
// Method process: binaryMeth (test_const_radix.cpp:224:5) 

always_comb 
begin : binaryMeth     // test_const_radix.cpp:224:5
    logic [31:0] x;
    x = G1 + 1;
    x = 41 / G1;
    x = G2 - 10;
    x = G1 & G2;
    x = G1 & 'h300;
    x = G1 >>> 2;
    x = 2 <<< G2;
end

//------------------------------------------------------------------------------
// Method process: unaryMeth (test_const_radix.cpp:238:5) 

always_comb 
begin : unaryMeth     // test_const_radix.cpp:238:5
    logic [31:0] x;
    logic b;
    x = ~G1;
    b = &G7;
    x = ~|G7;
end

//------------------------------------------------------------------------------
// Method process: partSelMeth (test_const_radix.cpp:217:5) 

always_comb 
begin : partSelMeth     // test_const_radix.cpp:217:5
    logic [31:0] x;
    logic b;
    x = 0;
    x[7 : 3] = 0;
    b = x[11];
end

//------------------------------------------------------------------------------
// Method process: funcCallMeth (test_const_radix.cpp:255:5) 

always_comb 
begin : funcCallMeth     // test_const_radix.cpp:255:5
    integer j;
    logic [7:0] par;
    integer j_1;
    j = 'h42;    // Call of f()
    par = 'o42;
    // Call g() begin
    j_1 = par + 1;
    // Call g() end
    j = 'h42;    // Call of f()
    par = 42;
    // Call g() begin
    j_1 = par + 1;
    // Call g() end
end

endmodule


