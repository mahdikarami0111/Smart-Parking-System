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
module subtractor_4bit(A, B,Res);
    input [3:0] A, B;
    output [3:0] Res;
    
	 
	 wire[3:0] x;

		not n0 (x[0],B[0]);
		not n1 (x[1],B[1]);
		not n2 (x[2],B[2]);
		not n3 (x[3],B[3]);
		
		wire[3:0] carry;
		
		full_adder fa0 (A[0], x[0], 1'b1, Res[0], carry[0]);
		full_adder fa1 (A[1], x[1], carry[0], Res[1], carry[1]);
		full_adder fa2 (A[2], x[2], carry[1], Res[2], carry[2]);
		full_adder fa3 (A[3], x[3], carry[2], Res[3], carry[3]);

        


endmodule // write your code here, please.
