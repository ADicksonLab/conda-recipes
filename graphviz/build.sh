#!/bin/sh
# see http://conda.pydata.org/docs/build.html for hacking instructions.

if [ `uname` == Darwin ]; then
./configure --enable-tcl=no --prefix=$PREFIX --with-quartz | tee configure.log 2>&1
else
./configure --prefix=$PREFIX | tee configure.log 2>&1
fi
make -j install | tee make.log 2>&1

# vim: set ai et nu:
