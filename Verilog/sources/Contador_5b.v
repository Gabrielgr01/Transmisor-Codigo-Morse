`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 09:56:08 PM
// Design Name: 
// Module Name: Contador_5b
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


module Contador_5b(CLK, RST, salida
    );
    input CLK, RST;
    output reg [4:0] salida;
    
    always @(posedge CLK)
        if (RST)
            salida <= 5'b0;
        else
            salida <= salida +1'b1;
endmodule
