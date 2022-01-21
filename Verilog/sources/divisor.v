`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 20:38:01
// Design Name: 
// Module Name: divisor
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


module divisor(
    input CLK, RST,
    output CLK_2
    );
    
    wire [27:0] sal_contador_28b;
    wire sal_comp_28b;
    
    wire RST_28b = RST | sal_comp_28b;
    
    wire [27:0] entrada_28b = 28'd99999999;
    
    contador cont(CLK, RST_28b, sal_contador_28b
    );
    comparador_28b comp(entrada_28b, sal_contador_28b, sal_comp_28b
    );
    FF_T salida(CLK, RST, sal_comp_28b, CLK_2
    );
    
    
endmodule
