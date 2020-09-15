{-# OPTIONS_GHC -Wall #-}
module Struc where      --Define Data Structure
import LLVM.AST
import LLVM.AST.Constant as CON

data MyValue = Const Integer | Ref Name deriving (Eq, Show)
data Single = Single LLVM.AST.Name (Maybe CON.Constant) deriving (Eq, Show)
data Paired = Paired LLVM.AST.Name LLVM.AST.Name deriving (Eq, Show)
-- Single Defnition Init Times: a def's name, value and how many times it has been paired
-- Paired Def1 Def2 Init score: two defs have different Names but same value, score is put here in case one def can be paired with more than one time
