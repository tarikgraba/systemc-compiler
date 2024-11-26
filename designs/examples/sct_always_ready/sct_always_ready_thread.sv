//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.8
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: simple_test ()
//
module simple_test // "test_top.dut"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic run_put_req;
logic run_put_req_d;
logic resp_get_req;
logic resp_get_req_d;
logic [15:0] resp_core_data_out;
logic run_clk;
logic run_nrst;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic resp_clk;
logic resp_nrst;
logic resp_core_ready;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_chan_sync = 0;
localparam logic run_cthread = 1;
localparam logic run_always_ready = 1;
localparam logic resp_chan_sync = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 1;
localparam logic [31:0] N = 4;
localparam logic [31:0] M = 5;

// Assignments generated for C++ channel arrays
assign run_clk = clk;
assign run_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: run_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic run_put_req_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_initiator.h:269:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_put_req_d_next = run_put_req_d;
    run_put_req_d_next = run_put_req;
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_put_req_d <= 0;
    end
    else begin
        run_put_req_d <= run_put_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_req_control (sct_initiator.h:253:5) 

always_comb 
begin : run_req_control     // sct_initiator.h:253:5
    logic A;
    A = run_put_req != run_put_req_d;
    run_core_req = A;
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_always_ready_thread (sct_target.h:288:5) 

// Thread-local variables
logic resp_get_req_d_next;

// Next-state combinational logic
always_comb begin : resp_always_ready_thread_comb     // sct_target.h:288:5
    resp_always_ready_thread_func;
end
function void resp_always_ready_thread_func;
    resp_get_req_d_next = resp_get_req_d;
    resp_get_req_d_next = resp_get_req;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_always_ready_thread_ff
    if ( ~resp_nrst ) begin
        resp_get_req_d <= 0;
    end
    else begin
        resp_get_req_d <= resp_get_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_core_ready_meth (sct_target.h:308:5) 

assign resp_core_ready = 1;

//------------------------------------------------------------------------------
// Method process: resp_core_data_mux (sct_target.h:218:5) 

always_comb 
begin : resp_core_data_mux     // sct_target.h:218:5
    resp_core_data_out = resp_core_data;
end

//------------------------------------------------------------------------------
// Clocked THREAD: init_thread (thread_test.h:103:5) 

// Thread-local variables
logic run_put_req_next;
logic [15:0] run_core_data_next;
logic resp_get_req_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic [3:0] init_thread_PROC_STATE;
logic [3:0] init_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_thread_comb     // thread_test.h:103:5
    init_thread_func;
