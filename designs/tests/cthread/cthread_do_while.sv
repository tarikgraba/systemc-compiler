//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic arstn;
logic signed [31:0] out;
logic signed [31:0] in;
logic signed [31:0] s0;
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;
logic signed [31:0] s4;
logic signed [31:0] s6;
logic signed [31:0] s7;
logic signed [31:0] s8;
logic signed [31:0] s5;

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_wait0 (test_do_while.cpp:64:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic dowhile_with_wait0_PROC_STATE;
logic dowhile_with_wait0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_wait0_comb     // test_do_while.cpp:64:5
    dowhile_with_wait0_func;
end
function void dowhile_with_wait0_func;
    i_next = i;
    out_next = out;
    dowhile_with_wait0_PROC_STATE_next = dowhile_with_wait0_PROC_STATE;
    
    case (dowhile_with_wait0_PROC_STATE)
        0: begin
            i_next = 0;
            out_next = 1;
            dowhile_with_wait0_PROC_STATE_next = 1; return;    // test_do_while.cpp:74:17;
        end
        1: begin
            i_next++;
            if (i_next < 3)
            begin
                out_next = 1;
                dowhile_with_wait0_PROC_STATE_next = 1; return;    // test_do_while.cpp:74:17;
            end
            out_next = 2;
            i_next = 0;
            out_next = 1;
            dowhile_with_wait0_PROC_STATE_next = 1; return;    // test_do_while.cpp:74:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_wait0_ff
    if ( ~arstn ) begin
        out <= 0;
        dowhile_with_wait0_PROC_STATE <= 0;    // test_do_while.cpp:67:9;
    end
    else begin
        out <= out_next;
        i <= i_next;
        dowhile_with_wait0_PROC_STATE <= dowhile_with_wait0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_wait0a (test_do_while.cpp:83:5) 

// Thread-local variables
logic signed [31:0] s0_next;
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic dowhile_with_wait0a_PROC_STATE;
logic dowhile_with_wait0a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_wait0a_comb     // test_do_while.cpp:83:5
    dowhile_with_wait0a_func;
end
function void dowhile_with_wait0a_func;
    i_next0 = i0;
    s0_next = s0;
    dowhile_with_wait0a_PROC_STATE_next = dowhile_with_wait0a_PROC_STATE;
    
    case (dowhile_with_wait0a_PROC_STATE)
        0: begin
            i_next0 = 0;
            s0_next = i_next0;
            i_next0++;
            dowhile_with_wait0a_PROC_STATE_next = 1; return;    // test_do_while.cpp:93:17;
        end
        1: begin
            if (i_next0 < 3)
            begin
                s0_next = i_next0;
                i_next0++;
                dowhile_with_wait0a_PROC_STATE_next = 1; return;    // test_do_while.cpp:93:17;
            end
            i_next0 = 0;
            s0_next = i_next0;
            i_next0++;
            dowhile_with_wait0a_PROC_STATE_next = 1; return;    // test_do_while.cpp:93:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_wait0a_ff
    if ( ~arstn ) begin
        s0 <= 0;
        dowhile_with_wait0a_PROC_STATE <= 0;    // test_do_while.cpp:86:9;
    end
    else begin
        s0 <= s0_next;
        i0 <= i_next0;
        dowhile_with_wait0a_PROC_STATE <= dowhile_with_wait0a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_wait1 (test_do_while.cpp:100:5) 

// Thread-local variables
logic signed [31:0] s1_next;
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic [1:0] dowhile_with_wait1_PROC_STATE;
logic [1:0] dowhile_with_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_wait1_comb     // test_do_while.cpp:100:5
    dowhile_with_wait1_func;
end
function void dowhile_with_wait1_func;
    i_next1 = i1;
    s1_next = s1;
    dowhile_with_wait1_PROC_STATE_next = dowhile_with_wait1_PROC_STATE;
    
    case (dowhile_with_wait1_PROC_STATE)
        0: begin
            i_next1 = 0;
            i_next1++;
            s1_next = 1;
            dowhile_with_wait1_PROC_STATE_next = 1; return;    // test_do_while.cpp:111:17;
        end
        1: begin
            if (i_next1 < 3)
            begin
                i_next1++;
                s1_next = 1;
                dowhile_with_wait1_PROC_STATE_next = 1; return;    // test_do_while.cpp:111:17;
            end
            s1_next = 2;
            dowhile_with_wait1_PROC_STATE_next = 2; return;    // test_do_while.cpp:114:13;
        end
        2: begin
            i_next1 = 0;
            i_next1++;
            s1_next = 1;
            dowhile_with_wait1_PROC_STATE_next = 1; return;    // test_do_while.cpp:111:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_wait1_ff
    if ( ~arstn ) begin
        s1 <= 0;
        dowhile_with_wait1_PROC_STATE <= 0;    // test_do_while.cpp:103:9;
    end
    else begin
        s1 <= s1_next;
        i1 <= i_next1;
        dowhile_with_wait1_PROC_STATE <= dowhile_with_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_wait2 (test_do_while.cpp:120:5) 

// Thread-local variables
logic signed [31:0] s2_next;
logic signed [31:0] i2;
logic signed [31:0] i_next2;
logic [1:0] dowhile_with_wait2_PROC_STATE;
logic [1:0] dowhile_with_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_wait2_comb     // test_do_while.cpp:120:5
    dowhile_with_wait2_func;
end
function void dowhile_with_wait2_func;
    i_next2 = i2;
    s2_next = s2;
    dowhile_with_wait2_PROC_STATE_next = dowhile_with_wait2_PROC_STATE;
    
    case (dowhile_with_wait2_PROC_STATE)
        0: begin
            i_next2 = 0;
            i_next2++;
            s2_next = 1;
            dowhile_with_wait2_PROC_STATE_next = 1; return;    // test_do_while.cpp:131:17;
        end
        1: begin
            if (in > 1)
            begin
                s2_next = 2;
                dowhile_with_wait2_PROC_STATE_next = 2; return;    // test_do_while.cpp:135:21;
            end
            if (i_next2 < 3)
            begin
                i_next2++;
                s2_next = 1;
                dowhile_with_wait2_PROC_STATE_next = 1; return;    // test_do_while.cpp:131:17;
            end
            s2_next = 3;
            dowhile_with_wait2_PROC_STATE_next = 3; return;    // test_do_while.cpp:139:13;
        end
        2: begin
            if (i_next2 < 3)
            begin
                i_next2++;
                s2_next = 1;
                dowhile_with_wait2_PROC_STATE_next = 1; return;    // test_do_while.cpp:131:17;
            end
            s2_next = 3;
            dowhile_with_wait2_PROC_STATE_next = 3; return;    // test_do_while.cpp:139:13;
        end
        3: begin
            i_next2 = 0;
            i_next2++;
            s2_next = 1;
            dowhile_with_wait2_PROC_STATE_next = 1; return;    // test_do_while.cpp:131:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_wait2_ff
    if ( ~arstn ) begin
        s2 <= 0;
        dowhile_with_wait2_PROC_STATE <= 0;    // test_do_while.cpp:123:9;
    end
    else begin
        s2 <= s2_next;
        i2 <= i_next2;
        dowhile_with_wait2_PROC_STATE <= dowhile_with_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_for (test_do_while.cpp:145:5) 

// Thread-local variables
logic signed [31:0] s3_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] i3;
logic signed [31:0] i_next3;
logic [1:0] dowhile_with_for_PROC_STATE;
logic [1:0] dowhile_with_for_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_for_comb     // test_do_while.cpp:145:5
    dowhile_with_for_func;
