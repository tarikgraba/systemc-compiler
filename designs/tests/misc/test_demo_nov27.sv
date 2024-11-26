//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: demo ()
//
module demo // "top.demo0"
(
    input logic clk,
    input logic rstn
);

// Variables generated for SystemC signals
logic signed [31:0] tout;
logic ready;
logic valid;
logic signed [31:0] t2out;

//------------------------------------------------------------------------------
// Clocked THREAD: thread0 (test_demo_nov27.cpp:168:5) 

// Thread-local variables
logic signed [31:0] tout_next;
logic [1:0] thread0_PROC_STATE;
logic [1:0] thread0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread0_comb     // test_demo_nov27.cpp:168:5
    thread0_func;
end
function void thread0_func;
    tout_next = tout;
    thread0_PROC_STATE_next = thread0_PROC_STATE;
    
    case (thread0_PROC_STATE)
        0: begin
            tout_next = 1;
            thread0_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:174:13;
        end
        1: begin
            tout_next = 2;
            thread0_PROC_STATE_next = 2; return;    // test_demo_nov27.cpp:176:13;
        end
        2: begin
            tout_next = 3;
            tout_next = 1;
            thread0_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:174:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread0_ff
    if ( ~rstn ) begin
        tout <= 0;
        thread0_PROC_STATE <= 0;    // test_demo_nov27.cpp:170:9;
    end
    else begin
        tout <= tout_next;
        thread0_PROC_STATE <= thread0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_demo_nov27.cpp:188:5) 

// Thread-local variables
logic valid_next;
logic thread1_PROC_STATE;
logic thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_demo_nov27.cpp:188:5
    thread1_func;
end
function void thread1_func;
    valid_next = valid;
    thread1_PROC_STATE_next = thread1_PROC_STATE;
    
    case (thread1_PROC_STATE)
        0: begin
            valid_next = 1;
            thread1_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:193:14;
        end
        1: begin
            if (!ready)
            begin
                thread1_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:193:14;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread1_ff
    if ( ~rstn ) begin
        valid <= 0;
        thread1_PROC_STATE <= 0;    // test_demo_nov27.cpp:190:9;
    end
    else begin
        valid <= valid_next;
        thread1_PROC_STATE <= thread1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread2 (test_demo_nov27.cpp:203:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] t2out_next;
logic thread2_PROC_STATE;
logic thread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread2_comb     // test_demo_nov27.cpp:203:5
    thread2_func;
end
function void thread2_func;
    i_next = i;
    t2out_next = t2out;
    thread2_PROC_STATE_next = thread2_PROC_STATE;
    
    case (thread2_PROC_STATE)
        0: begin
            i_next = 0;
            if (i_next < t2out)
            begin
                thread2_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:209:17;
            end
            thread2_PROC_STATE_next = 0; return;    // test_demo_nov27.cpp:206:13;
        end
        1: begin
            i_next++;
            if (i_next < t2out)
            begin
                thread2_PROC_STATE_next = 1; return;    // test_demo_nov27.cpp:209:17;
            end
            thread2_PROC_STATE_next = 0; return;    // test_demo_nov27.cpp:206:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread2_ff
    if ( ~rstn ) begin
        t2out <= 0;
        thread2_PROC_STATE <= 0;    // test_demo_nov27.cpp:206:13;
    end
    else begin
        i <= i_next;
        t2out <= t2out_next;
        thread2_PROC_STATE <= thread2_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

submod submods_0
(
  .clk(clk),
  .rstn(rstn)
);

submod submods_1
(
  .clk(clk),
  .rstn(rstn)
);

endmodule



//==============================================================================
//
// Module: submod ()
//
module submod // "top.demo0.submods_0"
(
    input logic clk,
    input logic rstn
);

endmodule


