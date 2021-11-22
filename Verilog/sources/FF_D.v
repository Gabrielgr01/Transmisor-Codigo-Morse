`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 11:40:13 PM
// Design Name: 
// Module Name: FF_D
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


module FF_D(CLK, SET, D, Q
    );
    
    input CLK, SET, D;
    output reg Q;
    
    always @(posedge CLK)
        if (SET) begin
            Q <= 1'b1;
        end
        else begin
            Q <= D;
        end
        
endmodule
