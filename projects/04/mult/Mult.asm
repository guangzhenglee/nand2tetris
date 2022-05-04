// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// int n = R0;
// int i = 1;
// int mul = 0;
// Loop:
//    if i > n goto STOP
//    mul = mul + R1
//    i = i + 1
//    goto Loop
// STOP:
// R2 = mul

// int n = R0;
@R0
D=M
@n
M=D

// int i = 1;
@i
M=1

// int mul = 0;
@mul
M=0

//if i > n goto STOP
(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT

//mul = mul + R1
@mul
D=M
@R1
D=D+M
@mul
M=D

// i = i + 1
@i
M=M+1
@LOOP
0;JMP

(STOP)
@mul
D=M
@R2
M=D

(END)
@END
0;JMP









