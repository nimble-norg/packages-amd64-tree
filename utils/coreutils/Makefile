PKG = "coreutils"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/coreutils/coreutils_9.9-2_amd64.deb

install: download
	dpkg -i coreutils_9.9-2_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/coreutils/coreutils-9.9.tar.gz
	tar xf coreutils-9.9.tar.gz

compile: source
	cd coreutils-9.9 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/lib64 --without-selinux --disable-libcap --enable-single-binary && \
	make

clean:
	rm -rf coreutils*
