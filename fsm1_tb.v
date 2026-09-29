`timescale 1ns/1ps

module fsm1_tb;

    reg clk;
    reg set;
    reg reset;
    reg x;

    wire q0;
    wire q1;
    wire y;

    fsm1 uut(
        .clk(clk),
        .reset(reset),
        .set(set),
        .q1(q1),
        .q0(q0),
        .y(y),
        .x(x)
    );

    // Generate waveform
    initial begin
        $dumpfile("fsm1.vcd");
        $dumpvars(0, fsm1_tb);
    end

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Input stimulus
    initial begin
        set = 0;
        reset = 1;
        x = 0;

        #10 reset = 0;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        #10 x = 0;

        #20 $finish;
    end

    // Monitor
    initial begin
        $monitor("Time=%0t, clk=%b, set=%b, reset=%b, x=%b, q1=%b, q0=%b, y=%b",
                 $time, clk, set, reset, x, q1, q0, y);
    end

endmodule