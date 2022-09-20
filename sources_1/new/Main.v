`timescale 1ns / 1ps
// This module is top module for all modules
module Main(
    input clk_fpga_100mhz,
    input reset,
    input RxD,
    output [3:0]Anode_Activate, // anode signals of the 7-segment LED display
    output [6:0]LED_out,// cathode patterns of the 7-segment LED display
    output dotEnable // dot signal to enable the dot in the middle
    );
    
    wire data_came;
    wire [7:0]ascii_data;
    Receiver uart_receiver(clk_fpga_100mhz, 
                           reset, 
                           RxD, 
                           ascii_data, 
                           data_came);
    
                           
    
    wire [2:0]operation_mode;
    wire [1:0]data_state;
    wire [9:0]input_number;
    wire print_enable;
    Data_Interpreter interpreter(data_came,
                                 ascii_data,
                                 operation_mode,   
                                 data_state,
                                 input_number,
                                 print_enable); 
    

    localparam SIN = 0;
    localparam COS = 1;
    localparam IS_PRIME = 2;
    localparam SQUARE = 3;
    localparam NO_OPERATION = 4;
    
    // making calculations
    wire sign_sin;
    wire whole_sin;
    wire [6:0]fracture_sin;
    Sin sin_calculator(input_number, sign_sin, whole_sin, fracture_sin);

    wire sign_cos;
    wire whole_cos;
    wire [6:0]fracture_cos;
    Cos cos_calculator(input_number, sign_cos, whole_cos, fracture_cos);   
        
    wire whole_prime;
    IsPrimeNumber is_prime(input_number, whole_prime);
   
    wire [6:0]whole_square;
    wire [6:0]fracture_square;
    Square square_calculator(input_number, whole_square, fracture_square);

    reg [6:0]choicen_whole;
    reg [6:0]choicen_fracture;
    reg choicen_sign;
    
    wire [13:0]output_number;
    always @(posedge (data_state == 1) ) begin      
        case(operation_mode)
            SIN: begin
                 choicen_whole <= whole_sin;
                 choicen_fracture <= fracture_sin;
                 choicen_sign <= sign_sin;
            end
            COS:begin
                 choicen_whole <= whole_cos;
                 choicen_fracture <= fracture_cos;
                 choicen_sign <= sign_cos;
            end
            IS_PRIME:begin
                 choicen_whole <= whole_prime;
                 choicen_fracture <= 0;
                 choicen_sign <= 0;
            end
            SQUARE:begin
                 choicen_whole <= whole_square;
                 choicen_fracture <= fracture_square;
                 choicen_sign <= 0;         
            end
            default: begin
                choicen_whole <= 0;
                choicen_fracture <= 0;
                choicen_sign <= 0;
            end
        endcase
    end
    assign output_number = choicen_whole*100 + choicen_fracture;

    SevenSegmentDisplayer(clk_fpga_100mhz,
                          reset,
                          data_state,  
                          input_number,
                          output_number,                
                          choicen_sign,
                          Anode_Activate,
                          LED_out, 
                          dotEnable);
                          
    
endmodule
