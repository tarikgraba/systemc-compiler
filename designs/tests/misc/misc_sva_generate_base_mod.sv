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
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn
);

// Variables generated for SystemC signals
logic o;
logic r;
logic signed [31:0] s;
logic signed [31:0] r0;

// Local parameters generated for C++ constants
localparam logic [31:0] NN = 3;
localparam logic [7:0] m = 0;
localparam logic [15:0] mm = 0;

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_sva_generate_base_mod.cpp:40:5) 

// Thread-local variables
logic o_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_sva_generate_base_mod.cpp:40:5
    thread1_func;
end
function void thread1_func;
    o_next = o;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread1_ff
    if ( ~rstn ) begin
        o <= 0;
    end
    else begin
        o <= o_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine44 : assert property ( o |=> o );
    `endif // INTEL_SVA_OFF
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread2 (test_sva_generate_base_mod.cpp:78:5) 

// Thread-local variables
logic signed [31:0] s_next;

// Next-state combinational logic
always_comb begin : thread2_comb     // test_sva_generate_base_mod.cpp:78:5
    thread2_func;
end
function void thread2_func;
    s_next = s;
    s_next = !(|s);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread2_ff
    if ( ~rstn ) begin
        s <= 0;
    end
    else begin
        s <= s_next;

    `ifndef INTEL_SVA_OFF
        sctAssertLine83 : assert property ( |s |-> ##3 !(|s) );
    `endif // INTEL_SVA_OFF
    end
end

`ifndef INTEL_SVA_OFF
sctAssertLine74 : assert property (
    @(posedge clk) |r0 |-> ##2 |r0 );
sctAssertLine75 : assert property (
    @(posedge clk) |s |-> ##2 !(|s) );
sctAssertLine76 : assert property (
    @(posedge clk) mm == 0 |-> ##[2:3] mm == NN );
sctAssertLine51 : assert property (
    @(clk) o |-> o );
sctAssertLine52 : assert property (
    @(posedge clk) r |-> r );
sctAssertLine53 : assert property (
    @(posedge clk) |s |-> ##[0:1] !(|s) );
sctAssertLine54 : assert property (
    @(posedge clk) m == 3 |-> ##3 m == NN );
`endif // INTEL_SVA_OFF

endmodule


