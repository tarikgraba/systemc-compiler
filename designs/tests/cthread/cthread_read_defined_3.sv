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
module A // "b_mod"
(
);

// Variables generated for SystemC signals
logic clk;
logic nrst;
logic [31:0] s;
logic bsignal;
logic bsignal_array[2];
logic bsignal_array2d[2][2];
logic bsignal_ptr;
logic bsignal_array_ptr[2];
logic bsignal_ptr_arr[2];
logic csignal;
logic csignal_array[2];
logic csignal_array2d[2][2];
logic csignal_ptr;
logic csignal_array_ptr[2];
logic csignal_ptr_arr[2];

//------------------------------------------------------------------------------
// Clocked THREAD: write_sig_thread (test_cthread_read_defined_3.cpp:53:5) 

// Thread-local variables
logic bsignal_next;
logic bsignal_array_next[2];
logic bsignal_array2d_next[2][2];
logic bsignal_ptr_next;
logic bsignal_array_ptr_next[2];
logic bsignal_ptr_arr_next[2];

// Next-state combinational logic
always_comb begin : write_sig_thread_comb     // test_cthread_read_defined_3.cpp:53:5
    write_sig_thread_func;
end
function void write_sig_thread_func;
    bsignal_array2d_next = bsignal_array2d;
    bsignal_array_next = bsignal_array;
    bsignal_array_ptr_next = bsignal_array_ptr;
    bsignal_next = bsignal;
    bsignal_ptr_arr_next = bsignal_ptr_arr;
    bsignal_ptr_next = bsignal_ptr;
    bsignal_next = 1;
    bsignal_array_next[0] = bsignal;
    bsignal_array2d_next[1][s] = 1;
    bsignal_ptr_next = bsignal_array[s];
    bsignal_array_ptr_next[s] = bsignal_ptr;
    bsignal_ptr_arr_next[s + 1] = bsignal_array_ptr[0];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : write_sig_thread_ff
    if ( ~nrst ) begin
        bsignal <= 0;
        bsignal_array[s] <= 0;
        bsignal_array2d[s][1] <= 0;
        bsignal_ptr <= 0;
        bsignal_array_ptr[1] <= 0;
        bsignal_ptr_arr[0] <= 0;
    end
    else begin
        bsignal <= bsignal_next;
        bsignal_array <= bsignal_array_next;
        bsignal_array2d <= bsignal_array2d_next;
        bsignal_ptr <= bsignal_ptr_next;
        bsignal_array_ptr <= bsignal_array_ptr_next;
        bsignal_ptr_arr <= bsignal_ptr_arr_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: read_sig_thread (test_cthread_read_defined_3.cpp:93:5) 

// Thread-local variables
logic csignal_next;
logic csignal_array_next[2];
logic csignal_array2d_next[2][2];
logic csignal_ptr_next;
logic csignal_array_ptr_next[2];
logic csignal_ptr_arr_next[2];
logic [1:0] read_sig_thread_PROC_STATE;
logic [1:0] read_sig_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : read_sig_thread_comb     // test_cthread_read_defined_3.cpp:93:5
    read_sig_thread_func;
end
function void read_sig_thread_func;
    logic b;
    csignal_array2d_next = csignal_array2d;
    csignal_array_next = csignal_array;
    csignal_array_ptr_next = csignal_array_ptr;
    csignal_next = csignal;
    csignal_ptr_arr_next = csignal_ptr_arr;
    csignal_ptr_next = csignal_ptr;
    read_sig_thread_PROC_STATE_next = read_sig_thread_PROC_STATE;
    
    case (read_sig_thread_PROC_STATE)
        0: begin
            b = csignal;
            csignal_next = !csignal;
            b = csignal_array[0];
            csignal_array_next[0] = csignal_array[1];
            csignal_array_next[1] = csignal_array[0];
            b = csignal_array2d[1][0];
            csignal_array2d_next[1][0] = csignal;
            read_sig_thread_PROC_STATE_next = 1; return;    // test_cthread_read_defined_3.cpp:129:13;
        end
        1: begin
            b = csignal;
            csignal_ptr_next = b;
            b = csignal_ptr;
            if (|s)
            begin
                b = csignal_array_ptr[s];
                csignal_array_ptr_next[s] = !b;
            end
            if (|s)
            begin
                b = csignal_ptr_arr[csignal_array_ptr[0]];
                csignal_ptr_arr_next[csignal_array2d[0][s]] = 1;
                read_sig_thread_PROC_STATE_next = 2; return;    // test_cthread_read_defined_3.cpp:155:17;
            end
            b = csignal;
            csignal_next = !csignal;
            b = csignal_array[0];
            csignal_array_next[0] = csignal_array[1];
            csignal_array_next[1] = csignal_array[0];
            b = csignal_array2d[1][0];
            csignal_array2d_next[1][0] = csignal;
            read_sig_thread_PROC_STATE_next = 1; return;    // test_cthread_read_defined_3.cpp:129:13;
        end
        2: begin
            if (|s)
            begin
                b = csignal_ptr_arr[csignal_array_ptr[0]];
                csignal_ptr_arr_next[csignal_array2d[0][s]] = 1;
                read_sig_thread_PROC_STATE_next = 2; return;    // test_cthread_read_defined_3.cpp:155:17;
            end
            b = csignal;
            csignal_next = !csignal;
            b = csignal_array[0];
            csignal_array_next[0] = csignal_array[1];
            csignal_array_next[1] = csignal_array[0];
            b = csignal_array2d[1][0];
            csignal_array2d_next[1][0] = csignal;
            read_sig_thread_PROC_STATE_next = 1; return;    // test_cthread_read_defined_3.cpp:129:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : read_sig_thread_ff
    if ( ~nrst ) begin
        csignal <= 0;
        if (|s)
        begin
            csignal_array[0] <= 0;
        end
        csignal_array2d[1][0] <= 0;
        csignal_ptr <= 0;
        csignal_array_ptr[1] <= 0;
        csignal_ptr_arr[0] <= 0;
        read_sig_thread_PROC_STATE <= 0;    // test_cthread_read_defined_3.cpp:109:9;
    end
    else begin
        csignal <= csignal_next;
        csignal_array <= csignal_array_next;
        csignal_array2d <= csignal_array2d_next;
        csignal_ptr <= csignal_ptr_next;
        csignal_array_ptr <= csignal_array_ptr_next;
        csignal_ptr_arr <= csignal_ptr_arr_next;
        read_sig_thread_PROC_STATE <= read_sig_thread_PROC_STATE_next;
    end
end

endmodule


