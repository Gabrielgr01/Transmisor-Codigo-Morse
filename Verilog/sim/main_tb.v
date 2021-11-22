`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 00:13:50
// Design Name: 
// Module Name: main_tb
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


module main_tb( 
);   
    //inputs
    reg [6:0] RxData;
    reg CLK;
    reg RST;
    reg Start;
    
    //outputs
    wire Y;
    
    //instantiate
    main_prueba UUT(CLK, RST, RxData, Start, Y
    );
    
    //stimulus
    initial begin 
        CLK = 1;
        RST = 1;
        Start = 0;
        RxData = 7'b0;
        
        #60 RST = 0;
        #10 RxData = 7'd65;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #20 RxData = RxData + 1'b1;
        #10 Start = 1;
        #10 Start = 0;
        
    end
    
    always #5 CLK = ~CLK;
endmodule
