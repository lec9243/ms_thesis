{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveTraversable #-}

module Struc where      --Define Data Structure
import LLVM.AST
import LLVM.AST.Instruction
--import LLVM.AST.Constant as CON


data Term = Var LLVM.AST.Name
          | Const Operand
          | ConstTy Type
          | App AppFunction [Term] (Maybe OriginalAST) deriving (Eq, Show, Read)
data OriginalAST = Ins (Named Instruction)
                 | Tem (Named Terminator)
                 | NoOriginal
                 -- | Fun LLVM.AST.Global
                 -- | BB LLVM.AST.BasicBlock
                 deriving (Eq, Show, Read)
data AppFunction = Seq
                 | UserDefined LLVM.AST.Name
                 | Other LLVM.AST.Name
                 | Block LLVM.AST.Name
                 | Arguments Int deriving (Eq, Show, Read)

--data TermIndex = TermIndex Term Int (TermIndex) | Empty deriving (Eq, Show)
data TermIndex i = TiVar LLVM.AST.Name
                 | TiConst Operand
                 | TiConstTy Type
                 | TiApp i AppFunction [TermIndex i] (Maybe OriginalAST) deriving (Eq, Show, Functor, Traversable, Foldable, Read)

-- type A = TermIndex Int
-- type B = TermIndex Int
-- type Graph = [(A, [B])]
-- type NewGraph = [([B], A)]
-- type Matching = [(TermIndex Int, TermIndex Int)]
-- type Unmatch = ([A], [B])
-- type ClassForm = TermIndex Int
-- type ClassMember = [TermIndex Int]
-- type EqClass = (ClassForm, ClassMember)
-- type CombinedEqClass = (ClassForm, (ClassMember, ClassMember))

type Graph = [((TermIndex Int, TermIndex Int), Int)] -- two v, weight
type WMatching = [(TermIndex Int, TermIndex Int)]

data Subst = Subst [(LLVM.AST.Name, TermIndex Int)] deriving (Eq, Show, Read)
data PartialUnifer a = Partial a [(TermIndex Int, TermIndex Int)]
                     | Successful a deriving (Eq, Show, Read)



instance Monad PartialUnifer where
  return a = Successful a
  (Partial a terms) >>= f =
    case f a of
      Successful v -> Partial v terms
      Partial v terms2 -> Partial v (terms++terms2)
  (Successful a) >>= f = f a

instance Applicative PartialUnifer where
  pure = return
  (Successful p) <*> a = fmap p a
  (Partial p terms) <*> a =
    case fmap p a of
      Successful v -> Partial v terms
      Partial v terms2 -> Partial v (terms++terms2)

instance Functor PartialUnifer where
    fmap f (Successful a) = Successful (f a)
    fmap f (Partial a terms) = Partial (f a) terms


getArity :: AppFunction -> Maybe Int
getArity Seq = Just 2
getArity (UserDefined _) = Nothing
getArity (Other _) = Nothing
getArity (Arguments _) = Nothing

checkTermArity :: Term -> Bool
checkTermArity (Var _) = True
checkTermArity (Const _) = True
checkTermArity (App a lst _) =
  (case (getArity a) of
    Nothing -> True
    Just n -> n == length(lst)) && (all checkTermArity lst)



{-
data VarFunction = VarFunction LLVM.AST.Name [Instruction] deriving (Eq, Show)--local variables from functions
data VarGlobal = VarGlobal LLVM.AST.Name (Maybe Constant) deriving (Eq, Show) --global variables
data Paired = Paired LLVM.AST.Name LLVM.AST.Name deriving (Eq, Show)

getVarGlobalNm :: VarGlobal -> Name
getVarGlobalNm (VarGlobal nm _) = nm
getVarGlobalValue :: VarGlobal -> Maybe Constant
getVarGlobalValue (VarGlobal _ val) = val


getVarFuncNm :: VarFunction -> Name
getVarFuncNm (VarFunction nm _) = nm
getVarFuncInstruction :: VarFunction -> [Instruction]
getVarFuncInstruction (VarFunction _ ins) = ins

-- data Decl = Decl{declNm::LLVM.AST.Name, declVars::LLVM.AST.Name, declComd::[Instruction]} deriving (Eq, Show)

data Term   = Empty
            | Var LLVM.AST.Name
            | ConstTy Type
            | ConstOp Operand
            | App LLVM.AST.Name [Term] (Term) deriving (Eq, Show)
-}
