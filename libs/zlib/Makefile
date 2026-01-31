PKG = "zlib"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/zlib/zlib_1.3.1-1_amd64.deb

install: download
	dpkg -i zlib_1.3.1-1_amd64.deb

source:
	$(GET) http://www.zlib.net/zlib-1.3.1.tar.gz
	tar xf zlib-1.3.1.tar.gz

compile: source
	cd zlib-1.3.1 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --libdir=/usr/lib64 && \
	make

clean:
	rm -rf zlib*
