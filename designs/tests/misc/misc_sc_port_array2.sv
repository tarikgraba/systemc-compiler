//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Dut ()
//
module Dut // "dut"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic [3:0] slave_s;
logic [3:0] tars_r[2];
logic signed [31:0] tars_t0[2];
logic signed [31:0] tars_t1[2];
logic slave_clk;
logic slave_nrst;

// Assignments generated for C++ channel arrays
assign slave_clk = clk;
assign slave_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: slave_thrdProc1 (test_sc_port_array2.cpp:72:5) 

// Thread-local variables
logic signed [31:0] tars_t0_next[2];
logic [3:0] l[2];
logic [3:0] l_next[2];
logic [3:0] tars_a[2][2];
logic [3:0] tars_a_next[2][2];
logic signed [31:0] tars_t1_next[2];
logic [3:0] tars_v[2];

// Next-state combinational logic
always_comb begin : slave_thrdProc1_comb     // test_sc_port_array2.cpp:72:5
    slave_thrdProc1_func;
end
function void slave_thrdProc1_func;
    logic [3:0] val;
    logic [3:0] l_1;
    logic [3:0] val_1;
    integer i;
    l_next = l;
    tars_a_next = tars_a;
    tars_t0_next = tars_t0;
    tars_t1_next = tars_t1;
    val_1 = slave_s;
    // Call fa() begin
    l_next[0] = 0; l_next[1] = 0;
    l_next[0] = val_1;
    l_next[1] = tars_r[1];
    i = tars_r[1];
    tars_a_next[1][i] = l_next[i];
    tars_t1_next[1] = tars_a_next[1][i];
    // Call fa() end
endfunction

// Synchronous register update
always_ff @(posedge slave_clk or negedge slave_nrst) 
begin : slave_thrdProc1_ff
    if ( ~slave_nrst ) begin
        logic [3:0] val;
        logic [3:0] l_1;
        logic [3:0] tars_v;
        val = 1;
        // Call f() begin
        l_1 = val;
        tars_v[1] = l_1 + 1;
        val = tars_r[1];
        tars_t0[1] <= tars_v[1];
        // Call f() end
    end
    else begin
        tars_t0 <= tars_t0_next;
        l <= l_next;
        tars_a <= tars_a_next;
        tars_t1 <= tars_t1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: slave_thrdProc2 (test_sc_port_array2.cpp:82:5) 

// Thread-local variables
logic [3:0] tars_r_next[2];

// Next-state combinational logic
always_comb begin : slave_thrdProc2_comb     // test_sc_port_array2.cpp:82:5
    slave_thrdProc2_func;
end
function void slave_thrdProc2_func;
    logic [3:0] val;
    tars_r_next = tars_r;
    val = slave_s;
    // Call g() begin
    tars_r_next[1] = val;
    // Call g() end
endfunction

// Synchronous register update
always_ff @(posedge slave_clk or negedge slave_nrst) 
begin : slave_thrdProc2_ff
    if ( ~slave_nrst ) begin
    end
    else begin
        tars_r <= tars_r_next;
    end
end

endmodule


