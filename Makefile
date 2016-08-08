# Makefile for the Hello world device driver code base
# 
# Author : Kiran Dikshit
# Date : 8 Aug 2016
# copyright @ 2016
obj-m += hello.o
SRC= /lib/modules/$(shell uname -r)/build
DIR += $(PWD)

all:
	make -C $(SRC) M=$(DIR) modules

clean:
	make -C $(SRC) M=$(DIR) clean
