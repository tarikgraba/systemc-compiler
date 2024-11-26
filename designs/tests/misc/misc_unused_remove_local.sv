//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
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
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic signed [31:0] t6;
logic signed [31:0] t7;
logic signed [31:0] t8;
logic signed [31:0] t9;
logic signed [31:0] t10;
logic signed [31:0] t11;
logic signed [31:0] t12;
logic signed [31:0] t13;
logic signed [31:0] t14;

// Local parameters generated for C++ constants
localparam logic signed [31:0] k = 42;
localparam logic signed [31:0] n = 43;

//------------------------------------------------------------------------------
// Method process: remove0 (test_unused_remove_local.cpp:89:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove0a (test_unused_remove_local.cpp:128:5) 

// Process-local variables
logic [2:0] ms;

always_comb 
begin : remove0a     // test_unused_remove_local.cpp:128:5
    integer x;
    integer z;
    logic [3:0] y;
    logic [2:0] t;
    logic [9:0] w;
    logic [9:0] v;
    logic [9:0] ww;
    logic [9:0] vv;
    x = 1; x = x;
    y = 0;
    z = 1; y = z;
    t = 0;
    ms = 1; t = ms;
    w = 0;
    v = 0;
    v = 1; w[3] = v;
    ww = 0;
    vv = 0;
    vv[x +: 2] = 1; ww = vv[x +: 2];
end

//------------------------------------------------------------------------------
// Method process: remove0b (test_unused_remove_local.cpp:172:5) 

// Process-local variables
logic [2:0] mt;

always_comb 
begin : remove0b     // test_unused_remove_local.cpp:172:5
    logic [4:0] x;
    logic [3:0] y;
    logic [2:0] t;
    integer xx;
    integer yy;
    integer z;
    x = 0;
    y = 0;
    {x, y} = 42;
    t = 0;
    {t, mt} = s;
    z = xx + 1;
    yy++;
end

//------------------------------------------------------------------------------
// Method process: remove0c (test_unused_remove_local.cpp:204:5) 

always_comb 
begin : remove0c     // test_unused_remove_local.cpp:204:5
    integer i;
    logic [4:0] x;
    integer j;
    logic aa[3];
    integer unsigned k_1;
    logic aaa[3][2];
    logic [2:0] ii;
    integer unsigned jj;
    i = s;
    x = 0;
    x = 2;
    t0 = x[i];
    j = s;
    t0 = x[j - 1 +: 2];
    k_1 = s;
    t0 = aa[k_1];
    ii = 0;
    ii = 1;
    jj = 1;
    t0 = aaa[ii + 1][jj];
end

//------------------------------------------------------------------------------
// Method process: remove1 (test_unused_remove_local.cpp:257:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove1a (test_unused_remove_local.cpp:290:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: remove_if (test_unused_remove_local.cpp:350:5) 

always_comb 
begin : remove_if     // test_unused_remove_local.cpp:350:5
    integer i;
    integer j;
    logic [3:0] y;
    logic signed [3:0] x;
    logic [9:0] z;
    logic signed [3:0] v;
    logic signed [3:0] w;
    logic [9:0] zz;
    t2 = 0;
    i = 1;
    if (i == s)
    begin
        t2 = 1;
    end
    j = 1;
    y = 0;
    x = 0;
    y = s;
    x = s;
    if (x > y)
    begin
        t2 = 2;
    end
    z = 0;
    v = 0;
    w = 0;
    z = s;
    v = 1;
    w = s;
    t2 = |z ? v : w;
    zz = 0;
    zz = s;
end

//------------------------------------------------------------------------------
// Method process: remove_loops (test_unused_remove_local.cpp:413:5) 

