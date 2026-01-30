#!/bin/sh

# Script for the absence of the GNU Make program

set -e

PATH="/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin"
GET="wget"
PKG="make"
DPKGFLAGS=""

for arg in "$@"; do
    case "$arg" in
        download)
            echo '"$GET" https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/make/make_4.4-1.deb'
            "$GET" https://github.com/nimble-norg/packages-amd64/raw/refs/heads/main/devel/make/make_4.4-1_amd64.deb
        ;;
	install)
            echo 'if [ -f "make_4.4-1_amd64.deb ]; then'
            echo '    dpkg -i "$DPKGFLAGS" make_4.4-1_amd64.deb'
            echo 'else'
            echo '    "$0" download'
            echo '     dpkg -i "$DPKGFLAGS" make_4.4-1_amd64.deb'
            echo 'fi'
            if [ -f "make_4.4-1_amd64.deb" ]; then
                dpkg -i "$DPKGFLAGS" make_4.4-1_amd64.deb
            else
                "$0" download
                dpkg -i "$DPKGFLAGS" make_4.4-1_amd64.deb
            fi
        ;;
	source)
             echo '"$GET" http://ftp.gnu.org/gnu/make/make-4.4.tar.gz'
             "$GET" http://ftp.gnu.org/gnu/make/make-4.4.tar.gz
             echo 'tar xf make-4.4.tar.gz'
             tar xf make-4.4.tar.gz
        ;;
        compile)
             echo 'if [ -d "make-4.4" ]; then'
             echo '    cd make-4.4'
             echo '    ./configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64'
             echo '    ./build.sh'
             echo 'else'
             echo '    "$0" source'
             echo '    cd make-4.4'
             echo '    ./configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64'
             echo '    ./build.sh'
             echo 'fi'
             if [ -d "make-4.4" ]; then
                 cd make-4.4
                 ./configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64
                 ./build.sh
             else
                 "$0" source
                 cd make-4.4
                 ./configure --prefix=/usr --bindir=/usr/bin --libdir=/usr/lib64
                 ./build.sh
             fi
        ;;
	all)
             echo "'$0' download"
             "$0" download
             echo "'$0' install"
             "$0" install
        ;;
        "$PKG")
             echo '"$0" all'
             "$0" all
        ;;
        clean)
             echo 'rm -rf make*'
             rm -rf make*
        ;;
        *)
            echo "Dont know what do to with '$arg', aborting."
            exit 2
        ;;
    esac
done
