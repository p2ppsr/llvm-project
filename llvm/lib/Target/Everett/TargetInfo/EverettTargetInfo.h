//===-- EverettTargetInfo.h - Everett Target Implementation -------------*- C++
//-*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_EVERETT_TARGET_INFO_H
#define LLVM_EVERETT_TARGET_INFO_H

namespace llvm {
class Target;

Target &getTheEverettTarget();
} // namespace llvm

#endif // LLVM_EVERETT_TARGET_INFO_H
