PKG = "zstd"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/libs/zstd/zstd_1.6.0-1_amd64.deb

install: download
	dpkg -i zstd_1.6.0-1_amd64.deb

source:
	$(GET) http://github.com/facebook/zstd/releases/download/v1.5.7/zstd-1.5.7.tar.gz
	tar xf zstd-1.5.7.tar.gz

compile: source
	cd zstd-1.5.7 && \
	make

clean:
	rm -rf zstd*
