module entry_checker_tb;

    reg entry;
    reg[7:0] parking_capacity;
    wire enable;
    entry_checker uut(entry,parking_capacity,enable);
    initial begin
        entry = 1'b1;
        parking_capacity = 8'b10001000;
        //enable should be on(1)
        #20;
        entry = 1'b1;
        parking_capacity = 8'b00101000;
        //enable should be on (1)
        #20;
        entry = 1'b1;
        parking_capacity = 8'b00000000;
        //enable should be off(0)
        #20;
        entry = 1'b0;
        parking_capacity = 8'b10001000;
        //enable should be off(0)
        #20;
        $finish;

    end

endmodule