//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: tb ()
//
module tb // "tb_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic rst;


//------------------------------------------------------------------------------
// Child module instances

top top_inst
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: top (test_mif_array2.cpp:200:5)
//
module top // "tb_inst.top_inst"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic minst_s[2];
logic signed [31:0] minst_t0[2];
logic signed [31:0] minst_t1[2];
logic signed [31:0] minst_t2[2];
logic signed [31:0] minst_t3[2];
logic signed [31:0] minst_t4[2];
logic signed [31:0] minst_t5[2];
logic minst_clk[2];
logic minst_rst[2];

// Assignments generated for C++ channel arrays
assign minst_clk[0] = clk;
assign minst_clk[1] = clk;
assign minst_rst[0] = rst;
assign minst_rst[1] = rst;

//------------------------------------------------------------------------------
// Method process: minst_metProc (test_mif_array2.cpp:55:5) 

// Process-local variables
logic [2:0] minst_v[2];
logic [3:0] minst_vv[2];

always_comb 
begin : minst_metProc     // test_mif_array2.cpp:55:5
    logic d;
    minst_v[0] = 1;
    minst_vv[0] = 2;
    d = |minst_vv[0];
    minst_v[0] = minst_s[0] ? 0 : 1;
    d = !minst_s[0] && |minst_v[0];
    minst_t0[0] = d;
end

//------------------------------------------------------------------------------
// Method process: minst_locRecMeth (test_mif_array2.cpp:70:5) 

always_comb 
begin : minst_locRecMeth     // test_mif_array2.cpp:70:5
    logic t_a;
    logic [3:0] t_b;
    logic tt_a;
    logic [3:0] tt_b;
    logic [3:0] x;
    t_b = 0;
    tt_b = 0;
    t_a = 0;
    t_b = 4;
    tt_a = 1;
    tt_b = 5;
    x = t_b + tt_b;
    minst_t1[0] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_locRecArrMeth (test_mif_array2.cpp:86:5) 

always_comb 
begin : minst_locRecArrMeth     // test_mif_array2.cpp:86:5
    logic t_a[2];
    logic [3:0] t_b[2];
    logic tt_a[3];
    logic [3:0] tt_b[3];
    logic [3:0] x;
    t_a[1] = 0;
    t_b[1] = 4;
    for (integer i = 0; i < 3; ++i)
    begin
        tt_a[i] = i == 0;
        tt_b[i] = i;
        if (i < 2)
        begin
            t_b[i] = tt_b[i] + 1;
        end
    end
    x = t_b[1] + tt_b[2];
    minst_t2[0] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_memRecMeth (test_mif_array2.cpp:107:5) 

// Process-local variables
logic minst_r_a[2];
logic [3:0] minst_r_b[2];
logic minst_rr_a[2];
logic [3:0] minst_rr_b[2];

always_comb 
begin : minst_memRecMeth     // test_mif_array2.cpp:107:5
    logic [3:0] x;
    minst_r_a[0] = 0;
    minst_r_b[0] = 4;
    minst_rr_a[0] = 1;
    minst_rr_b[0] = 5;
    x = minst_r_b[0] + minst_rr_b[0];
    minst_t3[0] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_memRecArrMeth (test_mif_array2.cpp:121:5) 

// Process-local variables
logic minst_p_a[2][2];
logic [3:0] minst_p_b[2][2];
logic minst_pp_a[2][3];
logic [3:0] minst_pp_b[2][3];

always_comb 
begin : minst_memRecArrMeth     // test_mif_array2.cpp:121:5
    logic [3:0] x;
    minst_p_a[0][1] = 0;
    minst_p_b[0][1] = 4;
    minst_pp_a[0][2] = 0;
    minst_pp_b[0][2] = 4;
    x = minst_p_b[0][1] + minst_pp_b[0][2];
    minst_t4[0] = x;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrProc (test_mif_array2.cpp:133:5) 

// Thread-local variables
logic minst_s_next[2];
logic [2:0] i0;
logic [2:0] i_next;
logic [4:0] minst_vvv[2];
logic [4:0] minst_vvv_next[2];
logic signed [31:0] minst_t5_next[2];

// Next-state combinational logic
always_comb begin : minst_thrProc_comb     // test_mif_array2.cpp:133:5
    minst_thrProc_func;
end
function void minst_thrProc_func;
    logic [2:0] j;
    i_next = i0;
    minst_s_next[0] = minst_s[0];
    minst_t5_next[0] = minst_t5[0];
    minst_vvv_next[0] = minst_vvv[0];
    minst_s_next[0] = |(i_next++);
    j = minst_vvv_next[0]++;
    minst_t5_next[0] = j;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[0] or posedge minst_rst[0]) 
