obj-m += memdev.o
kernel_path=/usr/src/kernels/$(shell uname -r)
all:
	make -C $(kernel_path) M=$(PWD) modules
clean:
	make -C $(kernel_path) M=$(PWD) clean