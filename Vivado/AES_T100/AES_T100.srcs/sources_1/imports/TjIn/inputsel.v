module inputsel(
	input clk,
	input rst,
	input  [7:0] num,
	output [127:0] state,
	output [127:0] key);

reg [127:0] state;
reg [127:0] key;

always @(posedge clk or negedge rst) begin
	if (rst) begin
		state 	<= 128'h0;
		key 	<= 128'h0;
	end
	else begin
		case(num)
		8'd0: begin
			state 	<= 128'h3243f6a8_885a308d_313198a2_e0370734;
			key 	<= 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
		end
		8'd1: begin
			state 	<= 128'h00112233_44556677_8899aabb_ccddeeff;
			key 	<= 128'h00010203_04050607_08090a0b_0c0d0e0f;
		end
		8'd2: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd3: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd4: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd5: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd6: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd7: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd8: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd9: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd10: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd11: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd12: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd13: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd14: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd15: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd16: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd17: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd18: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd19: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd20: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd21: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd22: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd23: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd24: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd25: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd26: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd27: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd28: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd29: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd30: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd31: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd32: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd33: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd34: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd35: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd36: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd37: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd38: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd39: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd40: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd41: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd42: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd43: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd44: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd45: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd46: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd47: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd48: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd49: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd50: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd51: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd52: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd53: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd54: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd55: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd56: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd57: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd58: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd59: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd60: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd61: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd62: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd63: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd64: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd65: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd66: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd67: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd68: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd69: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd70: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd71: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd72: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd73: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd74: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd75: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd76: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd77: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd78: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd79: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd80: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd81: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd82: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd83: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd84: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd85: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd86: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd87: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd88: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd89: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd90: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd91: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd92: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd93: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd94: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd95: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd96: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd97: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd98: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd99: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd100: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd101: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd102: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd103: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd104: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd105: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd106: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd107: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd108: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd109: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd110: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd111: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd112: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd113: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd114: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd115: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd116: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd117: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd118: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd119: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd120: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd121: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd122: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd123: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd124: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd125: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd126: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd127: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd128: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd129: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd130: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd131: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd132: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd133: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd134: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd135: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd136: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd137: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd138: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd139: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd140: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd141: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd142: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd143: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd144: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd145: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd146: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd147: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd148: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd149: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd150: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd151: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd152: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd153: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd154: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd155: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd156: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd157: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd158: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd159: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd160: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd161: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd162: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd163: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd164: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd165: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd166: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd167: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd168: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd169: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd170: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd171: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd172: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd173: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd174: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd175: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd176: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd177: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd178: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd179: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd180: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd181: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd182: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd183: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd184: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd185: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd186: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd187: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd188: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd189: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd190: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd191: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd192: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd193: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd194: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd195: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd196: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd197: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd198: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd199: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd200: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd201: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd202: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd203: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd204: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd205: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd206: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd207: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd208: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd209: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd210: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd211: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd212: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd213: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd214: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd215: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd216: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd217: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd218: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd219: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd220: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd221: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd222: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd223: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd224: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd225: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd226: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd227: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd228: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd229: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd230: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd231: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd232: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd233: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd234: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd235: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd236: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd237: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd238: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd239: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd240: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd241: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd242: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd243: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd244: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd245: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd246: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd247: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd248: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd249: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		8'd250: begin
			state 	<= 128'h0;
			key 	<= 128'h0;
		end
		8'd251: begin
			state 	<= 128'h0;
			key 	<= 128'h1;
		end
		8'd252: begin
			state 	<= 128'h1;
			key 	<= 128'h0;
		end
		8'd253: begin
			state 	<= 128'h1;
			key 	<= 128'h1;
		end
		8'd254: begin
			state 	<= 128'h2;
			key 	<= 128'h2;
		end
		8'd255: begin
			state 	<= 128'h3;
			key 	<= 128'h3;
		end
		default: begin
			state	<= 128'h0;
			key		<= 128'h0;
		end
	endcase

	end
end

endmodule