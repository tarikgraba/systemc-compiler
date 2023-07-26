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
logic req[3];
logic [15:0] p_data[2][3];
logic p_clk[2];
logic p_rstn[2];
logic p_req[2][3];

// Local parameters generated for C++ constants
localparam logic [31:0] N = 3;
localparam logic [31:0] M = 2;

// Assignments generated for C++ channel arrays
assign p_clk[0] = clk;
assign p_clk[1] = clk;
assign p_rstn[0] = rstn;
assign p_rstn[1] = rstn;
assign p_req[0][0] = req[0];
assign p_req[0][1] = req[1];
assign p_req[0][2] = req[2];
assign p_req[1][0] = req[0];
assign p_req[1][1] = req[1];
assign p_req[1][2] = req[2];

//------------------------------------------------------------------------------
// Clocked THREAD: p_threadProc (test_array_sc_vector.cpp:28:5) 

// Thread-local variables
logic [15:0] p_data_next[2][3];

// Next-state combinational logic
always_comb begin : p_threadProc_comb     // test_array_sc_vector.cpp:28:5
    p_threadProc_func;
end
function void p_threadProc_func;
    p_data_next[0] = p_data[0];
    for (integer i_1 = 0; i_1 < 3; ++i_1)
    begin
        p_data_next[0][i_1] = p_req[0][i_1] ? i_1 : 0;
    end
endfunction

// Synchronous register update
always_ff @(posedge p_clk[0] or negedge p_rstn[0]) 
begin : p_threadProc_ff
    if ( ~p_rstn[0] ) begin
        for (integer i = 0; i < 3; ++i)
        begin
            p_data[0][i] <= 0;
        end
    end
    else begin
        p_data[0] <= p_data_next[0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: p_threadProc0 (test_array_sc_vector.cpp:28:5) 

// Next-state combinational logic
always_comb begin : p_threadProc0_comb     // test_array_sc_vector.cpp:28:5
    p_threadProc0_func;
end
function void p_threadProc0_func;
    p_data_next[1] = p_data[1];
    for (integer i_1 = 0; i_1 < 3; ++i_1)
    begin
        p_data_next[1][i_1] = p_req[1][i_1] ? i_1 : 0;
    end
endfunction

// Synchronous register update
always_ff @(posedge p_clk[1] or negedge p_rstn[1]) 
begin : p_threadProc0_ff
    if ( ~p_rstn[1] ) begin
        for (integer i = 0; i < 3; ++i)
        begin
            p_data[1][i] <= 0;
        end
    end
    else begin
        p_data[1] <= p_data_next[1];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mainProc (test_array_sc_vector.cpp:72:5) 

// Thread-local variables
logic req_next[3];

// Next-state combinational logic
always_comb begin : mainProc_comb     // test_array_sc_vector.cpp:72:5
    mainProc_func;
end
function void mainProc_func;
    logic [15:0] TMP_0;
    integer i_2;
    logic [15:0] x;
    req_next = req;
    for (integer i_1 = 0; i_1 < M; ++i_1)
    begin
        for (integer j = 0; j < N; ++j)
        begin
            i_2 = j;
            // Call getData() begin
            TMP_0 = p_data[i_1][i_2];
            // Call getData() end
            x = TMP_0;
        end
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : mainProc_ff
    if ( ~rstn ) begin
        for (integer i = 0; i < N; ++i)
        begin
            req[i] <= 0;
        end
    end
    else begin
        req <= req_next;
    end
end

endmodule