always_comb 
begin : remove_loops     // test_unused_remove_local.cpp:413:5
    integer unsigned jj;
    integer unsigned kk;
    integer unsigned n_1;
    logic [3:0] m_1;
    logic signed [3:0] p;
    for (integer i = 0; i < 2; i++)
    begin
        t4 = i;
    end
    jj = s;
    for (integer j = 0; j < 2; j = j + jj)
    begin
        t4 = j;
    end
    kk = s;
    n_1 = s;
    while (n_1 != 0)
    begin
        n_1 = n_1 - 1;
        t4 = n_1;
    end
    m_1 = s;
    while (|m_1)
    begin
        m_1 = m_1 - 1;
    end
    p = 0;
    p = s;
    do
    begin
        p = p - 1;
    end
    while (p > 0);
end

//------------------------------------------------------------------------------
// Method process: remove_switch (test_unused_remove_local.cpp:484:5) 

always_comb 
begin : remove_switch     // test_unused_remove_local.cpp:484:5
    integer i;
    integer unsigned j;
    i = s;
    case (i)
    1 : begin
        t6 = 1;
    end
    default : begin
        t6 = 2;
    end
    endcase
    j = s;
    case (j)
    3 : begin
        t6 = 1;
    end
    2 : begin  // Empty case without break
        t6 = 2;
    end
    1 : begin
        t6 = 2;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: remove_binoper (test_unused_remove_local.cpp:523:5) 

always_comb 
begin : remove_binoper     // test_unused_remove_local.cpp:523:5
    logic b;
    integer i;
    logic [3:0] m_1;
    b = s == 1;
    i = s;
    t8 = 0;
    if (b || i == 2)
    begin
        t8 = 1;
    end
    t8 = 2;
    m_1 = 1;
end

//------------------------------------------------------------------------------
// Method process: remove_ref (test_unused_remove_local.cpp:574:5) 

always_comb 
begin : remove_ref     // test_unused_remove_local.cpp:574:5
    integer i;
    logic [3:0] x;
    logic [3:0] y;
    i = 1;
    t10 = i;
    x = 0;
    x = s;
    t10 = 1 + x;
    y = 0;
    y = s;
    t10 = y / 2;
end

//------------------------------------------------------------------------------
// Method process: remove_constref (test_unused_remove_local.cpp:620:5) 

always_comb 
begin : remove_constref     // test_unused_remove_local.cpp:620:5
    integer i;
    integer rc;
    logic [3:0] x;
    logic [3:0] rx;
    logic [3:0] y;
    i = 1;
    t12 = i;
    rc = 42;
    t12 = rc;
    x = 0;
    x = s;
    rx = x + 1;
    t12 = rx;
    y = 0;
    y = s;
    t12 = y;
end

