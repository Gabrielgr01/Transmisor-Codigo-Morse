`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 09:20:50 PM
// Design Name: 
// Module Name: Mux_32_1_1b
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


module Mux_32_1_1b(input [4:0] SEL, input [21:0] entrada, output reg salida
    );
    
    always @(SEL, entrada)
        case(SEL)
            5'd0: salida <= entrada[0];
            5'd1: salida <= entrada[1];
            5'd2: salida <= entrada[2];
            5'd3: salida <= entrada[3];
            5'd4: salida <= entrada[4];
            5'd5: salida <= entrada[5];
            5'd6: salida <= entrada[6];
            5'd7: salida <= entrada[7];
            5'd8: salida <= entrada[8];
            5'd9: salida <= entrada[9];
            5'd10: salida <= entrada[10];
            5'd11: salida <= entrada[11];
            5'd12: salida <= entrada[12];
            5'd13: salida <= entrada[13];
            5'd14: salida <= entrada[14];
            5'd15: salida <= entrada[15];
            5'd16: salida <= entrada[16];
            5'd17: salida <= entrada[17];
            5'd18: salida <= entrada[18];
            5'd19: salida <= entrada[19];
            5'd20: salida <= entrada[20];
            5'd21: salida <= entrada[21];
            5'd22: salida <= 1'b0;
            5'd23: salida <= 1'b0;
            5'd24: salida <= 1'b0;
            5'd25: salida <= 1'b0;
            5'd26: salida <= 1'b0;
            5'd27: salida <= 1'b0;
            5'd28: salida <= 1'b0;
            5'd29: salida <= 1'b0;
            5'd30: salida <= 1'b0;
            5'd31: salida <= 1'b0;
        endcase
endmodule