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
    Alloca{} -> App (mkName "Alloc") [(Var nm)] (transNmedInstrucLstToTerm t terminator tailbblst)
    _ -> error "not implemented in transAssignInstrucToTerm"

transDoInstrucToTerm instruc t terminator tailbbLst =
  case instruc of
    Store _ (LocalReference _ nm) value _ _ _ ->
              App (mkName "Store") [(Var nm),(Const value)] (transNmedInstrucLstToTerm t terminator tailbbLst)
    _ -> error "not implemented in transDoInstrucToTerm"

transBBTerminatorToTerm terminator tailbbLst =
  case terminator of
    Do (Ret (Just op) _) -> App (mkName "Ret") [Const op] (transBasicBlockToTerm tailbbLst)

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
