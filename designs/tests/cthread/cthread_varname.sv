//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.6
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_varname.cpp:256:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic a;
logic b;
logic signed [31:0] t0a;
logic signed [31:0] t1a;
logic signed [31:0] t2a;
logic signed [31:0] t3a;
logic s1;
logic s2;
logic signed [31:0] s3;
logic signed [31:0] s4;

//------------------------------------------------------------------------------
// Method process: local_varname (test_cthread_varname.cpp:63:5) 

always_comb 
begin : local_varname     // test_cthread_varname.cpp:63:5
    integer m_1;
    integer k_1;
    integer a_1;
    m_1 = 1;
    k_1 = 2;
    t0a = a_1 + k_1 + m_1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_func (test_cthread_varname.cpp:79:5) 

// Thread-local variables
logic [1:0] doble_varname_func_PROC_STATE;
logic [1:0] doble_varname_func_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_func_comb     // test_cthread_varname.cpp:79:5
    doble_varname_func_func;
end
function void doble_varname_func_func;
    doble_varname_func_PROC_STATE_next = doble_varname_func_PROC_STATE;
    
    case (doble_varname_func_PROC_STATE)
        0: begin
            // Call syncWaiting() begin
            doble_varname_func_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:76:9;
            // Call syncWaiting() end
        end
        1: begin
            doble_varname_func_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:89:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_func_ff
    if ( rst ) begin
        doble_varname_func_PROC_STATE <= 0;    // test_cthread_varname.cpp:81:9;
    end
    else begin
        doble_varname_func_PROC_STATE <= doble_varname_func_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope (test_cthread_varname.cpp:96:5) 

// Thread-local variables
logic [2:0] acheck_hiwait_delay;
logic [2:0] acheck_hiwait_delay_next;
logic signed [31:0] t1a_next;
logic signed [31:0] m2;
logic [1:0] doble_varname_scope_PROC_STATE;
logic [1:0] doble_varname_scope_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_scope_comb     // test_cthread_varname.cpp:96:5
    doble_varname_scope_func;
end
function void doble_varname_scope_func;
    logic [1:0] acheck_hiwait_delay_1;
    acheck_hiwait_delay_next = acheck_hiwait_delay;
    t1a_next = t1a;
    doble_varname_scope_PROC_STATE_next = doble_varname_scope_PROC_STATE;
    
    case (doble_varname_scope_PROC_STATE)
        0: begin
            acheck_hiwait_delay_1 = 1;
            m2 = acheck_hiwait_delay_1;
            if (a)
            begin
                acheck_hiwait_delay_next = 2;
                doble_varname_scope_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:107:17;
            end
            t1a_next = m2;
            doble_varname_scope_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:112:13;
        end
        1: begin
            m2 = acheck_hiwait_delay_next;
            t1a_next = m2;
            doble_varname_scope_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:112:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_ff
    if ( rst ) begin
        doble_varname_scope_PROC_STATE <= 0;    // test_cthread_varname.cpp:98:9;
    end
    else begin
        acheck_hiwait_delay <= acheck_hiwait_delay_next;
        t1a <= t1a_next;
        doble_varname_scope_PROC_STATE <= doble_varname_scope_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope_reg (test_cthread_varname.cpp:118:5) 

// Thread-local variables
logic [1:0] bcheck_hiwait_delay;
logic [1:0] bcheck_hiwait_delay_next;
logic [2:0] bcheck_hiwait_delay0;
logic [2:0] bcheck_hiwait_delay_next0;
logic signed [31:0] t2a_next;
logic signed [31:0] m3;
logic [1:0] doble_varname_scope_reg_PROC_STATE;
logic [1:0] doble_varname_scope_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_scope_reg_comb     // test_cthread_varname.cpp:118:5
    doble_varname_scope_reg_func;
