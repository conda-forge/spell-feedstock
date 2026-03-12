#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

./configure --disable-silent-rules \
    --disable-dependency-tracking \
    --prefix=${PREFIX}
make
if [[ ${build_platform} == ${target_platform} ]]; then
make check
fi
make install
