`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 20:26:57
// Design Name: 
// Module Name: FF_T
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


module FF_T(CLK, RST, T, Qn
    );
    
    input T, RST, CLK;
    output reg Qn;
    
    always @(posedge CLK or posedge RST)
        if (RST) begin 
            Qn <= 1'b1;
        end
        else if (T) begin
            Qn <= ~Qn;
        end
        else begin
            Qn <= Qn;
        end
    
endmodule
