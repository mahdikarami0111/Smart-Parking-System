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
---  Module Name: parking_capacity_counter
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parking_capacity_counter(
 new_capacity,
 parked,
 empty);
	input [7:0] new_capacity;
	output [3:0] parked;
	output [3:0] empty;
	
	wire [3:0] b0;
	wire [3:0] b1;
	wire [3:0] b2;
	wire [3:0] b3;
	wire [3:0] b4;
	wire [3:0] b5;
	wire [3:0] b6;
	wire [3:0] b7;
	
	wire[3:0] s0;
	wire[3:0] s1;
	wire[3:0] s2;
	wire[3:0] s3;
	wire[3:0] s4;
	wire[3:0] s5;
	wire[3:0] s6;
	wire[3:0] s7;
	
	wire[7:0] co;
		
	and4 ab0 (b0, 4'b0001, new_capacity[0]);
	and4 ab1 (b1, 4'b0001, new_capacity[1]);
	and4 ab2 (b2, 4'b0001, new_capacity[2]);
	and4 ab3 (b3, 4'b0001, new_capacity[3]);
	and4 ab4 (b4, 4'b0001, new_capacity[4]);
	and4 ab5 (b5, 4'b0001, new_capacity[5]);
	and4 ab6 (b6, 4'b0001, new_capacity[6]);
	and4 ab7 (b7, 4'b0001, new_capacity[7]);
	
	
	
	adder_4bit a4b0 (4'b0000,b0,1'b0,s0,co[0]);
	adder_4bit a4b1 (s0,b1,co[0],s1,co[1]);
	adder_4bit a4b2 (s1,b2,co[1],s2,co[2]);
	adder_4bit a4b3 (s2,b3,co[2],s3,co[3]);
	adder_4bit a4b4 (s3,b4,co[3],s4,co[4]);
	adder_4bit a4b5 (s4,b5,co[4],s5,co[5]);
	adder_4bit a4b6 (s5,b6,co[5],s6,co[6]);
	adder_4bit a4b7 (s6,b7,co[6],empty,co[7]);

	subtractor_4bit sb4b(4'b1000, empty, parked);
	
 // write your code here, please.
endmodule