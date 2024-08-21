add_llvm_component_library(LLVMEverettAsmParser
  EverettAsmParser.cpp

  LINK_COMPONENTS
  EverettDesc
  EverettInfo
  CodeGenTypes
  MC
  MCParser
  Support

  ADD_TO_COMPONENT
  Everett
  )
