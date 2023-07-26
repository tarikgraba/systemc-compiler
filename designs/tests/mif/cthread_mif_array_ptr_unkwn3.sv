//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic signed [31:0] sig;
logic [3:0] minst_s[2][1];
logic [3:0] minst_as[2][1][3];
logic [3:0] minst_asp[2][1][3];
logic minst_clk[2][1];
logic minst_rst[2][1];

// Local parameters generated for C++ constants
localparam logic [3:0] minst_w[2][1] = '{ '{ 0 }, '{ 0 } };

// Assignments generated for C++ channel arrays
assign minst_clk[0][0] = clk;
assign minst_clk[1][0] = clk;
assign minst_rst[0][0] = rst;
assign minst_rst[1][0] = rst;

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_sig (test_cthread_mif_array_ptr_unkwn3.cpp:44:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;

// Next-state combinational logic
always_comb begin : minst_thread_member_sig_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:44:5
    minst_thread_member_sig_func;
end
function void minst_thread_member_sig_func;
    integer k;
    j_next = j;
    k = minst_as[0][0][j_next + 1];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0][0] or posedge minst_rst[0][0]) 
begin : minst_thread_member_sig_ff
    if ( minst_rst[0][0] ) begin
        integer k;
        j <= minst_s[0][0];
        k = minst_as[0][0][j];
    end
    else begin
        j <= j_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_comb (test_cthread_mif_array_ptr_unkwn3.cpp:61:5) 

// Thread-local variables
logic [3:0] minst_v[2][1];
logic signed [31:0] minst_av[2][1][2];
logic signed [31:0] minst_avv[2][1][2][3];

// Next-state combinational logic
always_comb begin : minst_thread_member_comb_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:61:5
    minst_thread_member_comb_func;
end
function void minst_thread_member_comb_func;
    integer j_1;
    integer k;
    minst_v[0][0] = 1;
    minst_av[0][0][0] = minst_v[0][0];
    minst_avv[0][0][1][2] = minst_v[0][0];
    k = minst_av[0][0][0] + minst_avv[0][0][1][2];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0][0] or posedge minst_rst[0][0]) 
begin : minst_thread_member_comb_ff
    if ( minst_rst[0][0] ) begin
        integer j_1;
        logic [3:0] minst_v;
        integer minst_av[2];
        integer minst_avv[2][3];
        j_1 = minst_s[0][0];
        minst_v = minst_as[0][0][1];
        minst_av[0] = minst_v + minst_asp[0][0][j_1];
        minst_avv[1][j_1] = minst_av[0];
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_reg (test_cthread_mif_array_ptr_unkwn3.cpp:81:5) 

// Thread-local variables
logic [3:0] minst_as_next[2][1][3];
logic [3:0] minst_asp_next[2][1][3];
logic signed [31:0] j0;
logic signed [31:0] j_next0;
logic signed [31:0] minst_aw[2][1][2];
logic signed [31:0] minst_aw_next[2][1][2];

// Next-state combinational logic
always_comb begin : minst_thread_member_reg_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:81:5
    minst_thread_member_reg_func;
end
function void minst_thread_member_reg_func;
    integer l;
    j_next0 = j0;
    minst_as_next[0][0] = minst_as[0][0];
    minst_asp_next[0][0] = minst_asp[0][0];
    minst_aw_next[0][0] = minst_aw[0][0];
    l = minst_w[0][0] + minst_aw_next[0][0][j_next0] + minst_as[0][0][j_next0 + 1] + minst_asp[0][0][j_next0 + 2];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0][0] or posedge minst_rst[0][0]) 
begin : minst_thread_member_reg_ff
    if ( minst_rst[0][0] ) begin
        j0 <= minst_s[0][0];
        minst_as[0][0][0] <= j0;
        minst_asp[0][0][j0] <= 0;
    end
    else begin
        minst_as[0][0] <= minst_as_next[0][0];
        minst_asp[0][0] <= minst_asp_next[0][0];
        j0 <= j_next0;
        minst_aw[0][0] <= minst_aw_next[0][0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_sig0 (test_cthread_mif_array_ptr_unkwn3.cpp:44:5) 

// Thread-local variables
logic signed [31:0] j1;
logic signed [31:0] j_next1;

// Next-state combinational logic
always_comb begin : minst_thread_member_sig0_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:44:5
    minst_thread_member_sig0_func;
end
function void minst_thread_member_sig0_func;
    integer k;
    j_next1 = j1;
    k = minst_as[1][0][j_next1 + 1];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1][0] or posedge minst_rst[1][0]) 
begin : minst_thread_member_sig0_ff
    if ( minst_rst[1][0] ) begin
        integer k;
        j1 <= minst_s[1][0];
        k = minst_as[1][0][j1];
    end
    else begin
        j1 <= j_next1;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_comb0 (test_cthread_mif_array_ptr_unkwn3.cpp:61:5) 

