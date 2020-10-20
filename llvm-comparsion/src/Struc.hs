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
{-
data Term   = Empty
            | Var LLVM.AST.Name
            | ConstTy Type
            | ConstOp Operand
            | App LLVM.AST.Name [Term] (Term) deriving (Eq, Show)
-}
-- data Subst a = Subst [(a, a)]

data Term = Var LLVM.AST.Name
          | Const Operand
          | App AppFunction [Term] deriving (Eq, Show)
data AppFunction = Seq
                 | UserDefined LLVM.AST.Name
                 | Other LLVM.AST.Name deriving (Eq, Show)


getArity :: AppFunction -> Maybe Int
getArity Seq = Just 2
getArity (UserDefined _) = Nothing
getArity (Other _) = Nothing
-- getArity (Const _) = Just 0

checkTermArity :: Term -> Bool
checkTermArity (Var _) = True
checkTermArity (App a lst) =
  (case (getArity a) of
    Nothing -> True
    Just n -> n == length(lst)) && (all checkTermArity lst)
