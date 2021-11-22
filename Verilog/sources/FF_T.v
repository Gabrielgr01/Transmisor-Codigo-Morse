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


module FF_T(CLK, RST, T, Q
    );
    
    input T, RST, CLK;
    output reg Q;
    
    always @(posedge CLK)
        if (RST) begin 
            Q <= 1'b1;
        end
        else
        case (T)
            1'd0 : Q <= Q;
            1'd1 : Q <= ~Q;
        endcase
    
endmodule
