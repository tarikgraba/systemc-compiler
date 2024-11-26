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
);


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_array_method2.cpp:113:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic signed [31:0] t0;
logic signed [31:0] t1;

//------------------------------------------------------------------------------
// Method process: rec_mod_arr1 (test_array_method2.cpp:45:5) 

// Process-local variables
logic marr1_a[2];
logic marr2_a[2][3];
logic signed [31:0] marr1_b[2];
logic signed [31:0] marr2_b[2][3];

always_comb 
begin : rec_mod_arr1     // test_array_method2.cpp:45:5
    integer c;
    marr1_a[1] = 0;
    marr2_a[1][2] = !marr1_a[1];
    c = marr2_b[1][0] + marr1_b[0];
    t0 = c;
end

//------------------------------------------------------------------------------
// Method process: rec_mod_inner0 (test_array_method2.cpp:79:5) 

// Process-local variables
logic oo_r_a;

always_comb 
begin : rec_mod_inner0     // test_array_method2.cpp:79:5
    logic b;
    oo_r_a = 1;
    b = !oo_r_a;
    t1 = b;
end

//------------------------------------------------------------------------------
// Method process: rec_mod_inner1 (test_array_method2.cpp:88:5) 

// Process-local variables
logic oarr_b[2];
logic oarr_r_a[2];

always_comb 
begin : rec_mod_inner1     // test_array_method2.cpp:88:5
    oarr_b[0] = 0;
    oarr_r_a[1] = !oarr_b[0];
end

//------------------------------------------------------------------------------
// Method process: rec_mod_inner2 (test_array_method2.cpp:102:5) 

// Process-local variables
logic orec_b;
logic orec_r_a[3];

always_comb 
begin : rec_mod_inner2     // test_array_method2.cpp:102:5
    orec_b = 0;
    orec_r_a[1] = !orec_b;
end

endmodule


