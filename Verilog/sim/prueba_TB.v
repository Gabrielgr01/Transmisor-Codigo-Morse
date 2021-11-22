`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 02:52:16 PM
// Design Name: 
// Module Name: prueba_TB
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


module prueba_TB(
    );
    //inputs
    reg [7:0] datos;
    reg [3:0] conta_carac;
    reg RST;
    
    //outputs
    wire [7:0] reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12;
    
    //Instantiate
    prueba UUT(datos, conta_carac, RST, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12
    );

    initial begin 
    conta_carac = 0000;
    RST = 1;
    datos = 8'b01000000;
    
    #80 RST = 0;
    #10 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = conta_carac +1'b1;
    #1 datos = datos + 3'd5;
    #9 conta_carac = 0;
    #1 datos = 0;
    end
    
    endmodule
