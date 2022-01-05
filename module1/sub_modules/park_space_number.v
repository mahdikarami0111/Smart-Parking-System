`timescale 1 ns/1 ns
module park_space_number(
 enable,
 parking_capacity,
 park_number);
    input enable;
    input [7:0] parking_capacity;
    output reg [2:0] park_number;

    always @(parking_capacity or enable) begin
        if (enable) begin
            if(parking_capacity[7])
					park_number = 3'b111;
				else if (parking_capacity[6])
					park_number = 3'b110;
				else if (parking_capacity[5])
					park_number = 3'b101;
				else if (parking_capacity[4])
					park_number = 3'b100;
				else if (parking_capacity[3])
					park_number = 3'b011;
				else if (parking_capacity[2])
					park_number = 3'b010;
				else if (parking_capacity[1])
					park_number = 3'b001;
				else if (parking_capacity[0])
					park_number = 3'b000;
				else
					park_number = 3'bxxx;
        end
        else begin
            park_number = 3'bxxx;
        end
      
    end
 // write your code here, please.
endmodule