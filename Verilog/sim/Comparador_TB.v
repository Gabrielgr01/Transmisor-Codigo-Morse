`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 11:17:17 PM
// Design Name: 
// Module Name: Comparador_TB
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


module Comparador_TB(
    );
    //inputs 
    reg [2:0] entrada1;
    reg [2:0] entrada2;
    
    //outputs
    wire salida;
    
    //instantiate
    Comparador UUT(entrada1, entrada2, salida
    );
    
    //stimulus
    initial begin
        entrada1=010;
        entrada2=110;
        
        #20 entrada1=110;
        #20 entrada2=101;
        #20 entrada1=101;
     end
endmodule
