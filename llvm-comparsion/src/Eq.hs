{-# OPTIONS_GHC -Wall #-}
module Eq where

import LLVM.AST
import LLVM.AST.Constant as CON
import Struc

getBasicBlocks :: [Global] -> [BasicBlock]
getBasicBlocks [] = error "should be a main function there"
getBasicBlocks ((Function _ _ _ _ _ _ _ _ _ _ _ _ _ _ bb _ _):_) = bb -- Compare main function only
getBasicBlocks _ = error "not implemnt in getBasicBlocks"

getNamedInstruction :: [BasicBlock] -> [Named Instruction]
getNamedInstruction [] = []
getNamedInstruction ((BasicBlock _ nmInstructionLst _):_) = nmInstructionLst
-- getNamedInstruction _ = error "not implement in getNamedInstruction"

compareFunctions :: [Global] -> [Global] -> [Paired]
compareFunctions funcLst1 funcLst2 =
  compareBasicBlock ((getNamedInstruction . getBasicBlocks) funcLst1) ((getNamedInstruction . getBasicBlocks) funcLst2)

compareBasicBlock :: (Foldable t1, Foldable t2) => t2 (Named Instruction) -> t1 (Named Instruction) -> [Paired]
compareBasicBlock blocklst1 blocklst2 =
  compareUnnames blocklst1 blocklst2

compareUnnames :: (Foldable t1, Foldable t2) => t2 (Named Instruction) -> t1 (Named Instruction) -> [Paired]
compareUnnames blocklst1 blocklst2 =
  let
  valuelst1 = findUnNameValue blocklst1
  valuelst2 = findUnNameValue blocklst2
  in
  Prelude.concatMap (\x -> findEqUnnames x valuelst2) valuelst1

findEqUnnames :: Eq a => (Name, a) -> [(Name, a)] -> [Paired]
findEqUnnames _ [] = []
findEqUnnames unnm1@(unm1, v1) ((unm2, v2):t) =
  if v1 == v2 then (Paired unm1 unm2):(findEqUnnames unnm1 t) else (findEqUnnames unnm1 t)

findUnNameValue :: Foldable t => t (Named Instruction) -> [(Name, MyValue)]
findUnNameValue blocklst =
  let
  (namelst, dolst) = splitBlockLst blocklst
  in
  genUnNameValueLst namelst dolst

genUnNameValueLst :: [Named Instruction] -> [Named Instruction] -> [(Name, MyValue)]
genUnNameValueLst [] _ = []
genUnNameValueLst (h:t) dolst =
  case h of
    unname := Alloca{} -> (unname, lookupValue unname dolst):(genUnNameValueLst t dolst)
    unname := Load _ add _ _ _ -> (unname, lookupOperand add):(genUnNameValueLst t dolst)
    _ := Call{} -> genUnNameValueLst t dolst --Does not compare Call right now
    _ -> error "not implement in genUnNameValueLst"

lookupValue :: Name -> [Named Instruction] -> MyValue
lookupValue _ [] = error "value not found in do list"
lookupValue unnm (h:t) =
  case h of
    Do (Store _ (LocalReference _ nm) v _ _ _) -> if unnm == nm then lookupOperand v else lookupValue unnm t
    _ -> error "not implement in lookupValue"

lookupOperand :: Operand -> MyValue
lookupOperand op =
  case op of
    ConstantOperand (Int _ val) -> Const val
    LocalReference _ nm -> Ref nm
    _ -> error "not implement in lookupOperand"

splitBlockLst :: Foldable t => t (Named a) -> ([Named a], [Named a])
splitBlockLst blocklst = foldr (\x (a,b) -> case x of
                                              Do _ -> (a, (x:b))
                                              _ -> ((x:a), b)
                                ) ([],[]) blocklst



{-data Named a
  = Name := a
  | Do a
  deriving (Eq, Read, Show, Typeable, Data, Generic)-}

{-data BasicBlock = BasicBlock Name [Named Instruction] (Named Terminator)
  deriving (Eq, Read, Show, Typeable, Data, Generic)-}
{- Function {
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
  deriving (Eq, Read, Show, Typeable, Data, Generic)
-}