end
function void init_thread_func;
    logic TMP_0;
    logic [15:0] data;
    logic TMP_1;
    logic enable;
    logic A;
    logic TMP_2;
    logic TMP_3;
    logic TMP_4;
    logic TMP_5;
    logic TMP_6;
    logic TMP_7;
    logic TMP_8;
    logic TMP_9;
    logic TMP_10;
    logic TMP_11;
    logic TMP_12;
    logic TMP_13;
    logic TMP_14;
    logic TMP_15;
    logic TMP_16;
    i_next = i;
    i_next0 = i0;
    j_next = j;
    resp_get_req_next = resp_get_req;
    run_core_data_next = run_core_data;
    run_put_req_next = run_put_req;
    init_thread_PROC_STATE_next = init_thread_PROC_STATE;
    
    case (init_thread_PROC_STATE)
        0: begin
            data = 42;
            // Call put() begin
            run_put_req_next = !run_put_req;
            run_core_data_next = data;
            TMP_0 = 1;
            // Call put() end
            init_thread_PROC_STATE_next = 1; return;    // thread_test.h:111:9;
        end
        1: begin
            enable = 1;
            // Call get() begin
            A = resp_core_req;
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_1 = enable;
            end else begin
                TMP_1 = 0;
            end
            // Call get() end
            if (!TMP_1)
            begin
                init_thread_PROC_STATE_next = 2; return;    // thread_test.h:112:33;
            end
            init_thread_PROC_STATE_next = 3; return;    // thread_test.h:114:30;
        end
        2: begin
            enable = 1;
            // Call get() begin
            A = resp_core_req;
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_2 = enable;
            end else begin
                TMP_2 = 0;
            end
            // Call get() end
            if (!TMP_2)
            begin
                init_thread_PROC_STATE_next = 2; return;    // thread_test.h:112:33;
            end
            init_thread_PROC_STATE_next = 3; return;    // thread_test.h:114:30;
        end
        3: begin
            j_next = 0;
            i_next = 0;
            data = i_next;
            // Call put() begin
            run_put_req_next = !run_put_req;
            run_core_data_next = data;
            TMP_3 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            A = resp_core_req;
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_4 = enable;
            end else begin
                TMP_4 = 0;
            end
            // Call get() end
            if (TMP_4)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 4; return;    // thread_test.h:124:13;
        end
        4: begin
            ++i_next;
            if (i_next < N)
            begin
                data = i_next;
                // Call put() begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_5 = 1;
                // Call put() end
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_6 = enable;
                end else begin
                    TMP_6 = 0;
                end
                // Call get() end
                if (TMP_6)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 4; return;    // thread_test.h:124:13;
            end
            if (j_next < N)
            begin
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_7 = enable;
                end else begin
                    TMP_7 = 0;
                end
                // Call get() end
                if (TMP_7)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 5; return;    // thread_test.h:130:13;
            end
            j_next = 0;
            i_next0 = 0;
            data = i_next0;
            // Call put() begin
            run_put_req_next = !run_put_req;
            run_core_data_next = data;
            TMP_8 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            A = resp_core_req;
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_9 = enable;
            end else begin
                TMP_9 = 0;
            end
            // Call get() end
            if (TMP_9)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 6; return;    // thread_test.h:143:13;
        end
        5: begin
            if (j_next < N)
            begin
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_10 = enable;
                end else begin
                    TMP_10 = 0;
                end
                // Call get() end
                if (TMP_10)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 5; return;    // thread_test.h:130:13;
            end
            j_next = 0;
            i_next0 = 0;
            data = i_next0;
            // Call put() begin
            run_put_req_next = !run_put_req;
            run_core_data_next = data;
            TMP_11 = 1;
            // Call put() end
            enable = 1;
            // Call get() begin
            A = resp_core_req;
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_12 = enable;
            end else begin
                TMP_12 = 0;
            end
            // Call get() end
            if (TMP_12)
            begin
                j_next++;
            end
            init_thread_PROC_STATE_next = 6; return;    // thread_test.h:143:13;
        end
        6: begin
            ++i_next0;
            if (i_next0 < M)
            begin
                data = i_next0;
                // Call put() begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_13 = 1;
                // Call put() end
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_14 = enable;
                end else begin
                    TMP_14 = 0;
                end
                // Call get() end
                if (TMP_14)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 6; return;    // thread_test.h:143:13;
            end
            if (j_next < M)
            begin
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_15 = enable;
                end else begin
                    TMP_15 = 0;
                end
                // Call get() end
                if (TMP_15)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 7; return;    // thread_test.h:149:13;
            end
            init_thread_PROC_STATE_next = 8; return;    // thread_test.h:154:13;
        end
        7: begin
            if (j_next < M)
            begin
                enable = 1;
                // Call get() begin
                A = resp_core_req;
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_16 = enable;
                end else begin
                    TMP_16 = 0;
                end
                // Call get() end
                if (TMP_16)
                begin
                    j_next++;
                end
                init_thread_PROC_STATE_next = 7; return;    // thread_test.h:149:13;
            end else begin
                init_thread_PROC_STATE_next = 8; return;    // thread_test.h:154:13;
            end
        end
        8: begin
            init_thread_PROC_STATE_next = 8; return;    // thread_test.h:154:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge nrst) 
begin : init_thread_ff
    if ( ~nrst ) begin
        // Call reset_put() begin
        run_put_req <= 0;
        run_core_data <= 0;
        // Call reset_put() end
        // Call reset_get() begin
        resp_get_req <= 0;
        // Call reset_get() end
        init_thread_PROC_STATE <= 0;    // thread_test.h:108:9;
    end
    else begin
        run_put_req <= run_put_req_next;
        run_core_data <= run_core_data_next;
        resp_get_req <= resp_get_req_next;
        i <= i_next;
        j <= j_next;
        i0 <= i_next0;
        init_thread_PROC_STATE <= init_thread_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .run_core_ready_s(run_core_ready),
  .run_core_req_s(run_core_req),
  .run_core_data_s(run_core_data),
  .resp_core_ready_s(resp_core_ready),
  .resp_core_req_s(resp_core_req),
  .resp_core_data_s(resp_core_data),
  .clk(clk),
  .nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (thread_test.h:82:5)
