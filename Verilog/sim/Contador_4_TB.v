`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 10:52:12 PM
// Design Name: 
// Module Name: Contador_4_TB
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


module Contador_4_TB(
    );
    //inputs
    reg CLK;
    reg RST;
    
    //outputs
    wire [2:0] salida;
    
    //instantiate
    Contador_4 UUT(CLK, RST, salida
    );
    
    //stimulus
    initial begin
        RST = 1;
        CLK = 0;
        #5 RST = 0;
    end
    
    always #20 CLK = ~CLK;
endmodule
