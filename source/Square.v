`timescale 1ns / 1ps

module Square(
	input [8:0] numberIn,
	output reg [6:0] whole,
	output reg [6:0] fracture
    );
    
    reg[14:0] rootOut;
    
    always@(*)begin 
    		if(numberIn == 1) begin
    				rootOut = 1;
    				whole = 1;
                    fracture = 0;
            end        
    		else if(numberIn == 0) begin
    				rootOut = 0;
    		end		
    		else if(numberIn < 361&& numberIn>=324) begin
					if(361-numberIn < numberIn-324)
						rootOut = 19000-((1000/38)*(361-numberIn));
					else
						rootOut = 18000+((1000/36)*(numberIn-324));
			end
			else if(numberIn < 324&& numberIn>=289) begin
					if(324-numberIn < numberIn-289)
						rootOut = 18000-((1000/36)*(324-numberIn));
					else
						rootOut = 17000+((1000/34)*(numberIn-289));
			end
			else if(numberIn < 289&& numberIn>=256) begin
					if(289-numberIn < numberIn-256)
						rootOut = 17000-((1000/34)*(289-numberIn));
					else
						rootOut = 16000+((1000/32)*(numberIn-256));
			end
			else if(numberIn < 256&& numberIn>=225) begin
					if(256-numberIn < numberIn-225)
						rootOut = 16000-((1000/32)*(256-numberIn));
					else
						rootOut = 15000+((1000/30)*(numberIn-225));
			end
			else if(numberIn < 225&& numberIn>=196) begin
					if(225-numberIn < numberIn-196)
						rootOut = 15000-((1000/30)*(225-numberIn));
					else
						rootOut = 14000+((1000/28)*(numberIn-196));
			end
			else if(numberIn < 196&& numberIn>=169) begin
					if(196-numberIn < numberIn-169)
						rootOut = 14000-((1000/28)*(196-numberIn));
					else
						rootOut = 13000+((1000/26)*(numberIn-169));
			end
			else if(numberIn < 169&& numberIn>=144) begin
				if(169-numberIn < numberIn-144)
					rootOut = 13000-((1000/26)*(169-numberIn));
				else
					rootOut = 12000+((1000/24)*(numberIn-144));
			end
			else if(numberIn < 144&& numberIn>=121) begin
				if(144-numberIn < numberIn-121)
					rootOut = 12000-((1000/24)*(144-numberIn));
				else
					rootOut = 11000+((1000/22)*(numberIn-121));
			end
			else if(numberIn < 121&& numberIn>=100) begin
				if(121-numberIn < numberIn-100)
					rootOut = 11000-((1000/22)*(121-numberIn));
				else
					rootOut = 10000+((1000/20)*(numberIn-100));
			end
			else if(numberIn < 100&& numberIn>=81) begin
				if(100-numberIn < numberIn-81)
					rootOut = 10000-((1000/20)*(100-numberIn));
				else
					rootOut = 9000+((1000/18)*(numberIn-81));
			end
			else if(numberIn < 81&& numberIn>=64) begin
				if(81-numberIn < numberIn-64)
					rootOut = 9000-((1000/18)*(81-numberIn));
				else
					rootOut = 8000+((1000/16)*(numberIn-64));
			end
			else if(numberIn < 64&& numberIn>=49) begin
				if(64-numberIn < numberIn-49)
					rootOut = 8000-((1000/16)*(64-numberIn));
				else
					rootOut = 7000+((1000/14)*(numberIn-49));
			end
			else if(numberIn < 49&& numberIn>=36) begin
				if(49-numberIn < numberIn-36)
					rootOut = 7000-((1000/14)*(49-numberIn));
				else
					rootOut = 6000+((1000/12)*(numberIn-36));
			end
			else if(numberIn < 36&& numberIn>=25) begin
				if(36-numberIn < numberIn-25)
					rootOut = 6000-((1000/12)*(36-numberIn));
				else
					rootOut = 5000+((1000/10)*(numberIn-25));
			end
			else if(numberIn < 25&& numberIn>=16) begin
				if(25-numberIn < numberIn-16)
					rootOut = 5000-((1000/10)*(25-numberIn));
				else
					rootOut = 4000+((1000/8)*(numberIn-16));
			end
			else if(numberIn < 16&& numberIn>=9) begin
				if(16-numberIn < numberIn-9)
					rootOut = 4000-((1000/8)*(16-numberIn));
				else
					rootOut = 3000+((1000/6)*(numberIn-9));
			end
			else if(numberIn < 9&& numberIn>=4) begin
				if(9-numberIn < numberIn-4)
					rootOut = 3000-((1000/6)*(9-numberIn));
				else
					rootOut = 2000+((1000/4)*(numberIn-4));
			end
			else if(numberIn < 4&& numberIn>=1) begin
				if(4-numberIn < numberIn-1)
					rootOut = 2000-((1000/4)*(4-numberIn));
				else
					rootOut = 1000+((1000/2)*(numberIn-1));
			end
			whole = rootOut/1000;
            fracture = (rootOut%1000)/10;

   end
    
    
    
endmodule

