DPKGFLAGS = ""
PKG = "grep"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/grep/grep_3.11-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) grep_3.11-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/grep/grep-3.11.tar.gz
	tar xf grep-3.11.tar.gz

compile: source
	cd grep-3.11 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf grep*
