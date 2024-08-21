add_llvm_component_library(LLVMEverettDisassembler
  EverettDisassembler.cpp

  LINK_COMPONENTS
  EverettInfo
  CodeGenTypes
  MC
  MCDisassembler
  Support

  ADD_TO_COMPONENT
  Everett
  )