//
module A // "test_top.dut.a"
(
    output logic run_core_ready_s,
    input logic run_core_req_s,
    input logic [15:0] run_core_data_s,
    input logic resp_core_ready_s,
    output logic resp_core_req_s,
    output logic [15:0] resp_core_data_s,
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic run_get_req;
logic run_get_req_d;
logic [15:0] run_core_data_out;
logic [15:0] fifo_buffer[2];
logic fifo_put_req;
logic fifo_put_req_d;
logic fifo_get_req;
logic fifo_get_req_d;
logic [15:0] fifo_data_in;
logic [15:0] fifo_data_out;
logic fifo_ready_push;
logic fifo_out_valid;
logic fifo_pop_indx;
logic fifo_push_indx;
logic [1:0] fifo_element_num;
logic [1:0] fifo_element_num_d;
logic fifo_not_empty_d;
logic resp_put_req;
logic resp_put_req_d;
logic run_clk;
logic run_nrst;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic fifo_clk;
logic fifo_nrst;
logic resp_clk;
logic resp_nrst;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_chan_sync = 0;
localparam logic run_cthread = 1;
localparam logic run_always_ready = 1;
localparam logic fifo_SYNC_VALID = 0;
localparam logic fifo_SYNC_READY = 0;
localparam logic fifo_INIT_BUFFER = 0;
localparam logic fifo_cthread_put = 1;
localparam logic fifo_cthread_get = 1;
localparam logic resp_chan_sync = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 1;

// Assignments generated for C++ channel arrays
assign run_core_ready_s = run_core_ready;
assign run_core_req = run_core_req_s;
assign run_core_data = run_core_data_s;
assign resp_core_req_s = resp_core_req;
assign resp_core_data_s = resp_core_data;
assign run_clk = clk;
assign run_nrst = nrst;
assign fifo_clk = clk;
assign fifo_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: run_always_ready_thread (sct_target.h:288:5) 

// Thread-local variables
logic run_get_req_d_next;

// Next-state combinational logic
always_comb begin : run_always_ready_thread_comb     // sct_target.h:288:5
    run_always_ready_thread_func;
end
function void run_always_ready_thread_func;
    run_get_req_d_next = run_get_req_d;
    run_get_req_d_next = run_get_req;
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_always_ready_thread_ff
    if ( ~run_nrst ) begin
        run_get_req_d <= 0;
    end
    else begin
        run_get_req_d <= run_get_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_core_ready_meth (sct_target.h:308:5) 

assign run_core_ready = 1;

//------------------------------------------------------------------------------
// Method process: run_core_data_mux (sct_target.h:218:5) 

always_comb 
begin : run_core_data_mux     // sct_target.h:218:5
    run_core_data_out = run_core_data;
end

//------------------------------------------------------------------------------
// Method process: fifo_asyncProc (sct_fifo.h:285:5) 

always_comb 
begin : fifo_asyncProc     // sct_fifo.h:285:5
    logic outValid;
    logic readyPush;
    logic popIndx;
    logic notEmpty;
    logic notOne;
    logic notFullOne;
    logic notFull;
    logic push;
    logic pop;
    popIndx = 0;
    notEmpty = fifo_element_num_d != 0;
    notOne = fifo_element_num_d != 1;
    notFullOne = fifo_element_num_d != 2 - 1;
    notFull = fifo_element_num_d != 2;
    push = fifo_put_req != fifo_put_req_d;
    pop = fifo_get_req != fifo_get_req_d;
    if (fifo_cthread_get && pop)
    begin
        outValid = notEmpty && notOne;
        popIndx = (fifo_pop_indx == 2 - 1) ? 0 : fifo_pop_indx + 1;
    end else begin
        outValid = notEmpty;
        popIndx = fifo_pop_indx;
    end
    fifo_not_empty_d = notEmpty;
    if (fifo_cthread_put && push)
    begin
        readyPush = notFull && notFullOne;
    end else begin
        readyPush = notFull;
    end
    fifo_out_valid = push || outValid;
    if (outValid)
    begin
        fifo_data_out = fifo_buffer[popIndx];
    end else begin
        fifo_data_out = fifo_data_in;
    end
    fifo_ready_push = pop || readyPush;
    fifo_element_num = fifo_element_num_d;
    if (pop && !push)
    begin
        fifo_element_num = fifo_element_num_d - 1;
    end else begin
        if (!pop && push)
        begin
            fifo_element_num = fifo_element_num_d + 1;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fifo_syncProc (sct_fifo.h:347:5) 

// Thread-local variables
logic fifo_pop_indx_next;
logic fifo_push_indx_next;
logic fifo_put_req_d_next;
logic fifo_get_req_d_next;
logic [1:0] fifo_element_num_d_next;
logic [15:0] fifo_buffer_next[2];

// Next-state combinational logic
always_comb begin : fifo_syncProc_comb     // sct_fifo.h:347:5
    fifo_syncProc_func;
end
function void fifo_syncProc_func;
    logic push;
    logic pop;
    logic A;
    fifo_buffer_next = fifo_buffer;
    fifo_element_num_d_next = fifo_element_num_d;
    fifo_get_req_d_next = fifo_get_req_d;
    fifo_pop_indx_next = fifo_pop_indx;
    fifo_push_indx_next = fifo_push_indx;
    fifo_put_req_d_next = fifo_put_req_d;
    push = fifo_put_req != fifo_put_req_d;
    pop = fifo_get_req != fifo_get_req_d;
    if (pop && fifo_not_empty_d)
    begin
        fifo_pop_indx_next = (fifo_pop_indx == 2 - 1) ? 0 : fifo_pop_indx + 1;
    end
    A = !fifo_SYNC_VALID && !fifo_not_empty_d && pop;
    if (push && !A)
    begin
        fifo_buffer_next[fifo_push_indx] = fifo_data_in;
        fifo_push_indx_next = (fifo_push_indx == 2 - 1) ? 0 : fifo_push_indx + 1;
    end
    fifo_put_req_d_next = fifo_put_req;
    fifo_get_req_d_next = fifo_get_req;
    fifo_element_num_d_next = fifo_element_num;
endfunction

// Synchronous register update
always_ff @(posedge fifo_clk or negedge fifo_nrst) 
begin : fifo_syncProc_ff
    if ( ~fifo_nrst ) begin
        fifo_pop_indx <= 0;
        fifo_push_indx <= 0;
        fifo_put_req_d <= 0;
        fifo_get_req_d <= 0;
        fifo_element_num_d <= 0;
        fifo_buffer[0] <= 0;
    end
    else begin
        fifo_pop_indx <= fifo_pop_indx_next;
        fifo_push_indx <= fifo_push_indx_next;
        fifo_put_req_d <= fifo_put_req_d_next;
        fifo_get_req_d <= fifo_get_req_d_next;
        fifo_element_num_d <= fifo_element_num_d_next;
        fifo_buffer <= fifo_buffer_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic resp_put_req_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:269:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_put_req_d_next = resp_put_req_d;
    resp_put_req_d_next = resp_put_req;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_put_req_d <= 0;
    end
    else begin
        resp_put_req_d <= resp_put_req_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:253:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:253:5
    logic A;
    A = resp_put_req != resp_put_req_d;
    resp_core_req = A;
end

//------------------------------------------------------------------------------
// Clocked THREAD: inThreadProc (thread_test.h:40:5) 

// Thread-local variables
logic run_get_req_next;
logic fifo_put_req_next;
logic [15:0] fifo_data_in_next;
logic [1:0] inThreadProc_PROC_STATE;
logic [1:0] inThreadProc_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : inThreadProc_comb     // thread_test.h:40:5
    inThreadProc_func;
end
function void inThreadProc_func;
    logic [15:0] TMP_0;
    logic [15:0] l;
    logic TMP_2;
    logic TMP_4;
    logic [15:0] TMP_5;
    logic TMP_7;
    fifo_data_in_next = fifo_data_in;
    fifo_put_req_next = fifo_put_req;
    run_get_req_next = run_get_req;
    inThreadProc_PROC_STATE_next = inThreadProc_PROC_STATE;
    
    case (inThreadProc_PROC_STATE)
        0: begin
            // Call b_get() begin
            if (!run_core_req)
            begin
                inThreadProc_PROC_STATE_next = 1; return;    // sct_target.h:181:39;
            end
            run_get_req_next = !run_get_req;
            TMP_0 = run_core_data_out;
            // Call b_get() end
            l = TMP_0;
            // Call put() begin
            fifo_data_in_next = l;
            if (fifo_ready_push)
            begin
                fifo_put_req_next = !fifo_put_req;
                TMP_2 = 1;
            end else begin
                TMP_2 = 0;
            end
            // Call put() end
            inThreadProc_PROC_STATE_next = 2; return;    // thread_test.h:50:13;
        end
        1: begin
            // Call b_get() begin
            if (!run_core_req)
            begin
                inThreadProc_PROC_STATE_next = 1; return;    // sct_target.h:181:39;
            end
            run_get_req_next = !run_get_req;
            TMP_0 = run_core_data_out;
            // Call b_get() end
            l = TMP_0;
            // Call put() begin
            fifo_data_in_next = l;
            if (fifo_ready_push)
            begin
                fifo_put_req_next = !fifo_put_req;
                TMP_4 = 1;
            end else begin
                TMP_4 = 0;
            end
            // Call put() end
            inThreadProc_PROC_STATE_next = 2; return;    // thread_test.h:50:13;
        end
        2: begin
            // Call b_get() begin
            if (!run_core_req)
            begin
                inThreadProc_PROC_STATE_next = 1; return;    // sct_target.h:181:39;
            end
            run_get_req_next = !run_get_req;
            TMP_5 = run_core_data_out;
            // Call b_get() end
            l = TMP_5;
            // Call put() begin
            fifo_data_in_next = l;
            if (fifo_ready_push)
            begin
                fifo_put_req_next = !fifo_put_req;
                TMP_7 = 1;
            end else begin
                TMP_7 = 0;
            end
            // Call put() end
            inThreadProc_PROC_STATE_next = 2; return;    // thread_test.h:50:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge nrst) 
begin : inThreadProc_ff
    if ( ~nrst ) begin
        // Call reset_get() begin
        run_get_req <= 0;
        // Call reset_get() end
        // Call reset_put() begin
        fifo_put_req <= 0;
        fifo_data_in <= 0;
        // Call reset_put() end
        inThreadProc_PROC_STATE <= 0;    // thread_test.h:43:9;
    end
    else begin
        run_get_req <= run_get_req_next;
        fifo_put_req <= fifo_put_req_next;
        fifo_data_in <= fifo_data_in_next;
        inThreadProc_PROC_STATE <= inThreadProc_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: outThreadProc (thread_test.h:54:5) 

// Thread-local variables
logic fifo_get_req_next;
logic resp_put_req_next;
logic [15:0] resp_core_data_next;

// Next-state combinational logic
always_comb begin : outThreadProc_comb     // thread_test.h:54:5
    outThreadProc_func;
end
function void outThreadProc_func;
    logic TMP_0;
    logic [15:0] TMP_1;
    logic [15:0] l;
    logic TMP_3;
    fifo_get_req_next = fifo_get_req;
    resp_core_data_next = resp_core_data;
    resp_put_req_next = resp_put_req;
    // Call request() begin
    TMP_0 = fifo_out_valid;
    // Call request() end
    if (TMP_0)
    begin
        // Call get() begin
        if (fifo_out_valid)
        begin
            fifo_get_req_next = !fifo_get_req;
        end
        TMP_1 = fifo_data_out;
        // Call get() end
        l = TMP_1;
        // Call put() begin
        resp_put_req_next = !resp_put_req;
        resp_core_data_next = l;
        TMP_3 = 1;
        // Call put() end
    end
endfunction

// Synchronous register update
always_ff @(posedge fifo_clk or negedge nrst) 
begin : outThreadProc_ff
    if ( ~nrst ) begin
        // Call reset_get() begin
        fifo_get_req <= 0;
        // Call reset_get() end
        // Call reset_put() begin
        resp_put_req <= 0;
        resp_core_data <= 0;
        // Call reset_put() end
    end
    else begin
        fifo_get_req <= fifo_get_req_next;
        resp_put_req <= resp_put_req_next;
        resp_core_data <= resp_core_data_next;
    end
end

endmodule


