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
module A // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic signed [31:0] s;
logic signed [31:0] t;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic [7:0] s2;
logic signed [31:0] t5;
logic signed [31:0] t6;
logic signed [31:0] t7;
logic signed [31:0] t8;
logic signed [31:0] t8a;
logic signed [31:0] t9;
logic signed [31:0] t10;
logic signed [31:0] t11;
logic signed [31:0] t12;

// Local parameters generated for C++ constants
localparam logic [31:0] CONST_Z = 0;

//------------------------------------------------------------------------------
// Clocked THREAD: local_array (test_level2.cpp:82:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: empty_for (test_level2.cpp:94:5) 

always_comb 
begin : empty_for     // test_level2.cpp:94:5
    integer l;
    for (integer i = 0; i < 3; i++)
    begin
        for (integer j = 0; j < 2; j++)
        begin
            l = i + j;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: empty_for2 (test_level2.cpp:107:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: empty_for2_extr (test_level2.cpp:126:5) 

always_comb 
begin : empty_for2_extr     // test_level2.cpp:126:5
    integer i;
    for (i = 0; i < 3; i++)
    begin
    end
    for (; i < 6; i++)
    begin
    end
    for (integer j = 0; i < 9; i++)
    begin
    end
    t2 = i;
end

//------------------------------------------------------------------------------
// Method process: empty_for3_extr (test_level2.cpp:137:5) 

always_comb 
begin : empty_for3_extr     // test_level2.cpp:137:5
    integer i;
    i = 42;
    for (; i > 40; i--)
    begin
    end
    for (i++; i > 38; i--)
    begin
    end
    for (i = i - 1; i > 0; i--)
    begin
    end
    t3 = i;
end

//------------------------------------------------------------------------------
// Method process: empty_for4_extr (test_level2.cpp:147:5) 

always_comb 
begin : empty_for4_extr     // test_level2.cpp:147:5
    integer m;
    m = 1;
end

//------------------------------------------------------------------------------
// Method process: empty_do (test_level2.cpp:153:5) 

always_comb 
begin : empty_do     // test_level2.cpp:153:5
    integer i;
    i = 0;
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait (test_level2.cpp:160:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: complex_logic (test_level2.cpp:182:5) 

always_comb 
begin : complex_logic     // test_level2.cpp:182:5
    logic b3;
    logic b4;
    b3 = 0;
    b4 = 0;    // Call of f()
    t4 = b4 + b3;
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_for_wait (test_level2.cpp:188:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] k;
logic signed [31:0] k_next;
logic [1:0] simple_for_wait_PROC_STATE;
logic [1:0] simple_for_wait_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple_for_wait_comb     // test_level2.cpp:188:5
    simple_for_wait_func;
end
function void simple_for_wait_func;
    i_next = i0;
    k_next = k;
    simple_for_wait_PROC_STATE_next = simple_for_wait_PROC_STATE;
    
    case (simple_for_wait_PROC_STATE)
        0: begin
            k_next = s;
            i_next = 0;
            if (i_next < k_next)
            begin
                simple_for_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:195:17;
            end
            simple_for_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:197:13;
        end
        1: begin
            i_next++;
            if (i_next < k_next)
            begin
                simple_for_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:195:17;
            end
            simple_for_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:197:13;
        end
        2: begin
            k_next = s;
            i_next = 0;
            if (i_next < k_next)
            begin
                simple_for_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:195:17;
            end
            simple_for_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:197:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : simple_for_wait_ff
    if ( ~nrst ) begin
        simple_for_wait_PROC_STATE <= 0;    // test_level2.cpp:189:9;
    end
    else begin
        i0 <= i_next;
        k <= k_next;
        simple_for_wait_PROC_STATE <= simple_for_wait_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: loop_cntr_name (test_level2.cpp:206:5) 

always_comb 
begin : loop_cntr_name     // test_level2.cpp:206:5
    integer i_1;
    for (integer i = 0; i < 4; ++i)
    begin
        i_1 = i;
    end
    for (integer i_2 = 0; i_2 < 4; ++i_2)
    begin
        i_1 = i_2;
    end
end

//------------------------------------------------------------------------------
// Method process: loop_cntr_name2 (test_level2.cpp:218:5) 

always_comb 
begin : loop_cntr_name2     // test_level2.cpp:218:5
    integer i_1;
    for (integer i = 0; i < 4; ++i)
    begin
        i_1 = i;
    end
end

//------------------------------------------------------------------------------
// Method process: multi_for (test_level2.cpp:228:5) 

always_comb 
begin : multi_for     // test_level2.cpp:228:5
    s2 = 0;
    for (integer i = 0; i < 2; i++)
    begin
        for (integer k_1 = 0; k_1 < 3; k_1++)
        begin
            s2 = k_1 + 2;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: do_while3 (test_level2.cpp:239:5) 

always_comb 
begin : do_while3     // test_level2.cpp:239:5
    integer i;
    i = 0;
    do
    begin
        i++;
    end
    while (i < 2);
    i = 4;
end

//------------------------------------------------------------------------------
// Method process: func_with_loop (test_level2.cpp:258:5) 

always_comb 
begin : func_with_loop     // test_level2.cpp:258:5
    integer j;
    j = 3;    // Call of f5()
    t5 = j;
end

//------------------------------------------------------------------------------
// Method process: switch_for2 (test_level2.cpp:263:5) 

always_comb 
begin : switch_for2     // test_level2.cpp:263:5
    integer k_1;
    k_1 = 0;
    case (s)
    1 : begin
        for (integer i = 0; i < 3; i++)
        begin
            k_1 = k_1 + 1;
        end
        for (integer j = 0; j < 4; j++)
        begin
            k_1 = k_1 - 1;
        end
    end
    default : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_if (test_level2.cpp:279:5) 

always_comb 
begin : switch_if     // test_level2.cpp:279:5
    integer i;
    i = 0;
    case (s)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            i = 1;
        end
        i = 3;
    end
    2 : begin
        if (s == 1)
        begin
            i = 1;
        end
        i = 3;
    end
    endcase
    i = 4;
    t6 = i;
end

//------------------------------------------------------------------------------
// Method process: switch_if_const (test_level2.cpp:298:5) 

always_comb 
begin : switch_if_const     // test_level2.cpp:298:5
    integer i;
    i = 0;
    case (s)
    1 : begin
    end
    2 : begin
        i = 1;
    end
    endcase
    i = 2;
    t7 = i;
end

//------------------------------------------------------------------------------
// Clocked THREAD: while_wait (test_level2.cpp:312:5) 

// Thread-local variables
logic signed [31:0] t8_next;
logic [1:0] while_wait_PROC_STATE;
logic [1:0] while_wait_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : while_wait_comb     // test_level2.cpp:312:5
    while_wait_func;
end
function void while_wait_func;
    integer i;
    t8_next = t8;
    while_wait_PROC_STATE_next = while_wait_PROC_STATE;
    
    case (while_wait_PROC_STATE)
        0: begin
            if (s == 42)
            begin
                while_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:318:36;
            end
            i = 1;
            while_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:321:13;
        end
        1: begin
            if (s == 42)
            begin
                while_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:318:36;
            end
            i = 1;
            while_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:321:13;
        end
        2: begin
            i = 2;
            t8_next = i;
            while_wait_PROC_STATE_next = 3; return;    // test_level2.cpp:325:13;
        end
        3: begin
            if (s == 42)
            begin
                while_wait_PROC_STATE_next = 1; return;    // test_level2.cpp:318:36;
            end
            i = 1;
            while_wait_PROC_STATE_next = 2; return;    // test_level2.cpp:321:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : while_wait_ff
    if ( ~nrst ) begin
        integer i;
        i = 0;
        while_wait_PROC_STATE <= 0;    // test_level2.cpp:315:9;
    end
    else begin
        t8 <= t8_next;
        while_wait_PROC_STATE <= while_wait_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: two_do_while (test_level2.cpp:330:5) 

always_comb 
begin : two_do_while     // test_level2.cpp:330:5
    integer i;
    i = 0;
    do
    begin
        i--;
    end
    while (s < 1);
    do
    begin
        i++;
    end
    while (s < 2);
    t8a = i;
end

//------------------------------------------------------------------------------
// Clocked THREAD: break_in_while_for (test_level2.cpp:344:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic signed [31:0] t9_next;
logic [1:0] break_in_while_for_PROC_STATE;
logic [1:0] break_in_while_for_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : break_in_while_for_comb     // test_level2.cpp:344:5
    break_in_while_for_func;
end
function void break_in_while_for_func;
    integer k_1;
    i_next0 = i1;
    t9_next = t9;
    break_in_while_for_PROC_STATE_next = break_in_while_for_PROC_STATE;
    
    case (break_in_while_for_PROC_STATE)
        0: begin
            if (|s || |t)
            begin
                if (|s)
                begin
                    k_1 = 1;
                    i_next0 = 0;
                    break_in_while_for_PROC_STATE_next = 1; return;    // test_level2.cpp:355:25;
                end
                break_in_while_for_PROC_STATE_next = 2; return;    // test_level2.cpp:361:17;
            end
            k_1 = 4;
            t9_next = k_1;
            break_in_while_for_PROC_STATE_next = 3; return;    // test_level2.cpp:366:13;
        end
        1: begin
            if (|s)
            begin
                // break begin
                if (|t)
                begin
                    k_1 = 3;
                end
                k_1 = 2;
                break_in_while_for_PROC_STATE_next = 2; return;    // test_level2.cpp:361:17;
                // break end
            end
            i_next0++;
            if (i_next0 < 3)
            begin
                break_in_while_for_PROC_STATE_next = 1; return;    // test_level2.cpp:355:25;
            end
            if (|t)
            begin
                k_1 = 3;
            end
            k_1 = 2;
            break_in_while_for_PROC_STATE_next = 2; return;    // test_level2.cpp:361:17;
        end
        2: begin
            k_1 = 3;
            if (|s || |t)
            begin
                if (|s)
                begin
                    k_1 = 1;
                    i_next0 = 0;
                    break_in_while_for_PROC_STATE_next = 1; return;    // test_level2.cpp:355:25;
                end
                break_in_while_for_PROC_STATE_next = 2; return;    // test_level2.cpp:361:17;
            end
            k_1 = 4;
            t9_next = k_1;
            break_in_while_for_PROC_STATE_next = 3; return;    // test_level2.cpp:366:13;
        end
        3: begin
            if (|s || |t)
            begin
                if (|s)
                begin
                    k_1 = 1;
                    i_next0 = 0;
                    break_in_while_for_PROC_STATE_next = 1; return;    // test_level2.cpp:355:25;
                end
                break_in_while_for_PROC_STATE_next = 2; return;    // test_level2.cpp:361:17;
            end
            k_1 = 4;
            t9_next = k_1;
            break_in_while_for_PROC_STATE_next = 3; return;    // test_level2.cpp:366:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : break_in_while_for_ff
    if ( ~nrst ) begin
        integer k_1;
        k_1 = 0;
        break_in_while_for_PROC_STATE <= 0;    // test_level2.cpp:347:9;
    end
    else begin
        i1 <= i_next0;
        t9 <= t9_next;
        break_in_while_for_PROC_STATE <= break_in_while_for_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: empty_loop_method (test_level2.cpp:370:5) 

always_comb 
begin : empty_loop_method     // test_level2.cpp:370:5
    integer j;
    integer k_1;
    j = 0;
    k_1 = 0;
    while (j < 3)
    begin
        while (k_1 < 4)
        begin
            k_1++;
        end
        j++;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if3 (test_level2.cpp:386:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic signed [31:0] t10_next;

// Next-state combinational logic
always_comb begin : switch_if3_comb     // test_level2.cpp:386:5
    switch_if3_func;
end
function void switch_if3_func;
    i_next1 = i2;
    t10_next = t10;
    case (s)
    1 : begin  // Empty case without break
        i_next1 = 2;
    end
    2 : begin
        i_next1 = 2;
    end
    endcase
    t10_next = i_next1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : switch_if3_ff
    if ( ~nrst ) begin
    end
    else begin
        i2 <= i_next1;
        t10 <= t10_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: two_loops (test_level2.cpp:401:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] t11_next;
logic [1:0] two_loops_PROC_STATE;
logic [1:0] two_loops_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : two_loops_comb     // test_level2.cpp:401:5
    two_loops_func;
end
function void two_loops_func;
    j_next = j0;
    t11_next = t11;
    two_loops_PROC_STATE_next = two_loops_PROC_STATE;
    
    case (two_loops_PROC_STATE)
        0: begin
            for (integer i = 0; i < 3; i++)
            begin
                j_next = i;
            end
            two_loops_PROC_STATE_next = 1; return;    // test_level2.cpp:410:17;
        end
        1: begin
            if (|s)
            begin
                // break begin
                t11_next = j_next;
                two_loops_PROC_STATE_next = 2; return;    // test_level2.cpp:414:13;
                // break end
            end
            two_loops_PROC_STATE_next = 1; return;    // test_level2.cpp:410:17;
        end
        2: begin
            for (integer i = 0; i < 3; i++)
            begin
                j_next = i;
            end
            two_loops_PROC_STATE_next = 1; return;    // test_level2.cpp:410:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : two_loops_ff
    if ( ~nrst ) begin
        j0 <= 0;
        two_loops_PROC_STATE <= 0;    // test_level2.cpp:404:9;
    end
    else begin
        j0 <= j_next;
        t11 <= t11_next;
        two_loops_PROC_STATE <= two_loops_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_and_loop (test_level2.cpp:419:5) 

// Thread-local variables
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] t12_next;
logic [1:0] if_and_loop_PROC_STATE;
logic [1:0] if_and_loop_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_and_loop_comb     // test_level2.cpp:419:5
    if_and_loop_func;
end
function void if_and_loop_func;
    j_next0 = j1;
    t12_next = t12;
    if_and_loop_PROC_STATE_next = if_and_loop_PROC_STATE;
    
    case (if_and_loop_PROC_STATE)
        0: begin
            if (|s)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    j_next0 = i;
                end
            end
            if_and_loop_PROC_STATE_next = 1; return;    // test_level2.cpp:430:17;
        end
        1: begin
            if (|s)
            begin
                // break begin
                t12_next = j_next0;
                if_and_loop_PROC_STATE_next = 2; return;    // test_level2.cpp:434:13;
                // break end
            end
            if_and_loop_PROC_STATE_next = 1; return;    // test_level2.cpp:430:17;
        end
        2: begin
            if (|s)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    j_next0 = i;
                end
            end
            if_and_loop_PROC_STATE_next = 1; return;    // test_level2.cpp:430:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : if_and_loop_ff
    if ( ~nrst ) begin
        j1 <= 0;
        if_and_loop_PROC_STATE <= 0;    // test_level2.cpp:422:9;
    end
    else begin
        j1 <= j_next0;
        t12 <= t12_next;
        if_and_loop_PROC_STATE <= if_and_loop_PROC_STATE_next;
    end
end

endmodule


