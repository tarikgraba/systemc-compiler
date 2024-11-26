//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test ()
//
module test // "t_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic [3:0] s;
logic [7:0] a_mif_s;
logic signed [31:0] s0;
logic signed [31:0] s1;
logic t;
logic signed [31:0] s3;
logic signed [31:0] s4;

//------------------------------------------------------------------------------
// Clocked THREAD: return_func1 (test_return.cpp:67:5) 

// Thread-local variables
logic signed [31:0] s0_next;

// Next-state combinational logic
always_comb begin : return_func1_comb     // test_return.cpp:67:5
    return_func1_func;
end
function void return_func1_func;
    logic TMP_0;
    integer unsigned bitIndx;
    logic [3:0] res;
    integer i;
    logic [3:0] TMP_2;
    integer unsigned rangeLo;
    logic [15:0] res_1;
    s0_next = s0;
    bitIndx = s;
    // Call f1() begin
    res = s;
    TMP_0 = 1'(res[bitIndx - 1]);
    // Call f1() end
    i = TMP_0;
    rangeLo = s;
    // Call f2() begin
    res_1 = s;
    TMP_2 = res_1[rangeLo +: 5];
    // Call f2() end
    i = TMP_2[1];
    s0_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : return_func1_ff
    if ( ~rst ) begin
    end
    else begin
        s0 <= s0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_method_call (test_return.cpp:87:5) 

// Thread-local variables
logic signed [31:0] s1_next;

// Next-state combinational logic
always_comb begin : mif_method_call_comb     // test_return.cpp:87:5
    mif_method_call_func;
end
function void mif_method_call_func;
    logic [7:0] TMP_0;
    integer unsigned addr;
    logic [7:0] TMP_1;
    integer unsigned addr_1;
    s1_next = s1;
    addr = s;
    // Call read() begin
    addr_1 = addr;
    // Call read() begin
    TMP_1 = a_mif_s + addr_1;
    // Call read() end
    TMP_0 = TMP_1;
    // Call read() end
    s1_next = TMP_0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : mif_method_call_ff
    if ( ~rst ) begin
    end
    else begin
        s1 <= s1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: return_func2 (test_return.cpp:114:5) 

// Thread-local variables
logic [3:0] blockIndx;
logic [3:0] blockIndx_next;
logic arrp[10];
logic arrp_next[10];
logic [1:0] return_func2_PROC_STATE;
logic [1:0] return_func2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : return_func2_comb     // test_return.cpp:114:5
    return_func2_func;
end
function void return_func2_func;
    logic A;
    logic TMP_0;
    logic [3:0] blockIndx_1;
    arrp_next = arrp;
    blockIndx_next = blockIndx;
    return_func2_PROC_STATE_next = return_func2_PROC_STATE;
    
    case (return_func2_PROC_STATE)
        0: begin
            blockIndx_next = s;
            // Call ff5() begin
            return_func2_PROC_STATE_next = 1; return;    // test_return.cpp:108:13;
            // Call ff5() end
        end
        1: begin
            // Call ff5() begin
            blockIndx_1 = blockIndx_next;
            // Call f5() begin
            TMP_0 = !arrp_next[blockIndx_1] || t;
            // Call f5() end
            A = TMP_0;
            if (!A)
            begin
                return_func2_PROC_STATE_next = 1; return;    // test_return.cpp:108:13;
            end
            // Call ff5() end
            return_func2_PROC_STATE_next = 0; return;    // test_return.cpp:120:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : return_func2_ff
    if ( ~rst ) begin
        return_func2_PROC_STATE <= 0;    // test_return.cpp:116:9;
    end
    else begin
        blockIndx <= blockIndx_next;
        arrp <= arrp_next;
        return_func2_PROC_STATE <= return_func2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: return_func3 (test_return.cpp:137:5) 

// Thread-local variables
logic signed [31:0] s3_next;

// Next-state combinational logic
always_comb begin : return_func3_comb     // test_return.cpp:137:5
    return_func3_func;
end
function void return_func3_func;
    integer i;
    integer TMP_0;
    integer TMP_1;
    s3_next = s3;
    i = 42;
    if (|s)
    begin
        // Call ff6() begin
        if (i > s1)
        begin
            TMP_0 = ++i;
        end else begin
            TMP_0 = i;
        end
        // Call ff6() end
    end else begin
        // Call ff6() begin
        if (i > s1)
        begin
            TMP_1 = ++i;
        end else begin
            TMP_1 = i;
        end
        // Call ff6() end
        i = TMP_1;
    end
    s3_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : return_func3_ff
    if ( ~rst ) begin
    end
    else begin
        s3 <= s3_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: return_func4 (test_return.cpp:167:5) 

// Thread-local variables
logic signed [31:0] s4_next;

// Next-state combinational logic
always_comb begin : return_func4_comb     // test_return.cpp:167:5
    return_func4_func;
end
function void return_func4_func;
    logic [3:0] TMP_0;
    logic [3:0] par;
    s4_next = s4;
    par = s;
    // Call ff7() begin
    case (par)
    0 : begin
        TMP_0 = 1;
    end
    1 : begin
        TMP_0 = s;
    end
    default : begin
        TMP_0 = 0;
    end
    endcase
    // Call ff7() end
    s4_next = TMP_0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : return_func4_ff
    if ( ~rst ) begin
    end
    else begin
        s4 <= s4_next;
    end
end

endmodule


