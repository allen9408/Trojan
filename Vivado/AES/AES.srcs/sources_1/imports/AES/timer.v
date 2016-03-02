module timer(
	input clk,
	input [127:0] result,
	output reg [7:0] delay);

always @(posedge clk)
begin
	if (result !== 128'h66_e9_4b_d4_ef_8a_2c_3b_88_4c_fa_59_ca_34_2b_2e)
	begin
		delay = delay + 1;
	end
end

endmodule