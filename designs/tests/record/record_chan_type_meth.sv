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
    input logic clk,
    input logic in_a,
    input logic signed [31:0] in_b,
    output logic out_a,
    output logic signed [31:0] out_b
);

// Variables generated for SystemC signals
logic [31:0] s;
logic [1:0] sim_a;
logic sim_a0;
logic signed [31:0] sim_b;
logic rim_a;
logic signed [31:0] rim_b;
logic tim_a;
logic signed [31:0] tim_b;
logic svec_a[2];
logic signed [31:0] svec_b[2];
logic rvec_a[2];
logic signed [31:0] rvec_b[2];
logic signed [31:0] pim_x;
logic signed [1:0] pim_y;
logic signed [31:0] sig_x;
logic signed [1:0] sig_y;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;

//------------------------------------------------------------------------------
// Method process: record_assignment (test_chan_type_meth.cpp:118:5) 

always_comb 
begin : record_assignment     // test_chan_type_meth.cpp:118:5
    integer r_x;
    logic signed [1:0] r_y;
    integer p_x;
    logic signed [1:0] p_y;
    r_y = 0;
    p_y = 0;
    r_x = p_x; r_y = p_y;
    r_x = p_x; r_y = p_y;
end

//------------------------------------------------------------------------------
// Method process: record_channels (test_chan_type_meth.cpp:127:5) 

always_comb 
begin : record_channels     // test_chan_type_meth.cpp:127:5
    integer r_x;
    logic signed [1:0] r_y;
    integer x;
    r_y = 0;
    r_x = sig_x; r_y = sig_y;
    r_x = sig_x; r_y = sig_y;
    sig_x = r_x; sig_y = r_y;
    sig_x = r_x; sig_y = r_y;
    x = sig_x;
    t0 = x;
end

//------------------------------------------------------------------------------
// Method process: procSignal (test_chan_type_meth.cpp:140:5) 

always_comb 
begin : procSignal     // test_chan_type_meth.cpp:140:5
    logic ss_a;
    integer ss_b;
    logic rr_a;
    integer rr_b;
    rr_a = 1;
    rr_b = sim_a;
    ss_a = rr_a; ss_b = rr_b;
    sim_a0 = ss_a; sim_b = ss_b;
    sim_a0 = ss_a; sim_b = ss_b;
    ss_a = sim_a0; ss_b = sim_b;
    ss_a = sim_a0; ss_b = sim_b;
    t1 = ss_b + rr_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
    rim_a = sim_a0; rim_b = sim_b;
end

//------------------------------------------------------------------------------
// Method process: procSigField (test_chan_type_meth.cpp:164:5) 

always_comb 
begin : procSigField     // test_chan_type_meth.cpp:164:5
    integer unsigned j;
    logic l;
    integer i;
    integer par;
    j = s;
    l = sim_a0;
    l = svec_a[0];
    l = svec_a[j];
    i = sim_b;
    i = svec_b[1];
    i = svec_b[j];
    par = sim_b;
    par = svec_b[1];
    par = svec_b[j + 1];
    if (sim_a0)
    begin
        ++i;
    end
    if (svec_a[1])
    begin
        ++i;
    end
    if (svec_a[j])
    begin
        ++i;
    end
    if (sim_b != 1)
    begin
        ++i;
    end
    if (svec_b[j] != 2)
    begin
        ++i;
    end
    t2 = i + l;
end

//------------------------------------------------------------------------------
// Method process: procPort (test_chan_type_meth.cpp:190:5) 

always_comb 
begin : procPort     // test_chan_type_meth.cpp:190:5
    logic ss_a;
    integer ss_b;
    ss_a = in_a; ss_b = in_b;
    ss_a = in_a; ss_b = in_b;
    out_a = ss_a; out_b = ss_b;
    out_a = ss_a; out_b = ss_b;
    out_a = in_a; out_b = in_b;
    out_a = sim_a0; out_b = sim_b;
end

//------------------------------------------------------------------------------
// Method process: procArr (test_chan_type_meth.cpp:200:5) 

