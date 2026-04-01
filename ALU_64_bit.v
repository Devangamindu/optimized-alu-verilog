
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 14:46:22
// Design Name: 
// Module Name: ALU_64_bit
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


module ALU_64_bit ( 
input [63:0] A, B, 
input [2:0] Opcode, 
input Clk, Enable, 
output reg [63:0] Result, 
output reg Cout 
); 
wire [63:0] CLA_Sum; 
wire CLA_Cout; 
reg Clk_Gated_CLA, Clk_Gated_Logic; 
reg [1:0] Power_Mode; 
reg Clk_Scaled; 
reg [63:0] B_comp_isolated; 
// Fine-grained clock gating 
always @(*) begin 
if (Enable && (Opcode == 3'b000 || Opcode == 3'b001)) 
Clk_Gated_CLA = Clk_Scaled; 
else 
Clk_Gated_CLA = 0; 
if (Enable && (Opcode == 3'b010 || Opcode == 3'b011 || Opcode == 3'b100 || 
Opcode == 3'b101)) 
Clk_Gated_Logic = Clk_Scaled; 
else 
Clk_Gated_Logic = 0; 
end 
always @(*) begin 
if (Opcode == 3'b001) 
B_comp_isolated = ~B + 1;  
else 
B_comp_isolated = B; 
end 
always @(*) begin 
case (Power_Mode) 
2'b00: Clk_Scaled = Clk / 8;  
2'b01: Clk_Scaled = Clk / 4;  
2'b10: Clk_Scaled = Clk/2;  
2'b11: Clk_Scaled = Clk;     
default: Clk_Scaled = Clk; 
endcase 
end 
// CLA Adder instantiation 
CLA_Adder_64bit CLA ( 
.A(A), 
.B(B_comp_isolated), 
.Cin(Opcode == 3'b001 ? 1'b0 : 1'b0),  
.Sum(CLA_Sum), 
        .Cout(CLA_Cout) 
    ); 
 
    // ALU operation 
    always @(posedge Clk_Scaled) begin 
        if (Enable) begin 
            case (Opcode) 
                3'b000: begin // Addition 
                    Result = CLA_Sum; 
                    Cout = CLA_Cout; 
                end 
                3'b001: begin // Subtraction 
                    Result = CLA_Sum; 
                    Cout = ~CLA_Cout; 
                end 
                3'b010: Result = A & B;  
                3'b011: Result = A | B;  
                3'b100: Result = A ^ B;  
                3'b101: Result = ~A;     
             default: Result = 64'b0; 
            endcase 
            end 
            else begin  
            Result = 64'b0;  
             Cout =1'b0; 
end
end
endmodule