`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 11:08:24 PM
// Design Name: 
// Module Name: Comparador
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


module Comparador_5b(entrada1, entrada2, salida
    );
    input [4:0] entrada1;
    input [4:0] entrada2;
    output salida;
    
    wire comp1, comp2, comp3, comp4, comp5;
    
    assign comp1 = ~(entrada1[0]^entrada2[0]);
    assign comp2 = ~(entrada1[1]^entrada2[1]);
    assign comp3 = ~(entrada1[2]^entrada2[2]);
    assign comp4 = ~(entrada1[3]^entrada2[3]);
    assign comp5 = ~(entrada1[4]^entrada2[4]);
    
    assign salida = comp1 & comp2 & comp3 & comp4 & comp5;

endmodule
