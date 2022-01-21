`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2021 03:55:22 PM
// Design Name: 
// Module Name: Memoria
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


module Memoria(input [26:0] datos, input[3:0] conta_carac, input CLK, input RST, input Start, output salida
    );
    
    wire [15:0] salida_deco;
    wire [26:0] reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12;
    
    Deco_4_16 Deco_entrada(conta_carac, salida_deco
    );
    
    Registro_PP_27b Registro1(datos, RST, salida_deco[1], reg1
    );
    
    Registro_PP_27b Registro2(datos, RST, salida_deco[2], reg2
    );
    
    Registro_PP_27b Registro3(datos, RST, salida_deco[3], reg3
    );
    
    Registro_PP_27b Registro4(datos, RST, salida_deco[4], reg4
    );
    
    Registro_PP_27b Registro5(datos, RST, salida_deco[5], reg5
    );
    
    Registro_PP_27b Registro6(datos, RST, salida_deco[6], reg6
    );
    
    Registro_PP_27b Registro7(datos, RST, salida_deco[7], reg7
    );
    
    Registro_PP_27b Registro8(datos, RST, salida_deco[8], reg8
    );
    
    Registro_PP_27b Registro9(datos, RST, salida_deco[9], reg9
    );
    
    Registro_PP_27b Registro10(datos, RST, salida_deco[10], reg10
    );
    
    Registro_PP_27b Registro11(datos, RST, salida_deco[11], reg11
    );
    
    Registro_PP_27b Registro12(datos, RST, salida_deco[12], reg12
    );
    
    wire Reset_Comp;
    wire salida_FFJK;
    wire [3:0] salida_cont_11;
    
    FF_JK FF1(RST, Start, RST, CLK, salida_FFJK
    );
    
    wire Reset_cont1 = salida_FFJK | RST;
    
    Contador_11 Cont1(CLK, Reset_cont1, Reset_Comp, salida_cont_11
    );
    
    wire [263:0] entradas_mux1;
    assign entradas_mux1[21:0] = reg1[21:0];
    assign entradas_mux1[43:22] = reg2[21:0];
    assign entradas_mux1[65:44] = reg3[21:0];
    assign entradas_mux1[87:66] = reg4[21:0];
    assign entradas_mux1[109:88] = reg5[21:0];
    assign entradas_mux1[131:110] = reg6[21:0];
    assign entradas_mux1[153:132] = reg7[21:0];
    assign entradas_mux1[175:154] = reg8[21:0];
    assign entradas_mux1[197:176] = reg9[21:0];
    assign entradas_mux1[219:198] = reg10[21:0];
    assign entradas_mux1[241:220] = reg11[21:0];
    assign entradas_mux1[263:242] = reg12[21:0];
    
    wire [21:0] salida_mux1;
    
    Mux_16_1_22b Mux1(salida_cont_11, entradas_mux1, salida_mux1
    );
    
    wire [4:0] salida_mux2;
    wire [59:0] entradas_mux2;
    assign entradas_mux2[4:0] = reg1[26:22];
    assign entradas_mux2[9:5] = reg2[26:22];
    assign entradas_mux2[14:10] = reg3[26:22];
    assign entradas_mux2[19:15] = reg4[26:22];
    assign entradas_mux2[24:20] = reg5[26:22];
    assign entradas_mux2[29:25] = reg6[26:22];
    assign entradas_mux2[34:30] = reg7[26:22];
    assign entradas_mux2[39:35] = reg8[26:22];
    assign entradas_mux2[44:40] = reg9[26:22];
    assign entradas_mux2[49:45] = reg10[26:22];
    assign entradas_mux2[54:50] = reg11[26:22];
    assign entradas_mux2[59:55] = reg12[26:22];

    Mux_16_1_5b Mux2(salida_cont_11, entradas_mux2, salida_mux2
    );
    
    wire [4:0] salida_cont_5b;
    
    Comparador_5b Comp1(salida_mux2, salida_cont_5b, Reset_Comp
    );
    
    wire Reset_cont2 = Reset_Comp | RST | salida_FFJK;
    
    Contador_5b Cont2(CLK, Reset_cont2, salida_cont_5b
    );
    
    Mux_32_1_1b Mux3(salida_cont_5b, salida_mux1, salida
    );
    
endmodule