always_comb 
begin : procArr     // test_chan_type_meth.cpp:200:5
    integer unsigned i;
    integer unsigned j;
    logic ss_a;
    integer ss_b;
    logic rr_a[2];
    integer rr_b[2];
    i = s;
    j = s;
    rr_a[1] = 1;
    rr_b[1] = 2;
    ss_a = rr_a[1]; ss_b = rr_b[1];
    ss_a = svec_a[j]; ss_b = svec_b[j];
    ss_a = svec_a[j]; ss_b = svec_b[j];
    rvec_a[i] = rr_a[j]; rvec_b[i] = rr_b[j];
    rvec_a[i] = rr_a[j]; rvec_b[i] = rr_b[j];
    rr_a[i] = svec_a[j]; rr_b[i] = svec_b[j];
    rr_a[i] = svec_a[j]; rr_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
    rvec_a[i] = svec_a[j]; rvec_b[i] = svec_b[j];
end

//------------------------------------------------------------------------------
// Method process: procCtor (test_chan_type_meth.cpp:219:5) 

always_comb 
begin : procCtor     // test_chan_type_meth.cpp:219:5
    logic ss_a;
    integer ss_b;
    logic tt_a;
    integer tt_b;
    tim_a = 0; tim_b = 0;
    tim_a = 0; tim_b = 0;
    tim_a = 0; tim_b = 0;
    tim_a = 0; tim_b = 0;
    out_a = 0; out_b = 0;
    out_a = 0; out_b = 0;
    out_a = 0; out_b = 0;
    out_a = 0; out_b = 0;
    tt_a = ss_a; tt_b = ss_b;
end

//------------------------------------------------------------------------------
// Method process: procCtorPar (test_chan_type_meth.cpp:235:5) 

always_comb 
begin : procCtorPar     // test_chan_type_meth.cpp:235:5
    integer par;
    integer rr_x;
    logic signed [1:0] rr_y;
    par = 42;
    rr_x = par;
    rr_y = 0;
    // Call RecPar() begin
    rr_y = rr_x + 1;
    // Call RecPar() end
    pim_x = rr_x; pim_y = rr_y;
    pim_x = 0; pim_y = 0;
end

//------------------------------------------------------------------------------
// Method process: procCtorFunc (test_chan_type_meth.cpp:244:5) 

always_comb 
begin : procCtorFunc     // test_chan_type_meth.cpp:244:5
    integer par;
    integer ll_x;
    logic signed [1:0] ll_y;
    integer TMP_0_x;
    logic signed [1:0] TMP_0_y;
    integer TMP_1_x;
    logic signed [1:0] TMP_1_y;
    integer rr_x;
    logic signed [1:0] rr_y;
    integer rr_par;
    integer rr_par_1;
    integer hh_x;
    logic signed [1:0] hh_y;
    integer TMP_3_x;
    logic signed [1:0] TMP_3_y;
    integer TMP_4_x;
    logic signed [1:0] TMP_4_y;
    // Call create() begin
    par = 42;
    ll_x = par;
    ll_y = 0;
    // Call RecPar() begin
    ll_y = ll_x + 1;
    // Call RecPar() end
    TMP_0_x = ll_x; TMP_0_y = ll_y;
    // Call create() end
    pim_x = TMP_0_x; pim_y = TMP_0_y;
    // Call create() begin
    par = 42;
    ll_x = par;
    ll_y = 0;
    // Call RecPar() begin
    ll_y = ll_x + 1;
    // Call RecPar() end
    TMP_1_x = ll_x; TMP_1_y = ll_y;
    // Call create() end
    rr_x = TMP_1_x; rr_y = TMP_1_y;
    rr_par = 43;
    // Call create() begin
    rr_par_1 = rr_par;
    hh_x = rr_par_1;
    hh_y = 0;
    // Call RecPar() begin
    hh_y = hh_x + 1;
    // Call RecPar() end
    TMP_3_x = hh_x; TMP_3_y = hh_y;
    // Call create() end
    pim_x = TMP_3_x; pim_y = TMP_3_y;
    rr_par = 44;
    // Call create() begin
    rr_par_1 = rr_par;
    hh_x = rr_par_1;
    hh_y = 0;
    // Call RecPar() begin
    hh_y = hh_x + 1;
    // Call RecPar() end
    TMP_4_x = hh_x; TMP_4_y = hh_y;
    // Call create() end
    rr_x = TMP_4_x; rr_y = TMP_4_y;
end

endmodule


