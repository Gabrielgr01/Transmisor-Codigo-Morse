`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 10:37:28 PM
// Design Name: 
// Module Name: Contador_11
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


module Contador_11(CLK, RST, EN, salida
    );
    input CLK, RST, EN;
    output reg [3:0] salida;
    
    always @(posedge CLK)
        if (RST)
            salida <= 4'b0;
        else if (EN)
                if (salida == 4'b1011)
                    salida <= 4'b0;
                else
                    salida <= salida +1'b1;
             else 
                salida <= salida;
 
endmodule
