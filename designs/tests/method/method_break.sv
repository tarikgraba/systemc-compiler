//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.12
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

// Variables generated for SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_break.cpp:203:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic signed [31:0] si;
logic t0;
logic t1;

//------------------------------------------------------------------------------
// Method process: for_break1 (test_break.cpp:46:5) 

always_comb 
begin : for_break1     // test_break.cpp:46:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        if (a)
        begin
            break;
        end
        k = k + 1;
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_break2 (test_break.cpp:57:5) 

always_comb 
begin : for_break2     // test_break.cpp:57:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        for (integer j = 0; j < 3; j++)
        begin
            if (a)
            begin
                break;
            end
            k = k + 1;
        end
        k = k - 1;
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_break3 (test_break.cpp:73:5) 

always_comb 
begin : for_break3     // test_break.cpp:73:5
    integer k;
    integer m;
    k = 0;
    m = si;
    if (m > 0)
    begin
        for (integer i = 0; i < 2; i++)
        begin
            if (a)
            begin
                break;
            end
            if (b)
            begin
                break;
            end
            k = k + 1;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_break4 (test_break.cpp:89:5) 

always_comb 
begin : for_break4     // test_break.cpp:89:5
    integer k;
    integer m;
    k = 0;
    m = si;
    if (m > 0)
    begin
        for (integer i = 0; i < 2; i++)
        begin
            if (a)
            begin
                if (b)
                begin
                    break;
                end
                k = k - 1;
                break;
            end
            k = k + 1;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_break5 (test_break.cpp:110:5) 

always_comb 
begin : for_break5     // test_break.cpp:110:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        for (integer j = 0; j < 5; j++)
        begin
            if (a)
            begin
                if (b)
                begin
                    break;
                end
                k = 1;
                break;
            end
            k = 2;
        end
        k = 3;
    end
    t0 = |k;
end

//------------------------------------------------------------------------------
// Method process: for_break6 (test_break.cpp:132:5) 

always_comb 
begin : for_break6     // test_break.cpp:132:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        for (integer j = 0; j < 5; j++)
        begin
            if (b)
            begin
                break;
            end
            k = 2;
        end
        if (b)
        begin
            break;
        end
        k = 3;
    end
    t1 = |k;
end

//------------------------------------------------------------------------------
// Method process: while_break1 (test_break.cpp:150:5) 

always_comb 
begin : while_break1     // test_break.cpp:150:5
    integer i;
    integer j;
    i = 10;
    while (i > 0)
    begin
        if (a)
        begin
            break;
        end
        i--;
    end
    i = 3;
    while (i > 0)
    begin
        j = 0;
        while (j < i)
        begin
            if (a)
            begin
                break;
            end
            j++;
        end
        i--;
    end
end

//------------------------------------------------------------------------------
// Method process: do_while_break1 (test_break.cpp:173:5) 

always_comb 
begin : do_while_break1     // test_break.cpp:173:5
    integer i;
    integer j;
    i = 10;
    do
    begin
        if (a)
        begin
            break;
        end
        i--;
    end
    while (i > 0);
    i = 3;
    do
    begin
        j = 0;
        while (j < i)
        begin
            if (a)
            begin
                break;
            end
            j++;
        end
        i--;
    end
    while (i > 0);
end

endmodule


