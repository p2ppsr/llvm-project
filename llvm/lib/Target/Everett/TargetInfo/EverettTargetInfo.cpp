//===-- EverettTargetInfo.cpp - Everett Target Implementation
//---------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "TargetInfo/EverettTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
namespace llvm {
Target &getTheEverettTarget() {
  static Target TheEverettTarget;
  return TheAVRTarget;
}
} // namespace llvm

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeEverettTargetInfo() {
  llvm::RegisterTarget<llvm::Triple::everett> X(
      llvm::getTheEverettTarget(), "everett", "Everett / Bitcoin CPU",
      "Everett");
}
