#!/bin/sh
#
#

PREFIX="$1"
if [ -z "$PREFIX" ]; then
  PREFIX="/usr/local"
fi

./autogen.sh
./configure --prefix="$PREFIX" --includedir=/usr/include/tirpc
if [ -n "$DEBUG" ]; then
  make
else
  make install
fi

if [ -z "$DEBUG" ]; then
  make clean
  make distclean
fi

