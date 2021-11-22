`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 02:54:58 PM
// Design Name: 
// Module Name: Mux_16_1_5b
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


module Mux_16_1_5b(input [3:0] SEL, input [59:0] entradas, output reg [4:0] salida
    );
    always @(SEL, entradas)
        case(SEL)
            4'b0000: salida <= 5'b00000;
            4'b0001: salida <= entradas[4:0];
            4'b0010: salida <= entradas[9:5];
            4'b0011: salida <= entradas[14:10];
            4'b0100: salida <= entradas[19:15];
            4'b0101: salida <= entradas[24:20];
            4'b0110: salida <= entradas[29:25];
            4'b0111: salida <= entradas[34:30];
            4'b1000: salida <= entradas[39:35];
            4'b1001: salida <= entradas[44:40];
            4'b1010: salida <= entradas[49:45];
            4'b1011: salida <= entradas[54:50];
            4'b1100: salida <= entradas[59:55];
            4'b1101: salida <= 5'b00000;
            4'b1110: salida <= 5'b00000;
            4'b1111: salida <= 5'b00000;
        endcase
endmodule