end
function void dowhile_with_for_func;
    i_next3 = i3;
    j_next = j;
    s3_next = s3;
    dowhile_with_for_PROC_STATE_next = dowhile_with_for_PROC_STATE;
    
    case (dowhile_with_for_PROC_STATE)
        0: begin
            i_next3 = 0;
            i_next3++;
            s3_next = 1;
            j_next = 0;
            if (in > 1)
            begin
                s3_next = j_next;
            end
            dowhile_with_for_PROC_STATE_next = 1; return;    // test_do_while.cpp:161:21;
        end
        1: begin
            j_next++;
            if (j_next < 2)
            begin
                if (in > 1)
                begin
                    s3_next = j_next;
                end
                dowhile_with_for_PROC_STATE_next = 1; return;    // test_do_while.cpp:161:21;
            end
            if (i_next3 < 3)
            begin
                i_next3++;
                s3_next = 1;
                j_next = 0;
                if (in > 1)
                begin
                    s3_next = j_next;
                end
                dowhile_with_for_PROC_STATE_next = 1; return;    // test_do_while.cpp:161:21;
            end
            s3_next = 3;
            dowhile_with_for_PROC_STATE_next = 2; return;    // test_do_while.cpp:165:13;
        end
        2: begin
            i_next3 = 0;
            i_next3++;
            s3_next = 1;
            j_next = 0;
            if (in > 1)
            begin
                s3_next = j_next;
            end
            dowhile_with_for_PROC_STATE_next = 1; return;    // test_do_while.cpp:161:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_for_ff
    if ( ~arstn ) begin
        s3 <= 0;
        dowhile_with_for_PROC_STATE <= 0;    // test_do_while.cpp:148:9;
    end
    else begin
        s3 <= s3_next;
        j <= j_next;
        i3 <= i_next3;
        dowhile_with_for_PROC_STATE <= dowhile_with_for_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_with_signal_cond (test_do_while.cpp:171:5) 

