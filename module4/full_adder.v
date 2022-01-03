/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Full Adder Gate Level
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module full_adder (
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);

	/* write your code here */
	xor sum(s,a,b,ci);
	
	wire e1,e2,e3;
	
	and g1(e1,a,b);
	and g2(e2,a,ci);
	and g3(e3,b,ci);
	or g4(co,e1,e2,e3);
	/* write your code here */

endmodule