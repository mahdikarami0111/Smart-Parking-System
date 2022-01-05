`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:30 01/01/2022 
// Design Name: 
// Module Name:    tb_exit_parking_lot 
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
module tb_exit_parking_lot();


		reg [2:0] park_number;
		wire [7:0] park_location;
		
		
		exit_parking_lot epl(
			.park_number(park_number),
			.park_location(park_location)	
				);
				
				initial
					begin
					park_number <= 3'b000;
					#20;
					park_number <= 3'b001;
					#20;
					park_number <= 3'b010;
					#20;
					park_number <= 3'b011;
					#20;
					park_number <= 3'b100;
					#20;
					park_number <= 3'b101;
					#20;
					park_number <= 3'b110;
					#20;
					park_number <= 3'b111;
					#20;
					$finish;
					end
		
endmodule
