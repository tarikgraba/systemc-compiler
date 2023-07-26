//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.13
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_array_unknown.cpp:275:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals
logic ch[2][2];
logic signed [31:0] a;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic signed [31:0] t5a;
logic signed [31:0] t6a;
logic signed [31:0] t6b;
logic signed [31:0] t6;
logic signed [31:0] t7;

//------------------------------------------------------------------------------
// Method process: array_init (test_array_unknown.cpp:69:5) 

always_comb 
begin : array_init     // test_array_unknown.cpp:69:5
    integer n_1[2][2];
    for (integer i = 0; i < 2; i++)
    begin
        for (integer j = 0; j < 2; j++)
        begin
            n_1[i][j] = i + j + 1;
        end
    end
    t0 = n_1[0][0];
end

//------------------------------------------------------------------------------
// Method process: multi_array_of_channel_pointers (test_array_unknown.cpp:85:5) 

always_comb 
begin : multi_array_of_channel_pointers     // test_array_unknown.cpp:85:5
    logic b;
    b = ch[1][0];
    t1 = b;
end

//------------------------------------------------------------------------------
// Method process: write_unknown_index1 (test_array_unknown.cpp:92:5) 

always_comb 
begin : write_unknown_index1     // test_array_unknown.cpp:92:5
    integer m_1[3];
    m_1[0] = 1;
    m_1[1] = 2;
    m_1[2] = 3;
    m_1[a] = 1;
    t2 = m_1[a];
end

//------------------------------------------------------------------------------
// Method process: write_unknown_index2 (test_array_unknown.cpp:105:5) 

always_comb 
begin : write_unknown_index2     // test_array_unknown.cpp:105:5
end

//------------------------------------------------------------------------------
// Method process: write_unknown_index3 (test_array_unknown.cpp:118:5) 

always_comb 
begin : write_unknown_index3     // test_array_unknown.cpp:118:5
    integer n_1[2][2];
    n_1[0][0] = 0;
    n_1[0][1] = 1;
    n_1[1][0] = 2;
    n_1[1][1] = 3;
    n_1[1][a] = 2;
end

//------------------------------------------------------------------------------
// Method process: write_unknown_index_sc_type (test_array_unknown.cpp:131:5) 

always_comb 
begin : write_unknown_index_sc_type     // test_array_unknown.cpp:131:5
    logic signed [2:0] k[3];
    k[0] = 0; k[1] = 0; k[2] = 0;
    k[a] = 1;
end

//------------------------------------------------------------------------------
// Method process: pointer_unknown_index1 (test_array_unknown.cpp:143:5) 

// Process-local variables
logic signed [31:0] mm[3];

always_comb 
begin : pointer_unknown_index1     // test_array_unknown.cpp:143:5
    mm[0] = 1;
    mm[1] = 2;
    mm[2] = 3;
    mm[a] = 1;
    t3 = mm[a];
end

//------------------------------------------------------------------------------
// Method process: pointer_unknown_index_sc_type (test_array_unknown.cpp:156:5) 

// Process-local variables
logic [2:0] kk[3];

always_comb 
begin : pointer_unknown_index_sc_type     // test_array_unknown.cpp:156:5
    kk[0] = 1;
    kk[1] = 2;
    kk[2] = 3;
    kk[a] = 1;
    t4 = kk[a];
end

//------------------------------------------------------------------------------
// Method process: unary_array_unknown1 (test_array_unknown.cpp:169:5) 

always_comb 
begin : unary_array_unknown1     // test_array_unknown.cpp:169:5
    integer m_1[3];
    m_1[0] = 1;
    m_1[1] = 2;
    m_1[2] = 3;
    m_1[a]++;
    t5 = m_1[a];
end

//------------------------------------------------------------------------------
// Method process: unary_array_unknown2 (test_array_unknown.cpp:183:5) 

always_comb 
begin : unary_array_unknown2     // test_array_unknown.cpp:183:5
    integer m_1[3];
    m_1[0] = 1;
    m_1[1] = 2;
    m_1[2] = 3;
    --m_1[a];
    t5a = m_1[a];
end

//------------------------------------------------------------------------------
// Method process: unary_array_unknown_sc_type (test_array_unknown.cpp:196:5) 

always_comb 
begin : unary_array_unknown_sc_type     // test_array_unknown.cpp:196:5
    logic [2:0] k[3];
    k[0] = 0; k[1] = 0; k[2] = 0;
    k[0] = 1;
    k[1] = 2;
    k[2] = 3;
    k[a]++;
end

//------------------------------------------------------------------------------
// Method process: comp_assign_array_unknown1 (test_array_unknown.cpp:209:5) 

always_comb 
begin : comp_assign_array_unknown1     // test_array_unknown.cpp:209:5
    integer m_1[3];
    m_1[0] = 1;
    m_1[1] = 2;
    m_1[2] = 3;
    m_1[a] = m_1[a] + 1;
    t6a = m_1[a];
end

//------------------------------------------------------------------------------
// Method process: comp_assign_array_unknown2 (test_array_unknown.cpp:223:5) 

always_comb 
begin : comp_assign_array_unknown2     // test_array_unknown.cpp:223:5
    integer n_1[2][2];
    n_1[0][0] = 0;
    n_1[0][1] = 1;
    n_1[1][0] = 2;
    n_1[1][1] = 3;
    n_1[a][1] = n_1[a][1] - 4;
    t6b = n_1[a][1];
end

//------------------------------------------------------------------------------
// Method process: comp_assign_array_unknown3 (test_array_unknown.cpp:238:5) 

always_comb 
begin : comp_assign_array_unknown3     // test_array_unknown.cpp:238:5
    integer n_1[2][2];
    n_1[0][0] = 0;
    n_1[0][1] = 1;
    n_1[1][0] = 2;
    n_1[1][1] = 3;
    n_1[1][a] = n_1[1][a] - 2;
    t6 = n_1[a][a];
end

//------------------------------------------------------------------------------
// Method process: read_unknown_index (test_array_unknown.cpp:254:5) 

always_comb 
begin : read_unknown_index     // test_array_unknown.cpp:254:5
    integer m_1[3];
    m_1[0] = 1;
    m_1[1] = 2;
    m_1[2] = 3;
    t7 = m_1[a];
end

endmodule


