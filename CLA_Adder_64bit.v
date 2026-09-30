`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 15:12:24
// Design Name: 
// Module Name: CLA_Adder_64bit
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


module CLA_Adder_64bit ( 
    input [63:0] A, B, 
    input Cin, 
    output [63:0] Sum, 
    output Cout 
); 
    wire [63:0] G, P;  
    wire [64:0] C;     
assign G = A & B;  
assign P = A ^ B;  
assign C[0] = Cin;
assign C[1] = G[0] | (P[0] & C[0]); 
assign C[2] = G[1] | (P[1] & C[1]); 
assign C[3] = G[2] | (P[2] & C[2]); 
assign C[4] = G[3] | (P[3] & C[3]); 
assign C[5] = G[4] | (P[4] & C[4]); 
assign C[6] = G[5] | (P[5] & C[5]); 
assign C[7] = G[6] | (P[6] & C[6]); 
assign C[8] = G[7] | (P[7] & C[7]); 
assign C[9] = G[8] | (P[8] & C[8]); 
assign C[10] = G[9] | (P[9] & C[9]); 
assign C[11] = G[10] | (P[10] & C[10]); 
assign C[12] = G[11] | (P[11] & C[11]); 
assign C[13] = G[12] | (P[12] & C[12]); 
assign C[14] = G[13] | (P[13] & C[13]); 
assign C[15] = G[14] | (P[14] & C[14]); 
assign C[16] = G[15] | (P[15] & C[15]); 
assign C[17] = G[16] | (P[16] & C[16]); 
assign C[18] = G[17] | (P[17] & C[17]); 
assign C[19] = G[18] | (P[18] & C[18]); 
assign C[20] = G[19] | (P[19] & C[19]); 
assign C[21] = G[20] | (P[20] & C[20]); 
assign C[22] = G[21] | (P[21] & C[21]); 
assign C[23] = G[22] | (P[22] & C[22]); 
assign C[24] = G[23] | (P[23] & C[23]); 
assign C[25] = G[24] | (P[24] & C[24]); 
assign C[26] = G[25] | (P[25] & C[25]); 
assign C[27] = G[26] | (P[26] & C[26]); 
assign C[28] = G[27] | (P[27] & C[27]); 
assign C[29] = G[28] | (P[28] & C[28]); 
assign C[30] = G[29] | (P[29] & C[29]); 
assign C[31] = G[30] | (P[30] & C[30]); 
assign C[32] = G[31] | (P[31] & C[31]); 
assign C[33] = G[32] | (P[32] & C[32]);
assign C[34] = G[33] | (P[33] & C[33]);
assign C[35] = G[34] | (P[34] & C[34]);
assign C[36] = G[35] | (P[35] & C[35]);
assign C[37] = G[36] | (P[36] & C[36]);
assign C[38] = G[37] | (P[37] & C[37]);
assign C[39] = G[38] | (P[38] & C[38]);
assign C[40] = G[39] | (P[39] & C[39]);
assign C[41] = G[40] | (P[40] & C[40]);
assign C[42] = G[41] | (P[41] & C[41]);
assign C[43] = G[42] | (P[42] & C[42]);
assign C[44] = G[43] | (P[43] & C[43]);
assign C[45] = G[44] | (P[44] & C[44]);
assign C[46] = G[45] | (P[45] & C[45]);
assign C[47] = G[46] | (P[46] & C[46]);
assign C[48] = G[47] | (P[47] & C[47]);
assign C[49] = G[48] | (P[48] & C[48]);
assign C[50] = G[49] | (P[49] & C[49]);
assign C[51] = G[50] | (P[50] & C[50]);
assign C[52] = G[51] | (P[51] & C[51]);
assign C[53] = G[52] | (P[52] & C[52]);
assign C[54] = G[53] | (P[53] & C[53]);
assign C[55] = G[54] | (P[54] & C[54]);
assign C[56] = G[55] | (P[55] & C[55]);
assign C[57] = G[56] | (P[56] & C[56]);
assign C[58] = G[57] | (P[57] & C[57]);
assign C[59] = G[58] | (P[58] & C[58]);
assign C[60] = G[59] | (P[59] & C[59]);
assign C[61] = G[60] | (P[60] & C[60]);
assign C[62] = G[61] | (P[61] & C[61]);
assign C[63] = G[62] | (P[62] & C[62]);
assign C[64] = G[63] | (P[63] & C[63]);

assign Sum = P ^ C[63:0]; 
assign Cout = C[64]; 
endmodule
