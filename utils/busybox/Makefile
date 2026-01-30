DPKGFLAGS = ""
PKG = "busybox"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/utils/busybox/busybox_1.37.0-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) busybox_1.37.0-1_amd64.deb

source:
	$(GET) http://busybox.net/downloads/busybox-1.37.0.tar.bz2
	tar xjf busybox-1.37.0.tar.bz2

compile: source
	cd busybox-1.37.0 && \
	make defconfig && \
	sed -i 's/^CONFIG_TC=y/# CONFIG_TC is not set/' .config && \
	make
clean:
	rm -rf busybox*
