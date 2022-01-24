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
---  Module Name: register
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register(
input [7:0] D,
input CLK, 
input RST,
input en,
output reg[7:0] Q
);
    always @(posedge CLK or negedge RST) begin
        if (RST == 1'b0) begin
            Q <= 8'b00000000;
        end
        else begin
            if (en == 1'b1) begin
                Q <= D;
            end
        end
    end

endmodule