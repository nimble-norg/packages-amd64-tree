DPKGFLAGS = ""
PKG = "mksh"
GET = "wget"
all: $(PKG)

$(PKG): download install

download:
	$(GET) https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/shells/mksh/mksh_R59-1_amd64.deb

install: download
	dpkg -i $(DPKGFLAGS) mksh_R59-1_amd64.deb

source:
	$(GET) http://www.mirbsd.org/MirOS/dist/mir/mksh/mksh-R59c.tgz
	tar xf mksh-R59c.tgz

compile: source
	cd mksh && \
	chmod +x Build.sh && \
	./Build.sh
clean:
	rm -rf mksh*
