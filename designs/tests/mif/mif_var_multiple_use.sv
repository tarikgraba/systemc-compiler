//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
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
logic rst;
logic signed [31:0] t;
logic signed [31:0] z;
logic signed [31:0] minst_p[2];
logic minst_clk[2];
logic minst_rst[2];
logic signed [31:0] minst_in[2];
logic signed [31:0] minst_out[2];

// Assignments generated for C++ channel arrays
assign minst_clk[0] = clk;
assign minst_clk[1] = clk;
assign minst_rst[0] = rst;
assign minst_rst[1] = rst;
assign minst_in[0] = t;
assign minst_in[1] = z;
assign t = minst_out[0];
assign t = minst_out[1];

//------------------------------------------------------------------------------
// Method process: minst_ptrProc (test_mif_var_multiple_use.cpp:42:5) 

// Process-local variables
logic [3:0] minst_vp[2];

always_comb 
begin : minst_ptrProc     // test_mif_var_multiple_use.cpp:42:5
    minst_p[0] = minst_in[0];
    minst_vp[0] = 3;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrProc (test_mif_var_multiple_use.cpp:48:5) 

// Thread-local variables
logic signed [31:0] minst_p_next[2];
logic [3:0] minst_vp[2];

// Next-state combinational logic
always_comb begin : minst_thrProc_comb     // test_mif_var_multiple_use.cpp:48:5
    minst_thrProc_func;
end
function void minst_thrProc_func;
    minst_p_next[0] = minst_p[0];
    minst_vp[0] = 5;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0] or posedge minst_rst[0]) 
begin : minst_thrProc_ff
    if ( minst_rst[0] ) begin
        minst_p[0] <= 4;
    end
    else begin
        minst_p[0] <= minst_p_next[0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrSecProc (test_mif_var_multiple_use.cpp:59:5) 

// Thread-local variables
logic signed [31:0] minst_p_next0[2];
logic [3:0] minst_vp[2];

// Next-state combinational logic
always_comb begin : minst_thrSecProc_comb     // test_mif_var_multiple_use.cpp:59:5
    minst_thrSecProc_func;
end
function void minst_thrSecProc_func;
    minst_p_next0[0] = minst_p[0];
    minst_vp[0] = 7;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0] or posedge minst_rst[0]) 
begin : minst_thrSecProc_ff
    if ( minst_rst[0] ) begin
        minst_p[0] <= 6;
    end
    else begin
        minst_p[0] <= minst_p_next0[0];
    end
end

//------------------------------------------------------------------------------
// Method process: minst_ptrProc0 (test_mif_var_multiple_use.cpp:42:5) 

always_comb 
begin : minst_ptrProc0     // test_mif_var_multiple_use.cpp:42:5
    minst_p[1] = minst_in[1];
    minst_vp[1] = 3;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrProc0 (test_mif_var_multiple_use.cpp:48:5) 

// Next-state combinational logic
always_comb begin : minst_thrProc0_comb     // test_mif_var_multiple_use.cpp:48:5
    minst_thrProc0_func;
end
function void minst_thrProc0_func;
    minst_p_next[1] = minst_p[1];
    minst_vp[1] = 5;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1] or posedge minst_rst[1]) 
begin : minst_thrProc0_ff
    if ( minst_rst[1] ) begin
        minst_p[1] <= 4;
    end
    else begin
        minst_p[1] <= minst_p_next[1];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrSecProc0 (test_mif_var_multiple_use.cpp:59:5) 

// Next-state combinational logic
always_comb begin : minst_thrSecProc0_comb     // test_mif_var_multiple_use.cpp:59:5
    minst_thrSecProc0_func;
end
function void minst_thrSecProc0_func;
    minst_p_next[1] = minst_p[1];
    minst_vp[1] = 7;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1] or posedge minst_rst[1]) 
begin : minst_thrSecProc0_ff
    if ( minst_rst[1] ) begin
        minst_p[1] <= 6;
    end
    else begin
        minst_p[1] <= minst_p_next[1];
    end
end

endmodule


