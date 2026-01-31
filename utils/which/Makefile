PKG = "which"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/which/which_2.23-1_amd64.deb

install: download
	dpkg -i which_2.23-1_amd64.deb

source:
	$(GET) http://ftp.gnu.org/gnu/which/which-2.23.tar.gz
	tar xf which-2.23.tar.gz

compile: source
	cd which-2.23 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf which*
