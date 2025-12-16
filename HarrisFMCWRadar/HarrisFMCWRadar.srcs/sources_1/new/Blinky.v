`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 08:34:32 PM
// Design Name: 
// Module Name: Blinky
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Blinky # (parameter BUS_WIDTH = 4, parameter CLK_FREQ = 100000000, parameter LED_CLK_DIVIDER = 2 ) (
    input clk,
    input rst_n,
    output [BUS_WIDTH-1:0] led
    );
    
    reg[BUS_WIDTH-1:0] led_out = 1;
    reg[31:0] r_cnt_clk;
    integer LED_PULSE_COUNT = CLK_FREQ / LED_CLK_DIVIDER - 1;
    assign led = led_out;
    always @(posedge clk)
        begin
            if(rst_n == 0)
                begin
                    r_cnt_clk <= 32'b0;
                    led_out <= 1;
                end
            else
                begin
                    r_cnt_clk <= r_cnt_clk + 1;
                    if(r_cnt_clk == LED_PULSE_COUNT)
                        
                        begin
                            r_cnt_clk <= 'h0;
                            led_out <= {led_out[BUS_WIDTH-2:0],led_out[BUS_WIDTH-1]};
                        end
                end
        end
endmodule