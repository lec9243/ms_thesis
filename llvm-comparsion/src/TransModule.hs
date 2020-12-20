{-# OPTIONS_GHC -Wall #-}
module TransModule where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Common
import Struc
import Data.Traversable

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
  App (UserDefined nm) ((transParametersToTerm params):(transBasicBlockToTerm bb))

transParametersToTerm :: [a1] -> Term
transParametersToTerm [] = App (Arguments 0) []
transParametersToTerm (h:t) =  error "not implement in transParametersToTerm"

transBasicBlockToTerm :: [BasicBlock] -> [Term]
transBasicBlockToTerm [] = []
transBasicBlockToTerm ((BasicBlock nm insLst terminator):t) =
  (App (Block nm) (transNmedInstrucLstToTerm insLst terminator)):(transBasicBlockToTerm t)

transNmedInstrucLstToTerm :: [Named Instruction] -> Named Terminator -> [Term]
transNmedInstrucLstToTerm [] terminator = [transBBTerminatorToTerm terminator]
transNmedInstrucLstToTerm (h:t) terminator =
  case h of
    nm := instruc -> [App Seq ((transAssignInstrucToTerm nm instruc):(transNmedInstrucLstToTerm t terminator))]
    Do instruc -> [App Seq ((transDoInstrucToTerm instruc):(transNmedInstrucLstToTerm t terminator))]

transAssignInstrucToTerm :: Name -> Instruction -> Term
transAssignInstrucToTerm nm instruc =
  case instruc of
    Alloca alocty _ _ _ -> (App (Other (mkName "Alloc")) [App (Arguments 1) [(Var nm)]])-- ++(transNmedInstrucLstToTerm t terminator)
    Load _ add _ _ _ -> (App (Other (mkName "Load")) [App (Arguments 2) [(Var nm),(Const add)]])-- ++(transNmedInstrucLstToTerm t terminator)
    _ -> error "not implemented in transAssignInstrucToTerm"

transDoInstrucToTerm :: Instruction -> Term
transDoInstrucToTerm instruc =
  case instruc of
    Store _ (LocalReference _ nm) value _ _ _ ->
              (App (Other (mkName "Store")) [App (Arguments 2) [(Var nm),(Const value)]])
    _ -> error "not implemented in transDoInstrucToTerm"

transBBTerminatorToTerm :: Named Terminator -> Term
transBBTerminatorToTerm terminator =
  case terminator of-- transTermstoTermIndex :: [Term] -> Int -> [TermIndex]
-- transTermstoTermIndex [] _  = []
-- transTermstoTermIndex (x:xs) ind =
--   let tidx =  transTermtoTermIndex x ind Empty in
--   case tidx of
--     (TermIndex _ ind' _) -> (tidx:(transTermstoTermIndex xs ind'))
--     Empty -> (tidx:(transTermstoTermIndex xs ind))
--
-- transTermtoTermIndex :: Term -> Int -> TermIndex -> TermIndex
-- transTermtoTermIndex (App Seq [t1,t2]) idx Empty =
--   TermIndex t1 idx (transTermtoTermIndex t2 (idx+1) Empty)
-- transTermtoTermIndex (App _ _ ) i Empty = Empty
-- transTermtoTermIndex _ _ _ = Empty
    Do (Ret (Just op) _) -> App (Other (mkName "Ret")) [App (Arguments 1) [Const op]]

-- transTermstoTermIndex :: [Term] -> Int -> [TermIndex Int]
-- transTermstoTermIndex [] _ = []
-- transTermstoTermIndex (x:xs) idx =
--   let (t, newidx) = transTermtoTermIndex x idx in
--    t:(transTermstoTermIndex xs newidx)

-- transTermtoTermIndex :: Term -> Int -> (TermIndex Int, Int)
-- transTermtoTermIndex (Var v) idx = (TiVar v, idx)
-- transTermtoTermIndex (Const c) idx = (TiConst c, idx)
-- transTermtoTermIndex (App (Arguments i) t) idx = ((TiApp (idx-1) (Arguments i) (map fst (map (\x -> transTermtoTermIndex x (idx-1)) t))), (idx-1))
-- transTermtoTermIndex (App appf terms) idx =
--   let (newterms, newidx) = transTermtoTermIndexHelper terms (idx+1) in
--   (TiApp idx appf newterms, newidx)
--   where
--     transTermtoTermIndexHelper [] idx = ([], idx)
--     transTermtoTermIndexHelper (x:xs) idx =
--       let (newterms, newidx) = transTermtoTermIndex x idx in
--       (newterms:(fst (transTermtoTermIndexHelper xs newidx)), (snd (transTermtoTermIndexHelper xs newidx)))

transTermtoTermUnit :: Term -> TermIndex ()
transTermtoTermUnit (Var v) = TiVar v
transTermtoTermUnit (Const c) = TiConst c
transTermtoTermUnit (App appf terms) = TiApp () appf (map transTermtoTermUnit terms)

ttttIndex ::  Int -> TermIndex () -> (Int, TermIndex Int) -- trans term unit to term index
ttttIndex = mapAccumL f --f :: Int -> () -> (Int, Int)
  where f i () = ((i+1), i)

transTermstoTermIndex :: [Term] -> [TermIndex Int]
transTermstoTermIndex tlst =
  snd (mapAccumL ttttIndex 0 (map transTermtoTermUnit tlst))

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
