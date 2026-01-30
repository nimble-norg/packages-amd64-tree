DPKGFLAGS = ""
PKG = "glibc"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/glibc/glibc_2.42-2_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) glibc_2.42-2_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/glibc/glibc-2.43.tar.gz
	tar xf glibc-2.43.tar.gz

compile: source
	cd glibc-2.43 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf glibc*
