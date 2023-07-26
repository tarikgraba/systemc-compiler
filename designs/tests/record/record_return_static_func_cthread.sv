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
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] t0;

//------------------------------------------------------------------------------
// Clocked THREAD: record_return (test_return_static_func_cthread.cpp:40:5) 

// Thread-local variables
logic signed [31:0] r_sin;
logic signed [31:0] r_sin_next;
logic signed [31:0] r_cos;
logic signed [31:0] r_cos_next;
logic signed [31:0] t0_next;
logic record_return_PROC_STATE;
logic record_return_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : record_return_comb     // test_return_static_func_cthread.cpp:40:5
    record_return_func;
end
function void record_return_func;
    integer res_sin;
    integer res_cos;
    integer TMP_0_sin;
    integer TMP_0_cos;
    integer a;
    integer TMP_2_sin;
    integer TMP_2_cos;
    r_cos_next = r_cos;
    r_sin_next = r_sin;
    t0_next = t0;
    record_return_PROC_STATE_next = record_return_PROC_STATE;
    
    case (record_return_PROC_STATE)
        0: begin
            // Call convert_sin_cos() begin
            res_sin = 0;
            res_cos = 1;
            TMP_0_sin = res_sin; TMP_0_cos = res_cos;
            // Call convert_sin_cos() end
            r_sin_next = TMP_0_sin; r_cos_next = TMP_0_cos;
            record_return_PROC_STATE_next = 1; return;    // test_return_static_func_cthread.cpp:46:13;
        end
        1: begin
            a = r_sin_next;
            t0_next = a;
            // Call convert_sin_cos() begin
            res_sin = 0;
            res_cos = 1;
            TMP_2_sin = res_sin; TMP_2_cos = res_cos;
            // Call convert_sin_cos() end
            r_sin_next = TMP_2_sin; r_cos_next = TMP_2_cos;
            record_return_PROC_STATE_next = 1; return;    // test_return_static_func_cthread.cpp:46:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_return_ff
    if ( ~rstn ) begin
        record_return_PROC_STATE <= 0;    // test_return_static_func_cthread.cpp:42:9;
    end
    else begin
        r_sin <= r_sin_next;
        r_cos <= r_cos_next;
        t0 <= t0_next;
        record_return_PROC_STATE <= record_return_PROC_STATE_next;
    end
end

endmodule


