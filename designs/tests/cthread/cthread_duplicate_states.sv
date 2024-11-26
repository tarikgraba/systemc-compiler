//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: dut ()
//
module dut // "dut0"
(
);

// Variables generated for SystemC signals
logic clk;
logic rstn;
logic b;
logic [31:0] aa;
logic [31:0] a;
logic ready1;
logic valid1;
logic ready2;
logic valid2;
logic [31:0] c;
logic [31:0] d;
logic [31:0] e;
logic [31:0] r;
logic [31:0] p;
logic [31:0] n;
logic [31:0] m;
logic [31:0] mm;
logic [31:0] pp;
logic [31:0] kk;
logic [2:0] q;
logic [31:0] t;

//------------------------------------------------------------------------------
// Clocked THREAD: assert_thread (test_cthread_duplicate_states.cpp:71:5) 

// Thread-local variables
logic b_next;

// Next-state combinational logic
always_comb begin : assert_thread_comb     // test_cthread_duplicate_states.cpp:71:5
    assert_thread_func;
end
function void assert_thread_func;
    b_next = b;
    b_next = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : assert_thread_ff
    if ( ~rstn ) begin
        b <= 0;

    `ifndef INTEL_SVA_OFF
        sctAssertLine73r : assert property ( b == 0 && rstn |=> b == 1 );
    `endif // INTEL_SVA_OFF
    end
    else begin
        b <= b_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine73 : assert property ( b == 0 && rstn |=> b == 1 );
        sctAssertLine76 : assert property ( b == 0 |=> b == 1 );
    `endif // INTEL_SVA_OFF
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_single (test_cthread_duplicate_states.cpp:85:5) 

// Thread-local variables
logic [31:0] aa_next;

// Next-state combinational logic
always_comb begin : thread_single_comb     // test_cthread_duplicate_states.cpp:85:5
    thread_single_func;
end
function void thread_single_func;
    aa_next = aa;
    aa_next = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_single_ff
    if ( ~rstn ) begin
        aa <= 0;
    end
    else begin
        aa <= aa_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread (test_cthread_duplicate_states.cpp:95:5) 

// Thread-local variables
logic [31:0] a_next;
logic [1:0] thread_PROC_STATE;
logic [1:0] thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_comb     // test_cthread_duplicate_states.cpp:95:5
    thread_func;
end
function void thread_func;
    a_next = a;
    thread_PROC_STATE_next = thread_PROC_STATE;
    
    case (thread_PROC_STATE)
        0: begin
            a_next = 1;
            thread_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:101:13;
        end
        1: begin
            a_next = 2;
            thread_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:103:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_ff
    if ( ~rstn ) begin
        a <= 0;
        thread_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:97:9;
    end
    else begin
        a <= a_next;
        thread_PROC_STATE <= thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_while (test_cthread_duplicate_states.cpp:109:5) 

// Thread-local variables
logic valid1_next;
logic [1:0] thread_while_PROC_STATE;
logic [1:0] thread_while_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_while_comb     // test_cthread_duplicate_states.cpp:109:5
    thread_while_func;
end
function void thread_while_func;
    valid1_next = valid1;
    thread_while_PROC_STATE_next = thread_while_PROC_STATE;
    
    case (thread_while_PROC_STATE)
        0: begin
            valid1_next = 1;
            thread_while_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:114:13;
        end
        1: begin
            if (!ready1)
            begin
                thread_while_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:116:17;
            end
            valid1_next = 0;
            thread_while_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:120:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_while_ff
    if ( ~rstn ) begin
        thread_while_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:110:9;
    end
    else begin
        valid1 <= valid1_next;
        thread_while_PROC_STATE <= thread_while_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_while2 (test_cthread_duplicate_states.cpp:126:5) 

// Thread-local variables
logic valid2_next;
logic [1:0] thread_while2_PROC_STATE;
logic [1:0] thread_while2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_while2_comb     // test_cthread_duplicate_states.cpp:126:5
    thread_while2_func;
end
function void thread_while2_func;
    valid2_next = valid2;
    thread_while2_PROC_STATE_next = thread_while2_PROC_STATE;
    
    case (thread_while2_PROC_STATE)
        0: begin
            valid2_next = 1;
            thread_while2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:133:17;
        end
        1: begin
            if (!ready2)
            begin
                thread_while2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:133:17;
            end
            thread_while2_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:137:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_while2_ff
    if ( ~rstn ) begin
        valid2 <= 0;
        thread_while2_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:128:9;
    end
    else begin
        valid2 <= valid2_next;
        thread_while2_PROC_STATE <= thread_while2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_if (test_cthread_duplicate_states.cpp:142:5) 

// Thread-local variables
logic [31:0] c_next;
logic [2:0] thread_if_PROC_STATE;
logic [2:0] thread_if_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_if_comb     // test_cthread_duplicate_states.cpp:142:5
    thread_if_func;
end
function void thread_if_func;
    c_next = c;
    thread_if_PROC_STATE_next = thread_if_PROC_STATE;
    
    case (thread_if_PROC_STATE)
        0: begin
            c_next = 1;
            thread_if_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:147:13;
        end
        1: begin
            if (b)
            begin
                c_next = 2;
                thread_if_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:151:17;
            end else begin
                c_next = 3;
                thread_if_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:154:17;
            end
        end
        2: begin
            c_next = 4;
            thread_if_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:157:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_if_ff
    if ( ~rstn ) begin
        c <= 0;
        thread_if_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:144:9;
    end
    else begin
        c <= c_next;
        thread_if_PROC_STATE <= thread_if_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_if2 (test_cthread_duplicate_states.cpp:162:5) 

// Thread-local variables
logic [31:0] d_next;
logic [2:0] thread_if2_PROC_STATE;
logic [2:0] thread_if2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_if2_comb     // test_cthread_duplicate_states.cpp:162:5
    thread_if2_func;
end
function void thread_if2_func;
    d_next = d;
    thread_if2_PROC_STATE_next = thread_if2_PROC_STATE;
    
    case (thread_if2_PROC_STATE)
        0: begin
            if (|c)
            begin
                thread_if2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:167:17;
            end else begin
                d_next = 1;
                thread_if2_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:172:17;
            end
        end
        1: begin
            d_next = 1;
            thread_if2_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:169:17;
        end
        2: begin
            d_next = 2;
            thread_if2_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:175:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_if2_ff
    if ( ~rstn ) begin
        d <= 0;
        thread_if2_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:164:9;
    end
    else begin
        d <= d_next;
        thread_if2_PROC_STATE <= thread_if2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_fcall (test_cthread_duplicate_states.cpp:185:5) 

// Thread-local variables
logic [31:0] e_next;
logic [1:0] thread_fcall_PROC_STATE;
logic [1:0] thread_fcall_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_fcall_comb     // test_cthread_duplicate_states.cpp:185:5
    thread_fcall_func;
end
function void thread_fcall_func;
    integer TMP_0;
    e_next = e;
    thread_fcall_PROC_STATE_next = thread_fcall_PROC_STATE;
    
    case (thread_fcall_PROC_STATE)
        0: begin
            // Call f() begin
            thread_fcall_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:180:9;
            // Call f() end
        end
        1: begin
            // Call f() begin
            TMP_0 = d;
            // Call f() end
            e_next = TMP_0;
            thread_fcall_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:190:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_fcall_ff
    if ( ~rstn ) begin
        e <= 0;
        thread_fcall_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:187:9;
    end
    else begin
        e <= e_next;
        thread_fcall_PROC_STATE <= thread_fcall_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_break (test_cthread_duplicate_states.cpp:195:5) 

// Thread-local variables
logic [31:0] r_next;
logic [1:0] thread_break_PROC_STATE;
logic [1:0] thread_break_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_break_comb     // test_cthread_duplicate_states.cpp:195:5
    thread_break_func;
end
function void thread_break_func;
    r_next = r;
    thread_break_PROC_STATE_next = thread_break_PROC_STATE;
    
    case (thread_break_PROC_STATE)
        0: begin
            r_next = 1;
            if (|d)
            begin
                // break begin
                r_next = 2;
                thread_break_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:205:13;
                // break end
            end
            thread_break_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:202:17;
        end
        1: begin
            if (|d)
            begin
                // break begin
                r_next = 2;
                thread_break_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:205:13;
                // break end
            end
            thread_break_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:202:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_break_ff
    if ( ~rstn ) begin
        r <= 0;
        thread_break_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:197:9;
    end
    else begin
        r <= r_next;
        thread_break_PROC_STATE <= thread_break_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_break_single (test_cthread_duplicate_states.cpp:211:5) 

// Thread-local variables
logic [31:0] p_next;
logic thread_break_single_PROC_STATE;
logic thread_break_single_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_break_single_comb     // test_cthread_duplicate_states.cpp:211:5
    thread_break_single_func;
end
function void thread_break_single_func;
    p_next = p;
    thread_break_single_PROC_STATE_next = thread_break_single_PROC_STATE;
    
    case (thread_break_single_PROC_STATE)
        0: begin
            p_next = 1;
            if (|d)
            begin
                // break begin
                thread_break_single_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:214:13;
                // break end
            end
            thread_break_single_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:218:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_break_single_ff
    if ( ~rstn ) begin
        p <= 0;
        thread_break_single_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:214:13;
    end
    else begin
        p <= p_next;
        thread_break_single_PROC_STATE <= thread_break_single_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_wait_n (test_cthread_duplicate_states.cpp:224:5) 

// Thread-local variables
logic [1:0] thread_wait_n_WAIT_N_COUNTER;
logic [1:0] thread_wait_n_WAIT_N_COUNTER_next;
logic [31:0] n_next;
logic [1:0] thread_wait_n_PROC_STATE;
logic [1:0] thread_wait_n_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_wait_n_comb     // test_cthread_duplicate_states.cpp:224:5
    thread_wait_n_func;
end
function void thread_wait_n_func;
    n_next = n;
    thread_wait_n_WAIT_N_COUNTER_next = thread_wait_n_WAIT_N_COUNTER;
    thread_wait_n_PROC_STATE_next = thread_wait_n_PROC_STATE;
    
    case (thread_wait_n_PROC_STATE)
        0: begin
            n_next = 1;
            thread_wait_n_WAIT_N_COUNTER_next = 3;
            thread_wait_n_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:230:13;
        end
        1: begin
            if (thread_wait_n_WAIT_N_COUNTER != 1) begin
                thread_wait_n_WAIT_N_COUNTER_next = thread_wait_n_WAIT_N_COUNTER - 1;
                thread_wait_n_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:230:13;
            end;
            n_next = 2;
            thread_wait_n_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:232:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_wait_n_ff
    if ( ~rstn ) begin
        n <= 0;
        thread_wait_n_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:226:9;
        thread_wait_n_WAIT_N_COUNTER <= 0;
    end
    else begin
        thread_wait_n_WAIT_N_COUNTER <= thread_wait_n_WAIT_N_COUNTER_next;
        n <= n_next;
        thread_wait_n_PROC_STATE <= thread_wait_n_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_wait_n2 (test_cthread_duplicate_states.cpp:237:5) 

// Thread-local variables
logic [1:0] thread_wait_n2_WAIT_N_COUNTER;
logic [1:0] thread_wait_n2_WAIT_N_COUNTER_next;
logic [31:0] m_next;
logic thread_wait_n2_PROC_STATE;
logic thread_wait_n2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_wait_n2_comb     // test_cthread_duplicate_states.cpp:237:5
    thread_wait_n2_func;
end
function void thread_wait_n2_func;
    m_next = m;
    thread_wait_n2_WAIT_N_COUNTER_next = thread_wait_n2_WAIT_N_COUNTER;
    thread_wait_n2_PROC_STATE_next = thread_wait_n2_PROC_STATE;
    
    case (thread_wait_n2_PROC_STATE)
        0: begin
            if (thread_wait_n2_WAIT_N_COUNTER != 1) begin
                thread_wait_n2_WAIT_N_COUNTER_next = thread_wait_n2_WAIT_N_COUNTER - 1;
                thread_wait_n2_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:241:13;
            end;
            m_next = 1;
            thread_wait_n2_WAIT_N_COUNTER_next = 3;
            thread_wait_n2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:243:13;
        end
        1: begin
            if (thread_wait_n2_WAIT_N_COUNTER != 1) begin
                thread_wait_n2_WAIT_N_COUNTER_next = thread_wait_n2_WAIT_N_COUNTER - 1;
                thread_wait_n2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:243:13;
            end;
            thread_wait_n2_WAIT_N_COUNTER_next = 3;
            thread_wait_n2_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:241:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_wait_n2_ff
    if ( ~rstn ) begin
        m <= 0;
        thread_wait_n2_WAIT_N_COUNTER <= 3;
        thread_wait_n2_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:241:13;
    end
    else begin
        thread_wait_n2_WAIT_N_COUNTER <= thread_wait_n2_WAIT_N_COUNTER_next;
        m <= m_next;
        thread_wait_n2_PROC_STATE <= thread_wait_n2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_wait_n3 (test_cthread_duplicate_states.cpp:248:5) 

// Thread-local variables
logic [1:0] thread_wait_n3_WAIT_N_COUNTER;
logic [1:0] thread_wait_n3_WAIT_N_COUNTER_next;
logic [31:0] mm_next;
logic thread_wait_n3_PROC_STATE;
logic thread_wait_n3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_wait_n3_comb     // test_cthread_duplicate_states.cpp:248:5
    thread_wait_n3_func;
end
function void thread_wait_n3_func;
    mm_next = mm;
    thread_wait_n3_WAIT_N_COUNTER_next = thread_wait_n3_WAIT_N_COUNTER;
    thread_wait_n3_PROC_STATE_next = thread_wait_n3_PROC_STATE;
    
    case (thread_wait_n3_PROC_STATE)
        0: begin
            mm_next = 1;
            thread_wait_n3_WAIT_N_COUNTER_next = 3;
            thread_wait_n3_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:254:13;
        end
        1: begin
            if (thread_wait_n3_WAIT_N_COUNTER != 1) begin
                thread_wait_n3_WAIT_N_COUNTER_next = thread_wait_n3_WAIT_N_COUNTER - 1;
                thread_wait_n3_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:254:13;
            end;
            mm_next = 1;
            thread_wait_n3_WAIT_N_COUNTER_next = 3;
            thread_wait_n3_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:254:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_wait_n3_ff
    if ( ~rstn ) begin
        mm <= 0;
        thread_wait_n3_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:250:9;
        thread_wait_n3_WAIT_N_COUNTER <= 0;
    end
    else begin
        thread_wait_n3_WAIT_N_COUNTER <= thread_wait_n3_WAIT_N_COUNTER_next;
        mm <= mm_next;
        thread_wait_n3_PROC_STATE <= thread_wait_n3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_wait_n4 (test_cthread_duplicate_states.cpp:259:5) 

// Thread-local variables
logic [1:0] thread_wait_n4_WAIT_N_COUNTER;
logic [1:0] thread_wait_n4_WAIT_N_COUNTER_next;
logic [31:0] pp_next;
logic thread_wait_n4_PROC_STATE;
logic thread_wait_n4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_wait_n4_comb     // test_cthread_duplicate_states.cpp:259:5
    thread_wait_n4_func;
end
function void thread_wait_n4_func;
    pp_next = pp;
    thread_wait_n4_WAIT_N_COUNTER_next = thread_wait_n4_WAIT_N_COUNTER;
    thread_wait_n4_PROC_STATE_next = thread_wait_n4_PROC_STATE;
    
    case (thread_wait_n4_PROC_STATE)
        0: begin
            if (thread_wait_n4_WAIT_N_COUNTER != 1) begin
                thread_wait_n4_WAIT_N_COUNTER_next = thread_wait_n4_WAIT_N_COUNTER - 1;
                thread_wait_n4_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:261:9;
            end;
            pp_next = 1;
            thread_wait_n4_WAIT_N_COUNTER_next = 3;
            thread_wait_n4_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:265:13;
        end
        1: begin
            if (thread_wait_n4_WAIT_N_COUNTER != 1) begin
                thread_wait_n4_WAIT_N_COUNTER_next = thread_wait_n4_WAIT_N_COUNTER - 1;
                thread_wait_n4_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:265:13;
            end;
            pp_next = 1;
            thread_wait_n4_WAIT_N_COUNTER_next = 3;
            thread_wait_n4_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:265:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_wait_n4_ff
    if ( ~rstn ) begin
        pp <= 0;
        thread_wait_n4_WAIT_N_COUNTER <= 3;
        thread_wait_n4_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:261:9;
    end
    else begin
        thread_wait_n4_WAIT_N_COUNTER <= thread_wait_n4_WAIT_N_COUNTER_next;
        pp <= pp_next;
        thread_wait_n4_PROC_STATE <= thread_wait_n4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_wait_n5 (test_cthread_duplicate_states.cpp:270:5) 

// Thread-local variables
logic [1:0] thread_wait_n5_WAIT_N_COUNTER;
logic [1:0] thread_wait_n5_WAIT_N_COUNTER_next;
logic [31:0] kk_next;
logic thread_wait_n5_PROC_STATE;
logic thread_wait_n5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_wait_n5_comb     // test_cthread_duplicate_states.cpp:270:5
    thread_wait_n5_func;
end
function void thread_wait_n5_func;
    kk_next = kk;
    thread_wait_n5_WAIT_N_COUNTER_next = thread_wait_n5_WAIT_N_COUNTER;
    thread_wait_n5_PROC_STATE_next = thread_wait_n5_PROC_STATE;
    
    case (thread_wait_n5_PROC_STATE)
        0: begin
            if (thread_wait_n5_WAIT_N_COUNTER != 1) begin
                thread_wait_n5_WAIT_N_COUNTER_next = thread_wait_n5_WAIT_N_COUNTER - 1;
                thread_wait_n5_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:273:13;
            end;
            kk_next = 1;
            thread_wait_n5_WAIT_N_COUNTER_next = 3;
            thread_wait_n5_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:273:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_wait_n5_ff
    if ( ~rstn ) begin
        kk <= 0;
        thread_wait_n5_WAIT_N_COUNTER <= 3;
        thread_wait_n5_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:273:13;
    end
    else begin
        thread_wait_n5_WAIT_N_COUNTER <= thread_wait_n5_WAIT_N_COUNTER_next;
        kk <= kk_next;
        thread_wait_n5_PROC_STATE <= thread_wait_n5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_one_state (test_cthread_duplicate_states.cpp:281:5) 

// Thread-local variables
logic [2:0] q_next;
logic thread_one_state_PROC_STATE;
logic thread_one_state_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_one_state_comb     // test_cthread_duplicate_states.cpp:281:5
    thread_one_state_func;
end
function void thread_one_state_func;
    q_next = q;
    thread_one_state_PROC_STATE_next = thread_one_state_PROC_STATE;
    
    case (thread_one_state_PROC_STATE)
        0: begin
            if (|m)
            begin
                thread_one_state_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:287:17;
            end
            q_next = 1;
            thread_one_state_PROC_STATE_next = 0; return;    // test_cthread_duplicate_states.cpp:287:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_one_state_ff
    if ( ~rstn ) begin
        q <= 0;
        thread_one_state_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:287:17;
    end
    else begin
        q <= q_next;
        thread_one_state_PROC_STATE <= thread_one_state_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_one_state2 (test_cthread_duplicate_states.cpp:294:5) 

// Thread-local variables
logic [31:0] t_next;
logic [1:0] thread_one_state2_PROC_STATE;
logic [1:0] thread_one_state2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_one_state2_comb     // test_cthread_duplicate_states.cpp:294:5
    thread_one_state2_func;
end
function void thread_one_state2_func;
    t_next = t;
    thread_one_state2_PROC_STATE_next = thread_one_state2_PROC_STATE;
    
    case (thread_one_state2_PROC_STATE)
        0: begin
            t_next = 1;
            thread_one_state2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:301:13;
        end
        1: begin
            if (|m)
            begin
                thread_one_state2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:302:30;
            end
            t_next = 1;
            thread_one_state2_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:301:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_one_state2_ff
    if ( ~rstn ) begin
        t <= 0;
        thread_one_state2_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:297:9;
    end
    else begin
        t <= t_next;
        thread_one_state2_PROC_STATE <= thread_one_state2_PROC_STATE_next;
    end
end

endmodule


