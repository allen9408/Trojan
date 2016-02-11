`include "bufferin.v"
`include "bufferout.v"
module top(
  input clk,
  output res);
  reg [63:0]  state;
  reg [63:0]  key;
  reg [63:0] result;
  
  wire [63:0] statew;
  wire [63:0] keyw;
  wire [63:0] resultw;

  wire [127:0] statebi;
  wire [127:0] keybi;
  wire [127:0] out;
  
  always @(posedge clk)
  begin
    state <= 64'd0;
    key <= 64'd0;
  end
    
  
  assign statew = state;
  assign keyw = key;
  assign resultw = result;
  assign res = 1;

  bufferin bi(.clk(clk)
    ,.statein(statew)
    ,.keyin(keyw)
    ,.stateout(statebi)
    ,.keyout(keybi));

  aes_128 a(.clk(clk)
    ,.state(statebi)
    ,.key(keybi)
    ,.out(out));

  bufferout bo(.clk(clk)
    ,.resultin(out)
    ,.resultout(resultw));

endmodule

