`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 09:38:47 PM
// Design Name: 
// Module Name: Registro_PP_27b
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


module Registro_PP_27b(input [26:0] entrada, input RST, input CLK, output reg [26:0] salida
    );
    always @(posedge CLK or posedge RST)
        if (RST) begin
            salida <= 27'd0;
        end
        else begin
            salida <= entrada;
        end
endmodule
