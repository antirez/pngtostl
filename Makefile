all: pngtostl

pngtostl: pngtostl.c
	$(CC) pngtostl.c `libpng-config --cflags` `libpng-config --L_opts` \
	`libpng-config --libs` -Wall -W -O2 -o pngtostl

clean: pngtostl
	rm -f pngtostl
