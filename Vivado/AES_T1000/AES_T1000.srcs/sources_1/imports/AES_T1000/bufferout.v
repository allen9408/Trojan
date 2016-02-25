module bufferout(
  input         clk,
  input [127:0]  resultin,
  input [127:0]  capin,
  output reg [7:0] resultout
  );

  always @(posedge clk)
  begin
    resultout <= {resultin[3:0],capin[3:0]};
  end
endmodule