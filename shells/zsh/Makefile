DPKGFLAGS = ""
PKG = "zsh"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/shells/zsh/zsh_5.9.0.3-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) zsh_5.9.0.3-1_amd64.deb

source:
	$(GET) http://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz/download
	tar xf download

compile: source
	cd zsh-5.9 && \
	autoreconf -fi && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf zsh* download*
