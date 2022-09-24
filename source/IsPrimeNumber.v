`timescale 1ns / 1ps


module IsPrimeNumber(
	input [8:0] number,
	output reg yesno
    );
      
    always@(*)begin
    		if(number==2 || number ==3 || number == 5 || number == 7 || number == 11 
    		|| number ==13 || number ==17 || number ==19 || number ==23 || number ==29 
    		|| number ==31 || number == 37 || number ==41 || number == 43 || number == 47 
    		|| number == 53 || number ==59|| number ==61|| number ==67|| number ==71|| number ==73
    		|| number ==79|| number ==83|| number ==89|| number ==97|| number ==101|| number ==103
    		|| number ==107|| number ==109|| number ==113|| number ==127|| number ==131|| number ==137
    		|| number ==139|| number ==149|| number ==151|| number ==157|| number ==163|| number ==167
    		|| number ==173|| number ==179|| number ==181|| number ==191|| number ==193|| number ==197
    		|| number ==199|| number ==211|| number ==223|| number ==227|| number ==229|| number ==233
    		|| number ==239|| number ==241 || number ==251|| number ==257|| number ==263|| number ==269
    		|| number ==271|| number ==277|| number ==281|| number ==283|| number ==293|| number ==307
    		|| number ==311|| number ==313|| number ==317|| number ==331|| number ==337|| number ==347
    		|| number ==349|| number ==353|| number ==359 ) begin
    				yesno = 1;
    		end
    		else begin
    			yesno = 0;
    		end	
    end
    
endmodule

