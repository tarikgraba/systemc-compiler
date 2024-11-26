//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test_stat ()
//
module test_stat // "tinst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic sig;

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_statistic.cpp:106:5) 

// Thread-local variables
logic signed [31:0] state;
logic signed [31:0] state_next;
logic sig_next;
logic [1:0] test_thread_PROC_STATE;
logic [1:0] test_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_statistic.cpp:106:5
    test_thread_func;
end
function void test_thread_func;
    sig_next = sig;
    state_next = state;
    test_thread_PROC_STATE_next = test_thread_PROC_STATE;
    
    case (test_thread_PROC_STATE)
        0: begin
            sig_next = |state_next;
            if (!sig)
            begin
                test_thread_PROC_STATE_next = 1; return;    // test_statistic.cpp:113:25;
            end
            test_thread_PROC_STATE_next = 0; return;    // test_statistic.cpp:114:13;
        end
        1: begin
            if (!sig)
            begin
                test_thread_PROC_STATE_next = 1; return;    // test_statistic.cpp:113:25;
            end
            test_thread_PROC_STATE_next = 0; return;    // test_statistic.cpp:114:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread_ff
    if ( ~rstn ) begin
        state <= 0;
        test_thread_PROC_STATE <= 0;    // test_statistic.cpp:108:9;
    end
    else begin
        state <= state_next;
        sig <= sig_next;
        test_thread_PROC_STATE <= test_thread_PROC_STATE_next;
    end
end

endmodule


