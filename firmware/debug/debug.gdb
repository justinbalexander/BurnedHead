set mem inaccessible-by-default off
target remote localhost:2331

load
tb Reset_Handler
monitor reset
c
