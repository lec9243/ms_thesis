module Unify where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Common
import Struc

transModuleToTerms (LLVM.AST.Module _ _ _ _ modDefLst) =
  map transDefinitionToTerms modDefLst

transDefinitionToTerms definition =
  case definition of
    GlobalDefinition global -> transGlobalToTerm global
    NamedMetadataDefinition shortStr idlst -> transNamedMetaToTerm shortStr idlst
    MetadataNodeDefinition metaId mdNode -> transMetadataToTerm metaId mdNode
    FunctionAttributes groupId funcattlst -> transFuncAttToTerm groupId funcattlst
    _ -> error "not finished in transDefinitionToTerms"
    {-
    TypeDefinition Name (Maybe Type)
    ModuleInlineAssembly ByteString
    COMDAT ShortByteString SelectionKind
    -}

transNamedMetaToTerm shortStr idlst = Empty -- not implement
transMetadataToTerm metaId mdNode = Empty -- not implement
transFuncAttToTerm groupId funcattlst = Empty -- not implement

transGlobalToTerm global =
  case global of
    GlobalVariable{} -> transGlobalVarToTerm global
    GlobalAlias{} -> transGlobalAliasToTerm global
    Function{} -> transFunctionToTerm global

transGlobalVarToTerm global = Empty -- not implement
transGlobalAliasToTerm global = Empty -- not implement
transFunctionToTerm (Function _ _ _ _ _ _ nm (params, _) _ _ _ _ _ _ bb _ _) =
  App nm (transParametersToTerm params) (transBasicBlockToTerm bb)

transParametersToTerm [] = []
transParametersToTerm (h:t) =  error "not implement in transParametersToTerm"

transBasicBlockToTerm [] = Empty
transBasicBlockToTerm ((BasicBlock nm insLst terminator):t) =
  App nm [] (transNmedInstrucLstToTerm insLst terminator t)

transNmedInstrucLstToTerm [] terminator tailbbLst =
  transBBTerminatorToTerm terminator tailbbLst
transNmedInstrucLstToTerm (h:t) terminator tailbbLst =
  case h of
    nm := instruc -> transAssignInstrucToTerm nm instruc t terminator tailbbLst
    Do instruc -> transDoInstrucToTerm instruc t terminator tailbbLst

transAssignInstrucToTerm nm instruc t terminator tailbblst =
  case instruc of
    Alloca alocty _ _ _ -> App (mkName "Alloc") [(Var nm),(ConstTy alocty)] (transNmedInstrucLstToTerm t terminator tailbblst)
    Load _ add _ _ _ -> App (mkName "Load") [(Var nm),(ConstOp add)] (transNmedInstrucLstToTerm t terminator tailbblst)
    _ -> error "not implemented in transAssignInstrucToTerm"

transDoInstrucToTerm instruc t terminator tailbbLst =
  case instruc of
    Store _ (LocalReference _ nm) value _ _ _ ->
              App (mkName "Store") [(Var nm),(ConstOp value)] (transNmedInstrucLstToTerm t terminator tailbbLst)
    _ -> error "not implemented in transDoInstrucToTerm"

transBBTerminatorToTerm terminator tailbbLst =
  case terminator of
    Do (Ret (Just op) _) -> App (mkName "Ret") [ConstOp op] (transBasicBlockToTerm tailbbLst)

unifyTerms terms1 terms2 = unifyTerm (head terms1) (head terms2) []
unifyTerm (App nm1 args1 continue1) (App nm2 args2 continue2) subst =
  let
    subst_ = (if nm1 == nm2 then (unifyArgs args1 args2 subst) else subst)
  in
  unifyTerm continue1 continue2 subst_
unifyTerm _ _ subst = subst

unifyArgs args1 args2 subst =
  let paired = ((head args1), (head args2)) in
  if (length args1) == 0 then subst
  else (if (length args1) == 1 then subst
        else unifyConst (head(reverse args1)) (head(reverse args2)) paired subst)

unifyConst con1 con2 paired subst =
  let (a,b) = (con1, con2) in
  case (a,b) of
    (ConstOp (LocalReference ty1 nm1), ConstOp (LocalReference ty2 nm2)) ->
          if a == b then (paired:subst)
          else if (inSubstFst nm1 subst) then unifyConst (ConstOp (LocalReference ty1 (substitute nm1 subst)))  (ConstOp (LocalReference ty2 nm2)) paired subst
               else if (inSubstSnd nm2 subst) then unifyConst (ConstOp (LocalReference ty1 nm1))  (ConstOp (LocalReference ty2 (substitute nm2 subst))) paired subst
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
