#
#


all: mkbin playgame

#Framebuffer Writting
demo1: mkbin
	riscv64-unknown-linux-gnu-gcc demo1.c -o bin/demo1

#hiding terminal
demo2: mkbin
	riscv64-unknown-linux-gnu-gcc demo2.c -o bin/demo2

#write random values to framebuffer
demo3: mkbin
	riscv64-unknown-linux-gnu-gcc framebuffer.c demo3.c -o bin/demo3

#write random values to a grid
demo4: mkbin
	riscv64-unknown-linux-gnu-gcc framebuffer.c grid.c demo4.c -o bin/demo4

#play Conway's Game of Life
playgame: mkbin
	riscv64-unknown-linux-gnu-gcc framebuffer.c grid.c GOL.c playgame.c -o bin/playgame

mkbin:
	mkdir -p bin

clean:
	rm -rf *.o
	rm -rf bin/*