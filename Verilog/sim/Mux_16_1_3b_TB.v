`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 06:06:39 PM
// Design Name: 
// Module Name: Mux_16_1_3b_TB
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


module Mux_16_1_3b_TB(
    );
    //inputs
    reg [3:0] SEL;
    reg [35:0] entradas;
    
    //output
    wire [2:0] salida;
    
    //instantiate
    Mux_16_1_3b UUT(SEL, entradas, salida
    );
    
    //stimulus
    initial begin
        SEL = 0000;
        entradas = 36'b010010110100101101001010101001010010;
    end
        
    always #20 SEL = SEL + 1'b1;
endmodule