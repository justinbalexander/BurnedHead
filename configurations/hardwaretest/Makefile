include scripts/Makefile.preinclude

TARGET := hardwaretest
linker-script := firmware/linker.ld

c_files := configurations/hardwaretest/main.c

objects += $(c_files:.c=.o)

include firmware/external/CubeMX/Makefile.inc

include scripts/Makefile.vars
include scripts/Makefile.rules
