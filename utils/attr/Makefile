PKG = "attr"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/attr/attr_2.5.2-1_amd64.deb

install: download
	dpkg -i attr_2.5.2-1_amd64.deb

source:
	$(GET) http://download.savannah.gnu.org/releases/attr/attr-2.5.2.tar.gz
	tar xf attr-2.5.2.tar.gz

compile: source
	cd attr-2.5.2 && \
	mkdir build && \
	cd build && \
	../configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64 && \
	make

clean:
	rm -rf attr*
