`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:44 01/01/2022 
// Design Name: 
// Module Name:    tb_calculate_new_capacity 
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
module tb_calculate_new_capacity();

		reg [7:0] park_location;
		reg [7:0] parking_capacity;
		wire [7:0] new_capacity;
		
		
		calculate_new_capacity cnc(
		.park_location(park_location),
		.parking_capacity(parking_capacity),
		.new_capacity(new_capacity)
		);
		
		initial
				begin
				parking_capacity <= 8'b00000000;
				#20;
				park_location <= 8'b00010000;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b00100000;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b01000000;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b10000000;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b00001000;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b00000100;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b00000010;
				#20;
				parking_capacity <= new_capacity;
				park_location <= 8'b00000001;
				#20;
				$finish;
				end
endmodule
