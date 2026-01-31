PKG = "nano"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/editors/nano/nano_8.7-1_amd64.deb

install: download
	dpkg -i nano_8.7-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/nano/nano-8.7.tar.gz
	tar xf nano-8.7.tar.gz

compile: source
	cd nano-8.7 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf nano*
