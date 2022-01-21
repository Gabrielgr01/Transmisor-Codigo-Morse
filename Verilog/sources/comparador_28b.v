`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 20:07:50
// Design Name: 
// Module Name: comparador
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


module comparador_28b(
    input[27:0] entrada1,
    input[27:0] entrada2,
    output reg salida
    );
    
    always @(entrada2)
        if (entrada1 == entrada2) 
            salida <= 1'b1;
        else 
            salida <= 1'b0;
endmodule
