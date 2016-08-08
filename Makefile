obj-m += hello.o
SRC= /lib/modules/$(shell uname -r)/build
DIR += $(PWD)

all:
	make -C $(SRC) M=$(DIR) modules

clean:
	make -C $(SRC) M=$(DIR) clean
