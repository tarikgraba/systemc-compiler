//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic op_next[2];
logic op_en[2];
logic signed [15:0] sin_lane[2];
logic signed [15:0] cos_lane[2];


//------------------------------------------------------------------------------
// Child module instances

A a_mod_0
(
  .clk(clk),
  .sin_lane(sin_lane[0]),
  .cos_lane(cos_lane[0]),
  .op_enable(op_en[0]),
  .next_op(op_next[0]),
  .op_enable_out(op_en[0]),
  .next_op_out(op_next[0])
);

A a_mod_1
(
  .clk(clk),
  .sin_lane(sin_lane[1]),
  .cos_lane(cos_lane[1]),
  .op_enable(op_en[1]),
  .next_op(op_next[1]),
  .op_enable_out(op_en[1]),
  .next_op_out(op_next[1])
);

endmodule



//==============================================================================
//
// Module: A ()
//
module A // "b_mod.a"
(
    input logic clk,
    output logic signed [15:0] sin_lane,
    output logic signed [15:0] cos_lane,
    input logic op_enable,
    input logic next_op,
    output logic op_enable_out,
    output logic next_op_out
);

// Variables generated for SystemC signals
logic nrst;
logic [9:0] nco_data;

// Local parameters generated for C++ constants
localparam logic signed [31:0] sin_tab[4] = '{ 1, 2, 3, 4 };
localparam logic signed [31:0] cos_tab[4] = '{ 1, 2, 3, 4 };

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_param_thread (test_fcall_params.cpp:84:5) 

// Thread-local variables
logic signed [15:0] sin_lane_next;
logic signed [15:0] cos_lane_next;
logic op_enable_out_next;
logic next_op_out_next;

// Next-state combinational logic
always_comb begin : fcall_param_thread_comb     // test_fcall_params.cpp:84:5
    fcall_param_thread_func;
end
function void fcall_param_thread_func;
    integer unsigned idx;
    integer unsigned new_idx;
    integer unsigned quadrant;
    integer sin_val;
    integer cos_val;
    integer res_sin;
    integer res_cos;
    integer TMP_0_sin;
    integer TMP_0_cos;
    integer conv_res_sin;
    integer conv_res_cos;
    cos_lane_next = cos_lane;
    next_op_out_next = next_op_out;
    op_enable_out_next = op_enable_out;
    sin_lane_next = sin_lane;
    op_enable_out_next = op_enable;
    next_op_out_next = next_op;
    if (op_enable)
    begin
        idx = nco_data;
        // Call convert_sin_cos() begin
        new_idx = idx & 255;
        quadrant = idx / 256;
        sin_val = sin_tab[new_idx];
        cos_val = cos_tab[new_idx];
        case (quadrant)
        0 : begin
            res_cos = cos_val;
            res_sin = sin_val;
        end
        1 : begin
            res_cos = -sin_val;
            res_sin = cos_val;
        end
        2 : begin
            res_cos = -cos_val;
            res_sin = -sin_val;
        end
        3 : begin
            res_cos = sin_val;
            res_sin = -cos_val;
        end
        endcase
        TMP_0_sin = res_sin; TMP_0_cos = res_cos;
        // Call convert_sin_cos() end
        conv_res_sin = TMP_0_sin; conv_res_cos = TMP_0_cos;
        sin_lane_next = conv_res_sin;
        cos_lane_next = conv_res_cos;
    end else begin
        sin_lane_next = 0;
        cos_lane_next = 0;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_param_thread_ff
    if ( ~nrst ) begin
        sin_lane <= 0;
        cos_lane <= 0;
        op_enable_out <= 0;
        next_op_out <= 0;
    end
    else begin
        sin_lane <= sin_lane_next;
        cos_lane <= cos_lane_next;
        op_enable_out <= op_enable_out_next;
        next_op_out <= next_op_out_next;
    end
end

endmodule


