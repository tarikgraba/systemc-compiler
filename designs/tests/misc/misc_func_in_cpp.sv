//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic s;
logic signed [31:0] t0;

//------------------------------------------------------------------------------
// Method process: methProc (test_func_in_cpp.h:29:5) 

always_comb 
begin : methProc     // test_func_in_cpp.h:29:5
    logic [3:0] l;
    l = 0;
    // Call f1() begin
    l = s;
    // Call f1() end
    t0 = l;
end

endmodule


