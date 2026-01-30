DPKGFLAGS = ""
PKG = "gcc"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/gcc/gcc_15.2.0-1_amd64.deb/gcc_15.2.0-1_amd64.deb.part.aa
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/gcc/gcc_15.2.0-1_amd64.deb/gcc_15.2.0-1_amd64.deb.part.ab
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/gcc/gcc_15.2.0-1_amd64.deb/gcc_15.2.0-1_amd64.deb.part.ac
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/gcc/gcc_15.2.0-1_amd64.deb/gcc_15.2.0-1_amd64.deb.part.ad
	cat gcc_15.2.0-1_amd64.deb.part.aa \
	gcc_15.2.0-1_amd64.deb.part.ab \
	gcc_15.2.0-1_amd64.deb.part.ac \
	gcc_15.2.0-1_amd64.deb.part.ad > gcc_15.2.0-1_amd64.deb
	rm -rf gcc_15.2.0-1_amd64.deb.part.a*

install: download
	dpkg -i $(DPKGFLAGS) gcc_15.2.0-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/gcc/gcc-15.2.0/gcc-15.2.0.tar.gz
	tar xf gcc-15.2.0.tar.gz

compile: source
	cd gcc-15.2.0 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 --with-sysroot=/ --enable-languages=c --disable-multilib --disable-bootstrap --enable-shared --enable-lto && \
	make

clean:
	rm -rf gcc*
