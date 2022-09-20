`timescale 1ns / 1ps

module Data_Interpreter_tb();

    reg data_came;
    reg[7:0]ascii_data;
    
    wire is_number;
    wire is_valid;
    
    wire [3:0]digit;
    wire data_complete;
    wire [8:0]data_number;
    wire [1:0]data_choice;
    
    always begin
        #5;
        data_came = ~data_came;
    end
    
    Ascii_Solver solver(data_came,ascii_data, digit, is_number, is_valid);
    Data_Interpreter interpreter(data_came, digit, is_number, is_valid, data_complete, data_number, data_choice);
    
    initial begin
        data_came = 1;
        #10;
        ascii_data = 8'h31;
        #10;
        ascii_data = 8'h63;
    end
    
    


endmodule
