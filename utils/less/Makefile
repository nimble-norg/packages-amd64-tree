PKG = "less"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/less/less_685-1_amd64.deb

install: download
	dpkg -i less_685-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/less/less-685.tar.gz
	tar xf less-685.tar.gz

compile: source
	cd less-685 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf less*
