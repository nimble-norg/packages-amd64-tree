PKG = "xz"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/xz/xz_5.8.2-1_amd64.deb

install: download
	dpkg -i xz_5.8.2-1_amd64.deb

source:
	$(GET) http://github.com/tukaani-project/xz/releases/download/v5.8.2/xz-5.8.2.tar.gz
	tar xf xz-5.8.2.tar.gz

compile: source
	cd xz-5.8.2 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf xz*
