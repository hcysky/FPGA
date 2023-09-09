module testbench;
    reg clk;
    reg reset;
    wire [3:0] cnt;

    counter c0 (.clk(clk), .reset(reset), .cnt(cnt));

    always #5 clk = ~clk;

    initial begin
        clk <= 0;
        reset <= 0;

        #20 reset <= 1;
        #80 reset <= 0;
        #50 reset <= 1;

        #200 $finish;
    end
endmodule