module bufferout(
  input         clk,
  input [127:0]  resultin,
  output reg [64:0] resultout
  );

  always @(posedge clk)
  begin
    resultout <= {resultout[63:0], resultin};
  end
endmodule