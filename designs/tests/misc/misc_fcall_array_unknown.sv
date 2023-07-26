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
logic a;
logic clk;
logic nrst;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .nrst(nrst),
  .a(a)
);

endmodule



//==============================================================================
//
// Module: A (test_fcall_array_unknown.cpp:274:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst,
    input logic a
);

// Variables generated for SystemC signals
logic pca[2];
logic pca1[2];
logic pcat[2];
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;

//------------------------------------------------------------------------------
// Method process: read_pointer_array_unknown1 (test_fcall_array_unknown.cpp:111:5) 

always_comb 
begin : read_pointer_array_unknown1     // test_fcall_array_unknown.cpp:111:5
    logic w;
    // Call f_ch_ref() begin
    w = pca[a];
    t0 = w;
    // Call f_ch_ref() end
end

//------------------------------------------------------------------------------
// Method process: chan_pointer_array_param (test_fcall_array_unknown.cpp:119:5) 

always_comb 
begin : chan_pointer_array_param     // test_fcall_array_unknown.cpp:119:5
    logic w;
    logic y;
    // Call f_ch_ref() begin
    w = pca1[a];
    t0 = w;
    // Call f_ch_ref() end
    // Call f_ch_ptr() begin
    y = |(pca1[a] ^ pca1[a]);
    t0 = y;
    // Call f_ch_ptr() end
end

//------------------------------------------------------------------------------
// Clocked THREAD: chan_pointer_array_param_thread (test_fcall_array_unknown.cpp:128:5) 

// Thread-local variables
logic pcat_next[2];
logic signed [31:0] t0_next;

// Next-state combinational logic
always_comb begin : chan_pointer_array_param_thread_comb     // test_fcall_array_unknown.cpp:128:5
    chan_pointer_array_param_thread_func;
end
function void chan_pointer_array_param_thread_func;
    logic w;
    logic y;
    pcat_next = pcat;
    t0_next = t0;
    // Call f_ch_ref() begin
    w = pcat[a];
    t0_next = w;
    // Call f_ch_ref() end
    // Call f_ch_ptr() begin
    y = |(pcat[a] ^ pcat[a]);
    t0_next = y;
    // Call f_ch_ptr() end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : chan_pointer_array_param_thread_ff
    if ( ~nrst ) begin
        pcat[0] <= 1;
    end
    else begin
        pcat <= pcat_next;
        t0 <= t0_next;
    end
end

//------------------------------------------------------------------------------
// Method process: var_pointer_array_param (test_fcall_array_unknown.cpp:142:5) 

// Process-local variables
logic [3:0] pia[2];
logic [3:0] ia[2];

always_comb 
begin : var_pointer_array_param     // test_fcall_array_unknown.cpp:142:5
    logic [3:0] c1;
    logic [3:0] z;
    logic [3:0] x;
    c1 = pia[a];
    t1 = c1;
    // Call f_var_ref() begin
    z = ia[a];
    t0 = z;
    // Call f_var_ref() end
    // Call f_var_ref() begin
    z = pia[a];
    t0 = z;
    // Call f_var_ref() end
    // Call f_var_ptr() begin
    x = pia[a];
    t0 = x;
    // Call f_var_ptr() end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var_pointer_array_param_thread (test_fcall_array_unknown.cpp:152:5) 

// Thread-local variables
logic [3:0] piat[2];
logic [3:0] piat_next[2];
logic [3:0] iat[2];
logic [3:0] iat_next[2];
logic signed [31:0] t2_next;
logic signed [31:0] t0_next0;

// Next-state combinational logic
always_comb begin : var_pointer_array_param_thread_comb     // test_fcall_array_unknown.cpp:152:5
    var_pointer_array_param_thread_func;
end
function void var_pointer_array_param_thread_func;
    logic [3:0] c1;
    logic [3:0] z;
    logic [3:0] x;
    iat_next = iat;
    piat_next = piat;
    t0_next0 = t0;
    t2_next = t2;
    c1 = piat_next[a];
    t2_next = c1;
    // Call f_var_ref() begin
    z = iat_next[a];
    t0_next0 = z;
    // Call f_var_ref() end
    // Call f_var_ref() begin
    z = piat_next[a];
    t0_next0 = z;
    // Call f_var_ref() end
    // Call f_var_ptr() begin
    x = piat_next[a];
    t0_next0 = x;
    // Call f_var_ptr() end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : var_pointer_array_param_thread_ff
    if ( ~nrst ) begin
        iat[0] <= 1;
        piat[0] <= 1;
    end
    else begin
        piat <= piat_next;
        iat <= iat_next;
        t2 <= t2_next;
        t0 <= t0_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: var_pointer_array_init (test_fcall_array_unknown.cpp:170:5) 

// Process-local variables
logic [3:0] pia1[2];

always_comb 
begin : var_pointer_array_init     // test_fcall_array_unknown.cpp:170:5
    integer j;
    logic b;
    pia1[1] = 0;
    pia1[a] = 1;
    j = pia1[a] / 2;
    pia1[a] = 2;
    j = pia1[a] - pia1[a];
    t3 = j;
    b = 0;
    t3 = b;
end

//------------------------------------------------------------------------------
// Method process: var_pointer_array_plus (test_fcall_array_unknown.cpp:192:5) 

// Process-local variables
logic [3:0] pia2[2];

always_comb 
begin : var_pointer_array_plus     // test_fcall_array_unknown.cpp:192:5
    pia2[a] = 2;
    t4 = pia2[a];
end

//------------------------------------------------------------------------------
// Method process: pointer_array_param (test_fcall_array_unknown.cpp:220:5) 

// Process-local variables
logic [3:0] ia1[2];
logic [3:0] pia3[2];
logic [3:0] iaa[2][2];
logic [3:0] piaa[2][2];

always_comb 
begin : pointer_array_param     // test_fcall_array_unknown.cpp:220:5
    logic [3:0] y;
    logic [3:0] y_1;
    integer k;
    // Call f_arr() begin
    y = ia1[1];
    t5 = y;
    // Call f_arr() end
    // Call f_arr_ptr() begin
    y_1 = pia3[1];
    t5 = y_1;
    // Call f_arr_ptr() end
    // Call f_arr() begin
    y = iaa[1][1];
    t5 = y;
    // Call f_arr() end
    // Call f_arr_ptr() begin
    y_1 = piaa[1][1];
    t5 = y_1;
    // Call f_arr_ptr() end
    // Call f_arr_ptr() begin
    y_1 = piaa[a][1];
    t5 = y_1;
    // Call f_arr_ptr() end
    // Call f_arr_ref() begin
    k = ia1[1];
    t5 = k;
    // Call f_arr_ref() end
    // Call f_arr_ref() begin
    k = iaa[1][1];
    t5 = k;
    // Call f_arr_ref() end
    // Call f_arr_ref() begin
    k = iaa[a][1];
    t5 = k;
    // Call f_arr_ref() end
end

//------------------------------------------------------------------------------
// Method process: read_pointer_array_unknown_b1 (test_fcall_array_unknown.cpp:248:5) 

always_comb 
begin : read_pointer_array_unknown_b1     // test_fcall_array_unknown.cpp:248:5
end

//------------------------------------------------------------------------------
// Method process: read_pointer_array_unknown_b2 (test_fcall_array_unknown.cpp:257:5) 

always_comb 
begin : read_pointer_array_unknown_b2     // test_fcall_array_unknown.cpp:257:5
end

endmodule


