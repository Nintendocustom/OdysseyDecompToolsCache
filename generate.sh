#!/bin/bash

# fail on first error
set -e

# create directory for files being downloaded
mkdir -p download

# download clang 3.9.1
pushd download
if [ ! -f "clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz" ]; then
    wget https://releases.llvm.org/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
fi
popd

# extract clang 3.9.1
pushd download
if [ ! -d "clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04" ]; then
    tar xf clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
fi
popd

# download clang 4.0.1
pushd download
if [ ! -f "clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25.tar.xz" ]; then
    wget https://releases.llvm.org/4.0.1/clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25.tar.xz
fi
popd

# extract clang 4.0.1
pushd download
if [ ! -d "clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25" ]; then
    tar xf clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25.tar.xz
fi
popd

# build decomp tools
pushd nx-decomp-tools/viking
cargo build --manifest-path Cargo.toml --release
popd


# create/clear build directory
if [ -d "build" ]; then
    rm -rf build
fi
mkdir build

# create folder skeleton
mkdir -p build/OdysseyDecomp-binaries_Linux/bin
mkdir -p build/OdysseyDecomp-libcxx-headers/include

# copy clang 3.9.1
cp download/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/bin/clang build/OdysseyDecomp-binaries_Linux/bin/

# copy lld from clang 4.0.1
cp download/clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25/bin/ld.lld build/OdysseyDecomp-binaries_Linux/bin/

# copy viking tools
cp nx-decomp-tools/viking/target/release/check build/OdysseyDecomp-binaries_Linux/bin/
cp nx-decomp-tools/viking/target/release/listsym build/OdysseyDecomp-binaries_Linux/bin/
cp nx-decomp-tools/viking/target/release/decompme build/OdysseyDecomp-binaries_Linux/bin/

# copy libc++ from clang 3.9.1
cp -r download/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/include/c++/v1/* build/OdysseyDecomp-libcxx-headers/include
cp -r download/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/lib/clang/3.9.1/include/arm_neon.h build/OdysseyDecomp-libcxx-headers/include


# create tarball
pushd build/OdysseyDecomp-binaries_Linux
tar -cJf ../OdysseyDecomp-binaries_Linux.tar.xz *
popd
pushd build/OdysseyDecomp-libcxx-headers
tar -cJf ../OdysseyDecomp-libcxx-headers.tar.xz *
popd
