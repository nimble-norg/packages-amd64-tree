PKG = "mpfr"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/mpfr/mpfr_4.2.2-1_amd64.deb

install: download
	dpkg -i mpfr_4.2.2-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/mpfr/mpfr-4.2.2.tar.gz
	tar xf mpfr-4.2.2.tar.gz

compile: source
	cd mpfr-4.2.2 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf mpfr*
