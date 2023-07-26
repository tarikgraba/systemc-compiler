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
logic rstn;
logic [31:0] pp_mif_a_resp[2];
logic [31:0] pp_res[2];
logic req[2];
logic [15:0] s;
logic pp_clk[2];
logic pp_rstn[2];
logic pp_req[2];
logic pp_mif_a_clk[2];
logic pp_mif_a_rstn[2];

// Assignments generated for C++ channel arrays
assign pp_clk[0] = clk;
assign pp_clk[1] = clk;
assign pp_rstn[0] = rstn;
assign pp_rstn[1] = rstn;
assign pp_req = req;
assign pp_mif_a_clk = pp_clk;
assign pp_mif_a_rstn = pp_rstn;

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc (test_sc_vector_mif4.cpp:27:5) 

// Thread-local variables
logic [31:0] pp_mif_a_resp_next[2];

// Next-state combinational logic
always_comb begin : mif_a_threadProc_comb     // test_sc_vector_mif4.cpp:27:5
    mif_a_threadProc_func;
end
function void mif_a_threadProc_func;
    pp_mif_a_resp_next[0] = pp_mif_a_resp[0];
    pp_mif_a_resp_next[0] = pp_mif_a_resp[0] + 1;
endfunction

// Synchronous register update
always_ff @(posedge pp_mif_a_clk[0] or negedge pp_mif_a_rstn[0]) 
begin : mif_a_threadProc_ff
    if ( ~pp_mif_a_rstn[0] ) begin
        pp_mif_a_resp[0] <= 0;
    end
    else begin
        pp_mif_a_resp[0] <= pp_mif_a_resp_next[0];
    end
end

//------------------------------------------------------------------------------
// Method process: pp_methProc (test_sc_vector_mif4.cpp:63:5) 

always_comb 
begin : pp_methProc     // test_sc_vector_mif4.cpp:63:5
    integer unsigned TMP_0;
    pp_res[0] = 0;
    if (pp_req[0])
    begin
        // Call getData() begin
        TMP_0 = pp_mif_a_resp[0];
        // Call getData() end
        pp_res[0] = TMP_0 % 3;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc0 (test_sc_vector_mif4.cpp:27:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc0_comb     // test_sc_vector_mif4.cpp:27:5
    mif_a_threadProc0_func;
end
function void mif_a_threadProc0_func;
    pp_mif_a_resp_next[1] = pp_mif_a_resp[1];
    pp_mif_a_resp_next[1] = pp_mif_a_resp[1] + 1;
endfunction

// Synchronous register update
always_ff @(posedge pp_mif_a_clk[1] or negedge pp_mif_a_rstn[1]) 
begin : mif_a_threadProc0_ff
    if ( ~pp_mif_a_rstn[1] ) begin
        pp_mif_a_resp[1] <= 0;
    end
    else begin
        pp_mif_a_resp[1] <= pp_mif_a_resp_next[1];
    end
end

//------------------------------------------------------------------------------
// Method process: pp_methProc0 (test_sc_vector_mif4.cpp:63:5) 

always_comb 
begin : pp_methProc0     // test_sc_vector_mif4.cpp:63:5
    integer unsigned TMP_0;
    pp_res[1] = 0;
    if (pp_req[1])
    begin
        // Call getData() begin
        TMP_0 = pp_mif_a_resp[1];
        // Call getData() end
        pp_res[1] = TMP_0 % 3;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mainProc (test_sc_vector_mif4.cpp:97:5) 

// Next-state combinational logic
always_comb begin : mainProc_comb     // test_sc_vector_mif4.cpp:97:5
    mainProc_func;
end
function void mainProc_func;
    integer unsigned TMP_0;
    integer unsigned res;
    // Call getRes() begin
    TMP_0 = pp_res[s];
    // Call getRes() end
    res = TMP_0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : mainProc_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule


