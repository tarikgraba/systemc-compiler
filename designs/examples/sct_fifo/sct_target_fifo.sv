//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.3
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
localparam logic [31:0] N = 5;

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
// Method process: resp_ready_control (sct_target.h:256:5) 

always_comb 
begin : resp_ready_control     // sct_target.h:256:5
    logic A;
    A = resp_get_req != resp_get_req_d;
    resp_core_ready = A || !resp_reg_full;
end

//------------------------------------------------------------------------------
// Method process: resp_full_control (sct_target.h:261:5) 

always_comb 
begin : resp_full_control     // sct_target.h:261:5
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
// Clocked THREAD: resp_core_thread (sct_target.h:273:5) 

// Thread-local variables
logic resp_get_req_d_next;
logic resp_core_req_d_next;
logic resp_reg_full_d_next;
logic [15:0] resp_core_data_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_target.h:273:5
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
// Method process: resp_put_to_fifo (sct_target.h:242:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: init_thread (target_fifo.h:137:5) 

// Thread-local variables
logic run_put_req_next;
logic [15:0] run_core_data_next;
logic resp_get_req_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic [4:0] init_thread_PROC_STATE;
logic [4:0] init_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_thread_comb     // target_fifo.h:137:5
    init_thread_func;
end
function void init_thread_func;
    logic TMP_0;
    logic [15:0] data;
    logic TMP_1;
    logic TMP_2;
    logic TMP_3;
    logic enable;
    logic A;
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
    logic TMP_17;
    logic TMP_18;
    logic TMP_19;
    logic TMP_20;
    logic TMP_21;
    logic TMP_22;
    logic TMP_23;
    logic TMP_24;
    logic TMP_25;
    logic TMP_26;
    logic TMP_27;
    logic TMP_28;
    logic TMP_29;
    i_next = i;
    i_next0 = i0;
    resp_get_req_next = resp_get_req;
    run_core_data_next = run_core_data;
    run_put_req_next = run_put_req;
    init_thread_PROC_STATE_next = init_thread_PROC_STATE;
    
    case (init_thread_PROC_STATE)
        0: begin
            i_next = 0;
            data = 42 + i_next;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_0 = 1;
            end else begin
                TMP_0 = 0;
            end
            // Call put() end
            if (!TMP_0)
            begin
                init_thread_PROC_STATE_next = 1; return;    // target_fifo.h:146:36;
            end
            init_thread_PROC_STATE_next = 2; return;    // target_fifo.h:148:13;
        end
        1: begin
            data = 42 + i_next;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_1 = 1;
            end else begin
                TMP_1 = 0;
            end
            // Call put() end
            if (!TMP_1)
            begin
                init_thread_PROC_STATE_next = 1; return;    // target_fifo.h:146:36;
            end
            init_thread_PROC_STATE_next = 2; return;    // target_fifo.h:148:13;
        end
        2: begin
            ++i_next;
            if (i_next < N)
            begin
                data = 42 + i_next;
                // Call put() begin
                if (run_always_ready || run_core_ready)
                begin
                    run_put_req_next = !run_put_req;
                    run_core_data_next = data;
                    TMP_2 = 1;
                end else begin
                    TMP_2 = 0;
                end
                // Call put() end
                if (!TMP_2)
                begin
                    init_thread_PROC_STATE_next = 1; return;    // target_fifo.h:146:36;
                end
                init_thread_PROC_STATE_next = 2; return;    // target_fifo.h:148:13;
            end
            i_next0 = 0;
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_3 = enable;
            end else begin
                TMP_3 = 0;
            end
            // Call get() end
            if (!TMP_3)
            begin
                init_thread_PROC_STATE_next = 3; return;    // target_fifo.h:153:37;
            end
            init_thread_PROC_STATE_next = 4; return;    // target_fifo.h:155:13;
        end
        3: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_4 = enable;
            end else begin
                TMP_4 = 0;
            end
            // Call get() end
            if (!TMP_4)
            begin
                init_thread_PROC_STATE_next = 3; return;    // target_fifo.h:153:37;
            end
            init_thread_PROC_STATE_next = 4; return;    // target_fifo.h:155:13;
        end
        4: begin
            ++i_next0;
            if (i_next0 < N)
            begin
                enable = 1;
                // Call get() begin
                A = (resp_core_req || resp_reg_full);
                if (A)
                begin
                    resp_get_req_next = !resp_get_req;
                    TMP_5 = enable;
                end else begin
                    TMP_5 = 0;
                end
                // Call get() end
                if (!TMP_5)
                begin
                    init_thread_PROC_STATE_next = 3; return;    // target_fifo.h:153:37;
                end
                init_thread_PROC_STATE_next = 4; return;    // target_fifo.h:155:13;
            end
            data = 42;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_6 = 1;
            end else begin
                TMP_6 = 0;
            end
            // Call put() end
            if (!TMP_6)
            begin
                init_thread_PROC_STATE_next = 5; return;    // target_fifo.h:160:30;
            end
            init_thread_PROC_STATE_next = 6; return;    // target_fifo.h:161:9;
        end
        5: begin
            data = 42;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_7 = 1;
            end else begin
                TMP_7 = 0;
            end
            // Call put() end
            if (!TMP_7)
            begin
                init_thread_PROC_STATE_next = 5; return;    // target_fifo.h:160:30;
            end
            init_thread_PROC_STATE_next = 6; return;    // target_fifo.h:161:9;
        end
        6: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_8 = enable;
            end else begin
                TMP_8 = 0;
            end
            // Call get() end
            if (!TMP_8)
            begin
                init_thread_PROC_STATE_next = 7; return;    // target_fifo.h:163:33;
            end
            init_thread_PROC_STATE_next = 8; return;    // target_fifo.h:164:30;
        end
        7: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_9 = enable;
            end else begin
                TMP_9 = 0;
            end
            // Call get() end
            if (!TMP_9)
            begin
                init_thread_PROC_STATE_next = 7; return;    // target_fifo.h:163:33;
            end
            init_thread_PROC_STATE_next = 8; return;    // target_fifo.h:164:30;
        end
        8: begin
            data = 43;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_10 = 1;
            end else begin
                TMP_10 = 0;
            end
            // Call put() end
            if (!TMP_10)
            begin
                init_thread_PROC_STATE_next = 9; return;    // target_fifo.h:166:30;
            end
            init_thread_PROC_STATE_next = 10; return;    // target_fifo.h:167:9;
        end
        9: begin
            data = 43;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_11 = 1;
            end else begin
                TMP_11 = 0;
            end
            // Call put() end
            if (!TMP_11)
            begin
                init_thread_PROC_STATE_next = 9; return;    // target_fifo.h:166:30;
            end
            init_thread_PROC_STATE_next = 10; return;    // target_fifo.h:167:9;
        end
        10: begin
            data = 44;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_12 = 1;
            end else begin
                TMP_12 = 0;
            end
            // Call put() end
            if (!TMP_12)
            begin
                init_thread_PROC_STATE_next = 11; return;    // target_fifo.h:168:30;
            end
            init_thread_PROC_STATE_next = 12; return;    // target_fifo.h:169:9;
        end
        11: begin
            data = 44;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_13 = 1;
            end else begin
                TMP_13 = 0;
            end
            // Call put() end
            if (!TMP_13)
            begin
                init_thread_PROC_STATE_next = 11; return;    // target_fifo.h:168:30;
            end
            init_thread_PROC_STATE_next = 12; return;    // target_fifo.h:169:9;
        end
        12: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_14 = enable;
            end else begin
                TMP_14 = 0;
            end
            // Call get() end
            if (!TMP_14)
            begin
                init_thread_PROC_STATE_next = 13; return;    // target_fifo.h:171:33;
            end
            init_thread_PROC_STATE_next = 14; return;    // target_fifo.h:172:30;
        end
        13: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_15 = enable;
            end else begin
                TMP_15 = 0;
            end
            // Call get() end
            if (!TMP_15)
            begin
                init_thread_PROC_STATE_next = 13; return;    // target_fifo.h:171:33;
            end
            init_thread_PROC_STATE_next = 14; return;    // target_fifo.h:172:30;
        end
        14: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_16 = enable;
            end else begin
                TMP_16 = 0;
            end
            // Call get() end
            if (!TMP_16)
            begin
                init_thread_PROC_STATE_next = 15; return;    // target_fifo.h:173:33;
            end
            init_thread_PROC_STATE_next = 16; return;    // target_fifo.h:174:30;
        end
        15: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_17 = enable;
            end else begin
                TMP_17 = 0;
            end
            // Call get() end
            if (!TMP_17)
            begin
                init_thread_PROC_STATE_next = 15; return;    // target_fifo.h:173:33;
            end
            init_thread_PROC_STATE_next = 16; return;    // target_fifo.h:174:30;
        end
        16: begin
            data = 45;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_18 = 1;
            end else begin
                TMP_18 = 0;
            end
            // Call put() end
            if (!TMP_18)
            begin
                init_thread_PROC_STATE_next = 17; return;    // target_fifo.h:176:30;
            end
            init_thread_PROC_STATE_next = 18; return;    // target_fifo.h:177:9;
        end
        17: begin
            data = 45;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_19 = 1;
            end else begin
                TMP_19 = 0;
            end
            // Call put() end
            if (!TMP_19)
            begin
                init_thread_PROC_STATE_next = 17; return;    // target_fifo.h:176:30;
            end
            init_thread_PROC_STATE_next = 18; return;    // target_fifo.h:177:9;
        end
        18: begin
            data = 46;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_20 = 1;
            end else begin
                TMP_20 = 0;
            end
            // Call put() end
            if (!TMP_20)
            begin
                init_thread_PROC_STATE_next = 19; return;    // target_fifo.h:178:30;
            end
            init_thread_PROC_STATE_next = 20; return;    // target_fifo.h:179:9;
        end
        19: begin
            data = 46;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_21 = 1;
            end else begin
                TMP_21 = 0;
            end
            // Call put() end
            if (!TMP_21)
            begin
                init_thread_PROC_STATE_next = 19; return;    // target_fifo.h:178:30;
            end
            init_thread_PROC_STATE_next = 20; return;    // target_fifo.h:179:9;
        end
        20: begin
            data = 47;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_22 = 1;
            end else begin
                TMP_22 = 0;
            end
            // Call put() end
            if (!TMP_22)
            begin
                init_thread_PROC_STATE_next = 21; return;    // target_fifo.h:180:30;
            end
            init_thread_PROC_STATE_next = 22; return;    // target_fifo.h:181:9;
        end
        21: begin
            data = 47;
            // Call put() begin
            if (run_always_ready || run_core_ready)
            begin
                run_put_req_next = !run_put_req;
                run_core_data_next = data;
                TMP_23 = 1;
            end else begin
                TMP_23 = 0;
            end
            // Call put() end
            if (!TMP_23)
            begin
                init_thread_PROC_STATE_next = 21; return;    // target_fifo.h:180:30;
            end
            init_thread_PROC_STATE_next = 22; return;    // target_fifo.h:181:9;
        end
        22: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_24 = enable;
            end else begin
                TMP_24 = 0;
            end
            // Call get() end
            if (!TMP_24)
            begin
                init_thread_PROC_STATE_next = 23; return;    // target_fifo.h:183:33;
            end
            init_thread_PROC_STATE_next = 24; return;    // target_fifo.h:184:30;
        end
        23: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_25 = enable;
            end else begin
                TMP_25 = 0;
            end
            // Call get() end
            if (!TMP_25)
            begin
                init_thread_PROC_STATE_next = 23; return;    // target_fifo.h:183:33;
            end
            init_thread_PROC_STATE_next = 24; return;    // target_fifo.h:184:30;
        end
        24: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_26 = enable;
            end else begin
                TMP_26 = 0;
            end
            // Call get() end
            if (!TMP_26)
            begin
                init_thread_PROC_STATE_next = 25; return;    // target_fifo.h:185:33;
            end
            init_thread_PROC_STATE_next = 26; return;    // target_fifo.h:186:30;
        end
        25: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_27 = enable;
            end else begin
                TMP_27 = 0;
            end
            // Call get() end
            if (!TMP_27)
            begin
                init_thread_PROC_STATE_next = 25; return;    // target_fifo.h:185:33;
            end
            init_thread_PROC_STATE_next = 26; return;    // target_fifo.h:186:30;
        end
        26: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_28 = enable;
            end else begin
                TMP_28 = 0;
            end
            // Call get() end
            if (!TMP_28)
            begin
                init_thread_PROC_STATE_next = 27; return;    // target_fifo.h:187:33;
            end
            init_thread_PROC_STATE_next = 28; return;    // target_fifo.h:188:30;
        end
        27: begin
            enable = 1;
            // Call get() begin
            A = (resp_core_req || resp_reg_full);
            if (A)
            begin
                resp_get_req_next = !resp_get_req;
                TMP_29 = enable;
            end else begin
                TMP_29 = 0;
            end
            // Call get() end
            if (!TMP_29)
            begin
                init_thread_PROC_STATE_next = 27; return;    // target_fifo.h:187:33;
            end
            init_thread_PROC_STATE_next = 28; return;    // target_fifo.h:188:30;
        end
        28: begin
            init_thread_PROC_STATE_next = 29; return;    // target_fifo.h:191:9;
        end
        29: begin
            init_thread_PROC_STATE_next = 29; return;    // target_fifo.h:194:13;
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
        init_thread_PROC_STATE <= 0;    // target_fifo.h:142:9;
    end
    else begin
        run_put_req <= run_put_req_next;
        run_core_data <= run_core_data_next;
        resp_get_req <= resp_get_req_next;
        i <= i_next;
        i0 <= i_next0;
        init_thread_PROC_STATE <= init_thread_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

B a
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
// Module: B (target_fifo.h:113:5)
//
module B // "test_top.dut.a"
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
logic [15:0] run_fifo_buffer[2];
logic run_fifo_put_req;
logic run_fifo_get_req;
logic [15:0] run_fifo_data_in;
logic [15:0] run_fifo_data_out;
logic run_fifo_ready_push;
logic run_fifo_out_valid;
logic run_fifo_pop_indx;
logic run_fifo_push_indx;
logic [1:0] run_fifo_element_num;
logic [1:0] run_fifo_element_num_d;
logic run_fifo_not_empty_d;
logic run_get_req;
logic run_get_req_d;
logic run_reg_full;
logic run_reg_full_d;
logic run_core_req_d;
logic [15:0] run_core_data_d;
logic resp_put_req;
logic resp_core_req_d;
logic resp_core_ready_d;
logic run_clk;
logic run_nrst;
logic run_core_ready;
logic run_core_req;
logic [15:0] run_core_data;
logic run_fifo_clk;
logic run_fifo_nrst;
logic resp_clk;
logic resp_nrst;
logic resp_core_ready;
logic resp_core_req;
logic [15:0] resp_core_data;

// Local parameters generated for C++ constants
localparam logic run_cthread = 0;
localparam logic run_fifo_SYNC_VALID = 1;
localparam logic run_fifo_SYNC_READY = 1;
localparam logic run_fifo_INIT_BUFFER = 0;
localparam logic run_fifo_cthread_put = 0;
localparam logic run_fifo_cthread_get = 0;
localparam logic resp_chan_sync = 0;
localparam logic resp_cthread = 0;
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
assign run_fifo_clk = run_clk;
assign run_fifo_nrst = run_nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Method process: fifo_asyncProc (sct_fifo.h:278:5) 

always_comb 
begin : fifo_asyncProc     // sct_fifo.h:278:5
    logic outValid;
    logic readyPush;
    logic popIndx;
    logic notEmpty;
    logic notFull;
    logic push;
    logic pop;
    popIndx = 0;
    notEmpty = run_fifo_element_num_d != 0;
    notFull = run_fifo_element_num_d != 2;
    push = run_fifo_put_req;
    pop = run_fifo_get_req;
    outValid = notEmpty;
    popIndx = run_fifo_pop_indx;
    run_fifo_not_empty_d = notEmpty;
    readyPush = notFull;
    run_fifo_out_valid = outValid;
    run_fifo_data_out = run_fifo_buffer[popIndx];
    run_fifo_ready_push = readyPush;
    run_fifo_element_num = run_fifo_element_num_d;
    if (pop && !push)
    begin
        run_fifo_element_num = run_fifo_element_num_d - 1;
    end else begin
        if (!pop && push)
        begin
            run_fifo_element_num = run_fifo_element_num_d + 1;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fifo_syncProc (sct_fifo.h:340:5) 

// Thread-local variables
logic run_fifo_pop_indx_next;
logic run_fifo_push_indx_next;
logic [1:0] run_fifo_element_num_d_next;
logic [15:0] run_fifo_buffer_next[2];

// Next-state combinational logic
always_comb begin : fifo_syncProc_comb     // sct_fifo.h:340:5
    fifo_syncProc_func;
end
function void fifo_syncProc_func;
    logic push;
    logic pop;
    logic A;
    run_fifo_buffer_next = run_fifo_buffer;
    run_fifo_element_num_d_next = run_fifo_element_num_d;
    run_fifo_pop_indx_next = run_fifo_pop_indx;
    run_fifo_push_indx_next = run_fifo_push_indx;
    push = run_fifo_put_req;
    pop = run_fifo_get_req;
    if (pop && run_fifo_not_empty_d)
    begin
        run_fifo_pop_indx_next = (run_fifo_pop_indx == 2 - 1) ? 0 : run_fifo_pop_indx + 1;
    end
    A = 0;
    if (push && !A)
    begin
        run_fifo_buffer_next[run_fifo_push_indx] = run_fifo_data_in;
        run_fifo_push_indx_next = (run_fifo_push_indx == 2 - 1) ? 0 : run_fifo_push_indx + 1;
    end
    run_fifo_element_num_d_next = run_fifo_element_num;
endfunction

// Synchronous register update
always_ff @(posedge run_fifo_clk or negedge run_fifo_nrst) 
begin : fifo_syncProc_ff
    if ( ~run_fifo_nrst ) begin
        run_fifo_pop_indx <= 0;
        run_fifo_push_indx <= 0;
        run_fifo_element_num_d <= 0;
        run_fifo_buffer[0] <= 0;
    end
    else begin
        run_fifo_pop_indx <= run_fifo_pop_indx_next;
        run_fifo_push_indx <= run_fifo_push_indx_next;
        run_fifo_element_num_d <= run_fifo_element_num_d_next;
        run_fifo_buffer <= run_fifo_buffer_next;
    end
end

//------------------------------------------------------------------------------
// Method process: run_ready_control (sct_target.h:256:5) 

always_comb 
begin : run_ready_control     // sct_target.h:256:5
    logic A;
    A = run_get_req_d;
    run_core_ready = A || !run_reg_full;
end

//------------------------------------------------------------------------------
// Method process: run_full_control (sct_target.h:261:5) 

always_comb 
begin : run_full_control     // sct_target.h:261:5
    logic A;
    A = run_get_req_d;
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
// Clocked THREAD: run_core_thread (sct_target.h:273:5) 

// Thread-local variables
logic run_get_req_d_next;
logic run_core_req_d_next;
logic run_reg_full_d_next;
logic [15:0] run_core_data_d_next;

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_target.h:273:5
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
// Method process: run_put_to_fifo (sct_target.h:242:5) 

always_comb 
begin : run_put_to_fifo     // sct_target.h:242:5
    logic TMP_0;
    logic TMP_1;
    run_get_req = 0;
    // Call reset_put() begin
    run_fifo_put_req = 0;
    run_fifo_data_in = 0;
    // Call reset_put() end
    if (run_reg_full)
    begin
        // Call put() begin
        run_fifo_data_in = run_core_data_d;
        if (run_fifo_ready_push)
        begin
            run_fifo_put_req = 1;
            TMP_0 = 1;
        end else begin
            run_fifo_put_req = 0;
            TMP_0 = 0;
        end
        // Call put() end
        run_get_req = TMP_0;
    end else begin
        if (run_core_req)
        begin
            // Call put() begin
            run_fifo_data_in = run_core_data;
            if (run_fifo_ready_push)
            begin
                run_fifo_put_req = 1;
                TMP_1 = 1;
            end else begin
                run_fifo_put_req = 0;
                TMP_1 = 0;
            end
            // Call put() end
            run_get_req = TMP_1;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:223:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:269:5) 

// Thread-local variables
logic resp_core_req_d_next;
logic resp_core_ready_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:269:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_ready_d_next = resp_core_ready_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_core_req_d_next = resp_core_req;
    resp_core_ready_d_next = resp_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_core_req_d <= 0;
        resp_core_ready_d <= 0;
    end
    else begin
        resp_core_req_d <= resp_core_req_d_next;
        resp_core_ready_d <= resp_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:253:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:253:5
    logic A;
    A = resp_put_req;
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
// Method process: methProc (target_fifo.h:78:5) 

always_comb 
begin : methProc     // target_fifo.h:78:5
    logic TMP_0;
    logic TMP_1;
    logic TMP_2;
    logic [15:0] TMP_3;
    logic [15:0] TMP_4;
    logic [15:0] data;
    logic TMP_6;
    // Call reset_get() begin
    // Call reset_get() begin
    run_fifo_get_req = 0;
    // Call reset_get() end
    // Call reset_get() end
    // Call reset_put() begin
    resp_put_req = 0;
    resp_core_data = 0;
    // Call reset_put() end
    // Call request() begin
    // Call request() begin
    TMP_1 = run_fifo_out_valid;
    // Call request() end
    TMP_0 = TMP_1;
    // Call request() end
    // Call ready() begin
    TMP_2 = resp_core_ready;
    // Call ready() end
    if (TMP_0 && TMP_2)
    begin
        // Call get() begin
        // Call get() begin
        if (run_fifo_out_valid)
        begin
            run_fifo_get_req = 1;
        end else begin
            run_fifo_get_req = 0;
        end
        TMP_4 = run_fifo_data_out;
        // Call get() end
        TMP_3 = TMP_4;
        // Call get() end
        data = TMP_3;
        // Call put() begin
        if (resp_always_ready || resp_core_ready)
        begin
            resp_put_req = 1;
            resp_core_data = data;
            TMP_6 = 1;
        end else begin
            resp_put_req = 0;
            resp_core_data = 0;
            TMP_6 = 0;
        end
        // Call put() end
    end
end

endmodule