end
function void doble_varname_scope_reg_func;
    bcheck_hiwait_delay_next = bcheck_hiwait_delay;
    bcheck_hiwait_delay_next0 = bcheck_hiwait_delay0;
    t2a_next = t2a;
    doble_varname_scope_reg_PROC_STATE_next = doble_varname_scope_reg_PROC_STATE;
    
    case (doble_varname_scope_reg_PROC_STATE)
        0: begin
            bcheck_hiwait_delay_next = 1;
            doble_varname_scope_reg_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:124:13;
        end
        1: begin
            m3 = bcheck_hiwait_delay_next;
            if (a)
            begin
                bcheck_hiwait_delay_next0 = 2;
                doble_varname_scope_reg_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:130:17;
            end
            t2a_next = m3;
            doble_varname_scope_reg_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:135:13;
        end
        2: begin
            m3 = bcheck_hiwait_delay_next0;
            t2a_next = m3;
            doble_varname_scope_reg_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:135:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_reg_ff
    if ( rst ) begin
        doble_varname_scope_reg_PROC_STATE <= 0;    // test_cthread_varname.cpp:120:9;
    end
    else begin
        bcheck_hiwait_delay <= bcheck_hiwait_delay_next;
        bcheck_hiwait_delay0 <= bcheck_hiwait_delay_next0;
        t2a <= t2a_next;
        doble_varname_scope_reg_PROC_STATE <= doble_varname_scope_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope_comb (test_cthread_varname.cpp:141:5) 

// Thread-local variables
logic signed [31:0] t3a_next;
logic signed [31:0] m4;

// Next-state combinational logic
always_comb begin : doble_varname_scope_comb_comb     // test_cthread_varname.cpp:141:5
    doble_varname_scope_comb_func;
end
function void doble_varname_scope_comb_func;
    logic [1:0] ccheck_hiwait_delay;
    logic [2:0] ccheck_hiwait_delay_1;
    t3a_next = t3a;
    ccheck_hiwait_delay = 1;
    m4 = ccheck_hiwait_delay;
    if (a)
    begin
        ccheck_hiwait_delay_1 = 2;
        m4 = ccheck_hiwait_delay_1;
    end
    t3a_next = m4;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_comb_ff
    if ( rst ) begin
    end
    else begin
        t3a <= t3a_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: double_reg1 (test_cthread_varname.cpp:164:5) 

// Thread-local variables
logic s1_next;
logic varC;
logic varC_next;
logic [2:0] varA;
logic [2:0] varA_next;
logic signed [3:0] varB;
logic signed [3:0] varB_next;
logic [1:0] double_reg1_PROC_STATE;
logic [1:0] double_reg1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : double_reg1_comb     // test_cthread_varname.cpp:164:5
    double_reg1_func;
end
function void double_reg1_func;
    s1_next = s1;
    varA_next = varA;
    varB_next = varB;
    varC_next = varC;
    double_reg1_PROC_STATE_next = double_reg1_PROC_STATE;
    
    case (double_reg1_PROC_STATE)
        0: begin
            varB_next = 1;
            if (a)
            begin
                varC_next = b;
                double_reg1_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:175:17;
            end
            double_reg1_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:179:13;
        end
        1: begin
            s1_next = |(varC_next ? varA_next : varB_next);
            varB_next = 3;
            double_reg1_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:179:13;
        end
        2: begin
            varA_next = varB_next;
            double_reg1_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:182:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : double_reg1_ff
    if ( rst ) begin
        s1 <= 1;
        varA <= 0;
        double_reg1_PROC_STATE <= 0;    // test_cthread_varname.cpp:168:9;
    end
    else begin
        s1 <= s1_next;
        varC <= varC_next;
        varA <= varA_next;
        varB <= varB_next;
        double_reg1_PROC_STATE <= double_reg1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: double_reg2 (test_cthread_varname.cpp:187:5) 

// Thread-local variables
logic s2_next;
logic [2:0] varA0;
logic [2:0] varA_next0;
logic signed [31:0] varC0;
logic signed [31:0] varC_next0;
logic signed [3:0] varB0;
logic signed [3:0] varB_next0;
logic [1:0] double_reg2_PROC_STATE;
logic [1:0] double_reg2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : double_reg2_comb     // test_cthread_varname.cpp:187:5
    double_reg2_func;
