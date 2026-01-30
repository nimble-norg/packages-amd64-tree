DPKGFLAGS = ""
PKG = "make"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/make/make_4.4-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) make_4.4-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/make/make-4.4.tar.gz
	tar xf make-4.4.tar.gz

compile: source
	cd make-4.4 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf make*
