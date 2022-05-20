//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.23
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_module"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [3:0] b_bvar = 4;
localparam logic [2:0] b_num1 = 6;
localparam logic [2:0] c_num1 = 1;

//------------------------------------------------------------------------------
// Method process: b_b_proc (test_sc_port3.cpp:37:5) 

always_comb 
begin : b_b_proc     // test_sc_port3.cpp:37:5
end

//------------------------------------------------------------------------------
// Method process: c_c_proc (test_sc_port3.cpp:67:5) 

// Process-local variables
logic [3:0] c_cvar;

always_comb 
begin : c_c_proc     // test_sc_port3.cpp:67:5
    logic [31:0] TMP_0;
    logic [3:0] b_fvar;
    logic [31:0] TMP_1;
    b_fvar = 8;
    // Call f() begin
    // Call access_var() begin
    c_cvar = 0;
    TMP_1 = c_cvar;
    // Call access_var() end
    TMP_0 = TMP_1 + b_num1 - b_fvar;
    // Call f() end
    c_cvar = 1;
    // Call g() begin
    c_cvar++;
    // Call g() end
end

endmodule