// Thread-local variables
logic signed [31:0] s4_next;
logic [1:0] dowhile_with_signal_cond_PROC_STATE;
logic [1:0] dowhile_with_signal_cond_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_with_signal_cond_comb     // test_do_while.cpp:171:5
    dowhile_with_signal_cond_func;
end
function void dowhile_with_signal_cond_func;
    s4_next = s4;
    dowhile_with_signal_cond_PROC_STATE_next = dowhile_with_signal_cond_PROC_STATE;
    
    case (dowhile_with_signal_cond_PROC_STATE)
        0: begin
            s4_next = 1;
            dowhile_with_signal_cond_PROC_STATE_next = 1; return;    // test_do_while.cpp:180:17;
        end
        1: begin
            if (|in)
            begin
                s4_next = 1;
                dowhile_with_signal_cond_PROC_STATE_next = 1; return;    // test_do_while.cpp:180:17;
            end
            s4_next = 2;
            dowhile_with_signal_cond_PROC_STATE_next = 2; return;    // test_do_while.cpp:184:13;
        end
        2: begin
            s4_next = 1;
            dowhile_with_signal_cond_PROC_STATE_next = 1; return;    // test_do_while.cpp:180:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_with_signal_cond_ff
    if ( ~arstn ) begin
        s4 <= 0;
        dowhile_with_signal_cond_PROC_STATE <= 0;    // test_do_while.cpp:174:9;
    end
    else begin
        s4 <= s4_next;
        dowhile_with_signal_cond_PROC_STATE <= dowhile_with_signal_cond_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_inner1 (test_do_while.cpp:192:5) 

// Thread-local variables
logic signed [31:0] s6_next;
logic signed [31:0] i4;
logic signed [31:0] i_next4;
logic [1:0] dowhile_inner1_PROC_STATE;
logic [1:0] dowhile_inner1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_inner1_comb     // test_do_while.cpp:192:5
    dowhile_inner1_func;
end
function void dowhile_inner1_func;
    i_next4 = i4;
    s6_next = s6;
    dowhile_inner1_PROC_STATE_next = dowhile_inner1_PROC_STATE;
    
    case (dowhile_inner1_PROC_STATE)
        0: begin
            s6_next = 1;
            i_next4 = 3;
            i_next4++;
            s6_next = i_next4 - 1;
            dowhile_inner1_PROC_STATE_next = 1; return;    // test_do_while.cpp:206:21;
        end
        1: begin
            if (i_next4 < 10)
            begin
                i_next4++;
                s6_next = i_next4 - 1;
                dowhile_inner1_PROC_STATE_next = 1; return;    // test_do_while.cpp:206:21;
            end
            if (|in)
            begin
                s6_next = 1;
                i_next4 = 3;
                i_next4++;
                s6_next = i_next4 - 1;
                dowhile_inner1_PROC_STATE_next = 1; return;    // test_do_while.cpp:206:21;
            end
            dowhile_inner1_PROC_STATE_next = 2; return;    // test_do_while.cpp:212:13;
        end
        2: begin
            s6_next = 1;
            i_next4 = 3;
            i_next4++;
            s6_next = i_next4 - 1;
            dowhile_inner1_PROC_STATE_next = 1; return;    // test_do_while.cpp:206:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_inner1_ff
    if ( ~arstn ) begin
        s6 <= 0;
        dowhile_inner1_PROC_STATE <= 0;    // test_do_while.cpp:195:9;
    end
    else begin
        s6 <= s6_next;
        i4 <= i_next4;
        dowhile_inner1_PROC_STATE <= dowhile_inner1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_inner2 (test_do_while.cpp:217:5) 

