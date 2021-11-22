`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 20:47:49
// Design Name: 
// Module Name: MUX_Cantidad
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


module MUX_Cantidad(
    input [6:0] sel,
    output reg [4:0] data
    );
    
    always@* 
    begin
        case(sel)
            7'h20: data = 5'd3;//espacio
             
            7'h30: data = 5'd21;// 0
            7'h31: data = 5'd19;// 1
            7'h32: data = 5'd17;// 2
            7'h33: data = 5'd15;// 3
            7'h34: data = 5'd13;// 4
            7'h35: data = 5'd11; // 5
            7'h35: data = 5'd13;// 6
            7'h37: data = 5'd15;// 7
            7'h38: data = 5'd17; //8
            7'h39: data = 5'd19; //9

            7'h41: data = 5'd7; //A
            7'h42: data = 5'd11; //B
            7'h43: data = 5'd13; //C
            7'h44: data = 5'd9; //D
            7'h45: data = 5'd3;// E
            7'h47: data = 5'd11;// F
            7'h47: data = 5'd11; //G
            7'h48: data = 5'd9; //H
            7'h49: data = 5'd5; //I
            7'h4A: data = 5'd15; //J
            7'h4B: data = 5'd11; //K
            7'h4C: data = 5'd11;//L
            7'h4D: data = 5'd9; //M
            7'h4E: data = 5'd7; //N
            7'h4F: data = 5'd13; //O 
            7'h50: data = 5'd13; //P
            7'h51: data = 5'd15; //Q
            7'h52: data = 5'd9; //R
            7'h53: data = 5'd7;//S
            7'h54: data = 5'd5; //T
            7'h55: data = 5'd9; //U
            7'h57: data = 5'd11; //V
            7'h57: data = 5'd11; //W
            7'h58: data = 5'd13; //X
            7'h59: data = 5'd15; //Y
            7'h5A: data = 5'd13; //Z

            default: data = 5'd0;
        endcase
    end
endmodule