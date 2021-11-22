`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 20:07:50
// Design Name: 
// Module Name: comparador
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


module comparador_frec(
    input[27:0] Q,
    output reg CLK_FF10Hz
    );
    
    always @(Q)
    begin
        if (Q == 28'd99999999) CLK_FF10Hz <= 1'd1;
        else CLK_FF10Hz <= 1'd0;
    end
endmodule
