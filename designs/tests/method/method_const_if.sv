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
// Module: A (test_const_if.cpp:370:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic s;
logic [3:0] ms;
logic [3:0] ns;

// Local parameters generated for C++ constants
localparam logic [2:0] CONST_B = 5;
localparam logic CONST_A = 1;
localparam logic [31:0] CONST_C = 5;
localparam logic [31:0] CONST_Z = 0;

//------------------------------------------------------------------------------
// Method process: if_const (test_const_if.cpp:43:5) 

always_comb 
begin : if_const     // test_const_if.cpp:43:5
    integer k;
    k = 0;
    if (1)
    begin
        k = 1;
    end
    if (1)
    begin
        k = 1;
    end
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 3;
    end
    if (1 && s)
    begin
        k = 3;
    end
end

//------------------------------------------------------------------------------
// Method process: fcall_const (test_const_if.cpp:85:5) 

always_comb 
begin : fcall_const     // test_const_if.cpp:85:5
    integer k;
    k = 0;
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (1)
    begin
        k = 1;
    end
    k = 0;
    if (0)
    begin
    end else begin
        k = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: logic_or_const (test_const_if.cpp:111:5) 

always_comb 
begin : logic_or_const     // test_const_if.cpp:111:5
    integer k;
    integer i;
    logic b1;
    logic b2;
    logic b3;
    logic b4;
    logic b5;
    logic b6;
    logic b7;
    logic b8;
    k = 0;
    b1 = 1;
    b2 = 1;
    b3 = 0 || b2;
    b4 = |CONST_Z || 1;
    b5 = |CONST_Z || 0;
    b6 = b5 || !(|2);
    b7 = !b2 || 0 || |CONST_Z;
    b8 = b7 || |CONST_Z || b2;
end

//------------------------------------------------------------------------------
// Method process: if_logic_or (test_const_if.cpp:135:6) 

always_comb 
begin : if_logic_or     // test_const_if.cpp:135:6
    integer k;
    k = 0;
    if (1)
    begin
        k = 1;
    end
    if (1)
    begin
        k = 1;
    end
    if (1)
    begin
        k = 1;
    end
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (1)
    begin
        k = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: logic_and_const (test_const_if.cpp:182:5) 

always_comb 
begin : logic_and_const     // test_const_if.cpp:182:5
    integer k;
    integer i;
    logic b1;
    logic b2;
    logic b3;
    logic b4;
    logic b5;
    logic b6;
    logic b7;
    logic b8;
    k = 0;
    b1 = CONST_A && 1;
    b2 = CONST_A && b1;
    b3 = 0;
    b4 = 0;
    b5 = !(|CONST_Z) && 0;
    b6 = 0;
    b7 = 0;
    b8 = b2 && CONST_A && !b7;
end

//------------------------------------------------------------------------------
// Method process: if_logic_and (test_const_if.cpp:206:5) 

always_comb 
begin : if_logic_and     // test_const_if.cpp:206:5
    integer k;
    k = 0;
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (1)
    begin
        k = 1;
    end
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (1)
    begin
        k = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: complex_logic (test_const_if.cpp:253:5) 

always_comb 
begin : complex_logic     // test_const_if.cpp:253:5
    logic b1;
    logic b2;
    logic b3;
    logic b4;
    logic b5;
    b1 = |CONST_Z || 0;
    b2 = 1;
    b3 = 0;
    b4 = 0 || |CONST_Z || 0;
    b5 = !(|CONST_Z) && (0 || CONST_A) && |2;
end

//------------------------------------------------------------------------------
// Method process: complex_cond_call (test_const_if.cpp:268:6) 

always_comb 
begin : complex_cond_call     // test_const_if.cpp:268:6
    integer k;
    k = 1;
    if (1)
    begin
        k = 1;
    end
    if (0)
    begin
    end else begin
        k = 4;
    end
    if (1)
    begin
        k = 5;
    end
    if (1)
    begin
        k = 7;
    end
end

//------------------------------------------------------------------------------
// Method process: if_complex_cond (test_const_if.cpp:304:5) 

// Process-local variables
logic [3:0] m;

always_comb 
begin : if_complex_cond     // test_const_if.cpp:304:5
    integer k;
    k = 1;
    m = ms;
    if (0 || m == 0)
    begin
        k = 1;
    end else begin
        k = 2;
    end
    if (m != 1 && (|CONST_Z || m > k))
    begin
        k = 1;
    end else begin
        k = 2;
    end
    k = 1;
    if (1)
    begin
        k = 1;
    end
    k = 1;
    if (0)
    begin
    end else begin
        k = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: very_complex_cond (test_const_if.cpp:340:5) 

// Process-local variables
logic [3:0] n;

always_comb 
begin : very_complex_cond     // test_const_if.cpp:340:5
    integer k;
    k = 1;
    n = ns;
    if (0)
    begin
    end else begin
        k = 2;
    end
    if (1)
    begin
        k = 1;
    end
    if (s && !(|n) || (k == n && CONST_A || !1))
    begin
        k = 1;
    end else begin
        k = 2;
    end
end

endmodule


