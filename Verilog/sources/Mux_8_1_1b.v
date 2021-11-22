`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 10:00:56 PM
// Design Name: 
// Module Name: Mux_8_1_1b
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


module Mux_8_1_1b(input [2:0] SEL, input [4:0] entrada, output reg salida
    );
    
    always @(SEL, entrada)
        case(SEL)
            3'b000: salida <= entrada[0];
            3'b001: salida <= entrada[1];
            3'b010: salida <= entrada[2];
            3'b011: salida <= entrada[3];
            3'b100: salida <= entrada[4];
            3'b101: salida <= 1'b0;
            3'b110: salida <= 1'b0;
            3'b111: salida <= 1'b0;
        endcase
endmodule