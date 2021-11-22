`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 03:08:45 PM
// Design Name: 
// Module Name: Mux_16_1_5b_TB
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


module Mux_16_1_5b_TB(
    );
    //inputs
    reg [3:0] SEL;
    reg [59:0] entradas;
    
    //output
    wire [4:0] salida;
    
    //instantiate
    Mux_16_1_5b UUT(SEL, entradas, salida
    );
    
    //stimulus
    initial begin
        SEL = 0000;
        entradas = 60'b000001111100000111110000011111000000001100000111110011111111;
    end
        
    always #20 SEL = SEL + 1'b1;
endmodule
