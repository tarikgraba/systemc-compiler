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
logic run_core_req_d;
logic run_core_ready_d;
logic resp_get_req;
logic resp_get_req_d;
logic resp_reg_full;
logic resp_reg_full_d;
logic resp_core_req_d;
logic [15:0] resp_core_data_d;
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
localparam logic run_always_ready = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 0;

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
logic run_core_req_d_next;
logic run_core_ready_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_initiator.h:269:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_ready_d_next = run_core_ready_d;
    run_core_req_d_next = run_core_req_d;
    run_put_req_d_next = run_put_req_d;
    run_put_req_d_next = run_put_req;
    run_core_req_d_next = run_core_req;
    run_core_ready_d_next = run_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_put_req_d <= 0;
        run_core_req_d <= 0;
        run_core_ready_d <= 0;
    end
    else begin
        run_put_req_d <= run_put_req_d_next;
        run_core_req_d <= run_core_req_d_next;
        run_core_ready_d <= run_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_req_control (sct_initiator.h:253:5) 

always_comb 
begin : run_req_control     // sct_initiator.h:253:5
    logic A;
    A = run_put_req != run_put_req_d;
    if (A)
    begin
        run_core_req = 1;
    end else begin
        if (run_core_ready_d)
        begin
            run_core_req = 0;
        end else begin
            run_core_req = run_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: resp_ready_control (sct_target.h:243:5) 

always_comb 
begin : resp_ready_control     // sct_target.h:243:5
    logic A;
    A = resp_get_req != resp_get_req_d;
    resp_core_ready = A || !resp_reg_full;
end

//------------------------------------------------------------------------------
// Method process: resp_full_control (sct_target.h:248:5) 

always_comb 
begin : resp_full_control     // sct_target.h:248:5
    logic A;
    A = resp_get_req != resp_get_req_d;
    if (A)
    begin
        resp_reg_full = 0;
    end else begin
        if (resp_core_req_d)
        begin
            resp_reg_full = 1;
        end else begin
            resp_reg_full = resp_reg_full_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_target.h:260:5) 

// Thread-local variables
logic resp_get_req_d_next;
logic resp_core_req_d_next;
logic resp_reg_full_d_next;
logic [15:0] resp_core_data_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_target.h:260:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_data_d_next = resp_core_data_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_get_req_d_next = resp_get_req_d;
    resp_reg_full_d_next = resp_reg_full_d;
    resp_get_req_d_next = resp_get_req;
    resp_core_req_d_next = resp_core_req;
    resp_reg_full_d_next = resp_reg_full;
    if (resp_core_req && !resp_reg_full)
    begin
        resp_core_data_d_next = resp_core_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_get_req_d <= 0;
        resp_core_req_d <= 0;
        resp_reg_full_d <= 0;
        resp_core_data_d <= 0;
    end
    else begin
        resp_get_req_d <= resp_get_req_d_next;
        resp_core_req_d <= resp_core_req_d_next;
        resp_reg_full_d <= resp_reg_full_d_next;
        resp_core_data_d <= resp_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_put_to_fifo (sct_target.h:229:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: resp_core_data_mux (sct_target.h:218:5) 

always_comb 
begin : resp_core_data_mux     // sct_target.h:218:5
    if (resp_reg_full)
    begin
        resp_core_data_out = resp_core_data_d;
    end else begin
        resp_core_data_out = resp_core_data;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: init_thread (signal_thrd_test.h:133:5) 

// Thread-local variables
logic run_put_req_next;
logic [15:0] run_core_data_next;
logic resp_get_req_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic [15:0] data;
logic [15:0] data_next;
logic [2:0] init_thread_PROC_STATE;
logic [2:0] init_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_thread_comb     // signal_thrd_test.h:133:5
    init_thread_func;
end
function void init_thread_func;
    logic [15:0] TMP_0;
    data_next = data;
    i_next = i;
    resp_get_req_next = resp_get_req;
    run_core_data_next = run_core_data;
    run_put_req_next = run_put_req;
    init_thread_PROC_STATE_next = init_thread_PROC_STATE;
    
    case (init_thread_PROC_STATE)
        0: begin
            i_next = 0;
            data_next = i_next;
            // Call b_put() begin
            if (!run_core_ready)
            begin
                init_thread_PROC_STATE_next = 1; return;    // sct_initiator.h:182:37;
            end
            run_put_req_next = !run_put_req;
            run_core_data_next = data_next;
            // Call b_put() end
            init_thread_PROC_STATE_next = 2; return;    // signal_thrd_test.h:143:13;
        end
        1: begin
            // Call b_put() begin
            if (!run_core_ready)
            begin
                init_thread_PROC_STATE_next = 1; return;    // sct_initiator.h:182:37;
            end
            run_put_req_next = !run_put_req;
            run_core_data_next = data_next;
            // Call b_put() end
            init_thread_PROC_STATE_next = 2; return;    // signal_thrd_test.h:143:13;
        end
        2: begin
            // Call b_get() begin
            if (!resp_core_req && !resp_reg_full)
            begin
                init_thread_PROC_STATE_next = 2; return;    // sct_target.h:176:48;
            end
            resp_get_req_next = !resp_get_req;
            TMP_0 = resp_core_data_out;
            // Call b_get() end
            init_thread_PROC_STATE_next = 4; return;    // signal_thrd_test.h:149:13;
        end
        4: begin
            i_next++;
            if (i_next < 3)
            begin
                data_next = i_next;
                // Call b_put() begin
                if (!run_core_ready)
                begin
                    init_thread_PROC_STATE_next = 1; return;    // sct_initiator.h:182:37;
                end
                run_put_req_next = !run_put_req;
                run_core_data_next = data_next;
                // Call b_put() end
                init_thread_PROC_STATE_next = 2; return;    // signal_thrd_test.h:143:13;
            end
            init_thread_PROC_STATE_next = 5; return;    // signal_thrd_test.h:153:9;
        end
        5: begin
            init_thread_PROC_STATE_next = 5; return;    // signal_thrd_test.h:156:13;
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
        init_thread_PROC_STATE <= 0;    // signal_thrd_test.h:138:9;
    end
    else begin
        run_put_req <= run_put_req_next;
        run_core_data <= run_core_data_next;
        resp_get_req <= resp_get_req_next;
        i <= i_next;
        data <= data_next;
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
// Module: A (signal_thrd_test.h:109:5)
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
logic run_reg_full;
logic run_reg_full_d;
logic run_core_req_d;
logic [15:0] run_core_data_d;
logic [15:0] run_core_data_out;
logic resp_put_req;
logic resp_put_req_d;
logic resp_core_req_d;
logic resp_core_ready_d;
logic busy;
logic busy_d;
logic [15:0] a;
logic a_enbl;
logic [15:0] b;
logic b_enbl;
logic [15:0] c;
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
localparam logic run_cthread = 1;
localparam logic run_always_ready = 0;
localparam logic resp_chan_sync = 0;
localparam logic resp_cthread = 1;
localparam logic resp_always_ready = 0;

// Assignments generated for C++ channel arrays
assign run_core_ready_s = run_core_ready;
assign run_core_req = run_core_req_s;
assign run_core_data = run_core_data_s;
assign resp_core_ready = resp_core_ready_s;
assign resp_core_req_s = resp_core_req;
assign resp_core_data_s = resp_core_data;
assign run_clk = clk;
assign run_nrst = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Method process: run_ready_control (sct_target.h:243:5) 

always_comb 
begin : run_ready_control     // sct_target.h:243:5
    logic A;
    A = run_get_req != run_get_req_d;
    run_core_ready = A || !run_reg_full;
end

//------------------------------------------------------------------------------
// Method process: run_full_control (sct_target.h:248:5) 

always_comb 
begin : run_full_control     // sct_target.h:248:5
    logic A;
    A = run_get_req != run_get_req_d;
    if (A)
    begin
        run_reg_full = 0;
    end else begin
        if (run_core_req_d)
        begin
            run_reg_full = 1;
        end else begin
            run_reg_full = run_reg_full_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_target.h:260:5) 

// Thread-local variables
logic run_get_req_d_next;
logic run_core_req_d_next;
logic run_reg_full_d_next;
logic [15:0] run_core_data_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_target.h:260:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_data_d_next = run_core_data_d;
    run_core_req_d_next = run_core_req_d;
    run_get_req_d_next = run_get_req_d;
    run_reg_full_d_next = run_reg_full_d;
    run_get_req_d_next = run_get_req;
    run_core_req_d_next = run_core_req;
    run_reg_full_d_next = run_reg_full;
    if (run_core_req && !run_reg_full)
    begin
        run_core_data_d_next = run_core_data;
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk or negedge run_nrst) 
begin : run_core_thread_ff
    if ( ~run_nrst ) begin
        run_get_req_d <= 0;
        run_core_req_d <= 0;
        run_reg_full_d <= 0;
        run_core_data_d <= 0;
    end
    else begin
        run_get_req_d <= run_get_req_d_next;
        run_core_req_d <= run_core_req_d_next;
        run_reg_full_d <= run_reg_full_d_next;
        run_core_data_d <= run_core_data_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo (sct_target.h:229:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_core_data_mux (sct_target.h:218:5) 

always_comb 
begin : run_core_data_mux     // sct_target.h:218:5
    if (run_reg_full)
    begin
        run_core_data_out = run_core_data_d;
    end else begin
        run_core_data_out = run_core_data;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic resp_put_req_d_next;
logic resp_core_req_d_next;
logic resp_core_ready_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:269:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_ready_d_next = resp_core_ready_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_put_req_d_next = resp_put_req_d;
    resp_put_req_d_next = resp_put_req;
    resp_core_req_d_next = resp_core_req;
    resp_core_ready_d_next = resp_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_put_req_d <= 0;
        resp_core_req_d <= 0;
        resp_core_ready_d <= 0;
    end
    else begin
        resp_put_req_d <= resp_put_req_d_next;
        resp_core_req_d <= resp_core_req_d_next;
        resp_core_ready_d <= resp_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:253:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:253:5
    logic A;
    A = resp_put_req != resp_put_req_d;
    if (A)
    begin
        resp_core_req = 1;
    end else begin
        if (resp_core_ready_d)
        begin
            resp_core_req = 0;
        end else begin
            resp_core_req = resp_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: runThrd (signal_thrd_test.h:50:5) 

// Thread-local variables
logic run_get_req_next;
logic [15:0] a_next;
logic a_enbl_next;

// Next-state combinational logic
always_comb begin : runThrd_comb     // signal_thrd_test.h:50:5
    runThrd_func;
end
function void runThrd_func;
    logic TMP_0;
    logic [15:0] TMP_1;
    logic A;
    a_enbl_next = a_enbl;
    a_next = a;
    run_get_req_next = run_get_req;
    a_enbl_next = 0;
    // Call request() begin
    TMP_0 = run_core_req || run_reg_full;
    // Call request() end
    if (TMP_0 && !busy)
    begin
        // Call get() begin
        A = (run_core_req || run_reg_full);
        if (A)
        begin
            run_get_req_next = !run_get_req;
        end
        TMP_1 = run_core_data_out;
        // Call get() end
        a_next = TMP_1;
        a_enbl_next = 1;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : runThrd_ff
    if ( ~nrst ) begin
        // Call reset_get() begin
        run_get_req <= 0;
        // Call reset_get() end
        a <= 0;
        a_enbl <= 0;
    end
    else begin
        run_get_req <= run_get_req_next;
        a <= a_next;
        a_enbl <= a_enbl_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: compThrd (signal_thrd_test.h:66:5) 

// Thread-local variables
logic [15:0] b_next;
logic b_enbl_next;
logic busy_d_next;
logic resp_put_req_next;
logic [15:0] resp_core_data_next;
logic [15:0] tmp;
logic [15:0] tmp_next;
logic [15:0] data;
logic [15:0] data_next;
logic [2:0] compThrd_PROC_STATE;
logic [2:0] compThrd_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : compThrd_comb     // signal_thrd_test.h:66:5
    compThrd_func;
end
function void compThrd_func;
    b_enbl_next = b_enbl;
    b_next = b;
    busy_d_next = busy_d;
    data_next = data;
    resp_core_data_next = resp_core_data;
    resp_put_req_next = resp_put_req;
    tmp_next = tmp;
    compThrd_PROC_STATE_next = compThrd_PROC_STATE;
    
    case (compThrd_PROC_STATE)
        0: begin
            if (a_enbl)
            begin
                busy_d_next = 1;
                tmp_next = a;
                compThrd_PROC_STATE_next = 1; return;    // signal_thrd_test.h:78:17;
            end
            compThrd_PROC_STATE_next = 0; return;    // signal_thrd_test.h:88:13;
        end
        1: begin
            b_next = tmp_next + 1;
            b_enbl_next = 1;
            compThrd_PROC_STATE_next = 2; return;    // signal_thrd_test.h:82:17;
        end
        2: begin
            b_enbl_next = 0;
            // Call b_put() begin
            if (!resp_core_ready)
            begin
                compThrd_PROC_STATE_next = 3; return;    // sct_initiator.h:182:37;
            end
            resp_put_req_next = !resp_put_req;
            resp_core_data_next = c;
            // Call b_put() end
            busy_d_next = 0;
            compThrd_PROC_STATE_next = 0; return;    // signal_thrd_test.h:88:13;
        end
        3: begin
            // Call b_put() begin
            if (!resp_core_ready)
            begin
                compThrd_PROC_STATE_next = 3; return;    // sct_initiator.h:182:37;
            end
            resp_put_req_next = !resp_put_req;
            resp_core_data_next = c;
            // Call b_put() end
            busy_d_next = 0;
            compThrd_PROC_STATE_next = 0; return;    // signal_thrd_test.h:88:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : compThrd_ff
    if ( ~nrst ) begin
        tmp <= 0;
        b <= 0;
        b_enbl <= 0;
        busy_d <= 0;
        // Call reset_put() begin
        resp_put_req <= 0;
        resp_core_data <= 0;
        // Call reset_put() end
        compThrd_PROC_STATE <= 0;    // signal_thrd_test.h:71:9;
    end
    else begin
        b <= b_next;
        b_enbl <= b_enbl_next;
        busy_d <= busy_d_next;
        resp_put_req <= resp_put_req_next;
        resp_core_data <= resp_core_data_next;
        tmp <= tmp_next;
        data <= data_next;
        compThrd_PROC_STATE <= compThrd_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: compMeth (signal_thrd_test.h:92:5) 

always_comb 
begin : compMeth     // signal_thrd_test.h:92:5
    busy = busy_d || a_enbl;
    c = b_enbl ? b + 1 : 0;
end

endmodule


