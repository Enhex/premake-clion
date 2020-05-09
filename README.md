[CLion](https://www.jetbrains.com/clion/) generator for [Premake](https://github.com/premake/premake-core).

In addition to generating CMake files, this generator corrects the CLion project root path to the Premake script's directory instead of the generated CMakeLists.txt's directory.

Depends on https://github.com/Enhex/premake-cmake being already installed.

# Usage
1. Put these files in a `clion` subdirectory in one of [Premake's search paths](https://github.com/premake/premake-core/wiki/Locating-Scripts).

2. Add the line `require "clion"` preferably to your [premake-system.lua](https://github.com/premake/premake-core/wiki/System-Scripts), or to your premake5.lua script.

3. Generate
```sh
premake5 clion
```
