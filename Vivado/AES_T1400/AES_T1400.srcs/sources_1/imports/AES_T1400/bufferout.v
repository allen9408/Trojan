module bufferout(
  input         clk,
  input [127:0]  resultin,
  output reg [7:0] resultout
  );

  always @(posedge clk)
  begin
    resultout <= resultin[7:0];
  end
endmodule