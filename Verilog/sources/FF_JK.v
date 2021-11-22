`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2021 07:11:02 PM
// Design Name: 
// Module Name: FF_JK
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


module FF_JK(J, K, SET, CLK, Q
    );
    
    input J, K, SET, CLK;
    output reg Q;
    
    always @(posedge CLK)
        if (SET) begin 
            Q <= 1'b1;
        end
        else
        case ({J,K})
            2'b00 : Q <= Q;
            2'b01 : Q <= 0;
            2'b10 : Q <= 1;
            2'b11 : Q <= ~Q;
        endcase
           
endmodule
