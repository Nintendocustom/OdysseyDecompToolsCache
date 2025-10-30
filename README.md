# LCUDecompToolsCache
Prebuilt binaries of tools and compilers for [Lego-City-Undercover-Decompilation](https://github.com/Nintendocustom/Lego-City-Undercover-Decompilation).

See [Releases](https://github.com/Nintendocustom/OdysseyDecompToolsCache/releases) for downloads of the respective pre-generated files.

This repo provides prebuilt binaries for x86_64 Linux and arm64 Darwin (apple silicon) as well as a script for building these tools from source for other platforms.

Prerequisites for running generate.sh:
  * cmake 3.x
  * ninja
  * python 2.7 (build dependency of old versions of llvm)
  * a rust toolchain
  * a c++ compiler (gcc is recommended for building on linux and clang is recommended for building on darwin)

Credits go to [OdysseyDecompToolsCache](https://github.com/MonsterDruide1/OdysseyDecompToolsCache).