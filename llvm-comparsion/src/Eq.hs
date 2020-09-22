{-# OPTIONS_GHC -Wall #-}
module Eq where

import LLVM.AST
import LLVM.AST.Constant as CON
import Common
import Struc

--compareASTs :: LLVM.AST.Module -> LLVM.AST.Module -> IO ()
compareASTs (LLVM.AST.Module _ _ _ _ modDefLst1) (LLVM.AST.Module _ _ _ _ modDefLst2) =
  let
    varLst1 = isGlobalVariable modDefLst1
    varLst2 = isGlobalVariable modDefLst2
    globalVarResult = compareGlobalVars varLst1 varLst2
    funcLst1 = isFunction modDefLst1
    funcLst2 = isFunction modDefLst2
    funcResult = compareFunctions (head funcLst1) (head funcLst2) -- compare Main function only
  in
  globalVarResult ++ funcResult

compareGlobalVars gloVar1 gloVar2 =
  foldr (\x acc -> (compareGlobalVarsHelper x gloVar2)++acc) [] gloVar1
  where
    compareGlobalVarsHelper gloVar gloVarLst =
      foldr (\x acc -> if (getVarGlobalValue gloVar == getVarGlobalValue x)
                    then (Paired (getVarGlobalNm gloVar) (getVarGlobalNm x)):acc
                    else acc
            ) [] gloVarLst

compareFunctions func1 func2 =
  let
  varfunLst1 = generateVarFuncLst (getNamedInstruction (head (getBasicBlocks func1)))
  varfunLst2 = generateVarFuncLst (getNamedInstruction (head (getBasicBlocks func2)))
  in
  compareLocalVars varfunLst1 varfunLst2

compareLocalVars [] _ = []
compareLocalVars ((VarFunction nm1 ins1):t) varfunlst =
  (foldr (\(VarFunction nm2 ins2) acc ->
             if ins1 == (map (substituteVarNms nm1) ins2) then ((Paired nm1 nm2):acc) else acc) [] varfunlst)
  ++ (compareLocalVars t varfunlst)

substituteVarNms nm1 instruc =
  case instruc of
    Alloca{} -> instruc
    Store vo (LocalReference ty _) va ma al me -> Store vo (LocalReference ty nm1) va ma al me
    ins -> ins

generateVarFuncLst insLst =
  foldr (\x acc -> case x of
                   unnm := _ -> (VarFunction unnm (lookupInstructions unnm insLst)):acc
                   Do _ -> acc) [] insLst

lookupInstructions nm insLst =
  foldr (\x acc -> case x of
                   newnm := commd@(Alloca{}) -> if (newnm == nm) then (commd:acc) else acc
                   newnm := commd@(Load _ addr _ _ _) -> if (newnm == nm) then (commd:acc)
                                                          else if ((getLocalRefNm addr) == nm) then (commd:acc)
                                                          else acc
                   newnm := commd@(Call _ _ _ _ args _ _) -> if (newnm == nm) then (commd:acc)
                                                              else if (lookupFuncArgus nm args) then (commd:acc)
                                                              else acc
                   Do commd@(Store _ (LocalReference _ newnm) _ _ _ _) -> if (newnm == nm) then (commd:acc) else acc
                   _ -> error "case not implement in lookupInstructions"
        ) [] insLst


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
