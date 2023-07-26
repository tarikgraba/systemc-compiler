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
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] sarr[3][3];
logic signed [31:0] sparr[3][4];
logic signed [31:0] vec2[3][4];
logic signed [31:0] t0a;
logic signed [31:0] t0b;
logic signed [31:0] t0c;
logic a1;
logic signed [31:0] a2;
logic signed [31:0] a3;
logic [32:0] a4;

// Local parameters generated for C++ constants
localparam logic signed [31:0] m = 42;

//------------------------------------------------------------------------------
// Method process: local_pointer_bug (test_unused_remove_member.cpp:98:5) 

always_comb 
begin : local_pointer_bug     // test_unused_remove_member.cpp:98:5
    integer k;
    k = m;
    t0a = k;
end

//------------------------------------------------------------------------------
// Method process: local_pointer_bug2 (test_unused_remove_member.cpp:108:5) 

// Process-local variables
logic signed [31:0] tt;

always_comb 
begin : local_pointer_bug2     // test_unused_remove_member.cpp:108:5
    tt = 42;
    t0b = tt;
end

//------------------------------------------------------------------------------
// Method process: remove_member1 (test_unused_remove_member.cpp:117:5) 

// Process-local variables
logic signed [31:0] m1;

always_comb 
begin : remove_member1     // test_unused_remove_member.cpp:117:5
    m1 = 1;
    t1 = m1;
end

//------------------------------------------------------------------------------
// Method process: remove_member1a (test_unused_remove_member.cpp:137:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove_member2 (test_unused_remove_member.cpp:155:5) 

// Process-local variables
logic signed [31:0] q;

always_comb 
begin : remove_member2     // test_unused_remove_member.cpp:155:5
end

//------------------------------------------------------------------------------
// Method process: remove_member2a (test_unused_remove_member.cpp:180:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove_member3 (test_unused_remove_member.cpp:198:5) 

// Process-local variables
logic signed [31:0] arr[3][3];

always_comb 
begin : remove_member3     // test_unused_remove_member.cpp:198:5
    t2 = arr[s][s];
end

//------------------------------------------------------------------------------
// Method process: remove_member3a (test_unused_remove_member.cpp:213:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove_member4 (test_unused_remove_member.cpp:228:5) 

always_comb 
begin : remove_member4     // test_unused_remove_member.cpp:228:5
    integer ll;
    integer k;
    ll = sarr[s][s + 1];
    ll = ll + sparr[s][s + 1];
    k = vec2[s][s + 1];
    t3 = k + ll;
end

//------------------------------------------------------------------------------
// Method process: remove_member4a (test_unused_remove_member.cpp:249:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member1_thread (test_unused_remove_member.cpp:124:5) 

// Thread-local variables
logic signed [31:0] t1_next;
logic signed [31:0] m1t;

// Next-state combinational logic
always_comb begin : remove_member1_thread_comb     // test_unused_remove_member.cpp:124:5
    remove_member1_thread_func;
end
function void remove_member1_thread_func;
    t1_next = t1;
    m1t = 1;
    t1_next = m1t;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_member1_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        t1 <= t1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member1a_thread (test_unused_remove_member.cpp:143:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member2_thread (test_unused_remove_member.cpp:161:5) 

// Thread-local variables
logic signed [31:0] mm;
logic signed [31:0] mm_next;
logic signed [31:0] t0c_next;
logic signed [31:0] mmt;
logic signed [31:0] qt;
logic remove_member2_thread_PROC_STATE;
logic remove_member2_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : remove_member2_thread_comb     // test_unused_remove_member.cpp:161:5
    remove_member2_thread_func;
end
function void remove_member2_thread_func;
    mm_next = mm;
    t0c_next = t0c;
    remove_member2_thread_PROC_STATE_next = remove_member2_thread_PROC_STATE;
    
    case (remove_member2_thread_PROC_STATE)
        0: begin
            mm++;
            t0c_next = mm;
            mmt = 1;
            t0c_next = mmt++;
            remove_member2_thread_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:172:13;
        end
        1: begin
            mm++;
            t0c_next = mm;
            mmt = 1;
            t0c_next = mmt++;
            remove_member2_thread_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:172:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_member2_thread_ff
    if ( ~nrst ) begin
        mm <= 1;
        remove_member2_thread_PROC_STATE <= 0;    // test_unused_remove_member.cpp:164:9;
    end
    else begin
        mm <= mm_next;
        t0c <= t0c_next;
        remove_member2_thread_PROC_STATE <= remove_member2_thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member2a_thread (test_unused_remove_member.cpp:186:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member3_thread (test_unused_remove_member.cpp:202:5) 

// Thread-local variables
logic signed [31:0] arrt[3][3];
logic signed [31:0] arrt_next[3][3];
logic signed [31:0] t2_next;

// Next-state combinational logic
always_comb begin : remove_member3_thread_comb     // test_unused_remove_member.cpp:202:5
    remove_member3_thread_func;
end
function void remove_member3_thread_func;
    arrt_next = arrt;
    t2_next = t2;
    t2_next = arrt_next[s][s];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_member3_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        arrt <= arrt_next;
        t2 <= t2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member3a_thread (test_unused_remove_member.cpp:217:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member4_thread (test_unused_remove_member.cpp:235:5) 

// Thread-local variables
logic signed [31:0] t3_next;

// Next-state combinational logic
always_comb begin : remove_member4_thread_comb     // test_unused_remove_member.cpp:235:5
    remove_member4_thread_func;
end
function void remove_member4_thread_func;
    integer ll;
    integer k;
    t3_next = t3;
    ll = sarr[s][s + 1];
    ll = ll + sparr[s][s + 1];
    k = vec2[s][s + 1];
    t3_next = k + ll;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_member4_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        t3 <= t3_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_member4a_thread (test_unused_remove_member.cpp:253:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove5 (test_unused_remove_member.cpp:270:5) 

// Thread-local variables
logic signed [31:0] l;
logic signed [31:0] l_next;
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic remove5_PROC_STATE;
logic remove5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : remove5_comb     // test_unused_remove_member.cpp:270:5
    remove5_func;
end
function void remove5_func;
    k_next = k0;
    l_next = l;
    remove5_PROC_STATE_next = remove5_PROC_STATE;
    
    case (remove5_PROC_STATE)
        0: begin
            l_next = a4;
            remove5_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:285:13;
        end
        1: begin
            `ifndef INTEL_SVA_OFF
                assert (l_next == s) else $error("Assertion failed at test_unused_remove_member.cpp:287:13");
            `endif // INTEL_SVA_OFF
            l_next = a4;
            remove5_PROC_STATE_next = 1; return;    // test_unused_remove_member.cpp:285:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove5_ff
    if ( ~nrst ) begin
        integer j;
        j = a3;
        k0 <= j + 1;
        remove5_PROC_STATE <= 0;    // test_unused_remove_member.cpp:277:9;

    `ifndef INTEL_SVA_OFF
        sctAssertLine276r : assert property ( a1 |=> |a2 );
    `endif // INTEL_SVA_OFF
    end
    else begin
        l <= l_next;
        k0 <= k_next;
        remove5_PROC_STATE <= remove5_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine276 : assert property ( a1 |=> |a2 );
        sctAssertLine279 : assert property ( k_next == 42 |-> ##[1:2] a2 == 42 );
    `endif // INTEL_SVA_OFF
    end
end

endmodule


