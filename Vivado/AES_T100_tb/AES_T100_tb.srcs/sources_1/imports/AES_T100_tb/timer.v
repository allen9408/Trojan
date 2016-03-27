module timer(
	input clk,
	input rst,
	input [127:0] out,
	output [15:0] delay);

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		delay <= 16'd0;
	end
	else if (out != 128'h3925841d02dc09fbdc118597196a0b32) begin
		delay <= delay + 1;
	end
end
endmodule