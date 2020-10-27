{-# OPTIONS_GHC -Wall #-}
module Struc where      --Define Data Structure
import LLVM.AST
--import LLVM.AST.Constant as CON

data Term = Var LLVM.AST.Name
          | Const Operand
          | App AppFunction [Term] deriving (Eq, Show)
data AppFunction = Seq
                 | UserDefined LLVM.AST.Name
                 | Other LLVM.AST.Name
                 | Arguments Int deriving (Eq, Show)

getArity :: AppFunction -> Maybe Int
getArity Seq = Just 2
getArity (UserDefined _) = Nothing
getArity (Other _) = Nothing
getArity (Arguments _) = Nothing

checkTermArity :: Term -> Bool
checkTermArity (Var _) = True
checkTermArity (Const _) = True
checkTermArity (App a lst) =
  (case (getArity a) of
    Nothing -> True
    Just n -> n == length(lst)) && (all checkTermArity lst)

data Subst = Subst [(LLVM.AST.Name, Term)] deriving (Eq, Show)
data PartialUnifer a = Partial a [[Term]] -- Suppose to be equal but not
                     | Successful a deriving (Eq, Show)

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

insert :: Subst -> Name -> Term -> PartialUnifer Subst
insert (Subst subst) n t =
  case lookup n subst of
    Nothing -> return (Subst ((n,t):subst)) --
    Just t2 -> unify (Subst subst) t t2

unify :: Subst -> Term -> Term -> PartialUnifer Subst
unify subst (Var v) t2 =
  insert subst v t2
unify subst (Const c) (Var v) =
  insert subst v (Const c)
unify subst (Const (LocalReference _ nm1)) (Const (LocalReference _ nm2)) =
  insert subst nm1 (Var nm2)
unify subst t1@(Const c1) t2@(Const c2) =
  if c1 == c2 then return subst else (Partial subst [[t1,t2]])
unify subst t1@(Const _) t2@(App _ _) = (Partial subst [[t1,t2]])
unify subst t1@(App f1 ts1) t2@(App f2 ts2)
  |f1 == f2 = substUnion =<< sequenceA (zipWith (unify subst) ts1 ts2)
  |otherwise =  (Partial subst [[t1,t2]])
  where
    substUnion [] = return subst
    substUnion [x] = return x
    substUnion (x:xs) = substUnion2 x =<< substUnion xs
unify subst t1@(App _ _) (Var v) =
  insert subst v t1
unify subst t1@(App _ _) t2@(Const _) =  (Partial subst [[t1,t2]])

substUnion2 :: Subst -> Subst -> PartialUnifer Subst
substUnion2 (Subst []) subst  = return subst
substUnion2 (Subst ((v,t):xs)) subst
  = substUnion2 (Subst xs) =<< insert subst v t




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
