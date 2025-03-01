# OdysseyDecompToolsCache
Prebuilt binaries of tools and compilers for [OdysseyDecomp](https://github.com/MonsterDruide1/OdysseyDecomp)

Currently this repo has two components:
  * Pre installed binaries for Linux:
      * `clang` 3.9.1 from `bin/clang` of [this release](https://releases.llvm.org/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz) from the llvm releases
      * `lld` 4.0.1 from `bin/ld.lld` of [this release](https://releases.llvm.org/4.0.1/clang+llvm-4.0.1-x86_64-linux-gnu-Fedora-25.tar.xz)
      * The `check`, `listsym` and `decompme` binaries from a pre-built version of [viking](https://github.com/open-ead/nx-decomp-tools/tree/master/viking) for Linux
  * llvm 3.9.1 libc++ headers from the `include/c++/v1` folder of the clang 3.9.1 Linux release above
