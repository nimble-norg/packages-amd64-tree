PKG = "mpc"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/mpc/mpc_1.3.1-1_amd64.deb

install: download
	dpkg -i mpc_1.3.1-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz
	tar xf mpc-1.3.1.tar.gz

compile: source
	cd mpc-1.3.1 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf mpc*
