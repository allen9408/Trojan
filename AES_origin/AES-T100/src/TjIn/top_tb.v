`timescale 1ns / 1ps

module top_tb;
 
// Inputs
reg clk;
reg rst;
reg [127:0] state;
reg [127:0] key;

// Outputs
wire [127:0] out;
wire [63:0]	 Capacitance;

top(
	.clk(clk)
	,.rst(rst)
	,.state(state)
	,.key(key)
	,.out(out)
	,.Capacitance(Capacitance)
);

initial begin
	clk = 0;
	state = 0;
	key = 0;

	@(negedge clk);

	# 2;
	state = 128'd0;
	key = 128'd0;
end

always #2 clk = ~clk;

endmodule