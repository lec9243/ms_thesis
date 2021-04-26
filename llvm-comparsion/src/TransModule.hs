{-# OPTIONS_GHC -Wall #-}
module TransModule where

import LLVM.AST
import LLVM.AST.Name (mkName)
import Data.Word
import LLVM.AST.AddrSpace
import LLVM.AST.Constant
import LLVM.AST.Instruction as IN

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
    a -> error ("not finished in transDefinitionToTerms        "++(show a))
    {-
    TypeDefinition Name (Maybe Type)
    ModuleInlineAssembly ByteString
    COMDAT ShortByteString SelectionKind
    -}

transNamedMetaToTerm,transMetadataToTerm,transFuncAttToTerm :: p1 -> p2 -> Term
transNamedMetaToTerm shortStr idlst = App (Other (mkName "NamedMetadataDefinition")) [] Nothing-- trans to term App other
transMetadataToTerm metaId mdNode = App (Other (mkName "MetadataNodeDefinition")) [] Nothing-- not implement
transFuncAttToTerm groupId funcattlst = App (Other (mkName "FunctionAttributes")) [] Nothing-- not implement

transGlobalToTerm :: Global -> Term
transGlobalToTerm global =
  case global of
    GlobalVariable{} -> transGlobalVarToTerm global
    GlobalAlias{} -> transGlobalAliasToTerm global
    Function{} -> transFunctionToTerm global

transGlobalVarToTerm,transGlobalAliasToTerm,transFunctionToTerm :: Global -> Term
transGlobalVarToTerm global = App (Other (mkName "GlobalVariable")) [] Nothing-- not implement
transGlobalAliasToTerm global = App (Other (mkName "GlobalAlias")) [] Nothing-- not implement
transFunctionToTerm f@(Function _ _ _ _ _ _ nm (params, _) _ _ _ _ _ _ bb _ _) =
  App (UserDefined nm) ((transParametersToTerm params):(transBasicBlockToTerm bb)) Nothing

transParametersToTerm :: [a1] -> Term
transParametersToTerm [] = App (Arguments 0) [] Nothing
transParametersToTerm (h:t) =  App (Arguments 0) [] Nothing --TODO: Fix this error

transBasicBlockToTerm :: [BasicBlock] -> [Term]
transBasicBlockToTerm [] = []
transBasicBlockToTerm ((BasicBlock nm insLst terminator):t) =
  (App (Block nm) (transNmedInstrucLstToTerm insLst terminator) Nothing):(transBasicBlockToTerm t)

transNmedInstrucLstToTerm :: [Named Instruction] -> Named Terminator -> [Term]
transNmedInstrucLstToTerm [] terminator = [transBBTerminatorToTerm terminator]
transNmedInstrucLstToTerm (h:t) terminator =
  case h of
    nm := instruc -> [App Seq ((transAssignInstrucToTerm nm instruc):(transNmedInstrucLstToTerm t terminator)) Nothing]
    Do instruc -> [App Seq ((transDoInstrucToTerm instruc):(transNmedInstrucLstToTerm t terminator)) Nothing]

transAssignInstrucToTerm :: Name -> Instruction -> Term
transAssignInstrucToTerm nm instruc =
  case instruc of
    Alloca alocty _ _ _ -> (App (Other (mkName "Alloc")) [App (Arguments 2) [(Var nm), (ConstTy alocty)] Nothing] (Just (Ins (nm := instruc))))-- ++(transNmedInstrucLstToTerm t terminator)
    Load _ add _ _ _ -> (App (Other (mkName "Load")) [App (Arguments 2) [(Var nm),(Const add)] Nothing] (Just (Ins (nm := instruc))))-- ++(transNmedInstrucLstToTerm t terminator)
    IN.GetElementPtr _ (LocalReference _ vnm) (add:_) _ ->
          (App (Other (mkName "GetElementPtr")) [App (Arguments 3) [(Var nm),(Var vnm),(Const add)] Nothing] (Just (Ins (nm := instruc))))
    IN.PtrToInt (ConstantOperand (GlobalReference _ vnm)) _ _ ->
          (App (Other (mkName "PtrToInt")) [App (Arguments 2) [(Var nm), (Var vnm)] Nothing] (Just (Ins (nm := instruc))))
    IN.PtrToInt (LocalReference _ vnm) _ _-> (App (Other (mkName "PtrToInt")) [App (Arguments 2) [(Var nm), (Var vnm)] Nothing] (Just (Ins (nm := instruc))))
    IN.Sub _ _ (LocalReference _ vnm) cons _ -> (App (Other (mkName "Sub")) [App (Arguments 3) [(Var nm), (Var vnm),(Const cons)] Nothing] (Just (Ins (nm := instruc))))
    IN.Add _ _ (LocalReference _ vnm) cons _ -> (App (Other (mkName "Add")) [App (Arguments 3) [(Var nm), (Var vnm),(Const cons)] Nothing] (Just (Ins (nm := instruc))))
    IN.ICmp _ (LocalReference _ vnm) cons _ -> (App (Other (mkName "ICmp")) [App (Arguments 3) [(Var nm), (Var vnm),(Const cons)] Nothing] (Just (Ins (nm := instruc))))
    Call _ _ _ _ _ _ _ -> (App (Other (mkName "Call")) [] (Just (Ins (nm := instruc))))
    IN.IntToPtr (LocalReference _ vnm) _ _ -> (App (Other (mkName "IntToPtr")) [App (Arguments 2) [(Var nm), (Var vnm)] Nothing] (Just (Ins (nm := instruc))))
    IN.BitCast (LocalReference _ vnm) _ _ -> (App (Other (mkName "BitCast")) [App (Arguments 2) [(Var nm), (Var vnm)] Nothing] (Just (Ins (nm := instruc))))
    IN.BitCast (ConstantOperand (GlobalReference _ vnm)) _ _ ->
          (App (Other (mkName "BitCast")) [App (Arguments 2) [(Var nm), (Var vnm)] Nothing] (Just (Ins (nm := instruc))))
    a -> error (show a)

transDoInstrucToTerm :: Instruction -> Term
transDoInstrucToTerm instruc =
  case instruc of
    Store _ (LocalReference _ nm) value _ _ _ ->
              (App (Other (mkName "Store")) [App (Arguments 2) [(Var nm),(Const value)] Nothing] (Just (Ins (Do instruc))))
    Call _ _ _ _ _ _ _ -> (App (Other (mkName "Call")) [] (Just (Ins (Do instruc))))
    a -> error (show a)

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
    Do (Ret _ _) -> App (Other (mkName "Ret")) [] (Just (Tem terminator))
    Do (Br nm _) -> App (Other (mkName "Br")) [App (Arguments 1) [Var nm] Nothing] (Just (Tem terminator))
    Do (CondBr (LocalReference _ vnm) vnm1 vnm2 _) -> App (Other (mkName "CondBr")) [App (Arguments 3) [(Var vnm), (Var vnm1), (Var vnm2)] Nothing] (Just (Tem terminator))
    a -> error ("!!!!!!!!!!!!!!!!!!!!!!!"++(show a))
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
transTermtoTermUnit (ConstTy c) = TiConstTy c
transTermtoTermUnit (App appf terms ori) = TiApp () appf (map transTermtoTermUnit terms) ori

ttttIndex ::  Int -> TermIndex () -> (Int, TermIndex Int) -- trans term unit to term index
ttttIndex = mapAccumL f --f :: Int -> () -> (Int, Int)
  where f i () = ((i+1), i)

transTermstoTermIndex :: [Term] -> [TermIndex Int]
transTermstoTermIndex tlst =
  snd (mapAccumL ttttIndex 0 (map transTermtoTermUnit tlst))



transTermIndextoOriginal (TiApp _ _ _ (Just ins)) = ins
transTermIndextoOriginal (TiApp _ _ _ Nothing) = NoOriginal

transOriginaltoInstruc (Ins ins) = Just ins
transOriginaltoInstruc _ = Nothing
transOriginaltoTermi (Tem tem) = Just tem
transOriginaltoTermi _ = Nothing

test1 :: TermIndex Int
test1 = TiApp 16 (Other (mkName "Load")) [TiApp 17 (Arguments 2) [TiVar (mkName "y4_left"),TiConst (LocalReference (PointerType {pointerReferent = IntegerType {typeBits = 32}, pointerAddrSpace = AddrSpace 0}) (mkName "y1_left"))] Nothing] Nothing

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
