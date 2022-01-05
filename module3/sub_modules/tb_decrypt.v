`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:38 01/01/2022 
// Design Name: 
// Module Name:    tb_decrypt 
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
module tb_decrypt();

		
		reg exit;
		reg [2:0] token;
		reg [2:0] pattern;
		wire [2:0] park_number;
		
		decrypt dcp(
			.exit(exit),
			.token(token),
			.pattern(pattern),
			.park_number(park_number)
		);
		
		initial
				begin
				exit <= 1'b0;
				token <= 3'b010;
				pattern <= 3'b100;
				#20;
				token <= 3'b100;
				pattern <= 3'b001;
				#20;
				token <= 3'b011;
				pattern <= 3'b110;
				#20;
				token <= 3'b101;
				pattern <= 3'b010;
				#20;
				token <= 3'b011;
				pattern <= 3'b011;
				#20;
				exit <= 1'b1;
				token <= 3'b010;
				pattern <= 3'b100;
				#20;
				token <= 3'b100;
				pattern <= 3'b001;
				#20;
				token <= 3'b011;
				pattern <= 3'b110;
				#20;
				exit <= 1'b0;
				token <= 3'b101;
				pattern <= 3'b010;
				#20;
				token <= 3'b011;
				pattern <= 3'b011;
				#20;
				$finish;
				end

endmodule
