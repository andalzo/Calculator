`timescale 1ns / 1ps

module Ascii_Solver(
    input data_came,
    input [7:0] data,
    output reg [3:0]digit,
    output reg is_number,
    output reg is_valid
    );
    
    localparam SIN = 12;
    localparam COS = 13;
    localparam SQUARE = 14;
    localparam IS_PRIME = 15;
    
    always @(posedge data_came) begin
        case(data)
            8'h30: begin 
                digit = 0; // The digit '0' came 
                is_number = 1;
                is_valid = 1;
            end
            8'h31: begin 
                digit = 1; // The digit '1' came
                is_number = 1;
                is_valid = 1;
            end
            8'h32: begin 
                digit = 2; // The digit '2' came
                is_number = 1;
                is_valid = 1;
            end
            8'h33: begin 
                digit = 3; // The digit '3' came
                is_number = 1;
                is_valid = 1;
            end
            8'h34: begin
                digit = 4; // The digit '4' came
                is_number = 1;
                is_valid = 1;
            end
            8'h35: begin 
                digit = 5; // The digit '5' came
                is_number = 1;
                is_valid = 1;
            end
            8'h36: begin 
                digit = 6; // The digit '6' came
                is_number = 1;
                is_valid = 1;
            end
            8'h37: begin 
                digit = 7; // The digit '7' came
                is_number = 1;
                is_valid = 1;
            end
            8'h38: begin 
                digit = 8; // The digit '8' came
                is_number = 1;
                is_valid = 1;
            end
            8'h39: begin 
                digit = 9; // The digit '9' came
                is_number = 1;
                is_valid = 1;
            end 
            8'h73: begin 
                digit = SIN; //s for Sin
                is_number = 0;
                is_valid = 1;
            end
            8'h53: begin 
                digit = SIN; //S for Sin
                is_number = 0;
                is_valid = 1;
            end
            8'h63: begin 
                digit = COS; //c for cos
                is_number = 0;
                is_valid = 1;
            end
            8'h43: begin 
                digit = COS; //C for cos
                is_number = 0;
                is_valid = 1;
          
            end
            8'h6b: begin 
                digit = SQUARE; //k for Square
                is_number = 0;
                is_valid = 1;
  
            end
            8'h4b: begin 
                digit = SQUARE; //K for Square
                is_number = 0;
                is_valid = 1;
    
            end
            8'h70: begin 
                digit = IS_PRIME; //p for Is_Prime
                is_number = 0;
                is_valid = 1;
         
            end
            8'h50: begin 
                digit = IS_PRIME; //P for Is_Prime
                is_number = 0;
                is_valid = 1;
            end
            default: begin
                digit = 0;
                is_number = 0;
                is_valid = 0;
            end
        endcase
    end
    
    
endmodule
