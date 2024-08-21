# This file allows users to call find_package(LLD) and pick up our targets.



set(LLVM_VERSION 20.0.0)
find_package(LLVM ${LLVM_VERSION} EXACT REQUIRED CONFIG
             HINTS "/Users/tyeverett/projects/llvm-project/llvm-build/./lib/cmake/llvm")

set(LLD_EXPORTED_TARGETS "lldCommon;lld;lldCOFF;lldELF;lldMachO;lldMinGW;lldWasm")
set(LLD_CMAKE_DIR "/Users/tyeverett/projects/llvm-project/llvm-build/lib/cmake/lld")
set(LLD_INCLUDE_DIRS "/Users/tyeverett/projects/llvm-project/lld/include;/Users/tyeverett/projects/llvm-project/llvm-build/tools/lld/include")

# Provide all our library targets to users.
include("/Users/tyeverett/projects/llvm-project/llvm-build/lib/cmake/lld/LLDTargets.cmake")
