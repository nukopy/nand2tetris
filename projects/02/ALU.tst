// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/ALU.tst

load ALU.hdl,
output-file ALU.out,
compare-to ALU.cmp,
output-list x%B1.16.1 y%B1.16.1 zeroX%B1.1.1 invX%B1.1.1 zeroY%B1.1.1 
            invY%B1.1.1 fPlusOrAnd%B1.1.1 invOut%B1.1.1 out%B1.16.1 isZero%B1.1.1
            isNegative%B1.1.1;

set x %B0000000000000000,  // x = 0
set y %B1111111111111111;  // y = -1

// Compute 0
set zeroX 1,
set invX 0,
set zeroY 1,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute 1
set zeroX 1,
set invX 1,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute -1
set zeroX 1,
set invX 1,
set zeroY 1,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute !x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;

// Compute !y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;

// Compute -x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute -y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x + 1
set zeroX 0,
set invX 1,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute y + 1
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x - 1
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute y - 1
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x + y
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x - y
set zeroX 0,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute y - x
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x & y
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute x | y
set zeroX 0,
set invX 1,
set zeroY 0,
set invY 1,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;

set x %B000000000010001,  // x = 17
set y %B000000000000011;  // y =  3

// Compute 0
set zeroX 1,
set invX 0,
set zeroY 1,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute 1
set zeroX 1,
set invX 1,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute -1
set zeroX 1,
set invX 1,
set zeroY 1,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute !x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;

// Compute !y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;

// Compute -x
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute -y
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x + 1
set zeroX 0,
set invX 1,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute y + 1
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x - 1
set zeroX 0,
set invX 0,
set zeroY 1,
set invY 1,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute y - 1
set zeroX 1,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x + y
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 0,
eval,
output;

// Compute x - y
set zeroX 0,
set invX 1,
set zeroY 0,
set invY 0,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute y - x
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 1,
set fPlusOrAnd 1,
set invOut 1,
eval,
output;

// Compute x & y
set zeroX 0,
set invX 0,
set zeroY 0,
set invY 0,
set fPlusOrAnd 0,
set invOut 0,
eval,
output;

// Compute x | y
set zeroX 0,
set invX 1,
set zeroY 0,
set invY 1,
set fPlusOrAnd 0,
set invOut 1,
eval,
output;
