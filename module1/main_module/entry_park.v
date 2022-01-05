`timescale 1 ns/1 ns
module entry_park(
 entry,
 parking_capacity,
 park_number);

    input entry;
    input [7:0] parking_capacity;
    output  [2:0] park_number;
    wire enable;
    entry_checker m1(entry,parking_capacity,enable);
    park_space_number m2(enable,parking_capacity,park_number);
 
endmodule 