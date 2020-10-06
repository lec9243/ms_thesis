{-# OPTIONS_GHC -Wall #-}
module Struc where      --Define Data Structure
import LLVM.AST
import LLVM.AST.Constant as CON

data VarFunction = VarFunction LLVM.AST.Name [Instruction] deriving (Eq, Show)--local variables from functions
data VarGlobal = VarGlobal LLVM.AST.Name (Maybe Constant) deriving (Eq, Show) --global variables
data Paired = Paired LLVM.AST.Name LLVM.AST.Name deriving (Eq, Show)

getVarGlobalNm (VarGlobal nm _) = nm
getVarGlobalValue (VarGlobal _ val) = val

getVarFuncNm (VarFunction nm _) = nm
getVarFuncInstruction (VarFunction _ ins) = ins

-- data Decl = Decl{declNm::LLVM.AST.Name, declVars::LLVM.AST.Name, declComd::[Instruction]} deriving (Eq, Show)
data Term a = Empty
            | Var LLVM.AST.Name
            | Const a
            | App LLVM.AST.Name [Term a] (Term a) deriving (Eq, Show)

-- data Subst a = Subst [(a, a)]
