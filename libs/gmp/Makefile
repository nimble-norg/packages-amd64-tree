PKG = "gmp"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/gmp/gmp_6.3.0-1_amd64.deb

install: download
	dpkg -i gmp_6.3.0-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.gz
	tar xf gmp-6.3.0.tar.gz

compile: source
	cd gmp-6.3.0 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf gmp*
