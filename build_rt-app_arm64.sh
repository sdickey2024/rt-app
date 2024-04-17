#!/bin/bash

git clean -xfd

export ac_cv_lib_json_c_json_object_from_file=yes
./autogen.sh
# ./configure --host=aarch64-linux-gnu LDFLAGS="-L<absolute path to json repo>" CFLAGS="-I<path to parent of json-c repo>" --with-deadline
# ./configure --host=aarch64-linux-gnu LDFLAGS="-L$PWD/../json-c" CFLAGS="-I$PWD/../" --with-deadline

./configure --host=aarch64-linux-gnu LDFLAGS="-L$PWD/../json-c" CFLAGS="-I$PWD/../" --with-deadline
AM_LDFLAGS="-all-static" make

