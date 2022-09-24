`timescale 1ns / 1ps

module Data_Interpreter_tb(

    );
    
    reg [12:0]tb_ASCII_in;
    reg tb_clk = 0;
    wire [2:0] tb_modeSelect;
    wire [1:0] tb_validCheck;
    wire [9:0] tb_numOut;
    wire tb_printEnable;
    
    always begin
    	tb_clk = ~tb_clk;
    	#5;
    end
    
    Data_Interpreter uut(
        tb_clk,
    	tb_ASCII_in,
    	tb_modeSelect,
    	tb_validCheck,
    	tb_numOut,
    	tb_printEnable
    	);
    	
    	
    	initial begin
    		tb_ASCII_in = 51;
    		#10;
    		tb_ASCII_in = 54;
    		#10;
    		tb_ASCII_in = 115;
    		#10;
    	end
    
endmodule
