`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:32 01/06/2022 
// Design Name: 
// Module Name:    tb_parking_capacity_counter 
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
module tb_parking_capacity_counter();

		reg[7:0] new_capacity;
		wire [3:0] parked;
		wire [3:0] empty;
		
		parking_capacity_counter pcc(new_capacity, parked, empty);
		
		initial
			begin
				new_capacity = 8'b00000000;
				#20;
				new_capacity = 8'b00100000;
				#20;
				new_capacity = 8'b01000010;
				#20;
				new_capacity = 8'b01100001;
				#20;
				new_capacity = 8'b10010011;
				#20;
				new_capacity = 8'b10101101;
				#20;
				new_capacity = 8'b11111111;
				#20;
				$finish;
			end


endmodule
