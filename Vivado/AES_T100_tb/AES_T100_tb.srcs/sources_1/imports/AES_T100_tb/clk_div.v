module clk_div(
	input clk,
	output clkf,
	output clks);

reg [7:0] counter;


always @(posedge clk) begin
	clkf <= clk;
	counter <= counter + 1;
	if (counter == 1) begin
		clks = ~clks;
	end

end

endmodule