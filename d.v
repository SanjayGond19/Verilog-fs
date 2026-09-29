module d(
    input set,
    input reset,
    input clk,
    input d,
    output reg q,
    output qbar
);

    assign qbar = ~q;

    always @(posedge clk) begin
        if (set)
            q <= 1'b1;
        else if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule