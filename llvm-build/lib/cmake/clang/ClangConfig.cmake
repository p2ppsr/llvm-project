# This file allows users to call find_package(Clang) and pick up our targets.



set(LLVM_VERSION 20.0.0)
find_package(LLVM ${LLVM_VERSION} EXACT REQUIRED CONFIG
             HINTS "/Users/tyeverett/projects/llvm-project/llvm-build/./lib/cmake/llvm")

set(CLANG_EXPORTED_TARGETS "clang-tblgen;clang-resource-headers;clangBasic;clangAPINotes;clangLex;clangParse;clangAST;clangDynamicASTMatchers;clangASTMatchers;clangCrossTU;clangSema;clangCodeGen;clangAnalysis;clangAnalysisFlowSensitive;clangAnalysisFlowSensitiveModels;clangEdit;clangExtractAPI;clangRewrite;clangARCMigrate;clangDriver;clangSerialization;clangRewriteFrontend;clangFrontend;clangFrontendTool;clangToolingCore;clangToolingInclusions;clangToolingInclusionsStdlib;clangToolingRefactoring;clangToolingASTDiff;clangToolingSyntax;clangDependencyScanning;clangTransformer;clangTooling;clangDirectoryWatcher;clangIndex;clangIndexSerialization;clangInstallAPI;clangStaticAnalyzerCore;clangStaticAnalyzerCheckers;clangStaticAnalyzerFrontend;clangFormat;clangInterpreter;clangSupport;diagtool;clang;clang-format;clangHandleCXX;clangHandleLLVM;clang-linker-wrapper;clang-nvlink-wrapper;clang-offload-packager;clang-offload-bundler;clang-scan-deps;clang-installapi;clang-repl;clang-rename;clang-refactor;clang-cpp;clang-check;clang-extdef-mapping;libclang;amdgpu-arch;nvptx-arch")
set(CLANG_CMAKE_DIR "/Users/tyeverett/projects/llvm-project/llvm-build/lib/cmake/clang")
set(CLANG_INCLUDE_DIRS "/Users/tyeverett/projects/llvm-project/clang/include;/Users/tyeverett/projects/llvm-project/llvm-build/tools/clang/include")
set(CLANG_LINK_CLANG_DYLIB "OFF")

# Provide all our library targets to users.
include("/Users/tyeverett/projects/llvm-project/llvm-build/lib/cmake/clang/ClangTargets.cmake")

# By creating clang-tablegen-targets here, subprojects that depend on Clang's
# tablegen-generated headers can always depend on this target whether building
# in-tree with Clang or not.
if(NOT TARGET clang-tablegen-targets)
  add_custom_target(clang-tablegen-targets)
endif()
