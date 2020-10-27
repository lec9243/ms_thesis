module Unify where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Common
import Struc
import TransModule

{-
unifyTerms terms1 terms2 subst = unifyTerm (head terms1) (head terms2) subst
unifyTerm (App apfunction1 terms1) (App apfunction2 terms2) subst =
{-  let
    subst_ = (if apfunction1 == apfunction2 then (unifyArgs args1 args2 subst) else subst)
  in
  unifyTerm continue1 continue2 subst_
-}
  let subst_ = unifyTerms (head terms1) (head terms2) in
unifyTerm _ _ subst = subst

unifyArgs args1 args2 subst =
  let paired = ((head args1), (head args2)) in
  if (length args1) == 0 then subst
  else (if (length args1) == 1 then subst
        else unifyConst (head(reverse args1)) (head(reverse args2)) paired subst)

unifyConst con1 con2 paired subst =
  let (a,b) = (con1, con2) in
  case (a,b) of
    (Const (LocalReference ty1 nm1), Const (LocalReference ty2 nm2)) ->
          if a == b then (paired:subst)
          else if (inSubstFst nm1 subst) then unifyConst (Const (LocalReference ty1 (substitute nm1 subst)))  (Const (LocalReference ty2 nm2)) paired subst
               else if (inSubstSnd nm2 subst) then unifyConst (Const (LocalReference ty1 nm1))  (Const (LocalReference ty2 (substitute nm2 subst))) paired subst
                    else subst
    _ -> if a == b then (paired:subst) else subst

inSubstFst nm1 [] = False
inSubstFst nm1 (x:xs) =
  case x of
    (Var a, _) -> if a == nm1 then True else inSubstFst nm1 xs
    _ -> inSubstFst nm1 xs

inSubstSnd nm2 [] = False
inSubstSnd nm2 (x:xs) =
  case x of
    (_, Var a) -> if a == nm2 then True else inSubstSnd nm2 xs
    _ -> inSubstSnd nm2 xs

substitute nm1 [] = nm1
substitute nm1 (x:xs) =
  case x of
    (Var a, Var b) -> if a == nm1 then b else (if b == nm1 then a else substitute nm1 xs)
    _ -> substitute nm1 xs

isAssociativeTerm term =
  case term of
     Var _ -> False
     Const _ -> False
     App appfun lst -> isAssociativeAppFunction appfuc lst

isAssociativeAppFunction appfun lst =
  case appfun of
    Seq -> True
    UserDefined nm -> False
    Other nm -> Seq

isCommutativeTerm term = undefined -}
{-
unifyTerms (Const c1) (Const c2) =
   if c1 == c2  then Just [] else Nothing
unifyTerms v1@(Var nm1) v2@(Var nm2) =
  if  nm1 == nm2 then Just [] else Just [(v2,v1)]
unifyTerms c@(Const _ ) v@(Var _ ) = Just [(c,v)]
unifyTerms v@(Var _ ) c@(Const _ ) = Just [(c,v)]
-}







{-
Store {
      volatile :: Bool,
      address :: Operand,
      value :: Operand,
      maybeAtomicity :: Maybe Atomicity,
      alignment :: Word32,
      metadata :: InstructionMetadata
    }

Function {
        linkage :: L.Linkage,
        visibility :: V.Visibility,
        dllStorageClass :: Maybe DLL.StorageClass,
        callingConvention :: CC.CallingConvention,
        returnAttributes :: [A.ParameterAttribute],
        returnType :: Type,
        name :: Name,
        parameters :: ([Parameter],Bool), -- ^ snd indicates varargs
        functionAttributes :: [Either A.GroupID A.FunctionAttribute],
        section :: Maybe ShortByteString,
        comdat :: Maybe ShortByteString,
        alignment :: Word32,
        garbageCollectorName :: Maybe ShortByteString,
        prefix :: Maybe Constant,
        basicBlocks :: [BasicBlock],
        personalityFunction :: Maybe Constant,
        metadata :: [(ShortByteString, MDRef MDNode)]
      }

data BasicBlock = BasicBlock Name [Named Instruction] (Named Terminator)
  deriving (Eq, Read, Show, Typeable, Data, Generic)

  data Named a
    = Name := a
    | Do a
    deriving (Eq, Read, Show, Typeable, Data, Generic)

-}
