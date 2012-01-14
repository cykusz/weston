#!/bin/bash

source ./wayland_vars
make clean
./autogen.sh --prefix=$WLD
make -j6 && make install
#cp `find ./clients/ -maxdepth 1  -type f -executable` $WLD/bin/$0