#!/bin/bash
if [ -f $PROGRESS_DIR/2-gzip ] ; then
	exit 0
fi
echo "building gzip..."
set -e
tar xf gzip-${gzip_v}.tar.xz
cd gzip-${gzip_v}
./configure --prefix=/usr
make
make install
mv /usr/bin/gzip /bin
cd ..
rm -rf gzip-${gzip_v}
touch $PROGRESS_DIR/2-gzip
