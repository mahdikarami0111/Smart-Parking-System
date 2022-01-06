`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:47 01/06/2022 
// Design Name: 
// Module Name:    and4 
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
module and4(out,in1,in2);
	input [3:0] in1;
	input in2;
	output [3:0] out;

	and t1(out[3], in1[3], in2),
		t2(out[2], in1[2], in2),
		t3(out[1], in1[1], in2),
		t4(out[0], in1[0], in2);
endmodule