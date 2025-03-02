# OdysseyDecompToolsCache
Prebuilt binaries of tools and compilers for [OdysseyDecomp](https://github.com/MonsterDruide1/OdysseyDecomp).

See [Releases](https://github.com/MonsterDruide1/OdysseyDecompToolsCache/releases) for downloads of the respective pre-generated files.

Two separate components are available:
- Prebuilt binaries for Linux (`OdysseyDecomp-binaries_Linux.tar.gz`):
  - `clang` from `bin/clang` of the [official release of Clang 3.9.1 for Ubuntu 16.04](https://releases.llvm.org/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz)
  - `lld` from `bin/ld.lld` of the [official release of Clang 4.0.1 for Fedora 25](https://releases.llvm.org/4.0.1/clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25.tar.xz)
  - `check`, `listsym` and `decompme` from building [viking](https://github.com/open-ead/nx-decomp-tools/tree/master/viking)
- libc++ headers from Clang 3.9.1 (`OdysseyDecomp-libcxx-headers.tar.gz`):
  - `include` obtained from `include/c++/v1` of Clang 3.9.1, as mentioned above
