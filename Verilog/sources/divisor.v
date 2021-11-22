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
    output DIV_2
    );
    
    wire [27:0] div1;
    wire div2, OUT;
    
   contador cont(CLK, RST|div2, div1);
   comparador_frec comp(div1, div2);
   FF_T flipflop(CLK, RST, div2, OUT);
    
    assign DIV_2 = OUT;
    
endmodule
