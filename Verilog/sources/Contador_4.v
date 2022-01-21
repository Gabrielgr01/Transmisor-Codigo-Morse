`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 10:50:39 PM
// Design Name: 
// Module Name: Contador_4
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


module Contador_4(CLK, RST, salida
    );
    input CLK, RST;
    output reg [3:0] salida;
    
    always @(posedge CLK or posedge RST)
        if (RST)
            salida <= 4'b0;
        else
            salida <= salida + 1'b1;
endmodule
