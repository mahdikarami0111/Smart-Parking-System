`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:20 01/06/2022 
// Design Name: 
// Module Name:    adder_4bit 
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
module adder_4bit(
	input [3:0]a,b,
	input ci,
	output [3:0]sum,
	output co
    );
	 
		wire[3:0] x;
		
		full_adder fa1 (a[0],b[0],ci,sum[0],x[0]);
		full_adder fa2 (a[1],b[1],x[0],sum[1],x[1]);
		full_adder fa3 (a[2],b[2],x[1],sum[2],x[2]);
		full_adder fa4 (a[3],b[3],x[2],sum[3],co);

endmodule
