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
---  Module Name: controller
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module controller(
input [2:0] system_token,
input request,
input [7:0] TimeData,
input reset,
input clock,
input confirm,
input [2:0] user_token,
output [7:0] data_Q,
output [7:0] data_P,
output reg [2:0] test_state,
output reg enQ,
output reg enP
);

		reg [2:0] state;
		parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
		
		reg enq,enp,rst_reg;
		
		register Q (TimeData, clock, rst_reg, enq, data_Q);
		register P (.D(TimeData),.CLK(clock), .RST(rst_reg), .en(enp), .Q(data_P));
		
		always @(posedge clock, negedge reset) begin
			if(!reset)begin
				enq = 1'b0;
				enp = 1'b0;
				rst_reg = 1'b0;
				state = s0;
			end
			
			else begin
				rst_reg = 1'b1;
				
				case (state)
				
				
					s0:
							if(request)begin
								state = s1;
								enq = 1'b0;
								enp = 1'b0;
							end
							
							
					s1:
							if(!request)begin
								state = s0;
								enq = 1'b0;
								enp = 1'b0;
							end
							
							else if(confirm) begin
							
								if(user_token == system_token)begin
									state = s2;
								end
								
								else begin
									state  = s4;
								end
							end
							
					
					s2:
							if(!request)begin
								state = s0;
								enq = 1'b0;
								enp = 1'b0;
							end
							
							else if(TimeData[0] == 1'b0 || TimeData[0] == 1'b1)begin
								state = s3;
							end
							
					
					s3:
							if(!request)begin
								state = s0;
								enq = 1'b0;
								enp = 1'b0;
							end
							
							else if(TimeData[4] && TimeData[5] && TimeData[6] && TimeData[7] )begin
								enp = 1'b1;
							end
							
							else begin
								enq = 1'b1;
							end
							
					s4:
							if(!request)begin
								state = s0;
								enq = 1'b0;
								enp = 1'b0;
							end
				endcase
				test_state = state;
				enQ = enq;
				enP = enp;
			end
		end
endmodule























