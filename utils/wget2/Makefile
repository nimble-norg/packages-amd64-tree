DPKGFLAGS = ""
PKG = "wget2"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/wget2/wget2_2.2.1-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) wget2_2.2.1-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/wget/wget2-2.2.1.tar.gz
	tar xf wget2-2.2.1.tar.gz

compile: source
	cd wget2-2.2.1 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 --with-openssl=yes --with-ssl=openssl && \
	make

clean:
	rm -rf wget2*
