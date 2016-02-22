module bufferin(
  input         clk,
  input [63:0]  statein,
  input [63:0]  keyin,
  output reg [127:0] stateout,
  output reg [127:0] keyout
  );

  always @(posedge clk)
  begin
    stateout <= {stateout[63:0], statein};
    keyout <= {keyout[63:0], keyin};
  end
endmodule