{-# OPTIONS_GHC -Wall #-}
module Eq where

import LLVM.AST
import LLVM.AST.Constant as CON
import Common
import Struc

--compareASTs :: LLVM.AST.Module -> LLVM.AST.Module -> IO ()
compareASTs (LLVM.AST.Module _ _ _ _ modDefLst1) (LLVM.AST.Module _ _ _ _ modDefLst2) = Nothing
{-  let
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
--[Paired]
compareFunctions func1 func2 =
  let
  varfunLst1 = generateVarFuncLst (getNamedInstruction (head (getBasicBlocks func1)))
  varfunLst2 = generateVarFuncLst (getNamedInstruction (head (getBasicBlocks func2)))
  in
  compareLocalVars varfunLst1 varfunLst2 []

compareLocalVars [] _ env = env
compareLocalVars (h:t) varfunlst env =
  compareLocalVars t varfunlst (compareVarInstuc h newvarfunlst env)

compareVarInstuc _ [] env = env
compareVarInstuc varfunc1@(VarFunction nm1 ins1) ((VarFunction nm2 ins2):t) env =
  let
    newins2 = map (substituteVarNms nm1 nm2) ins2
  in
  if (isSameInstucLst ins1 ins2 env) then compareVarInstuc varfunc1 t ((Paired nm1 nm2):env)
  else compareVarInstuc varfunc1 t env

isSameInstucLst [] _ _ = False
isSameInstucLst (h:t) ins2 env =
  case h of
    s@(Store _ _ _ _ _ _) ->
        if (compareStore s ins2 env) then isSameInstucLst t ins2 env else False
    c@(Call _ _ _ _ _ _ _ ) ->
       if (compareCall c ins2 env) then isSameInstucLst t ins2 env else False
    _ -> if (h 'elem' ins2) then isSameInstucLst t ins2 env else False

--Call tailcall callconven retatt func args funcatt meta
compareStore (Store vo add (LocalReference ty nm) maybeatom align meta) ins2 env =
compareStore s@(Store vo add _ maybeatom align meta) ins2 env = s `elem` ins2


substituteVarRef instruc env =
  case instruc of
    Store vo add val maybeatom align meta -> expandStore vo add maybeatom align meta (lookupSubLst val env)
  where
    substituteVarRefHelper val =
      case val of
        LocalReference ty nm ->


lookupPairedEnv _ [] = []
lookupPairedEnv nm ((Paired nm1 nm2):env) =
  if nm == nm1 then nm2:(lookupPairedEnv nm env)
  else if nm == nm2 then nm1:(lookupPairedEnv nm env)
  else lookupPairedEnv nm env

substituteVarNms nm1 nm2 instruc =
  case instruc of
    Alloca{} -> instruc
    Store vo (LocalReference ty _) va ma al me -> Store vo (LocalReference ty nm1) va ma al me
    Load vo addr atom align meta -> if ((getLocalRefNm addr) == nm2) then Load vo (LocalReference (getLocalRefTy addr) nm1) atom align meta else instruc
    Call tailcall callconven returnatt func args funcatt meta -> Call tailcall callconven returnatt func (changeFuncArgusNm nm1 nm2 args) funcatt meta
    ins -> ins

changeFuncArgusNm _ _ [] = []
changeFuncArgusNm nm1 nm2 ((op,para):t) =
  case op of
    LocalReference ty newnm -> if (newnm == nm2) then (LocalReference ty nm1, para):t else (op,para):(changeFuncArgusNm nm1 nm2 t)
    _ -> (op,para):(changeFuncArgusNm nm1 nm2 t)--error "case not implement in lookupFuncArgs"


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
-}

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
