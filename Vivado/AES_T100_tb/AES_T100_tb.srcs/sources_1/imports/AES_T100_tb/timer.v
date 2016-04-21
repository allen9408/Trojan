module timer(
	input clk,
	input rst,
	input [127:0] out,
	output reg [15:0] delay);

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		delay <= 16'd0;
	end
	else if (out !== 128'h66_e9_4b_d4_ef_8a_2c_3b_88_4c_fa_59_ca_34_2b_2e) begin
		delay <= delay + 1;
	end
end
endmodule