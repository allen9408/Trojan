module clk_div(
	input clk,
	input rst,
	output reg clkf,
	output reg clks);

reg [7:0] counter;


always @(posedge clk) begin
    if(rst) begin
        counter <= 0;
        clkf <= 0;
        clks <= 0;
    end
    else begin
	clkf <= ~clkf;
	counter <= counter + 1;
	if (counter == 0) begin
		clks <= ~clks;
	end
	if (counter == 8'd255) begin
	   counter <= 8'd0;
	end
	end

end

endmodule