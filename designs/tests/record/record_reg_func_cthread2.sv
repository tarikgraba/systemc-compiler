//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
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
// Clocked THREAD: record_reg (test_reg_func_cthread2.cpp:40:5) 

// Thread-local variables
logic signed [31:0] val;
logic signed [31:0] val_next;
logic signed [31:0] r_sin;
logic signed [31:0] r_sin_next;
logic signed [31:0] t0_next;
logic [1:0] record_reg_PROC_STATE;
logic [1:0] record_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : record_reg_comb     // test_reg_func_cthread2.cpp:40:5
    record_reg_func;
end
function void record_reg_func;
    integer r_cos;
    integer i;
    r_sin_next = r_sin;
    t0_next = t0;
    val_next = val;
    record_reg_PROC_STATE_next = record_reg_PROC_STATE;
    
    case (record_reg_PROC_STATE)
        0: begin
            val_next = 1;
            // Call f() begin
            r_sin_next = 1;
            r_cos = 2;
            record_reg_PROC_STATE_next = 1; return;    // test_reg_func_cthread2.cpp:35:9;
            // Call f() end
        end
        1: begin
            // Call f() begin
            i = r_sin_next + val_next;
            t0_next = i;
            // Call f() end
            val_next = 2;
            // Call f() begin
            r_sin_next = 1;
            r_cos = 2;
            record_reg_PROC_STATE_next = 2; return;    // test_reg_func_cthread2.cpp:35:9;
            // Call f() end
        end
        2: begin
            // Call f() begin
            i = r_sin_next + val_next;
            t0_next = i;
            // Call f() end
            val_next = 1;
            // Call f() begin
            r_sin_next = 1;
            r_cos = 2;
            record_reg_PROC_STATE_next = 1; return;    // test_reg_func_cthread2.cpp:35:9;
            // Call f() end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_reg_ff
    if ( ~rstn ) begin
        record_reg_PROC_STATE <= 0;    // test_reg_func_cthread2.cpp:42:9;
    end
    else begin
        val <= val_next;
        r_sin <= r_sin_next;
        t0 <= t0_next;
        record_reg_PROC_STATE <= record_reg_PROC_STATE_next;
    end
end

endmodule


