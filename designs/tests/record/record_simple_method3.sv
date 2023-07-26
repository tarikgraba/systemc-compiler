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


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_simple_method3.cpp:171:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic [1:0] sig;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;

//------------------------------------------------------------------------------
// Method process: record_meth0 (test_simple_method3.cpp:62:5) 

// Process-local variables
logic s_a[2];

always_comb 
begin : record_meth0     // test_simple_method3.cpp:62:5
    logic par;
    logic [1:0] i;
    par = 0;
    // Call setA() begin
    s_a[0] = par;
    // Call setA() end
    par = 1;
    // Call setA() begin
    s_a[0] = par;
    // Call setA() end
    i = sig;
    par = 0;
    // Call setA() begin
    s_a[i] = par;
    // Call setA() end
end

//------------------------------------------------------------------------------
// Method process: record_meth1 (test_simple_method3.cpp:79:5) 

// Process-local variables
logic ss_a[2];

always_comb 
begin : record_meth1     // test_simple_method3.cpp:79:5
    logic par;
    logic b;
    logic [1:0] i;
    logic TMP_2;
    par = 1;
    // Call setA() begin
    ss_a[1] = par;
    // Call setA() end
    b = 1;    // Call of getA()
    i = sig;
    par = 1;
    // Call setA() begin
    ss_a[i] = par;
    // Call setA() end
    // Call getA() begin
    TMP_2 = ss_a[i];
    // Call getA() end
    b = TMP_2;
    t0 = b;
end

//------------------------------------------------------------------------------
// Method process: record_meth2 (test_simple_method3.cpp:98:5) 

// Process-local variables
logic rs_a[2];

always_comb 
begin : record_meth2     // test_simple_method3.cpp:98:5
    logic b;
    logic par;
    b = 0;
    for (integer i = 0; i < 2; i++)
    begin
        par = |i;
        // Call setA() begin
        rs_a[i] = par;
        // Call setA() end
        b = 0;
    end
end

//------------------------------------------------------------------------------
// Method process: record_meth2a (test_simple_method3.cpp:114:5) 

// Process-local variables
logic ts_a[2];

always_comb 
begin : record_meth2a     // test_simple_method3.cpp:114:5
    logic b;
    logic par;
    logic TMP_0;
    b = 0;
    for (integer i = 0; i < 2; i++)
    begin
        par = |i;
        // Call setA() begin
        ts_a[i] = par;
        // Call setA() end
        // Call getA() begin
        TMP_0 = ts_a[i];
        // Call getA() end
        b = b || TMP_0;
    end
end

//------------------------------------------------------------------------------
// Method process: record_meth3 (test_simple_method3.cpp:126:5) 

// Process-local variables
logic xs_a[2];

always_comb 
begin : record_meth3     // test_simple_method3.cpp:126:5
    logic b;
    logic [1:0] i;
    logic TMP_2;
    logic par;
    logic l;
    b = 1;    // Call of localVar()
    i = sig;
    par = 1;
    // Call localVar() begin
    l = par || xs_a[i];
    TMP_2 = l;
    // Call localVar() end
    b = TMP_2;
    t1 = b;
end

//------------------------------------------------------------------------------
// Method process: record_multi_calls (test_simple_method3.cpp:149:5) 

// Process-local variables
logic ys_a[2];

always_comb 
begin : record_multi_calls     // test_simple_method3.cpp:149:5
    logic [1:0] i;
    logic TMP_0;
    logic par;
    logic l;
    integer j;
    logic par_1;
    i = sig;
    par = 1;
    // Call localVar() begin
    l = par || ys_a[i];
    TMP_0 = l;
    // Call localVar() end
    j = 5;    // Call of f()
    par_1 = |i;
    // Call setA() begin
    ys_a[i] = par_1;
    // Call setA() end
    par_1 = |6;
    // Call setA() begin
    ys_a[i + 1] = par_1;
    // Call setA() end
    t2 = j;
end

endmodule


