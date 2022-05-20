//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic minst_rst;
logic minst_clk;

// Local parameters generated for C++ constants
localparam logic minst_v = 1;
localparam logic minst_vv = 1;

// Assignments generated for C++ channel arrays
assign minst_clk = clk;

//------------------------------------------------------------------------------
// Method process: minst_meth (test_read_notdef_var.cpp:36:5) 

always_comb 
begin : minst_meth     // test_read_notdef_var.cpp:36:5
    logic b;
    b = minst_v;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread (test_read_notdef_var.cpp:40:5) 

// Thread-local variables
logic c;
logic c_next;
logic thread_PROC_STATE;
logic thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : minst_thread_comb     // test_read_notdef_var.cpp:40:5
    minst_thread_func;
end
function void minst_thread_func;
    logic d;
    c_next = c;
    thread_PROC_STATE_next = thread_PROC_STATE;
    
    case (thread_PROC_STATE)
        0: begin
            c_next = minst_vv;
            thread_PROC_STATE_next = 1; return;    // test_read_notdef_var.cpp:46:13;
        end
        1: begin
            d = c_next;
            c_next = minst_vv;
            thread_PROC_STATE_next = 1; return;    // test_read_notdef_var.cpp:46:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge minst_clk or posedge minst_rst) 
begin : minst_thread_ff
    if ( minst_rst ) begin
        thread_PROC_STATE <= 0;    // test_read_notdef_var.cpp:42:9;
    end
    else begin
        c <= c_next;
        thread_PROC_STATE <= thread_PROC_STATE_next;
    end
end

endmodule


