`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 04:45:57 PM
// Design Name: 
// Module Name: Memoria_TB
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


module Memoria_TB(
    );
    
    //inputs
    reg [26:0] datos;
    reg [3:0] conta_carac;
    reg CLK;
    reg RST;
    reg Start;
    
    //outputs
    wire salida;
    
    //instantiate
    Memoria UUT(datos, conta_carac, CLK, RST, Start, salida
    );
    
    //stimulus
    initial begin 
        CLK = 0;
        conta_carac = 0000;
        RST = 1;
        Start = 0;
        datos = 27'b0101100101010101000101010111;
        
        #80 RST = 0;
        #10 conta_carac = conta_carac +1'b1;
        #1 datos = 27'b101000110100101101011010110;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = conta_carac +1'b1;
        #1 datos = 27'd0;
        #9 conta_carac = 0;
        #1 datos = 0;
        #10 Start = 1;
        #20 Start = 0;
        
    end
    
    always #10 CLK = ~CLK;
    
endmodule
