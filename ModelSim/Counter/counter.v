module counter (
    input clk,
    input reset,
    output reg[3:0] cnt
);
    always @(posedge clk) begin
        if (!reset)
            cnt <= 0;
        else if (cnt == 15)
            cnt <= 0;
        else
            cnt <= cnt + 1;
    end
endmodule