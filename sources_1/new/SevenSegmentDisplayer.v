`timescale 1ns / 1ps

module SevenSegmentDisplayer(
	 input clock_100Mhz, // 100 Mhz clock source on Basys 3 FPGA
     input reset, // reset
     input [1:0]data_state,
     input [13:0]input_number,
     input [13:0]output_number,
     input sign,
     output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
     output reg [6:0] LED_out,// cathode patterns of the 7-segment LED display
     output reg Dot_Enable // dot signal to enable the dot in the middle
    );
    reg [3:0] LED_PLACEHOLDER;
    reg [12:0] refresh_counter; 
    wire [1:0] LED_activating_counter; 

    localparam Input_State = 0;
    localparam Output_State = 1;
    localparam Error_State = 2;

    always @(posedge clock_100Mhz or posedge reset)begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[12:11];
    // anode activating signals for 4 LEDs, digit period of 0.06144 seconds
    //If the refresh rate is too fast, the numbers cannot be displayed properly
    // Assignments of placeholder values for the segments of the display 
    always @(*)begin
        case(LED_activating_counter)
        2'b00: begin
                Dot_Enable = 1;
                Anode_Activate = 4'b0111; // activate LED1 and Deactivate LED2, LED3, LED4
                if((sign == 1) && (data_state == Output_State)) begin 
                    // If the number is negative, then sign must be 1, but in output state just   
                    LED_PLACEHOLDER = 4'b1111;                         
                end
                else begin
                    if(data_state == Input_State) begin   
                        LED_PLACEHOLDER = (input_number/1000);
                    end
                    if(data_state == Output_State) begin
                        LED_PLACEHOLDER = (output_number/1000);
                    end
                    if(data_state == Error_State) begin
                        LED_PLACEHOLDER = 4'b1100;
                    end
                end
              end
        2'b01: begin
                Anode_Activate = 4'b1011; // activate LED2 and Deactivate LED1, LED3, LED4 
                if(data_state == Input_State) begin
                    Dot_Enable = 1;   
                    LED_PLACEHOLDER = (input_number/100)%10;
                end
                if(data_state == Output_State) begin
                    Dot_Enable = 0;
                    LED_PLACEHOLDER = (output_number/100)%10;
                end
                if(data_state == Error_State) begin
                    Dot_Enable = 1;
                    LED_PLACEHOLDER = 4'b1101;
                end
            end
        2'b10: begin
                Dot_Enable = 1;
                Anode_Activate = 4'b1101; // activate LED3 and Deactivate LED2, LED1, LED4
                if(data_state == Input_State) begin   
                    LED_PLACEHOLDER = (input_number/10)%10;
                end
                if(data_state == Output_State) begin
                    LED_PLACEHOLDER = (output_number/10)%10;
                end
                if(data_state == Error_State) begin
                    LED_PLACEHOLDER = 4'b1101;
                end
            end
        2'b11: begin
                Dot_Enable = 1;
                Anode_Activate = 4'b1110; // activate LED4 and Deactivate LED2, LED3, LED1
                if(data_state == Input_State) begin   
                    LED_PLACEHOLDER = input_number%10;
                end
                if(data_state == Output_State) begin
                    LED_PLACEHOLDER = output_number%10;
                end
                if(data_state == Error_State) begin
                    LED_PLACEHOLDER = 4'b1110;
                end
             end
        endcase
    end
    // Cathode patterns of the 7-segment LED display 
    always @(*)begin
        case(LED_PLACEHOLDER)
        4'b0000: LED_out = 7'b0000001; // The Digit "0"     
        4'b0001: LED_out = 7'b1001111; // The Digit "1" 
        4'b0010: LED_out = 7'b0010010; // The Digit "2" 
        4'b0011: LED_out = 7'b0000110; // The Digit "3" 
        4'b0100: LED_out = 7'b1001100; // The Digit "4" 
        4'b0101: LED_out = 7'b0100100; // The Digit "5" 
        4'b0110: LED_out = 7'b0100000; // The Digit "6" 
        4'b0111: LED_out = 7'b0001111; // The Digit "7" 
        4'b1000: LED_out = 7'b0000000; // The Digit "8"     
        4'b1001: LED_out = 7'b0000100; // The Digit "9" 
        4'b1100: LED_out = 7'b0110000; // The letter 'E' for error state
        4'b1101: LED_out = 7'b1111010; // The letter 'r' for error state
        4'b1110: LED_out = 7'b1111111; // The void state
        4'b1111: LED_out = 7'b1111110; // The Sign "-"
        default: LED_out = 7'b1111111; // The void state
        endcase
    end

endmodule
