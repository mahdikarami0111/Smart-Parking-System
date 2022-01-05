module park_space_number_tb;
    reg enable; 
    reg[7:0] parking_capacity;
    wire[2:0] park_number;

    park_space_number uut(enable, parking_capacity, park_number);
    //counting starts from 0 -> first parking slot has index 0,
    //the n th parking slot has index n-1
    initial begin
        enable = 1'b1;
        parking_capacity = 8'b00011111;
        #20;
		  parking_capacity = 8'b00110110;
        #20;
		  parking_capacity = 8'b00010000;
        #20;
		  parking_capacity = 8'b00001001;
        #20;
        parking_capacity = 8'b00000001;
        #20;
        parking_capacity = 8'b00000000;
        #20;
        enable = 1'b0;
        parking_capacity = 8'b10100000;
        #20;
		  $finish;
    end

endmodule