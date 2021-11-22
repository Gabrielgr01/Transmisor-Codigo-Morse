`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 02:30:13 PM
// Design Name: 
// Module Name: Registro_PP_8b_TB
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


module Registro_PP_8b_TB(
    );
    //inputs
    reg [7:0] entrada;
    reg RST;
    reg CLK;
    
    //outputs
    wire [7:0] salida;
    
    //instantiate
    Registro_PP_8b UUT(entrada, RST, CLK, salida
    );
    
    //stimulus
    initial begin 
        CLK = 0;
        RST = 1;
        entrada = 00000000;
        
        #30 RST = 0;
        #10 entrada = 01011001;
        #20 entrada = 01011010;
        #30 entrada = 00010011;
        #50 entrada = 01010011;
        #90 entrada = 00110011;
        #150 entrada = 11111111;
        
    end
    
    always #5 CLK = ~CLK;
endmodule
