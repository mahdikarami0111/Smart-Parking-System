`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:26 01/05/2022 
// Design Name: 
// Module Name:    tb_entry_park 
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
module tb_entry_park();

		reg entry;
		reg[7:0] parking_capacity;
		wire[2:0] park_number;
		
		entry_park ep(entry, parking_capacity, park_number);
		
		initial
			begin
				entry = 1'b0;
				parking_capacity = 8'b00000000;
				#20;
				parking_capacity = 8'b01010100;
				#20;
				parking_capacity = 8'b01001001;
				#20;
				parking_capacity = 8'b00000000;
				#20;
				parking_capacity = 8'b00100111;
				#20;
				parking_capacity = 8'b00010101;
				#20;
				
				entry = 1'b1;
				parking_capacity = 8'b00000101;
				#20;
				parking_capacity = 8'b01010100;
				#20;
				parking_capacity = 8'b01001001;
				#20;
				parking_capacity = 8'b00000000;
				#20;
				parking_capacity = 8'b00100111;
				#20;
				parking_capacity = 8'b00010101;
				#20;
				$finish;
			end


endmodule
