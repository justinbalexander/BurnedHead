set mem inaccessible-by-default off
target remote localhost:2331

monitor reset
load
set $sp=*(usize*)0
set $pc=*(usize*)4
tb Reset_Handler
c
