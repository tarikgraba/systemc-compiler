//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic arstn;
logic [4:0] wakeup_time;

//------------------------------------------------------------------------------
// Clocked THREAD: for_cntr_scint (test_cthread_for_cntr_scint.cpp:33:5) 

// Thread-local variables
logic [4:0] i;
logic [4:0] i_next;
logic [4:0] wakeupTime;
logic [4:0] wakeupTime_next;
logic [1:0] for_cntr_scint_PROC_STATE;
logic [1:0] for_cntr_scint_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_cntr_scint_comb     // test_cthread_for_cntr_scint.cpp:33:5
    for_cntr_scint_func;
end
function void for_cntr_scint_func;
    i_next = i;
    wakeupTime_next = wakeupTime;
    for_cntr_scint_PROC_STATE_next = for_cntr_scint_PROC_STATE;
    
    case (for_cntr_scint_PROC_STATE)
        0: begin
            for_cntr_scint_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:38:13;
        end
        1: begin
            wakeupTime_next = wakeup_time;
            i_next = 0;
            if (i_next < wakeupTime_next)
            begin
                for_cntr_scint_PROC_STATE_next = 2; return;    // test_cthread_for_cntr_scint.cpp:42:17;
            end
            for_cntr_scint_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:38:13;
        end
        2: begin
            i_next++;
            if (i_next < wakeupTime_next)
            begin
                for_cntr_scint_PROC_STATE_next = 2; return;    // test_cthread_for_cntr_scint.cpp:42:17;
            end
            for_cntr_scint_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:38:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_cntr_scint_ff
    if ( ~arstn ) begin
        for_cntr_scint_PROC_STATE <= 0;    // test_cthread_for_cntr_scint.cpp:35:9;
    end
    else begin
        i <= i_next;
        wakeupTime <= wakeupTime_next;
        for_cntr_scint_PROC_STATE <= for_cntr_scint_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_cntr_scint2 (test_cthread_for_cntr_scint.cpp:48:5) 

// Thread-local variables
logic signed [4:0] i0;
logic signed [4:0] i_next0;
logic [31:0] wakeupTime0;
logic [31:0] wakeupTime_next0;
logic [1:0] for_cntr_scint2_PROC_STATE;
logic [1:0] for_cntr_scint2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_cntr_scint2_comb     // test_cthread_for_cntr_scint.cpp:48:5
    for_cntr_scint2_func;
end
function void for_cntr_scint2_func;
    i_next0 = i0;
    wakeupTime_next0 = wakeupTime0;
    for_cntr_scint2_PROC_STATE_next = for_cntr_scint2_PROC_STATE;
    
    case (for_cntr_scint2_PROC_STATE)
        0: begin
            for_cntr_scint2_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:53:13;
        end
        1: begin
            wakeupTime_next0 = wakeup_time;
            i_next0 = 0;
            if (i_next0 < signed'({1'b0, wakeupTime_next0}))
            begin
                for_cntr_scint2_PROC_STATE_next = 2; return;    // test_cthread_for_cntr_scint.cpp:57:17;
            end
            for_cntr_scint2_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:53:13;
        end
        2: begin
            i_next0++;
            if (i_next0 < signed'({1'b0, wakeupTime_next0}))
            begin
                for_cntr_scint2_PROC_STATE_next = 2; return;    // test_cthread_for_cntr_scint.cpp:57:17;
            end
            for_cntr_scint2_PROC_STATE_next = 1; return;    // test_cthread_for_cntr_scint.cpp:53:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_cntr_scint2_ff
    if ( ~arstn ) begin
        for_cntr_scint2_PROC_STATE <= 0;    // test_cthread_for_cntr_scint.cpp:50:9;
    end
    else begin
        i0 <= i_next0;
        wakeupTime0 <= wakeupTime_next0;
        for_cntr_scint2_PROC_STATE <= for_cntr_scint2_PROC_STATE_next;
    end
end

endmodule