// Thread-local variables
logic signed [31:0] s7_next;
logic signed [31:0] i5;
logic signed [31:0] i_next5;
logic [1:0] dowhile_inner2_PROC_STATE;
logic [1:0] dowhile_inner2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_inner2_comb     // test_do_while.cpp:217:5
    dowhile_inner2_func;
end
function void dowhile_inner2_func;
    i_next5 = i5;
    s7_next = s7;
    dowhile_inner2_PROC_STATE_next = dowhile_inner2_PROC_STATE;
    
    case (dowhile_inner2_PROC_STATE)
        0: begin
            s7_next = 1;
            dowhile_inner2_PROC_STATE_next = 1; return;    // test_do_while.cpp:226:17;
        end
        1: begin
            i_next5 = 3;
            i_next5++;
            dowhile_inner2_PROC_STATE_next = 2; return;    // test_do_while.cpp:231:21;
        end
        2: begin
            s7_next = i_next5 - 1;
            if (i_next5 < 10)
            begin
                i_next5++;
                dowhile_inner2_PROC_STATE_next = 2; return;    // test_do_while.cpp:231:21;
            end
            if (s7 > 5)
            begin
                s7_next = 1;
                dowhile_inner2_PROC_STATE_next = 1; return;    // test_do_while.cpp:226:17;
            end
            s7_next = 0;
            dowhile_inner2_PROC_STATE_next = 3; return;    // test_do_while.cpp:239:13;
        end
        3: begin
            s7_next = 1;
            dowhile_inner2_PROC_STATE_next = 1; return;    // test_do_while.cpp:226:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_inner2_ff
    if ( ~arstn ) begin
        s7 <= 0;
        dowhile_inner2_PROC_STATE <= 0;    // test_do_while.cpp:220:9;
    end
    else begin
        s7 <= s7_next;
        i5 <= i_next5;
        dowhile_inner2_PROC_STATE <= dowhile_inner2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: dowhile_inner3 (test_do_while.cpp:245:5) 

// Thread-local variables
logic signed [31:0] s8_next;
logic signed [31:0] i6;
logic signed [31:0] i_next6;
logic signed [31:0] k;
logic signed [31:0] k_next;
logic [1:0] dowhile_inner3_PROC_STATE;
logic [1:0] dowhile_inner3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : dowhile_inner3_comb     // test_do_while.cpp:245:5
    dowhile_inner3_func;
