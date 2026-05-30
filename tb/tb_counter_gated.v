`timescale 1ns / 1ps

module tb_counter_gated;

reg clk;
reg rst;
reg en;
wire [7:0] count;

counter_gated uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    en  = 0;

    #10;
    rst = 0;

    en = 1;
    #40;

    en = 0;
    #30;

    en = 1;
    #40;

    $finish;
end

endmodule