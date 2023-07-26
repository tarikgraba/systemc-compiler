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

// Variables generated for SystemC signals
logic clk;
logic nrst;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_read_defined_ref.cpp:218:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Clocked THREAD: var_ref (test_cthread_read_defined_ref.cpp:44:5) 

// Thread-local variables
logic [2:0] y;
logic [2:0] y_next;

// Next-state combinational logic
always_comb begin : var_ref_comb     // test_cthread_read_defined_ref.cpp:44:5
    var_ref_func;
end
function void var_ref_func;
    logic [2:0] x;
    integer i;
    y_next = y;
    x = 2;
    i = x;
    i = y + 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : var_ref_ff
    if ( ~nrst ) begin
        logic [2:0] x;
        x = 0;
        y <= 0;
        y = 1;
    end
    else begin
        y <= y_next;
    end
end

//------------------------------------------------------------------------------
// Method process: var_ref_decl (test_cthread_read_defined_ref.cpp:72:5) 

always_comb 
begin : var_ref_decl     // test_cthread_read_defined_ref.cpp:72:5
    logic [2:0] x;
    logic [2:0] y_1;
    x = 0;
    y_1 = 0;
    y_1 = x + 1;
    x = y_1;
    x++;
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_const_ref (test_cthread_read_defined_ref.cpp:106:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic [1:0] k;
logic [1:0] k_next;
logic [1:0] n;
logic [1:0] n_next;
logic fcall_const_ref_PROC_STATE;
logic fcall_const_ref_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_const_ref_comb     // test_cthread_read_defined_ref.cpp:106:5
    fcall_const_ref_func;
end
function void fcall_const_ref_func;
    integer i;
    logic [1:0] i_1;
    logic [1:0] m;
    i_next = i0;
    k_next = k;
    n_next = n;
    fcall_const_ref_PROC_STATE_next = fcall_const_ref_PROC_STATE;
    
    case (fcall_const_ref_PROC_STATE)
        0: begin
            // Call const_ref() begin
            i = i_next;
            // Call const_ref() end
            // Call const_ref() begin
            i_1 = k_next;
            // Call const_ref() end
            m = 1;
            // Call const_ref() begin
            i_1 = m;
            // Call const_ref() end
            n_next = 2;
            fcall_const_ref_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:125:13;
        end
        1: begin
            // Call const_ref() begin
            i_1 = n_next;
            // Call const_ref() end
            // Call const_ref() begin
            i = i_next;
            // Call const_ref() end
            // Call const_ref() begin
            i_1 = k_next;
            // Call const_ref() end
            m = 1;
            // Call const_ref() begin
            i_1 = m;
            // Call const_ref() end
            n_next = 2;
            fcall_const_ref_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:125:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_const_ref_ff
    if ( ~nrst ) begin
        k <= 0;
        fcall_const_ref_PROC_STATE <= 0;    // test_cthread_read_defined_ref.cpp:111:9;
    end
    else begin
        i0 <= i_next;
        k <= k_next;
        n <= n_next;
        fcall_const_ref_PROC_STATE <= fcall_const_ref_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_const_ref2 (test_cthread_read_defined_ref.cpp:132:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic [1:0] k0;
logic [1:0] k_next0;
logic [1:0] n0;
logic [1:0] n_next0;
logic fcall_const_ref2_PROC_STATE;
logic fcall_const_ref2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_const_ref2_comb     // test_cthread_read_defined_ref.cpp:132:5
    fcall_const_ref2_func;
end
function void fcall_const_ref2_func;
    integer par;
    integer i;
    logic par_1;
    logic i_1;
    logic [1:0] m;
    logic [63:0] par_2;
    logic [63:0] i_2;
    i_next0 = i1;
    k_next0 = k0;
    n_next0 = n0;
    fcall_const_ref2_PROC_STATE_next = fcall_const_ref2_PROC_STATE;
    
    case (fcall_const_ref2_PROC_STATE)
        0: begin
            par = i_next0 + 1;
            // Call const_ref() begin
            i = par;
            // Call const_ref() end
            par_1 = |k_next0 || 1;
            // Call const_ref() begin
            i_1 = par_1;
            // Call const_ref() end
            m = 1;
            par_2 = 2 & m;
            // Call const_ref() begin
            i_2 = par_2;
            // Call const_ref() end
            n_next0 = 2;
            fcall_const_ref2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:150:13;
        end
        1: begin
            par = 2 <<< n_next0;
            // Call const_ref() begin
            i = par;
            // Call const_ref() end
            par = i_next0 + 1;
            // Call const_ref() begin
            i = par;
            // Call const_ref() end
            par_1 = |k_next0 || 1;
            // Call const_ref() begin
            i_1 = par_1;
            // Call const_ref() end
            m = 1;
            par_2 = 2 & m;
            // Call const_ref() begin
            i_2 = par_2;
            // Call const_ref() end
            n_next0 = 2;
            fcall_const_ref2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:150:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_const_ref2_ff
    if ( ~nrst ) begin
        k0 <= 0;
        fcall_const_ref2_PROC_STATE <= 0;    // test_cthread_read_defined_ref.cpp:136:9;
    end
    else begin
        i1 <= i_next0;
        k0 <= k_next0;
        n0 <= n_next0;
        fcall_const_ref2_PROC_STATE <= fcall_const_ref2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ref_assign (test_cthread_read_defined_ref.cpp:162:5) 

// Next-state combinational logic
always_comb begin : fcall_ref_assign_comb     // test_cthread_read_defined_ref.cpp:162:5
    fcall_ref_assign_func;
end
function void fcall_ref_assign_func;
    integer i;
    logic [1:0] k_1;
    integer i_1;
    integer par;
    logic [1:0] m;
    logic [63:0] j;
    // Call ref_assign() begin
    i = 0;
    // Call ref_assign() end
    // Call ref_assign() begin
    k_1 = 0;
    // Call ref_assign() end
    // Call const_ref() begin
    i_1 = i;
    // Call const_ref() end
    par = 2;
    // Call const_ref() begin
    i_1 = par;
    // Call const_ref() end
    m = 0;
    // Call ref_assign() begin
    m = 0;
    // Call ref_assign() end
    j = m / 2;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ref_assign_ff
    if ( ~nrst ) begin
        integer i;
        logic [1:0] k_1;
        k_1 = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_ref_noninit (test_cthread_read_defined_ref.cpp:191:5) 

// Thread-local variables
logic signed [31:0] p;
logic signed [31:0] p_next;
logic signed [31:0] q;
logic signed [31:0] q_next;
logic const_ref_noninit_PROC_STATE;
logic const_ref_noninit_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : const_ref_noninit_comb     // test_cthread_read_defined_ref.cpp:191:5
    const_ref_noninit_func;
end
function void const_ref_noninit_func;
    logic signed [2:0] m;
    integer k_1;
    integer i;
    logic signed [2:0] i_1;
    p_next = p;
    q_next = q;
    const_ref_noninit_PROC_STATE_next = const_ref_noninit_PROC_STATE;
    
    case (const_ref_noninit_PROC_STATE)
        0: begin
            m = 0;
            q_next = 1;
            // Call const_ref() begin
            i = k_1;
            // Call const_ref() end
            // Call const_ref() begin
            i_1 = m;
            // Call const_ref() end
            const_ref_noninit_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:203:13;
        end
        1: begin
            // Call const_ref() begin
            i = p_next;
            // Call const_ref() end
            // Call const_ref() begin
            i = q_next;
            // Call const_ref() end
            m = 0;
            q_next = 1;
            // Call const_ref() begin
            i = k_1;
            // Call const_ref() end
            // Call const_ref() begin
            i_1 = m;
            // Call const_ref() end
            const_ref_noninit_PROC_STATE_next = 1; return;    // test_cthread_read_defined_ref.cpp:203:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_ref_noninit_ff
    if ( ~nrst ) begin
        const_ref_noninit_PROC_STATE <= 0;    // test_cthread_read_defined_ref.cpp:193:9;
    end
    else begin
        p <= p_next;
        q <= q_next;
        const_ref_noninit_PROC_STATE <= const_ref_noninit_PROC_STATE_next;
    end
end

endmodule


