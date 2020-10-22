{-# OPTIONS_GHC -Wall #-}
module TransModule where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Common
import Struc

transModuleToTerms :: Module -> [Term]
transModuleToTerms (LLVM.AST.Module _ _ _ _ modDefLst) =
  map transDefinitionToTerms modDefLst

transDefinitionToTerms :: Definition -> Term
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

transNamedMetaToTerm,transMetadataToTerm,transFuncAttToTerm :: p1 -> p2 -> Term
transNamedMetaToTerm shortStr idlst = App (Other (mkName "NamedMetadataDefinition")) [] -- trans to term App other
transMetadataToTerm metaId mdNode = App (Other (mkName "MetadataNodeDefinition")) [] -- not implement
transFuncAttToTerm groupId funcattlst = App (Other (mkName "FunctionAttributes")) [] -- not implement

transGlobalToTerm :: Global -> Term
transGlobalToTerm global =
  case global of
    GlobalVariable{} -> transGlobalVarToTerm global
    GlobalAlias{} -> transGlobalAliasToTerm global
    Function{} -> transFunctionToTerm global

transGlobalVarToTerm,transGlobalAliasToTerm,transFunctionToTerm :: Global -> Term
transGlobalVarToTerm global = App (Other (mkName "GlobalVariable")) [] -- not implement
transGlobalAliasToTerm global = App (Other (mkName "GlobalAlias")) [] -- not implement
transFunctionToTerm (Function _ _ _ _ _ _ nm (params, _) _ _ _ _ _ _ bb _ _) =
  App (UserDefined nm) ((transParametersToTerm params):(transBasicBlockToTerm bb):[])

transParametersToTerm :: [a1] -> [a2]
transParametersToTerm [] = []
transParametersToTerm (h:t) =  error "not implement in transParametersToTerm"

transBasicBlockToTerm :: [BasicBlock] -> [Term]
transBasicBlockToTerm [] = []
transBasicBlockToTerm ((BasicBlock nm insLst terminator):t) =
  (App (Other nm) [(transNmedInstrucLstToTerm insLst terminator)]):(transBasicBlockToTerm t)

transNmedInstrucLstToTerm :: [Named Instruction] -> Named Terminator -> [Term]
transNmedInstrucLstToTerm [] terminator = [transBBTerminatorToTerm terminator]
transNmedInstrucLstToTerm (h:t) terminator =
  case h of
    nm := instruc -> [App Seq [((transAssignInstrucToTerm nm instruc):(transNmedInstrucLstToTerm t terminator))]]
    Do instruc -> [App Seq [((transDoInstrucToTerm instruc):(transNmedInstrucLstToTerm t terminator))]]

transAssignInstrucToTerm :: Name -> Instruction -> Term
transAssignInstrucToTerm nm instruc =
  case instruc of
    Alloca alocty _ _ _ -> (App (Other (mkName "Alloc")) [[(Var nm)]])-- ++(transNmedInstrucLstToTerm t terminator)
    Load _ add _ _ _ -> (App (Other (mkName "Load")) [[(Var nm),(Const add)]])-- ++(transNmedInstrucLstToTerm t terminator)
    _ -> error "not implemented in transAssignInstrucToTerm"

transDoInstrucToTerm :: Instruction -> Term
transDoInstrucToTerm instruc =
  case instruc of
    Store _ (LocalReference _ nm) value _ _ _ ->
              (App (Other (mkName "Store")) [[(Var nm),(Const value)]])
    _ -> error "not implemented in transDoInstrucToTerm"

transBBTerminatorToTerm :: Named Terminator -> Term
transBBTerminatorToTerm terminator =
  case terminator of
    Do (Ret (Just op) _) -> App (Other (mkName "Ret")) [[Const op]]


{-
transModuleToTerms1 :: Module -> [Term]
transModuleToTerms1 (LLVM.AST.Module _ _ _ _ modDefLst) =
  map transDefinitionToTerms1 modDefLst

transDefinitionToTerms1 :: Definition -> Term
transDefinitionToTerms1 definition =
  case definition of
    GlobalDefinition global -> transGlobalToTerm1 global
    NamedMetadataDefinition shortStr idlst -> transNamedMetaToTerm shortStr idlst
    MetadataNodeDefinition metaId mdNode -> transMetadataToTerm metaId mdNode
    FunctionAttributes groupId funcattlst -> transFuncAttToTerm groupId funcattlst
    _ -> error "not finished in transDefinitionToTerms"

transGlobalToTerm1 :: Global -> Term
transGlobalToTerm1 global =
  case global of
    GlobalVariable{} -> transGlobalVarToTerm global
    GlobalAlias{} -> transGlobalAliasToTerm global
    Function{} -> transFunctionToTerm1 global

transFunctionToTerm1 :: Global -> Term
transFunctionToTerm1 (Function _ _ _ _ _ _ nm (params, _) _ _ _ _ _ _ bb _ _) =
  App (UserDefined nm) ((transParametersToTerm params):(transBasicBlockToTerm1 bb):[])

transBasicBlockToTerm1 :: [BasicBlock] -> [Term]
transBasicBlockToTerm1 [] = []
transBasicBlockToTerm1 ((BasicBlock nm insLst terminator):t) =
  (App (Other nm) [App Seq (transNmedInstrucLstToTerm1 insLst terminator)]):(transBasicBlockToTerm t)

transNmedInstrucLstToTerm1 :: [Named Instruction] -> Named Terminator -> [Term]
transNmedInstrucLstToTerm1 [] terminator = [transBBTerminatorToTerm terminator]
transNmedInstrucLstToTerm1 (h:t) terminator =
  case h of
    nm := instruc -> (transAssignInstrucToTerm nm instruc):(transNmedInstrucLstToTerm1 t terminator)
    Do instruc -> (transDoInstrucToTerm instruc):(transNmedInstrucLstToTerm1 t terminator)
-}
