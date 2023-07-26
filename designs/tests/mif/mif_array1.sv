//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: tb ()
//
module tb // "tb_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic rst;


//------------------------------------------------------------------------------
// Child module instances

top top_inst
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: top (test_mif_array1.cpp:95:5)
//
module top // "tb_inst.top_inst"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic a[2];


//------------------------------------------------------------------------------
// Child module instances

mod_if minst
(
  .clk(clk),
  .rst(rst),
  .a(a[0]),
  .b(a[0])
);

endmodule



//==============================================================================
//
// Module: mod_if (test_mif_array1.cpp:63:5)
//
module mod_if // "tb_inst.top_inst.minst"
(
    input logic clk,
    input logic rst,
    input logic a,
    output logic b
);

// Variables generated for SystemC signals
logic s;

//------------------------------------------------------------------------------
// Method process: metProc (test_mif_array1.cpp:36:5) 

// Process-local variables
logic [1:0] var_v;

always_comb 
begin : metProc     // test_mif_array1.cpp:36:5
    var_v = a;
    b = s && |var_v;
end

//------------------------------------------------------------------------------
// Clocked THREAD: thrProc (test_mif_array1.cpp:41:5) 

// Thread-local variables
logic [2:0] i;
logic [2:0] i_next;
logic s_next;

// Next-state combinational logic
always_comb begin : thrProc_comb     // test_mif_array1.cpp:41:5
    thrProc_func;
end
function void thrProc_func;
    i_next = i;
    s_next = s;
    s_next = |(i_next++);
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : thrProc_ff
    if ( rst ) begin
        i <= 0;
    end
    else begin
        i <= i_next;
        s <= s_next;
    end
end

endmodule


