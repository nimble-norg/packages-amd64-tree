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

