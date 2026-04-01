# Optimized 4-bit ALU (Verilog)

## Description
Designed and implemented a 4 bit ALU using Verilog HDL with optimized RTL design techniques. The ALU supports multiple arithmetic and logical operations controlled through opcode-based execution.

Integrated performance optimization techniques such as Carry Lookahead Adder for faster computation and clock gating to reduce unnecessary switching activity and improve power efficiency.

## Features
- Parameterized design (scalable bit-width)
- Opcode-based control logic
- Arithmetic operations: Addition, Subtraction
- Logical operations: AND, OR, XOR, NOT
- Shift operations (left/right)
- Carry and Zero flag generation
- Clock gating and enable-based control for power optimization

## Tools Used
- Verilog, Xilinx Vivado

## Files
- ALU_64_bit.v
- ALU_64_bit_tb.v

## 📊 Simulation Output

Waveform showing state transitions and signal behavior:

<img width="863" height="337" alt="Screenshot 2026-04-01 135919" src="https://github.com/user-attachments/assets/89204826-a80c-4cb2-b235-cd05228fee70" />

## 🎥 Demo Video

This demo shows the simulation waveform and execution of arithmetic and logical operations in the optimized ALU implemented using Verilog. It highlights opcode-based control, flag generation (Carry, Zero), and performance improvements using Carry Lookahead Adder (CLA) and clock gating in Xilinx Vivado.

video link:(https://drive.google.com/file/d/17Db0reIHrXR8I65StkawWYTRe8p1706u/view?usp=drive_link)
