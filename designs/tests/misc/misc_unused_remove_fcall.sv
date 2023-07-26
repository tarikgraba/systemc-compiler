//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.13
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
logic nrst;
logic [3:0] s;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;

// Local parameters generated for C++ constants
localparam logic signed [31:0] c1 = 42;

//------------------------------------------------------------------------------
// Method process: remove_fcall (test_unused_remove_fcall.cpp:64:5) 

always_comb 
begin : remove_fcall     // test_unused_remove_fcall.cpp:64:5
    integer i1;
    integer i2;
    integer i2a;
    integer i3;
    integer i3a;
    integer i3b;
    integer res3b;
    integer unsigned i4;
    integer unsigned TMP_4;
    integer unsigned par1;
    i1 = 1;
    // Call f1() begin
    i1 = i1 + 1;
    // Call f1() end
    i2 = 1;
    i2a = 1;
    t0 = 2;
    i3 = 1;
    i3a = 1;
    t0 = 2;
    i3b = 1;
    res3b = 2;    // Call of f3()
    t0 = res3b;
    i4 = s;
    par1 = i4;
    // Call f4() begin
    par1 = par1 + 1;
    TMP_4 = par1;
    // Call f4() end
end

//------------------------------------------------------------------------------
// Method process: remove_mcall (test_unused_remove_fcall.cpp:144:5) 

always_comb 
begin : remove_mcall     // test_unused_remove_fcall.cpp:144:5
    logic b1;
    integer unsigned u1;
    logic [3:0] x1;
    logic b1a;
    integer unsigned u1a;
    logic [3:0] x1a;
    logic b2;
    integer unsigned u2;
    integer unsigned TMP_0;
    integer unsigned res;
    logic b2a;
    integer unsigned u2a;
    integer unsigned TMP_1;
    logic b3;
    integer unsigned u3;
    logic [3:0] x3;
    logic b3a;
    integer unsigned u3a;
    logic [3:0] x3a;
    b1 = 1;
    u1 = 42;
    x1 = s;
    // Call m1() begin
    u1 = u1 + 1;
    x1 = x1 + u1;
    // Call m1() end
    b1a = |s;
    u1a = 42;
    x1a = s;
    // Call m1() begin
    if (b1a)
    begin
        u1a = u1a + 1;
    end
    x1a = x1a + u1a;
    // Call m1() end
    t1 = x1a;
    b2 = |s;
    u2 = s;
    // Call m2() begin
    res = b2 ? u2 : 42;
    TMP_0 = res;
    // Call m2() end
    b2a = |s;
    u2a = s;
    // Call m2() begin
    res = b2a ? u2a : 42;
    TMP_1 = res;
    // Call m2() end
    t1 = TMP_1;
    b3 = 1;
    u3 = 42;
    x3 = s;
    b3a = 1;
    u3a = 42;
    x3a = s;
    t1 = 42;
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_fcall_thread (test_unused_remove_fcall.cpp:91:5) 

// Thread-local variables
logic signed [31:0] t0_next;

// Next-state combinational logic
always_comb begin : remove_fcall_thread_comb     // test_unused_remove_fcall.cpp:91:5
    remove_fcall_thread_func;
end
function void remove_fcall_thread_func;
    integer i2a;
    integer i3;
    integer i3a;
    integer i3b;
    integer res3b;
    integer unsigned i4;
    integer unsigned TMP_4;
    integer unsigned par1;
    t0_next = t0;
    i2a = 1;
    t0_next = 2;
    i3 = 1;
    i3a = 1;
    t0_next = 2;
    i3b = 1;
    res3b = 2;    // Call of f3()
    t0_next = res3b;
    i4 = s;
    par1 = i4;
    // Call f4() begin
    par1 = par1 + 1;
    TMP_4 = par1;
    // Call f4() end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_fcall_thread_ff
    if ( ~nrst ) begin
        integer i1;
        integer i2;
        i1 = 1;
        // Call f1() begin
        i1 = i1 + 1;
        // Call f1() end
        i2 = 1;
    end
    else begin
        t0 <= t0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_mcall_thread (test_unused_remove_fcall.cpp:178:5) 

