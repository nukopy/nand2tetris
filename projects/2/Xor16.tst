load Xor16.hdl,
output-file Xor16.out,
compare-to Xor16.cmp,
output-list a%B1.16.1 b%B1.16.1 out%B1.16.1;

// Test 1: all bits 0
set a %B0000000000000000,
set b %B0000000000000000,
eval,
output;

// Test 2: all bits 1
set a %B1111111111111111,
set b %B1111111111111111,
eval,
output;

// Test 3: a=all 1, b=all 0
set a %B1111111111111111,
set b %B0000000000000000,
eval,
output;

// Test 4: a=alternating, b=inverse
set a %B1010101010101010,
set b %B0101010101010101,
eval,
output;

// Test 5: random pattern
set a %B0011110011000011,
set b %B0001001000110100,
eval,
output;