//------------------------------------------------------------------------------
// Method process: remove_ptr (test_unused_remove_local.cpp:679:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : remove_ptr     // test_unused_remove_local.cpp:679:5
    logic b;
    m = -7'sd42;
    t14 = m;
    t14 = k;
    b = 0;
    t14 = b;
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove0_thread (test_unused_remove_local.cpp:101:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove0a_thread (test_unused_remove_local.cpp:142:5) 

// Thread-local variables
logic [2:0] mst;

// Next-state combinational logic
always_comb begin : remove0a_thread_comb     // test_unused_remove_local.cpp:142:5
    remove0a_thread_func;
end
function void remove0a_thread_func;
    integer x;
    integer z;
    logic [3:0] y;
    logic [2:0] t;
    logic [9:0] w;
    logic [9:0] v;
    logic [9:0] ww;
    logic [9:0] vv;
    integer x_1;
    integer z_1;
    logic [3:0] y_1;
    logic [2:0] t_1;
    logic [9:0] w_1;
    logic [9:0] v_1;
    logic [9:0] ww_1;
    logic [9:0] vv_1;
    x_1 = 1; x_1 = x_1;
    y_1 = 0;
    z_1 = 1; y_1 = z_1;
    t_1 = 0;
    mst = 1; t_1 = mst;
    w_1 = 0;
    v_1 = 0;
    v_1 = 1; w_1[3] = v_1;
    ww_1 = 0;
    vv_1 = 0;
    vv_1[x_1 +: 2] = 1; ww_1 = vv_1[x_1 +: 2];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove0a_thread_ff
    if ( ~nrst ) begin
        integer x;
        integer z;
        logic [3:0] y;
        logic [2:0] t;
        logic [9:0] w;
        logic [9:0] v;
        logic [9:0] ww;
        logic [9:0] vv;
        logic [2:0] mst;
        x = 1; x = x;
        y = 0;
        z = 1; y = z;
        t = 0;
        mst = 1; t = mst;
        w = 0;
        v = 0;
        v = 1; w[3] = v;
        ww = 0;
        vv = 0;
        vv[x +: 2] = 1; ww = vv[x +: 2];
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove0b_thread (test_unused_remove_local.cpp:185:5) 

// Thread-local variables
logic [2:0] mtt;
logic [2:0] mtt_next;

// Next-state combinational logic
always_comb begin : remove0b_thread_comb     // test_unused_remove_local.cpp:185:5
    remove0b_thread_func;
end
function void remove0b_thread_func;
    logic [4:0] x;
    logic [3:0] y;
    logic [2:0] t;
    integer xx;
    integer yy;
    integer z;
    mtt_next = mtt;
    x = 0;
    y = 0;
    {x, y} = 42;
    t = 0;
    {t, mtt_next} = s;
    z = xx + 1;
    yy++;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove0b_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        mtt <= mtt_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove0c_thread (test_unused_remove_local.cpp:227:5) 

// Thread-local variables
logic aa0[3];
logic aa_next[3];
logic signed [31:0] t1_next;

// Next-state combinational logic
always_comb begin : remove0c_thread_comb     // test_unused_remove_local.cpp:227:5
    remove0c_thread_func;
end
function void remove0c_thread_func;
    integer i;
    logic [4:0] x;
    integer j;
    integer unsigned k_1;
    logic aaa[3][2];
    logic [2:0] ii;
    integer unsigned jj;
    aa_next = aa0;
    t1_next = t1;
    i = s;
    x = 0;
    x = 2;
    t1_next = x[i];
    j = s;
    t1_next = x[j - 1 +: 2];
    k_1 = s;
    t1_next = aa_next[k_1];
    ii = 0;
    ii = 1;
    jj = 1;
    t1_next = aaa[ii + 1][jj];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove0c_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        aa0 <= aa_next;
        t1 <= t1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove1_thread (test_unused_remove_local.cpp:271:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove1a_thread (test_unused_remove_local.cpp:304:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: remove_if_thread (test_unused_remove_local.cpp:378:5) 

// Thread-local variables
logic signed [31:0] t3_next;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] j0;
logic signed [31:0] j_next;

// Next-state combinational logic
always_comb begin : remove_if_thread_comb     // test_unused_remove_local.cpp:378:5
    remove_if_thread_func;
end
function void remove_if_thread_func;
    logic [3:0] y;
    logic signed [3:0] x;
    logic [9:0] z;
    logic signed [3:0] v;
    logic signed [3:0] w;
    logic [9:0] zz;
    i_next = i0;
    j_next = j0;
    t3_next = t3;
    if (i_next == s)
    begin
        t3_next = 1;
    end
    y = 0;
    x = 0;
    y = s;
    x = s;
    if (x > y)
    begin
        t3_next = 2;
    end
    z = 0;
    v = 0;
    w = 0;
    z = s;
    v = 1;
    w = s;
    t3_next = |z ? v : w;
    zz = 0;
    zz = s;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_if_thread_ff
    if ( ~nrst ) begin
        t3 <= 0;
        i0 <= 1;
        j0 <= 1;
    end
    else begin
        t3 <= t3_next;
        i0 <= i_next;
        j0 <= j_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_loops_thread (test_unused_remove_local.cpp:445:5) 

// Thread-local variables
logic [3:0] m0;
logic [3:0] m_next;
logic signed [31:0] t5_next;

// Next-state combinational logic
always_comb begin : remove_loops_thread_comb     // test_unused_remove_local.cpp:445:5
    remove_loops_thread_func;
end
function void remove_loops_thread_func;
    integer unsigned jj;
    integer unsigned kk;
    integer unsigned n_1;
    logic signed [3:0] p;
    m_next = m0;
    t5_next = t5;
    for (integer i = 0; i < 2; i++)
    begin
        t5_next = i;
    end
    jj = s;
    for (integer j = 0; j < 2; j = j + jj)
    begin
        t5_next = j;
    end
    kk = s;
    n_1 = s;
    while (n_1 != 0)
    begin
        n_1 = n_1 - 1;
        t5_next = n_1;
    end
    while (|m_next)
    begin
        m_next = m_next - 1;
    end
    p = 0;
    p = s;
    do
    begin
        p = p - 1;
    end
    while (p > 0);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_loops_thread_ff
    if ( ~nrst ) begin
        m0 <= s;
    end
    else begin
        m0 <= m_next;
        t5 <= t5_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_switch_thread (test_unused_remove_local.cpp:500:5) 

// Thread-local variables
logic signed [31:0] t7_next;

// Next-state combinational logic
always_comb begin : remove_switch_thread_comb     // test_unused_remove_local.cpp:500:5
    remove_switch_thread_func;
end
function void remove_switch_thread_func;
    integer i;
    integer unsigned j;
    t7_next = t7;
    i = s;
    case (i)
    1 : begin
        t7_next = 1;
    end
    default : begin
        t7_next = 2;
    end
    endcase
    j = s;
    case (j)
    3 : begin
        t7_next = 1;
    end
    2 : begin  // Empty case without break
        t7_next = 2;
    end
    1 : begin
        t7_next = 2;
    end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_switch_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        t7 <= t7_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_binoper_thread (test_unused_remove_local.cpp:545:5) 

// Thread-local variables
logic signed [31:0] t9_next;

// Next-state combinational logic
always_comb begin : remove_binoper_thread_comb     // test_unused_remove_local.cpp:545:5
    remove_binoper_thread_func;
end
function void remove_binoper_thread_func;
    logic b;
    integer i;
    logic [3:0] m_1;
    t9_next = t9;
    b = s == 1;
    i = s;
    t9_next = 0;
    if (b || i == 2)
    begin
        t9_next = 1;
    end
    t9_next = 2;
    m_1 = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_binoper_thread_ff
    if ( ~nrst ) begin
    end
    else begin
        t9 <= t9_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_ref_thread (test_unused_remove_local.cpp:594:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic signed [31:0] t11_next;

// Next-state combinational logic
always_comb begin : remove_ref_thread_comb     // test_unused_remove_local.cpp:594:5
    remove_ref_thread_func;
end
function void remove_ref_thread_func;
    logic [3:0] x;
    logic [3:0] y;
    i_next0 = i1;
    t11_next = t11;
    t11_next = i_next0;
    x = 0;
    x = s;
    t11_next = 1 + x;
    y = 0;
    y = s;
    t11_next = y / 2;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_ref_thread_ff
    if ( ~nrst ) begin
        i1 <= 1;
    end
    else begin
        i1 <= i_next0;
        t11 <= t11_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: remove_constref_thread (test_unused_remove_local.cpp:643:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic [3:0] y0;
logic [3:0] y_next;
logic signed [31:0] t13_next;

// Next-state combinational logic
always_comb begin : remove_constref_thread_comb     // test_unused_remove_local.cpp:643:5
    remove_constref_thread_func;
end
function void remove_constref_thread_func;
    integer rc;
    logic [3:0] x;
    logic [3:0] rx;
    i_next1 = i2;
    t13_next = t13;
    y_next = y0;
    t13_next = i2;
    rc = 42;
    t13_next = rc;
    x = 0;
    x = s;
    rx = x + 1;
    t13_next = rx;
    t13_next = y0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : remove_constref_thread_ff
    if ( ~nrst ) begin
        i2 <= 1;
        y0 <= 0;
    end
    else begin
        i2 <= i_next1;
        y0 <= y_next;
        t13 <= t13_next;
    end
end

endmodule


