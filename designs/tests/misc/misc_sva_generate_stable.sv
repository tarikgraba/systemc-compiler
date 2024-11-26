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
logic signed [31:0] s;
logic signed [31:0] s_d;
logic signed [31:0] s_d2;
logic signed [31:0] s_d3;
logic signed [31:0] ps;
logic st;
logic [3:0] st1;
logic st2;
logic st_enbl;
logic st_enbl_d;
logic [3:0] cntr;
logic signed [11:0] i0;
logic signed [11:0] i1;
logic [11:0] i2;
logic signed [11:0] i3;
logic [11:0] i4;
logic [76:0] i5;
logic [76:0] i6;
logic [31:0] i7;
logic signed [63:0] i8;
logic signed [63:0] i9;

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_sva_generate_stable.cpp:72:5) 

// Thread-local variables
logic signed [31:0] s_next;
logic signed [31:0] s_d_next;
logic signed [31:0] s_d2_next;
logic signed [31:0] s_d3_next;
logic signed [31:0] ps_next;
logic [3:0] st1_next;
logic st2_next;
logic st_enbl_next;
logic st_enbl_d_next;
logic [3:0] cntr_;
logic [3:0] cntr__next;
logic [3:0] cntr_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_sva_generate_stable.cpp:72:5
    test_thread_func;
end
function void test_thread_func;
    cntr__next = cntr_;
    cntr_next = cntr;
    ps_next = ps;
    s_d2_next = s_d2;
    s_d3_next = s_d3;
    s_d_next = s_d;
    s_next = s;
    st1_next = st1;
    st2_next = st2;
    st_enbl_d_next = st_enbl_d;
    st_enbl_next = st_enbl;
    s_d_next = s;
    s_d2_next = s_d;
    s_d3_next = s_d2;
    ps_next = s;
    s_next = !(|s);
    if (cntr__next >= 7 || cntr__next == 0)
    begin
        st1_next = 1;
    end else begin
        st1_next = s;
    end
    if (st_enbl)
    begin
        st2_next = 1;
    end else begin
        st2_next = 0;
    end
    st_enbl_next = cntr >= 7;
    st_enbl_d_next = st_enbl;
    cntr_next = cntr__next;
    cntr__next++;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread_ff
    if ( ~rstn ) begin
        s <= 0;
        s_d <= 0;
        s_d2 <= 0;
        s_d3 <= 0;
        ps <= 0;
        st <= 1;
        st1 <= 0;
        st2 <= 0;
        cntr_ <= 0;
        st_enbl <= 0;
        st_enbl_d <= 0;
    end
    else begin
        s <= s_next;
        s_d <= s_d_next;
        s_d2 <= s_d2_next;
        s_d3 <= s_d3_next;
        ps <= ps_next;
        st1 <= st1_next;
        st2 <= st2_next;
        st_enbl <= st_enbl_next;
        st_enbl_d <= st_enbl_d_next;
        cntr_ <= cntr__next;
        cntr <= cntr_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: integer_thread (test_sva_generate_stable.cpp:122:5) 

// Thread-local variables
logic signed [11:0] i1_next;
logic [11:0] i2_next;
logic signed [11:0] i3_next;
logic [11:0] i4_next;
logic [76:0] i5_next;
logic [76:0] i6_next;
logic [31:0] i7_next;
logic signed [63:0] i8_next;
logic signed [63:0] i9_next;

// Next-state combinational logic
always_comb begin : integer_thread_comb     // test_sva_generate_stable.cpp:122:5
    integer_thread_func;
end
function void integer_thread_func;
    i1_next = i1;
    i2_next = i2;
    i3_next = i3;
    i4_next = i4;
    i5_next = i5;
    i6_next = i6;
    i7_next = i7;
    i8_next = i8;
    i9_next = i9;
    i1_next = i1 + 1;
    i2_next = i2 + 1;
    i3_next = i3 - 1;
    i4_next = i4 - 1;
    i5_next = 42;
    i6_next = signed'({1'b0, i6}) + 1;
    i7_next = i7 + 1;
    i8_next = i7 < 20 ? 64'd12 : 64'(i7 + 1);
    i9_next = i9 + 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : integer_thread_ff
    if ( ~rstn ) begin
        i0 <= 10;
        i1 <= 0;
        i2 <= 0;
        i3 <= 1000;
        i4 <= 1000;
        i5 <= 0;
        i6 <= 0;
        i7 <= 0;
        i8 <= 12;
        i9 <= 0;
    end
    else begin
        i1 <= i1_next;
        i2 <= i2_next;
        i3 <= i3_next;
        i4 <= i4_next;
        i5 <= i5_next;
        i6 <= i6_next;
        i7 <= i7_next;
        i8 <= i8_next;
        i9 <= i9_next;
    end
end

`ifndef INTEL_SVA_OFF
sctAssertLine51 : assert property (
    @(posedge clk) rstn |-> $stable(st) );
sctAssertLine52 : assert property (
    @(posedge clk) st_enbl |=> $stable(st1) );
sctAssertLine53 : assert property (
    @(posedge clk) st_enbl && !st_enbl_d |=> $rose(st2) );
sctAssertLine54 : assert property (
    @(posedge clk) cntr == 1 |-> $fell(s) );
sctAssertLine55 : assert property (
    @(posedge clk) cntr == 2 |=> $fell(s) );
sctAssertLine56 : assert property (
    @(posedge clk) cntr == 2 |-> $rose(s) );
sctAssertLine58 : assert property (
    @(posedge clk) cntr == 8 |-> $stable(st1) );
sctAssertLine59 : assert property (
    @(posedge clk) cntr == 7 |=> $stable(st1) );
sctAssertLine60 : assert property (
    @(posedge clk) cntr == 8 |-> $stable(st1)[*2] );
sctAssertLine61 : assert property (
    @(posedge clk) cntr == 7 |=> $stable(st1)[*2] );
sctAssertLine63 : assert property (
    @(posedge clk) cntr == 7 |=> $stable(st1)[*4] );
sctAssertLine64 : assert property (
    @(posedge clk) cntr == 15 |=> $stable(st1)[*2] );
sctAssertLine65 : assert property (
    @(posedge clk) cntr == 15 |-> $stable(st1)[*3] );
sctAssertLine67 : assert property (
    @(posedge clk) cntr > 7 && cntr < 15 |-> $stable(st1)[*3] );
sctAssertLine68 : assert property (
    @(posedge clk) cntr > 7 && cntr < 15 |=> $stable(st1)[*3] );
sctAssertLine112 : assert property (
    @(posedge clk) rstn |=> $stable(i0) );
sctAssertLine113 : assert property (
    @(posedge clk) |i2 |=> $stable(i5) );
sctAssertLine114 : assert property (
    @(posedge clk) rstn && i7 < 18 |=> $stable(i8)[*2] );
sctAssertLine115 : assert property (
    @(posedge clk) rstn |=> $rose(i1) );
sctAssertLine116 : assert property (
    @(posedge clk) |i1 |=> $rose(i2) );
sctAssertLine117 : assert property (
    @(posedge clk) |i2 |=> $rose(i6) );
sctAssertLine118 : assert property (
    @(posedge clk) |i2 |=> $rose(i9) );
sctAssertLine119 : assert property (
    @(posedge clk) |i2 |-> $fell(i3) );
sctAssertLine120 : assert property (
    @(posedge clk) |i2 |=> $fell(i4) );
`endif // INTEL_SVA_OFF

endmodule


