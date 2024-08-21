add_llvm_component_group(Everett)

set(LLVM_TARGET_DEFINITIONS Everett.td)

tablegen(LLVM EverettGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM EverettGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM EverettGenCallingConv.inc -gen-callingconv)
tablegen(LLVM EverettGenDAGISel.inc -gen-dag-isel)
# tablegen(LLVM EverettGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM EverettGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM EverettGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM EverettGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM EverettGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(EverettCommonTableGen)

add_llvm_target(EverettCodeGen
  EverettAsmPrinter.cpp
  # EverettExpandPseudoInsts.cpp
  # EverettFrameLowering.cpp
  EverettInstrInfo.cpp
  EverettISelDAGToDAG.cpp
  EverettISelLowering.cpp
  EverettMCInstLower.cpp
  EverettRegisterInfo.cpp
  # EverettShiftExpand.cpp
  EverettSubtarget.cpp
  EverettTargetMachine.cpp
  EverettTargetObjectFile.cpp

  DEPENDS
  intrinsics_gen

  LINK_COMPONENTS
  EverettDesc
  EverettInfo
  AsmPrinter
  CodeGen
  CodeGenTypes
  Core
  MC
  SelectionDAG
  Support
  Target

  ADD_TO_COMPONENT
  Everett
  )

add_subdirectory(AsmParser)
# add_subdirectory(Disassembler)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
