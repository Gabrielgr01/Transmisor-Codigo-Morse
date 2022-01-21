`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 03:27:00
// Design Name: 
// Module Name: comparador_caracter
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


module comparador_caracter(
    input[6:0] A,
    input[6:0] B,
    output reg salida
    );
    
    always @(A or B)
        if (A == B) 
            salida <= 1'd0;
        else 
            salida <= 1'd1;
endmodule
