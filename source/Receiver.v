`timescale 1ns / 1ps
//This module is applying UART protocol receiving part
//This module captures bits from their middle point
//This module starts to capture data if RxD suddenly becames 0
module Receiver(
    input clk,
    input reset,
    input RxD,
    output [7:0]RxData,
    output reg data_completed
    );
    
    reg shift;
    reg state, next_state;
    reg [3:0]bit_counter;
    reg [1:0] sample_counter;
    reg [13:0] baudrate_counter;
    reg [9:0] rxshift_reg;
    reg clear_bitcounter, inc_bitcounter,inc_samplecounter, clear_sample_counter;
    
    parameter clk_freq = 100_000_000;
    parameter baud_rate = 9_600;
    parameter div_sample = 4;
    parameter div_counter = clk_freq/(baud_rate*div_sample);
    parameter mid_sample = div_sample/2;
    parameter div_bit = 10;
    
    assign RxData = rxshift_reg[8:1];
    
    // UART Receiver Logic
    always @(posedge clk) begin
        if(reset) begin
            state <= 0;
            bit_counter <= 0;
            baudrate_counter <= 0;
            sample_counter <= 0;
        end 
        else begin
            baudrate_counter <= baudrate_counter + 1;
            if(baudrate_counter >= div_counter-1) begin
                baudrate_counter <= 0;
                state <= next_state;
                if(shift) rxshift_reg <= {RxD, rxshift_reg[9:1]};
                if(clear_sample_counter) sample_counter<= 0;
                if(inc_samplecounter) sample_counter <= sample_counter + 1;
                if(clear_bitcounter) bit_counter <= 0;
                if(inc_bitcounter) bit_counter <= bit_counter + 1;
            end
        end
    end
    
    // State Machine
    always @(posedge clk) begin
        shift <= 0;
        clear_sample_counter <= 0;
        inc_samplecounter <= 0;
        clear_bitcounter <= 0;
        inc_bitcounter <= 0;
        next_state <= 0;
        data_completed <= 0;
        case(state)
            0: begin //Idle State
                    if(RxD) begin
                        next_state <= 0;
                    end
                    else begin
                        next_state <= 1;
                        clear_bitcounter <= 1;
                        clear_sample_counter <= 1;
                    end
                end
            1: begin // Receiving State
                    next_state <= 1;
                    if(sample_counter == mid_sample - 1) begin
                        shift <= 1;
                    end
                    if(sample_counter == div_sample - 1) begin
                        if(bit_counter == div_bit - 1) begin
                         data_completed <= 1;
                         next_state <= 0;
                        end
                        inc_bitcounter <= 1;
                        clear_sample_counter <= 1;
                    end
                    else begin
                        inc_samplecounter <= 1;
                    end
                end
                
             default: next_state <= 0;
        endcase
    end
       
endmodule