begin : minst_thrProc_ff
    if ( minst_rst[0] ) begin
        logic [2:0] j;
        i0 <= 0;
        j = 1;
        minst_s[0] <= 0;
        minst_vvv[0] <= 0;
    end
    else begin
        minst_s[0] <= minst_s_next[0];
        i0 <= i_next;
        minst_vvv[0] <= minst_vvv_next[0];
        minst_t5[0] <= minst_t5_next[0];
    end
end

//------------------------------------------------------------------------------
// Method process: minst_metProc0 (test_mif_array2.cpp:55:5) 

always_comb 
begin : minst_metProc0     // test_mif_array2.cpp:55:5
    logic d;
    minst_v[1] = 1;
    minst_vv[1] = 2;
    d = |minst_vv[1];
    minst_v[1] = minst_s[1] ? 0 : 1;
    d = !minst_s[1] && |minst_v[1];
    minst_t0[1] = d;
end

//------------------------------------------------------------------------------
// Method process: minst_locRecMeth0 (test_mif_array2.cpp:70:5) 

always_comb 
begin : minst_locRecMeth0     // test_mif_array2.cpp:70:5
    logic t_a;
    logic [3:0] t_b;
    logic tt_a;
    logic [3:0] tt_b;
    logic [3:0] x;
    t_b = 0;
    tt_b = 0;
    t_a = 0;
    t_b = 4;
    tt_a = 1;
    tt_b = 5;
    x = t_b + tt_b;
    minst_t1[1] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_locRecArrMeth0 (test_mif_array2.cpp:86:5) 

always_comb 
begin : minst_locRecArrMeth0     // test_mif_array2.cpp:86:5
    logic t_a[2];
    logic [3:0] t_b[2];
    logic tt_a[3];
    logic [3:0] tt_b[3];
    logic [3:0] x;
    t_a[1] = 0;
    t_b[1] = 4;
    for (integer i = 0; i < 3; ++i)
    begin
        tt_a[i] = i == 0;
        tt_b[i] = i;
        if (i < 2)
        begin
            t_b[i] = tt_b[i] + 1;
        end
    end
    x = t_b[1] + tt_b[2];
    minst_t2[1] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_memRecMeth0 (test_mif_array2.cpp:107:5) 

always_comb 
begin : minst_memRecMeth0     // test_mif_array2.cpp:107:5
    logic [3:0] x;
    minst_r_a[1] = 0;
    minst_r_b[1] = 4;
    minst_rr_a[1] = 1;
    minst_rr_b[1] = 5;
    x = minst_r_b[1] + minst_rr_b[1];
    minst_t3[1] = x;
end

//------------------------------------------------------------------------------
// Method process: minst_memRecArrMeth0 (test_mif_array2.cpp:121:5) 

always_comb 
begin : minst_memRecArrMeth0     // test_mif_array2.cpp:121:5
    logic [3:0] x;
    minst_p_a[1][1] = 0;
    minst_p_b[1][1] = 4;
    minst_pp_a[1][2] = 0;
    minst_pp_b[1][2] = 4;
    x = minst_p_b[1][1] + minst_pp_b[1][2];
    minst_t4[1] = x;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_thrProc0 (test_mif_array2.cpp:133:5) 

// Thread-local variables
logic [2:0] i1;
logic [2:0] i_next0;

// Next-state combinational logic
always_comb begin : minst_thrProc0_comb     // test_mif_array2.cpp:133:5
    minst_thrProc0_func;
end
function void minst_thrProc0_func;
    logic [2:0] j;
    i_next0 = i1;
    minst_s_next[1] = minst_s[1];
    minst_t5_next[1] = minst_t5[1];
    minst_vvv_next[1] = minst_vvv[1];
    minst_s_next[1] = |(i_next0++);
    j = minst_vvv_next[1]++;
    minst_t5_next[1] = j;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk[1] or posedge minst_rst[1]) 
begin : minst_thrProc0_ff
    if ( minst_rst[1] ) begin
        logic [2:0] j;
        i1 <= 0;
        j = 1;
        minst_s[1] <= 0;
        minst_vvv[1] <= 0;
    end
    else begin
        minst_s[1] <= minst_s_next[1];
        i1 <= i_next0;
        minst_vvv[1] <= minst_vvv_next[1];
        minst_t5[1] <= minst_t5_next[1];
    end
end

endmodule


