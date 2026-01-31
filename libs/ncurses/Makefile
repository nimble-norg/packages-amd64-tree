PKG = "ncurses"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/ncurses/ncurses_6.6-1_amd64.deb

install: download
	dpkg -i ncurses_6.6-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/ncurses/ncurses-6.6.tar.gz
	tar xf ncurses-6.6.tar.gz

compile: source
	cd ncurses-6.6 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 --with-termlib --with-versioned-syms --with-shared --enable-widec && \
	make

clean:
	rm -rf ncurses*
