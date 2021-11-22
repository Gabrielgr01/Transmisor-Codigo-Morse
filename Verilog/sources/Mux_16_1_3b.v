`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 05:59:08 PM
// Design Name: 
// Module Name: Mux_16_1_3b
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


module Mux_16_1_3b(input [3:0] SEL, input [35:0] entradas, output reg [2:0] salida
    );
    always @(SEL, entradas)
        case(SEL)
            4'b0000: salida <= 3'b000;
            4'b0001: salida <= entradas[2:0];
            4'b0010: salida <= entradas[5:3];
            4'b0011: salida <= entradas[8:6];
            4'b0100: salida <= entradas[11:9];
            4'b0101: salida <= entradas[14:12];
            4'b0110: salida <= entradas[17:15];
            4'b0111: salida <= entradas[20:18];
            4'b1000: salida <= entradas[23:21];
            4'b1001: salida <= entradas[26:24];
            4'b1010: salida <= entradas[29:27];
            4'b1011: salida <= entradas[32:30];
            4'b1100: salida <= entradas[35:33];
            4'b1101: salida <= 3'b000;
            4'b1110: salida <= 3'b000;
            4'b1111: salida <= 3'b000;
        endcase
endmodule