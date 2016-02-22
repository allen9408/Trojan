module bufferout(
  input         clk,
  input [127:0]  resultin,
  input          capin,
  output reg [7:0] resultout
  );

  always @(posedge clk)
  begin
    resultout <= {resultin[6:0],capin};
  end
endmodule