end
function void dowhile_inner3_func;
    i_next6 = i6;
    k_next = k;
    s8_next = s8;
    dowhile_inner3_PROC_STATE_next = dowhile_inner3_PROC_STATE;
    
    case (dowhile_inner3_PROC_STATE)
        0: begin
            k_next = 0;
            i_next6 = 0;
            if (|in)
            begin
                i_next6++;
                s8_next = i_next6;
                dowhile_inner3_PROC_STATE_next = 1; return;    // test_do_while.cpp:259:25;
            end else begin
                k_next++;
                dowhile_inner3_PROC_STATE_next = 2; return;    // test_do_while.cpp:264:21;
            end
        end
        1: begin
            if (s8 < 10)
            begin
                i_next6++;
                s8_next = i_next6;
                dowhile_inner3_PROC_STATE_next = 1; return;    // test_do_while.cpp:259:25;
            end
            if (k_next < 10)
            begin
                i_next6 = 0;
                if (|in)
                begin
                    i_next6++;
                    s8_next = i_next6;
                    dowhile_inner3_PROC_STATE_next = 1; return;    // test_do_while.cpp:259:25;
                end else begin
                    k_next++;
                    dowhile_inner3_PROC_STATE_next = 2; return;    // test_do_while.cpp:264:21;
                end
            end
            dowhile_inner3_PROC_STATE_next = 3; return;    // test_do_while.cpp:269:13;
        end
        2: begin
            if (k_next < 10)
            begin
                i_next6 = 0;
                if (|in)
                begin
                    i_next6++;
                    s8_next = i_next6;
                    dowhile_inner3_PROC_STATE_next = 1; return;    // test_do_while.cpp:259:25;
                end else begin
                    k_next++;
                    dowhile_inner3_PROC_STATE_next = 2; return;    // test_do_while.cpp:264:21;
                end
            end
            dowhile_inner3_PROC_STATE_next = 3; return;    // test_do_while.cpp:269:13;
        end
        3: begin
            k_next = 0;
            i_next6 = 0;
            if (|in)
            begin
                i_next6++;
                s8_next = i_next6;
                dowhile_inner3_PROC_STATE_next = 1; return;    // test_do_while.cpp:259:25;
            end else begin
                k_next++;
                dowhile_inner3_PROC_STATE_next = 2; return;    // test_do_while.cpp:264:21;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : dowhile_inner3_ff
    if ( ~arstn ) begin
        s8 <= 42;
        dowhile_inner3_PROC_STATE <= 0;    // test_do_while.cpp:248:9;
    end
    else begin
        s8 <= s8_next;
        i6 <= i_next6;
        k <= k_next;
        dowhile_inner3_PROC_STATE <= dowhile_inner3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: complex1 (test_do_while.cpp:276:5) 

// Thread-local variables
logic signed [31:0] s5_next;
logic signed [31:0] i7;
logic signed [31:0] i_next7;
logic [1:0] complex1_PROC_STATE;
logic [1:0] complex1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : complex1_comb     // test_do_while.cpp:276:5
    complex1_func;
end
function void complex1_func;
    i_next7 = i7;
    s5_next = s5;
    complex1_PROC_STATE_next = complex1_PROC_STATE;
    
    case (complex1_PROC_STATE)
        0: begin
            i_next7 = 0;
            do
            begin
                i_next7++;
                i_next7++;
            end
            while (0);
            do
            begin
                i_next7++;
                s5_next = i_next7;
            end
            while (i_next7 < 5);
            i_next7 = 0;
            i_next7++;
            s5_next = i_next7;
            if (|in)
            begin
                // break begin
                complex1_PROC_STATE_next = 2; return;    // test_do_while.cpp:312:17;
                // break end
            end
            complex1_PROC_STATE_next = 1; return;    // test_do_while.cpp:307:17;
        end
        1: begin
            if (i_next7 < 3)
            begin
                i_next7++;
                s5_next = i_next7;
                if (|in)
                begin
                    // break begin
                    complex1_PROC_STATE_next = 2; return;    // test_do_while.cpp:312:17;
                    // break end
                end
                complex1_PROC_STATE_next = 1; return;    // test_do_while.cpp:307:17;
            end else begin
                complex1_PROC_STATE_next = 2; return;    // test_do_while.cpp:312:17;
            end
        end
        2: begin
            if (|in)
            begin
                complex1_PROC_STATE_next = 2; return;    // test_do_while.cpp:312:17;
            end
            i_next7 = 0;
            do
            begin
                i_next7++;
                i_next7++;
            end
            while (0);
            do
            begin
                i_next7++;
                s5_next = i_next7;
            end
            while (i_next7 < 5);
            i_next7 = 0;
            i_next7++;
            s5_next = i_next7;
            if (|in)
            begin
                // break begin
                complex1_PROC_STATE_next = 2; return;    // test_do_while.cpp:312:17;
                // break end
            end
            complex1_PROC_STATE_next = 1; return;    // test_do_while.cpp:307:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : complex1_ff
    if ( ~arstn ) begin
        s5 <= 0;
        complex1_PROC_STATE <= 0;    // test_do_while.cpp:279:9;
    end
    else begin
        s5 <= s5_next;
        i7 <= i_next7;
        complex1_PROC_STATE <= complex1_PROC_STATE_next;
    end
end

endmodule


