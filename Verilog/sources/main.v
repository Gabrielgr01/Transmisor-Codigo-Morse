`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 00:14:10
// Design Name: 
// Module Name: main
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

module main(input CLK, input RST, input [6:0] RxData, input Start, output Y
    );
    
    wire [21:0] datos_traductor;
    wire [4:0] datos_cantidad;
    wire [6:0] RxData_sal;
    wire Char_Detected;
    
    Registro_PP_7b registro(RxData, RST, CLK, RxData_sal
    );
    
    comparador_7b Comp_Caracter(RxData, RxData_sal, Char_Detected
    );
    
    MUX_Traductor Traductor_Senal(RxData_sal, datos_traductor
    );
    
    MUX_Cantidad Traductor_Cantidad(RxData_sal, datos_cantidad
    );
    
    wire CLK_div;
    
    divisor DivisorFrec(CLK, RST, CLK_div 
    );
    
    wire [26:0] datos_memoria;
    assign datos_memoria [21:0] = datos_traductor;
    assign datos_memoria [26:22] = datos_cantidad;
    
    wire [3:0] conta_carac;
    
    Contador_4 Contador_carateres(Char_Detected, RST, conta_carac
    );
    
    Memoria Mod_Memoria(datos_memoria, conta_carac, CLK, RST, Start, Y
    );
    
endmodule
