`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 18:42:50
// Design Name: 
// Module Name: contador
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


module contador(
input CLK, RST,
output reg [27:0] Q
    );
    
    always @(posedge CLK)
     begin
     if (RST) Q <= 28'd0;
            else Q <= Q + 1'd1;
      end
endmodule
