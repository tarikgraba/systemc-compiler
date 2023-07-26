//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic [31:0] i1;
logic [31:0] i2;
logic [31:0] i3;
logic [31:0] i4;
logic [31:0] o1;
logic [31:0] o2;
logic [31:0] o3;
logic [31:0] o4;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .i1(i1),
  .i2(i2),
  .i3(i3),
  .i4(i4),
  .o1(o1),
  .o2(o2),
  .o3(o3),
  .o4(o4)
);

endmodule



//==============================================================================
//
// Module: A (test_concat.cpp:389:5)
//
module A // "b_mod.a_mod"
(
    input logic [31:0] i1,
    input logic [31:0] i2,
    input logic [31:0] i3,
    input logic [31:0] i4,
    output logic [31:0] o1,
    output logic [31:0] o2,
    output logic [31:0] o3,
    output logic [31:0] o4
);

// Variables generated for SystemC signals
logic signed [31:0] o6;
logic signed [31:0] o7;
logic signed [31:0] o8;
logic s1;
logic signed [7:0] s2;
logic signed [31:0] s3;
logic [31:0] s4;
logic signed [63:0] s5;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t5;

//------------------------------------------------------------------------------
// Method process: concat_lhs (test_concat.cpp:84:5) 

always_comb 
begin : concat_lhs     // test_concat.cpp:84:5
    logic a;
    logic [1:0] b;
    logic signed [9:0] c;
    logic signed [19:0] d;
    logic [69:0] e;
    logic signed [79:0] f;
    a = 0;
    b = 0;
    {a, b} = s3;
    c = 3;
    d = 255;
    {c[1], d[2 : 1]} = s3;
    e = 12;
    f = 0;
    {e, f[69 : 60]} = s3;
end

//------------------------------------------------------------------------------
// Method process: cast_lhs (test_concat.cpp:133:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: concat_return (test_concat.cpp:154:5) 

always_comb 
begin : concat_return     // test_concat.cpp:154:5
    integer k;
    logic a;
    logic [2:0] b;
    logic [3:0] TMP_1;
    logic par1;
    logic [2:0] par2;
    logic [5:0] c;
    logic [3:0] TMP_2;
    a = 0;
    b = 0;
    {a, b} = 1;
    if (a)
    begin
        k = 1;
    end
    if (|b)
    begin
        k = 2;
    end
    par1 = a; par2 = b;
    // Call retConcat() begin
    par2++;
    TMP_1 = {par1, par2};
    // Call retConcat() end
    {a, b} = TMP_1;
    if (a)
    begin
        k = 3;
    end
    if (|b)
    begin
        k = 4;
    end
    c = 0;
    par1 = a; par2 = b;
    // Call retConcat() begin
    par2++;
    TMP_2 = {par1, par2};
    // Call retConcat() end
    c[4 : 1] = TMP_2;
    if (|c)
    begin
        k = 6;
    end
    t1 = k;
end

//------------------------------------------------------------------------------
// Method process: concat_func_param (test_concat.cpp:182:5) 

always_comb 
begin : concat_func_param     // test_concat.cpp:182:5
    integer k;
    logic a;
    logic [2:0] b;
    integer i;
    a = 0;
    b = 0;
    i = 0;
    // Call refParam() begin
    a = s3;
    // Call refParam() end
    // Call refParam() begin
    b = s3;
    // Call refParam() end
    // Call refParam() begin
    i = s3;
    // Call refParam() end
    if (a)
    begin
        k = 1;
    end
    if (|b)
    begin
        k = 2;
    end
    if (|i)
    begin
        k = 3;
    end
    t2 = k;
end

//------------------------------------------------------------------------------
// Method process: array_element_unknown (test_concat.cpp:205:5) 

