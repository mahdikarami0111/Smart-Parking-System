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
---  Module Name: decrypt 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module decrypt(
 exit,
 token,
 pattern,
 park_number);
		input exit;
		input [2:0] token;
		input [2:0] pattern;
		output [2:0] park_number;
		
		wire[2:0] e0,e1,e2;
		assign 
			e0[0] = token[0] ^ pattern[0],
			e0[1] = token[1] ^ pattern[1],
			e0[2] = token[2] ^ pattern[2],
			e1[0] = e0[0] & exit ,
			e1[1] = e0[1] & exit ,
			e1[2] = e0[2] & exit ,
			e2[0] = ~(exit | (1'dx)),
			e2[1] = ~(exit | (1'dx)),
			e2[2] = ~(exit | (1'dx)),
			park_number[0] = e1[0] | e2[0],
			park_number[1] = e1[1] | e2[1],
			park_number[2] = e1[2] | e2[2];
		
 // write your code here, please.
endmodule