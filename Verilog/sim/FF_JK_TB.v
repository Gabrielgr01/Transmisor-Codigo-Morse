`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2021 07:18:18 PM
// Design Name: 
// Module Name: FF_JK_TB
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


module FF_JK_TB(
    );
    
    //inputs
    reg J;
    reg K;
    reg SET;
    reg CLK;
    
    //outputs
    wire Q;
    
    //instantiate
    FF_JK UUT(J, K, SET, CLK, Q
    );
    
    //stimulus
    initial begin 
        J = 1;
        K = 0;
        SET = 1;
        CLK = 0;
        
        #20 J = 0;
        #1 SET = 0;
        #20 K = 1;
        #10 K = 0;
    end
    
    always #5 CLK = ~CLK;
    
endmodule
