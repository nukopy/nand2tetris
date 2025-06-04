load And3Way.hdl,
output-file And3Way.out,
compare-to And3Way.cmp,
output-list a b c out;

// 000
set a 0,
set b 0,
set c 0,
eval,
output;

// 001
set a 0,
set b 0,
set c 1,
eval,
output;

// 010
set a 0,
set b 1,
set c 0,
eval,
output;

// 011
set a 0,
set b 1,
set c 1,
eval,
output;

// 100
set a 1,
set b 0,
set c 0,
eval,
output;

// 101
set a 1,
set b 0,
set c 1,
eval,
output;

// 110
set a 1,
set b 1,
set c 0,
eval,
output;

// 111
set a 1,
set b 1,
set c 1,
eval,
output;
