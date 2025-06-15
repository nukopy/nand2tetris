// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

// input for R0 and R1
// from test script

// R2 = 0
@0
D=A // D = 0
@R2
M=D // R2 = D = 0

// i = 0
@i
M=D

// loop
(LOOP)
    // R1 をループ回数に使用する
    // if (i == R1) goto END
    @R1
    D=M // D = R1
    @i
    D=D-M
    @END
    D;JEQ

    // R2 = R2 + R0
    @R0
    D=M
    @R2
    M=M+D

    // i = i + 1
    @i
    M=M+1

    // goto LOOP
    @LOOP
    0;JMP
// infinite loop
(END)
    @END
    0;JMP
