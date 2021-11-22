`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 11:43:41 PM
// Design Name: 
// Module Name: FF_D_TB
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


module FF_D_TB(
    );
    
    //inputs
    reg SET;
    reg D;
    
    //output
    wire Q;
    
    //instantiate
    FF_D UUT(SET, SET, D, Q
    );
    
    //stimulus
    initial begin
        D = 0;
        SET = 0;
        #40 SET = 1;
        #20 SET = 0;
    end
endmodule