// Thread-local variables
logic signed [31:0] t1_next;

// Next-state combinational logic
always_comb begin : remove_mcall_thread_comb     // test_unused_remove_fcall.cpp:178:5
    remove_mcall_thread_func;
end
function void remove_mcall_thread_func;
    logic b2;
    integer unsigned u2;
    integer unsigned TMP_0;
    integer unsigned res;
    logic b2a;
    integer unsigned u2a;
    integer unsigned TMP_1;
    logic b3;
    integer unsigned u3;
    logic [3:0] x3;
    logic b3a;
    integer unsigned u3a;
    logic [3:0] x3a;
    t1_next = t1;
    b2 = |s;
    u2 = s;
    // Call m2() begin
    res = b2 ? u2 : 42;
    TMP_0 = res;
    // Call m2() end
    b2a = |s;
    u2a = s;
    // Call m2() begin
    res = b2a ? u2a : 42;
    TMP_1 = res;
    // Call m2() end
    t1_next = TMP_1;
    b3 = 1;
    u3 = 42;
    x3 = s;
    b3a = 1;
    u3a = 42;
    x3a = s;
    t1_next = 42;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_mcall_thread_ff
    if ( ~nrst ) begin
        logic b1;
        integer unsigned u1;
        logic [3:0] x1;
        logic b1a;
        integer unsigned u1a;
        logic [3:0] x1a;
        b1 = 1;
        u1 = 42;
        x1 = s;
        // Call m1() begin
        u1 = u1 + 1;
        x1 = x1 + u1;
        // Call m1() end
        b1a = |s;
        u1a = 42;
        x1a = s;
        // Call m1() begin
        if (b1a)
        begin
            u1a = u1a + 1;
        end
        x1a = x1a + u1a;
        // Call m1() end
        t1 <= x1a;
    end
    else begin
        t1 <= t1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_assert (test_unused_remove_fcall.cpp:218:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] k;
logic signed [31:0] k_next;
logic remove_assert_PROC_STATE;
logic remove_assert_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : remove_assert_comb     // test_unused_remove_fcall.cpp:218:5
    remove_assert_func;
end
function void remove_assert_func;
    integer l;
    i_next = i;
    j_next = j;
    k_next = k;
    remove_assert_PROC_STATE_next = remove_assert_PROC_STATE;
    
    case (remove_assert_PROC_STATE)
        0: begin
            l = s;
            `ifndef INTEL_SVA_OFF
                assert (l == s) else $error("Assertion failed at test_unused_remove_fcall.cpp:231:13");
            `endif // INTEL_SVA_OFF
            remove_assert_PROC_STATE_next = 1; return;    // test_unused_remove_fcall.cpp:233:13;
        end
        1: begin
            l = s;
            `ifndef INTEL_SVA_OFF
                assert (l == s) else $error("Assertion failed at test_unused_remove_fcall.cpp:231:13");
            `endif // INTEL_SVA_OFF
            remove_assert_PROC_STATE_next = 1; return;    // test_unused_remove_fcall.cpp:233:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_assert_ff
    if ( ~nrst ) begin
        i <= 1;
        j <= s;
        k <= s + 1;
        remove_assert_PROC_STATE <= 0;    // test_unused_remove_fcall.cpp:225:9;

    `ifndef INTEL_SVA_OFF
        sctAssertLine224r : assert property ( |i_next && !(|j_next) |=> |s );
    `endif // INTEL_SVA_OFF
    end
    else begin
        i <= i_next;
        j <= j_next;
        k <= k_next;
        remove_assert_PROC_STATE <= remove_assert_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine224 : assert property ( |i_next && !(|j_next) |=> |s );
        sctAssertLine227 : assert property ( k_next == 42 |-> ##[1:2] |t1 );
    `endif // INTEL_SVA_OFF
    end
end

`ifndef INTEL_SVA_OFF
sctAssertLine240 : assert property (
    @(posedge clk) t1 == c1 |-> |t2 );
`endif // INTEL_SVA_OFF

endmodule


