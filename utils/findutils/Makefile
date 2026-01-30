DPKGFLAGS = ""
PKG = "findutils"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/findutils/findutils_4.10.0-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) findutils_4.10.0-1_amd64

source:
	$(GET) http://ftp.gnu.org/gnu/findutils/findutils-4.10.0.tar.xz
	tar xf findutils-4.10.0.tar.xz

compile: source
	cd findutils-4.10.0 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf findutils*
