`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 10:43:49 PM
// Design Name: 
// Module Name: Contador_11_TB
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


module Contador_11_TB(
    );
    //inputs
    reg CLK;
    reg RST;
    reg EN;
    
    //outputs
    wire [3:0] salida;
    
    //instantiate
    Contador_11 UUT(CLK, RST, EN, salida
    );
    
    //stimulus
    initial begin
        RST = 1;
        CLK = 0;
        EN = 1;
        #30 RST = 0;
        #30 EN = 0;
        #60 EN = 1;
    end
    
    always #5 CLK = ~CLK;
endmodule
