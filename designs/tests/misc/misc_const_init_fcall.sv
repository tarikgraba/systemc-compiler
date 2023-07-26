//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "modA"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic q;
logic [47:0] t;

// Local parameters generated for C++ constants
localparam logic [31:0] TileDimWidth = 12;

//------------------------------------------------------------------------------
// Clocked THREAD: stExtIfPushFsmProc (test_const_init_fcall.cpp:48:5) 

// Thread-local variables
logic [11:0] x0;
logic [11:0] x0_next;
logic [1:0] stExtIfPushFsmProc_PROC_STATE;
logic [1:0] stExtIfPushFsmProc_PROC_STATE_next;

// Thread-local constants
logic [11:0] N0;

// Next-state combinational logic
always_comb begin : stExtIfPushFsmProc_comb     // test_const_init_fcall.cpp:48:5
    stExtIfPushFsmProc_func;
end
function void stExtIfPushFsmProc_func;
    logic burst;
    logic [11:0] TMP_0;
    logic [47:0] dims;
    integer unsigned n;
    x0_next = x0;
    stExtIfPushFsmProc_PROC_STATE_next = stExtIfPushFsmProc_PROC_STATE;
    
    case (stExtIfPushFsmProc_PROC_STATE)
        0: begin
            x0_next = 0;
            x0_next = x0_next + 1;
            stExtIfPushFsmProc_PROC_STATE_next = 1; return;    // test_const_init_fcall.cpp:67:21;
        end
        1: begin
            if (!q)
            begin
                stExtIfPushFsmProc_PROC_STATE_next = 1; return;    // test_const_init_fcall.cpp:67:21;
            end
            if (x0_next <= N0)
            begin
                x0_next = x0_next + 1;
                stExtIfPushFsmProc_PROC_STATE_next = 1; return;    // test_const_init_fcall.cpp:67:21;
            end
            stExtIfPushFsmProc_PROC_STATE_next = 2; return;    // test_const_init_fcall.cpp:72:13;
        end
        2: begin
            x0_next = 0;
            x0_next = x0_next + 1;
            stExtIfPushFsmProc_PROC_STATE_next = 1; return;    // test_const_init_fcall.cpp:67:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : stExtIfPushFsmProc_ff
    if ( ~nrst ) begin
        logic burst;
        logic [11:0] TMP_0;
        logic [47:0] dims;
        integer unsigned n;
        burst = q;
        dims = t; n = 0;
        // Call getDim() begin
        TMP_0 = dims[n * TileDimWidth +: 12];
        // Call getDim() end
        N0 = burst ? 12'(TMP_0) : 12'd0;
        stExtIfPushFsmProc_PROC_STATE <= 0;    // test_const_init_fcall.cpp:55:9;
    end
    else begin
        x0 <= x0_next;
        stExtIfPushFsmProc_PROC_STATE <= stExtIfPushFsmProc_PROC_STATE_next;
    end
end

endmodule


