load And4Way.hdl,
output-file And4Way.out,
compare-to And4Way.cmp,
output-list a b c d out;

set a 0, set b 0, set c 0, set d 0, eval, output;
set a 0, set b 0, set c 0, set d 1, eval, output;
set a 0, set b 0, set c 1, set d 0, eval, output;
set a 0, set b 0, set c 1, set d 1, eval, output;
set a 0, set b 1, set c 0, set d 0, eval, output;
set a 0, set b 1, set c 0, set d 1, eval, output;
set a 0, set b 1, set c 1, set d 0, eval, output;
set a 0, set b 1, set c 1, set d 1, eval, output;
set a 1, set b 0, set c 0, set d 0, eval, output;
set a 1, set b 0, set c 0, set d 1, eval, output;
set a 1, set b 0, set c 1, set d 0, eval, output;
set a 1, set b 0, set c 1, set d 1, eval, output;
set a 1, set b 1, set c 0, set d 0, eval, output;
set a 1, set b 1, set c 0, set d 1, eval, output;
set a 1, set b 1, set c 1, set d 0, eval, output;
set a 1, set b 1, set c 1, set d 1, eval, output;
