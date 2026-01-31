glibc:
	cd pkgs/glibc && \
	make clean install && \
	make clean

busybox: glibc
	cd pkgs/busybox && \
	make clean install && \
	make clean

coreutils: glibc
	cd pkgs/coreutils && \
	make clean install && \
	make clean

ncurses: glibc
	cd pkgs/ncurses && \
	make clean install && \
	make clean

zsh: glibc ncurses
	cd pkgs/zsh && \
	make clean install && \
	make clean

bash: glibc
	cd pkgs/bash && \
	make clean install && \
	make clean

sed: glibc
	cd pkgs/sed && \
	make clean install && \
	make clean

nano: glibc ncurses
	cd pkgs/nano && \
	make clean install && \
	make clean

mksh: glibc
	cd pkgs/mksh && \
	make clean install && \
	make clean

bzip2: glibc
	cd pkgs/bzip2 && \
	make clean install && \
	make clean

xz: glibc
	cd pkgs/xz && \
	make clean install && \
	make clean

make: glibc
	cd pkgs/make && \
	make clean install && \
	make clean

gmp: glibc
	cd pkgs/gmp && \
	make clean install && \
	make clean

mpfr: glibc gmp
	cd pkgs/mpfr && \
	make clean install && \
	make clean

mpc: glibc mpfr
	cd pkgs/mpc && \
	make clean install && \
	make clean

zlib: glibc
	cd pkgs/zlib && \
	make clean install && \
	make clean

zstd: glibc
	cd pkgs/zlib && \
	make clean insall && \
	make clean

gcc: glibc gmp mpfr mpc zlib zstd
	cd pkgs/gcc && \
	make clean install && \
	make clean

attr: glibc
	cd pkgs/attr && \
	make clean install && \
	make clean

busybox-static:
	cd pkgs/busybox-static && \
	make clean install && \
 	make clean

less: glibc, ncurses
	cd pkgs/less && \
	make clean install && \
	make clean

which: glibc
	cd pkgs/which && \
	make clean install && \
	make clean
