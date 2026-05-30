`timescale 1ns / 1ps

module tb_counter_normal;

reg clk;
reg rst;
wire [7:0] count;

counter_normal uut (
    .clk(clk),
    .rst(rst),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    #100;

    $finish;
end

endmodule