end
function void double_reg2_func;
    s2_next = s2;
    varA_next0 = varA0;
    varB_next0 = varB0;
    varC_next0 = varC0;
    double_reg2_PROC_STATE_next = double_reg2_PROC_STATE;
    
    case (double_reg2_PROC_STATE)
        0: begin
            if (b)
            begin
                varB_next0 = a ? 1 : 2;
                double_reg2_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:196:17;
            end
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:201:13;
        end
        1: begin
            s2_next = |varB_next0;
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:201:13;
        end
        2: begin
            varA_next0++;
            s2_next = |varC_next0;
            if (b)
            begin
                varB_next0 = a ? 1 : 2;
                double_reg2_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:196:17;
            end
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:201:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : double_reg2_ff
    if ( rst ) begin
        s2 <= 0;
        varA0 <= 1;
        double_reg2_PROC_STATE <= 0;    // test_cthread_varname.cpp:191:9;
    end
    else begin
        s2 <= s2_next;
        varA0 <= varA_next0;
        varC0 <= varC_next0;
        varB0 <= varB_next0;
        double_reg2_PROC_STATE <= double_reg2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: suffix_name (test_cthread_varname.cpp:212:5) 

// Thread-local variables
logic [4:0] varA00;
logic [4:0] varA00_next;
logic [2:0] varA01;
logic [2:0] varA0_next;
logic [4:0] varB00;
logic [4:0] varB0_next;
logic signed [31:0] varA02;
logic signed [31:0] varA02_next;
logic signed [31:0] s3_next;
logic [1:0] suffix_name_PROC_STATE;
logic [1:0] suffix_name_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : suffix_name_comb     // test_cthread_varname.cpp:212:5
    suffix_name_func;
end
function void suffix_name_func;
    logic [3:0] varA1;
    integer varA01_1;
    logic varC0_1;
    s3_next = s3;
    varA00_next = varA00;
    varA02_next = varA02;
    varA0_next = varA01;
    varB0_next = varB00;
    suffix_name_PROC_STATE_next = suffix_name_PROC_STATE;
    
    case (suffix_name_PROC_STATE)
        0: begin
            varB0_next = varA00_next;
            varA01_1 = 42;
            varA02_next = varA01_1 - 1;
            suffix_name_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:223:13;
        end
        1: begin
            varC0_1 = varA0_next == varB0_next;
            s3_next = 32'(varA0_next + varB0_next + varA02_next);
            varA0_next = varB0_next;
            suffix_name_PROC_STATE_next = 0; return;    // test_cthread_varname.cpp:228:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : suffix_name_ff
    if ( rst ) begin
        logic [3:0] varA1;
        varA01 <= 0;
        varA1 = 42;
        varA00 <= varA1;
        suffix_name_PROC_STATE <= 0;    // test_cthread_varname.cpp:217:9;
    end
    else begin
        varA00 <= varA00_next;
        varA01 <= varA0_next;
        varB00 <= varB0_next;
        varA02 <= varA02_next;
        s3 <= s3_next;
        suffix_name_PROC_STATE <= suffix_name_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: suffix_name_next (test_cthread_varname.cpp:233:5) 

// Thread-local variables
logic [2:0] varA00_next0;
logic [2:0] varA00_next_next;
logic [4:0] varB0_next0;
logic [4:0] varB0_next_next;
logic signed [31:0] s4_next;

// Next-state combinational logic
always_comb begin : suffix_name_next_comb     // test_cthread_varname.cpp:233:5
    suffix_name_next_func;
end
function void suffix_name_next_func;
    logic [3:0] varA00_1;
    s4_next = s4;
    varA00_next_next = varA00_next0;
    varB0_next_next = varB0_next0;
    s4_next = varA00_next_next;
    varA00_next_next = varB0_next_next;
    varB0_next_next++;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : suffix_name_next_ff
    if ( rst ) begin
        logic [3:0] varA00_1;
        varA00_next0 <= 42;
        varA00_1 = 42;
        varB0_next0 <= varA00_1;
    end
    else begin
        varA00_next0 <= varA00_next_next;
        varB0_next0 <= varB0_next_next;
        s4 <= s4_next;
    end
end

endmodule