// Next-state combinational logic
always_comb begin : minst_thread_member_comb0_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:61:5
    minst_thread_member_comb0_func;
end
function void minst_thread_member_comb0_func;
    integer j_1;
    integer k;
    minst_v[1][0] = 1;
    minst_av[1][0][0] = minst_v[1][0];
    minst_avv[1][0][1][2] = minst_v[1][0];
    k = minst_av[1][0][0] + minst_avv[1][0][1][2];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1][0] or posedge minst_rst[1][0]) 
begin : minst_thread_member_comb0_ff
    if ( minst_rst[1][0] ) begin
        integer j_1;
        logic [3:0] minst_v;
        integer minst_av[2];
        integer minst_avv[2][3];
        j_1 = minst_s[1][0];
        minst_v = minst_as[1][0][1];
        minst_av[0] = minst_v + minst_asp[1][0][j_1];
        minst_avv[1][j_1] = minst_av[0];
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thread_member_reg0 (test_cthread_mif_array_ptr_unkwn3.cpp:81:5) 

// Thread-local variables
logic signed [31:0] j2;
logic signed [31:0] j_next2;

// Next-state combinational logic
always_comb begin : minst_thread_member_reg0_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:81:5
    minst_thread_member_reg0_func;
end
function void minst_thread_member_reg0_func;
    integer l;
    j_next2 = j2;
    minst_as_next[1][0] = minst_as[1][0];
    minst_asp_next[1][0] = minst_asp[1][0];
    minst_aw_next[1][0] = minst_aw[1][0];
    l = minst_w[1][0] + minst_aw_next[1][0][j_next2] + minst_as[1][0][j_next2 + 1] + minst_asp[1][0][j_next2 + 2];
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1][0] or posedge minst_rst[1][0]) 
begin : minst_thread_member_reg0_ff
    if ( minst_rst[1][0] ) begin
        j2 <= minst_s[1][0];
        minst_as[1][0][0] <= j2;
        minst_asp[1][0][j2] <= 0;
    end
    else begin
        minst_as[1][0] <= minst_as_next[1][0];
        minst_asp[1][0] <= minst_asp_next[1][0];
        j2 <= j_next2;
        minst_aw[1][0] <= minst_aw_next[1][0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: top_thread_comb (test_cthread_mif_array_ptr_unkwn3.cpp:119:5) 

// Thread-local variables
logic signed [31:0] j3;
logic signed [31:0] j_next3;
logic [3:0] minst_y[2][1];
logic signed [31:0] minst_ay[2][1][3];

// Next-state combinational logic
always_comb begin : top_thread_comb_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:119:5
    top_thread_comb_func;
end
function void top_thread_comb_func;
    integer i_1;
    j_next3 = j3;
    minst_y[1][0] = minst_asp[j_next3][0][0];
    i_1 = minst_y[1][0];
    minst_ay[0][0][1] = minst_as[j_next3][j_next3 + 1][j_next3];
    i_1 = minst_ay[0][0][1];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : top_thread_comb_ff
    if ( rst ) begin
        logic [3:0] minst_y[2][1];
        integer minst_ay[2][1][3];
        for (integer i = 0; i < 2; i++)
        begin
            minst_y[i][0] = i;
            for (integer k = 0; k < 2; k++)
            begin
                minst_ay[i][0][k] = i + k;
            end
        end
        j3 <= sig;
    end
    else begin
        j3 <= j_next3;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: top_thread_reg (test_cthread_mif_array_ptr_unkwn3.cpp:142:5) 

// Thread-local variables
logic signed [31:0] j4;
logic signed [31:0] j_next4;
logic [3:0] minst_z[2][1];
logic [3:0] minst_z_next[2][1];
logic signed [31:0] minst_az[2][1][2];
logic signed [31:0] minst_az_next[2][1][2];

// Next-state combinational logic
always_comb begin : top_thread_reg_comb     // test_cthread_mif_array_ptr_unkwn3.cpp:142:5
    top_thread_reg_func;
end
function void top_thread_reg_func;
    integer i;
    j_next4 = j4;
    minst_az_next = minst_az;
    minst_z_next = minst_z;
    minst_z_next[j_next4][j_next4 + 1] = 2;
    i = minst_z_next[j_next4][j_next4 + 1];
    minst_az_next[0][0][j_next4 + 1] = 3;
    i = minst_az_next[0][0][1];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : top_thread_reg_ff
    if ( rst ) begin
        j4 <= minst_s[0][0];
    end
    else begin
        j4 <= j_next4;
        minst_z <= minst_z_next;
        minst_az <= minst_az_next;
    end
end

endmodule


