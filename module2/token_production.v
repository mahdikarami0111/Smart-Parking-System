`timescale 1 ns/1 ns
module token_production(
 park_number,
 pattern,
 token);
    input [2:0] park_number;
    input [2:0] pattern;
    output [2:0] token;
    assign token = park_number ^ pattern;
endmodule