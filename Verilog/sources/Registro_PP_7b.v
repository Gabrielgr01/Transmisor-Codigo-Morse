`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 02:25:15 PM
// Design Name: 
// Module Name: Registro_PP_8b
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


module Registro_PP_7b(input [6:0] entrada, input RST, input CLK, output reg [6:0] salida
    );
    always @(posedge CLK or posedge RST)
        if (RST) begin
            salida <= 7'd0;
        end
        else begin
            salida <= entrada;
        end
endmodule
