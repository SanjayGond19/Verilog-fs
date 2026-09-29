module fsm1(
    input set,
    input reset,
    input clk,
    input x,
    output q0,
    output q1,
    output y
);

    wire d1;
    wire d0;

    d ff0(
        .clk(clk),
        .set(set),
        .reset(reset),
        .d(d0),
        .q(q0)
    );

    d ff1(
        .clk(clk),
        .set(set),
        .reset(reset),
        .d(d1),
        .q(q1)
    );

    assign d1 = (q1 & ~q0)
              | (q1 & x)
              | (q0 & ~x);

    assign d0 = (q0 & x)
              | (~q0 & ~x);

    assign y = x;

endmodule