PKG = "bash"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/shells/bash/bash_5.3-1_amd64.deb

install: download
	dpkg -i bash_5.3-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/bash/bash-5.3.tar.gz
	tar xf bash-5.3.tar.gz

compile: source
	cd bash-5.3 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf bash*