always_comb 
begin : array_element_unknown     // test_concat.cpp:205:5
    integer arr[3];
    integer arr2[2][3];
    integer i;
    arr[0] = 1; arr[1] = 2; arr[2] = 3;
    arr2[0][0] = 1; arr2[0][1] = 2; arr2[0][2] = 3; arr2[1][0] = 4; arr2[1][1] = 5; arr2[1][2] = 6;
    i = s3;
    arr[i] = 4;
    arr2[i][1] = 4;
end

//------------------------------------------------------------------------------
// Method process: concat_cpp_bug (test_concat.cpp:251:5) 

always_comb 
begin : concat_cpp_bug     // test_concat.cpp:251:5
    logic y;
    logic [15:0] z;
    y = 1;
    z = 0;
    z = {y, 1'd1};
    `ifndef INTEL_SVA_OFF
        assert (z == 3) else $error("Assertion failed at test_concat.cpp:259:9");
    `endif // INTEL_SVA_OFF
    z = {y, 3'd1};
    z = {y, 3'd22};
    z = {y, 2'd1};
    z = {y, 5'(3'd22)};
end

//------------------------------------------------------------------------------
// Method process: concat_cpp (test_concat.cpp:271:5) 

always_comb 
begin : concat_cpp     // test_concat.cpp:271:5
    logic b;
    integer i;
    logic y;
    logic [32:0] by;
    logic [15:0] z;
    logic [39:0] bz;
    b = s1;
    i = s3;
    y = s2;
    by = s5;
    z = 0;
    bz = 0;
    z = {b, y};
    z = {b, 1'd0};
    z = {y, 1'd1, b};
    z = {y, 1'd1, b};
    z = {y, |i};
    z = {|i, y};
    z = {|s3, y};
    z = {y, |s3};
    z = {y, |s4};
    z = {|s5, y, |s4};
    bz = {by, 1'd1};
    bz = {by, |s5};
    bz = {by, y};
    bz = {by, |i};
    bz = {b, by};
    bz = {|s4, by};
    bz = {1'd1, by, |i};
    t3 = z;
    t3 = 32'(bz);
end

//------------------------------------------------------------------------------
// Method process: concat_compl (test_concat.cpp:317:5) 

always_comb 
begin : concat_compl     // test_concat.cpp:317:5
    logic c;
    integer i;
    logic y;
    logic [11:0] yy;
    logic [32:0] by;
    logic [15:0] z;
    logic [39:0] bz;
    c = s1;
    i = s3;
    y = s2;
    yy = s2;
    by = s5;
    z = 0;
    bz = 0;
    z = {c, y, s1, yy};
    z = {|i, yy, yy};
    bz = {yy++, by};
    bz = {by, 5'd11};
    t3 = z;
    t3 = 32'(bz);
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel (test_concat.cpp:336:5) 

// Process-local variables
logic [7:0] y1;
logic [7:0] y2;
logic [7:0] x1;
logic [7:0] x2;

always_comb 
begin : bit_range_sel     // test_concat.cpp:336:5
    y1 = i1;
    y2 = i2;
    {x1, x2} = {y1, y2};
    o1 = x1;
    o2 = x2;
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel2 (test_concat.cpp:351:5) 

always_comb 
begin : bit_range_sel2     // test_concat.cpp:351:5
    logic signed [3:0] t;
    logic signed [3:0] x;
    logic [7:0] a;
    t = 0;
    x = 0;
    a = {t, x};
    o3 = {t, 4'(t * x)};
    o4 = {4'(t), 4'(t * x)};
    t5 = a;
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel3 (test_concat.cpp:362:5) 

always_comb 
begin : bit_range_sel3     // test_concat.cpp:362:5
    logic signed [3:0] tb;
    logic signed [3:0] xb;
    logic signed [3:0] t;
    logic signed [3:0] x;
    tb = 0;
    xb = 0;
    t = 0;
    x = 0;
    t = 1;
    x = 2;
    tb = 1;
    xb = 2;
    o6 = {t, 4'(tb * xb)};
    o7 = {3'(x >>> 1), t};
    o8 = {t, 5'(xb >>> 1)};
end

endmodule


