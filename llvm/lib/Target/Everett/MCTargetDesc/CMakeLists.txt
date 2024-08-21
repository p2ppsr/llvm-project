add_llvm_component_library(LLVMEverettDesc
  EverettAsmBackend.cpp
  EverettELFObjectWriter.cpp
  EverettELFStreamer.cpp
  EverettInstPrinter.cpp
  EverettMCAsmInfo.cpp
  EverettMCCodeEmitter.cpp
  EverettMCELFStreamer.cpp
  EverettMCExpr.cpp
  EverettMCTargetDesc.cpp
  EverettTargetStreamer.cpp

  LINK_COMPONENTS
  MC
  EverettInfo
  Support
  TargetParser

  ADD_TO_COMPONENT
  Everett
)

add_dependencies(LLVMEverettDesc EverettCommonTableGen)

