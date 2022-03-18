obj-m += char_device_driver.o

PWD := $(shell pwd)

KDIR := /home/jaesun/linux
 
all:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C $(KDIR) M=$(PWD) modules

clean:
	clear
	make -C $(KDIR) M=$(PWD) clean
	rm  -f $(SRC_PATH)/*.o
