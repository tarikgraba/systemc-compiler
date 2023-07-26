//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic [31:0] t;
logic signed [31:0] b_t0[2];
logic signed [31:0] b_t1[2];
logic [31:0] bb_a_s[2];
logic signed [31:0] bb_t0[2];
logic signed [31:0] bb_t1[2];

// Local parameters generated for C++ constants
localparam logic [31:0] b_N[2] = '{ 3, 3 };
localparam logic [31:0] bb_N[2] = '{ 2, 2 };

//------------------------------------------------------------------------------
// Method process: topMeth (test_mif_array_ptr2.cpp:84:5) 

always_comb 
begin : topMeth     // test_mif_array_ptr2.cpp:84:5
    integer unsigned i;
    integer k;
    integer k_1;
    i = t;
    for (integer i_1 = 0; i_1 < 2; ++i_1)
    begin
        // Call g() begin
        k = 1;
        b_t0[i_1] = k;
        // Call g() end
    end
    // Call g() begin
    k = 1;
    b_t0[0] = k;
    // Call g() end
    // Call g() begin
    k = 1;
    b_t0[1] = k;
    // Call g() end
    // Call g() begin
    k = 1;
    b_t0[i] = k;
    // Call g() end
    for (integer i_2 = 0; i_2 < 2; ++i_2)
    begin
        // Call g() begin
        // Call f() begin
        bb_a_s[i_2] = 1;
        // Call f() end
        bb_t0[i_2] = k_1;
        // Call g() end
    end
    // Call g() begin
    // Call f() begin
    bb_a_s[0] = 1;
    // Call f() end
    bb_t0[0] = k_1;
    // Call g() end
    // Call g() begin
    // Call f() begin
    bb_a_s[1] = 1;
    // Call f() end
    bb_t0[1] = k_1;
    // Call g() end
    // Call g() begin
    if (1)
    begin
        // Call f() begin
        bb_a_s[i] = 1;
        // Call f() end
    end else begin
        k_1 = 1;
    end
    bb_t0[i] = k_1;
    // Call g() end
end

//------------------------------------------------------------------------------
// Method process: topMeth1 (test_mif_array_ptr2.cpp:98:5) 

always_comb 
begin : topMeth1     // test_mif_array_ptr2.cpp:98:5
    integer unsigned i;
    integer m[3];
    i = t;
    m[0] = 1; m[1] = 2; m[2] = 3;
    if (|m[i])
    begin
        i = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: topMeth2 (test_mif_array_ptr2.cpp:106:5) 

always_comb 
begin : topMeth2     // test_mif_array_ptr2.cpp:106:5
    integer unsigned i;
    integer k;
    integer k_1;
    i = t;
    // Call f() begin
    k = 0;
    for (integer i_1 = 0; i_1 < b_N[i]; ++i_1)
    begin
        k = k + i_1;
    end
    b_t1[i] = k;
    // Call f() end
    // Call f() begin
    k_1 = 0;
    for (integer i_2 = 0; i_2 < bb_N[i]; ++i_2)
    begin
        k_1 = k_1 + i_2;
    end
    bb_t1[i] = k_1;
    // Call f() end
end

endmodule


