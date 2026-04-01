`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2026 14:48:31
// Design Name: 
// Module Name: ALU_64_bit_tb
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

module ALU_64bit_tb; 
reg [63:0] A, B; 
reg [2:0] Opcode; 
reg Clk, Enable;  
wire [63:0] Result; 
wire Cout; 
ALU_64_bit uut ( 
.A(A), 
.B(B), 
.Opcode(Opcode), 
.Clk(Clk), 
.Enable(Enable), 
.Result(Result), 
.Cout(Cout) 
); 
initial begin 
Clk = 0; 
forever #5 Clk = ~Clk;  
end 
initial begin 
Enable = 1; 
Opcode = 3'b000; 
A = 64'h0000_0000_0000_0003; 
B = 64'h0000_0000_0000_0005; 
#10;  
$display("Addition: A = %h, B = %h, Result = %h, Cout = %b", A, B, Result, 
Cout); 
Opcode = 3'b001; 
A = 64'h0000_0000_0000_0003; 
B = 64'h0000_0000_0000_0005; 
#10; 
$display("Subtraction: A = %h, B = %h, Result = %h, Cout = %b", A, B, 
Result, Cout); 
Opcode = 3'b010; 
A = 64'h0000_0000_0000_00FF; 
B = 64'h0000_0000_0000_0F0F; 
#10; 
$display("AND: A = %h, B = %h, Result = %h", A, B, Result); 
Opcode = 3'b011; 
A = 64'h0000_0000_0000_00FF; 
B = 64'h0000_0000_0000_0F0F; 
#10; 
$display("OR: A = %h, B = %h, Result = %h", A, B, Result); 
Opcode = 3'b100; 
A = 64'h0000_0000_0000_00FF; 
B = 64'h0000_0000_0000_0F0F; 
#10; 
$display("XOR: A = %h, B = %h, Result = %h", A, B, Result); 
Opcode = 3'b101; 
A = 64'h0000_0000_0000_00FF; 
#10; 
$display("NOT: A = %h, Result = %h", A, Result); 
Enable = 0; 
Opcode = 3'b000; 
A = 64'h0000_0000_0000_0005; 
B = 64'h0000_0000_0000_0003; 
#10; 
$display("Disabled ALU: A = %h, B = %h, Result = %h, Cout = %b", A, B, 
Result, Cout); 
$stop; 
end 
endmodule

