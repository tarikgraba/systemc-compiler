//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: D ()
//
module D // "d"
(
    input logic clk,
    input logic rstn
);

// Variables generated for SystemC signals
logic in;


//------------------------------------------------------------------------------
// Child module instances

B b
(
  .clk(clk),
  .rstn(rstn),
  .s(in)
);

C c
(
  .in(in)
);

endmodule



//==============================================================================
//
// Module: B (test_multi_bind1.cpp:74:5)
//
module B // "d.b"
(
    input logic clk,
    input logic rstn,
    output logic s
);

//------------------------------------------------------------------------------
// Clocked THREAD: thread (test_multi_bind1.cpp:43:5) 

// Thread-local variables
logic s_next;

// Next-state combinational logic
always_comb begin : thread_comb     // test_multi_bind1.cpp:43:5
    thread_func;
end
function void thread_func;
    s_next = s;
    s_next = !s;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread_ff
    if ( ~rstn ) begin
        s <= 0;
    end
    else begin
        s <= s_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .in(s)
);

endmodule



//==============================================================================
//
// Module: A (test_multi_bind1.cpp:34:5)
//
module A // "d.b.a"
(
    input logic in
);

// Variables generated for SystemC signals
logic t;

//------------------------------------------------------------------------------
// Method process: meth (test_multi_bind1.cpp:22:5) 

always_comb 
begin : meth     // test_multi_bind1.cpp:22:5
    logic b;
    b = in;
    t = b;
end

endmodule



//==============================================================================
//
// Module: C (test_multi_bind1.cpp:75:5)
//
module C // "d.c"
(
    input logic in
);

// Variables generated for SystemC signals
logic v;

//------------------------------------------------------------------------------
// Method process: meth (test_multi_bind1.cpp:63:5) 

always_comb 
begin : meth     // test_multi_bind1.cpp:63:5
    logic b;
    b = in;
    v = b;
end

endmodule


