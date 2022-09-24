`timescale 1ns / 1ps

//This is a state machine to captures specific ASCII_VALUES with special produced clk
//Its purpose is to capture number,operation char/number,number,operation char/number,number,number,oparation 
//The number must be between 0 to 360
module Data_Interpreter(
    input clk_data_came, //This signal determines if the data has been received by UART
	input [7:0] ASCII_in,
	output reg [2:0] modeSelect, //0 -> sine 1-> cosine 2-> prime 3->square root //4-> none
	output reg [1:0] validCheck, //0-> not complete 1->complete 2->invalid
	output wire [9:0] numOut,
	output reg printEnable
    );
      
   	//ASCII 48 == 0 , ASCII 57 == 9
   
    reg [2:0] modeSelect_next = 4;
    reg [1:0] validCheck_next = 0;
    
    reg [2:0] state = 0;
    reg [2:0]state_next = 0;
    
	reg [3:0] digit2; //Ones
	reg [7:0] digit1; // Tens
	reg [9:0] digit0; //Hundreds
   	
   	reg [3:0] digit2_next = 0; // max 9
    reg [7:0] digit1_next = 0; //max 90
    reg [9:0] digit0_next = 0; // max 999

	reg printEnable_next = 1;

   	assign numOut = digit1 + digit2 + digit0;
	
    always@ * begin
    	validCheck_next = validCheck;
    	state_next = state;
    	modeSelect_next = modeSelect;
    	if((ASCII_in>=48 && ASCII_in<=57) || ASCII_in == 115 || ASCII_in == 99 || ASCII_in == 113 || ASCII_in == 114 )begin
    		if(state == 0)begin
    			if(ASCII_in == 115 || ASCII_in == 99 || ASCII_in == 113 || ASCII_in == 114) begin
    				validCheck_next = 2;
    				modeSelect_next = 4;
    				printEnable_next = 0;
    				state_next = 0;
    				digit0_next = 0;
    				digit1_next = 0;
    				digit2_next = 0;
    			end
    			else begin
    				validCheck_next = 0;
    				state_next = 1;
    				digit2_next = (ASCII_in - 48);
    				modeSelect_next = 4;
    				printEnable_next = 1;
    			end
    		end    
    		else if(state == 1) begin
    			if(ASCII_in == 115 || ASCII_in == 99 || ASCII_in == 113 || ASCII_in == 114) begin
    				validCheck_next = 1;
    				if(ASCII_in == 115) 
    					modeSelect_next = 0;
    				else if(ASCII_in == 99) 
    					modeSelect_next = 1;
    				else if(ASCII_in == 113) 
    					modeSelect_next = 2;
    				else
    					modeSelect_next = 3;
    				state_next = 0;
    				printEnable_next = 1;
    				digit0_next = 0;
    				digit1_next = 0;
    				digit2_next = 0;
    			end
    			else begin
    				validCheck_next = 0;
    				state_next = 2;
    				modeSelect_next = 4;
    				digit1_next = digit2*10;
    				digit2_next = (ASCII_in - 48);
    				printEnable_next = 1;
    			end
    		end
    		else if(state == 2) begin
    			if(ASCII_in == 115 || ASCII_in == 99 || ASCII_in == 113 || ASCII_in == 114) begin
    				validCheck_next = 1;
    				if(ASCII_in == 115) 
    					modeSelect_next = 0;
    				else if(ASCII_in == 99) 
    					modeSelect_next = 1;
    				else if(ASCII_in == 113) 
    					modeSelect_next = 2;
    				else
    					modeSelect_next = 3;
    				state_next = 0;
    				printEnable_next = 1;
    				digit0_next = 0;
    				digit1_next = 0;
    				digit2_next = 0;
    			end
    			else begin
    				validCheck_next = 0;
    				modeSelect_next = 4;
    				state_next = 3;
    				digit0_next = digit1*10;
    				digit1_next = digit2*10;
    				digit2_next = (ASCII_in - 48);
    				printEnable_next = 1;
    			end
    		end
    		else if(state == 3) begin
    			if(ASCII_in == 115 || ASCII_in == 99 || ASCII_in == 113 || ASCII_in == 114) begin
    				validCheck_next = 1;
    				state_next = 0;
    				if(ASCII_in == 115) 
    					modeSelect_next = 0;
    				else if(ASCII_in == 99) 
    					modeSelect_next = 1;
    				else if(ASCII_in == 113) 
    					modeSelect_next = 2;
    				else
    					modeSelect_next = 3;
    				digit0_next = 0;
    				digit1_next = 0;
    				digit2_next = 0;
    				printEnable_next = 0;
    			end
    			else begin
    				validCheck_next = 0;
    				modeSelect_next = 4;
                    if(ASCII_in-48 == 0) begin
                        state_next = 0;
                        digit2_next = digit2;
                    end
                    else begin
                        state_next = 1;
                        digit2_next = (ASCII_in-48);
                    end
    				digit1_next = 0;
    				digit0_next = 0;
    				printEnable_next = 1;
    			end
    		end	
    	end
    	else begin
    		validCheck_next = 2;
    		modeSelect_next = 4;
    		state_next = 0;
    		printEnable_next = 0;
    		digit0_next = 0;
    		digit1_next = 0;
    		digit2_next = 0;
    	end
    end
    
    always @ (posedge clk_data_came) begin
    	state <= state_next;
    	validCheck <= validCheck_next;
    	modeSelect <= modeSelect_next;
    	digit0 <= digit0_next;
    	digit1 <= digit1_next;
    	digit2 <= digit2_next;
    	printEnable <= printEnable_next;
    end
    
endmodule
