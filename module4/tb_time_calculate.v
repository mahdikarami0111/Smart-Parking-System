`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:09 01/02/2022 
// Design Name: 
// Module Name:    tb_time_calculate 
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
module tb_time_calculate();

		
		reg [7:0] time_out;
		reg [7:0] time_in;
		wire [7:0] time_total;
		
		
		time_calculate tc1(
			.time_out(time_out),
			.time_in(time_in),
			.time_total(time_total)
			);
			
		
		initial
			begin
			time_in <= 8'b00000001;
			time_out <= 8'b00011001;
			#20;
			time_in <= 8'b00000011;
			time_out <= 8'b01010000;
			#20;
			time_in <= 8'b01111111;
			time_out <= 8'b11111111;
			#20;
			time_in <= 8'b00000001;
			time_out <= 8'b10000000;
			#20;
			time_in <= 8'b00000000;
			time_out <= 8'b01010100;
			#20;
			time_in <= 8'b00011000;
			time_out <= 8'b00011000;
			#20;
			time_in <= 8'b00000000;
			time_out <= 8'b00000000;
			#20;
			$finish;
			end


endmodule
