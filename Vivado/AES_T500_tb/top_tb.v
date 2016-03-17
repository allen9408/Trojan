`timescale 10ps / 1ps

module top_tb;

// Inputs
reg clk;
reg rst;
reg [127:0] state;
reg [127:0] key;

// Outputs
wire [127:0] out;

always #2 clk = ~clk;

top t(
	.clk(clk)
	,.rst(rst)
	,.state(state)
	,.key(key)
	,.out(out)
);

initial begin
	clk = 0;
	state = 0;
	rst = 0;
	key = 0;

	@(negedge clk);
	# 2;
	rst = 1;

	# 2;
	rst = 0;

	# 2;
	state = 128'd0;
	key = 128'd0;
end



endmodule