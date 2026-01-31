PKG = "bzip2"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/bzip2/bzip2_1.0.8-1_amd64.deb

install: download
	dpkg -i bzip2_1.0.8-1_amd64.deb

source:
	$(GET) http://www.sourceware.org/pub/bzip2/bzip2-latest.tar.gz
	tar xf bzip2-latest.tar.gz

compile: source
	cd bzip2-1.0.8 && \
	make

clean:
	rm -rf bzip2*
