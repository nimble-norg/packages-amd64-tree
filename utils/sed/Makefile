PKG = "sed"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/sed/sed_4.9-1_amd64.deb

install: download
	dpkg -i sed_4.9-1_amd64

source:
	$(GET) http://ftp.gnu.org/gnu/sed/sed-4.9.tar.gz
	tar xf sed-4.9.tar.gz

compile: source
	cd sed-4.9 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf sed*
