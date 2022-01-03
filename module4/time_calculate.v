/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: time_calculate
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module time_calculate(
 time_out,
 time_in,
 time_total);
		input [7:0] time_out;
		input [7:0] time_in;
		output [7:0] time_total;
		
		
		wire[7:0] b;
		assign
			b[0] = ~(time_in[0]),
			b[1] = ~(time_in[1]),
			b[2] = ~(time_in[2]),
			b[3] = ~(time_in[3]),
			b[4] = ~(time_in[4]),
			b[5] = ~(time_in[5]),
			b[6] = ~(time_in[6]),
			b[7] = ~(time_in[7]);
			
		wire[7:0] carry;
		full_adder fa0(.a(time_out[0]) , .b(b[0]) , .ci(1'b1) , .s(time_total[0]) , .co(carry[0]));
		full_adder fa1(.a(time_out[1]) , .b(b[1]) , .ci(carry[0]) , .s(time_total[1]) , .co(carry[1]));
		full_adder fa2(.a(time_out[2]) , .b(b[2]) , .ci(carry[1]) , .s(time_total[2]) , .co(carry[2]));
		full_adder fa3(.a(time_out[3]) , .b(b[3]) , .ci(carry[2]) , .s(time_total[3]) , .co(carry[3]));
		full_adder fa4(.a(time_out[4]) , .b(b[4]) , .ci(carry[3]) , .s(time_total[4]) , .co(carry[4]));
		full_adder fa5(.a(time_out[5]) , .b(b[5]) , .ci(carry[4]) , .s(time_total[5]) , .co(carry[5]));
		full_adder fa6(.a(time_out[6]) , .b(b[6]) , .ci(carry[5]) , .s(time_total[6]) , .co(carry[6]));
		full_adder fa7(.a(time_out[7]) , .b(b[7]) , .ci(carry[6]) , .s(time_total[7]) , .co(carry[7]));
		
 // write your code here, please.
endmodule