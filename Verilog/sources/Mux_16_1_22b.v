`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 09:20:08 PM
// Design Name: 
// Module Name: Mux_16_1_22b
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


module Mux_16_1_22b(input [3:0] SEL, input [263:0] entradas, output reg [21:0] salida
    );
    always @(SEL, entradas)
        case(SEL)
            4'b0000: salida <= 5'b00000;
            4'b0001: salida <= entradas[21:0];
            4'b0010: salida <= entradas[43:22];
            4'b0011: salida <= entradas[65:44];
            4'b0100: salida <= entradas[87:66];
            4'b0101: salida <= entradas[109:88];
            4'b0110: salida <= entradas[131:110];
            4'b0111: salida <= entradas[153:132];
            4'b1000: salida <= entradas[175:154];
            4'b1001: salida <= entradas[197:176];
            4'b1010: salida <= entradas[219:198];
            4'b1011: salida <= entradas[241:220];
            4'b1100: salida <= entradas[263:242];
            4'b1101: salida <= 5'b00000;
            4'b1110: salida <= 5'b00000;
            4'b1111: salida <= 5'b00000;
        endcase
endmodule