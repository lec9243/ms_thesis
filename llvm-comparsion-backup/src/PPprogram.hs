{-# OPTIONS_GHC -Wall #-}
module PPprogram where

import LLVM.AST
import LLVM.AST.Constant as CON
import Struc
import Unify
import TransModule
import LLVM.Pretty
import Data.List.Split
import Data.List
import Data.Text.Lazy (unpack)
import Data.Strings

data PPterm a = Plus a -- 1
             | Minus a -- 2
             | Ori a -- 0
               deriving (Show, Read)


ppTerm :: [TermIndex Int] -> [TermIndex Int] -> [PPterm (TermIndex Int)]
ppTerm [] reord = map (transTermtoPPterm 1) reord
ppTerm orig [] = map (transTermtoPPterm 2) orig
ppTerm orig@(ort:ors) reord@(ret:rrs) =
  let oi = getTermIndex ort
      ri = getTermIndex ret
  in
  if oi == ri then (transTermtoPPterm 0 ort):(ppTerm ors rrs)
  else if oi < ri then (transTermtoPPterm 2 ort):(ppTerm ors reord)
  else (transTermtoPPterm 1 ret):(ppTerm orig rrs)

transTermtoPPterm :: Int -> TermIndex Int -> PPterm (TermIndex Int)
transTermtoPPterm i t =
  if i == 1 then Plus t
  else if i == 2 then Minus t
  else Ori t

lineNumofTerm :: String -> [TermIndex Int] -> [Int]
lineNumofTerm _ [] = []
lineNumofTerm str1 (t1:rst) =
  let
      lines1 = map show (map remove_space (endBy "\n" str1))
      ins1 = transTermIndextoInstruction (replaceNameLR t1)
  in
  case ins1 of
    Just p1 -> let ppt1 = remove_space (show (unpack (ppll p1))) in
                case (elemIndex ppt1 lines1) of
                  Just i1 -> i1:(lineNumofTerm str1 rst)
                  a -> error ("lineNumofTerm     " ++ (show ppt1))
    Nothing -> case (transTermIndextoTerminator t1) of
                  Just p2 -> let ppt2 = remove_space (show (unpack (ppll p2))) in
                              case ((elemIndex ppt2 lines1)) of
                                Just i2 -> i2:(lineNumofTerm str1 rst)
                                a -> error "lineNumofTerm 1"
                  Nothing -> lineNumofTerm str1 rst

ppPPterm :: [PPterm (TermIndex Int)] -> String
ppPPterm [] = ""
ppPPterm (x:xs) =
  case x of
    Ori t ->
      case transTermIndextoInstruction t of
        Just t_ -> (unpack (ppll t_)) ++ "\n" ++ (ppPPterm xs)
        Nothing -> case transTermIndextoTerminator t of
                      Just t_ -> (unpack (ppll t_)) ++ "\n" ++ (ppPPterm xs)
                      Nothing -> "\n" ++ (ppPPterm xs)
    Plus t ->
      case transTermIndextoInstruction t of
        Just t_ -> "+++ " ++ (unpack (ppll t_)) ++ " +++\n" ++ (ppPPterm xs)
        Nothing -> case transTermIndextoTerminator t of
                      Just t_ -> "+++ " ++ (unpack (ppll t_)) ++ " +++\n" ++ (ppPPterm xs)
                      Nothing -> "\n" ++ (ppPPterm xs)
    Minus t ->
      case transTermIndextoInstruction t of
        Just t_ -> "--- " ++ (unpack (ppll t_)) ++ " ---\n" ++ (ppPPterm xs)
        Nothing -> case transTermIndextoTerminator t of
                      Just t_ -> "--- " ++ (unpack (ppll t_)) ++ " ---\n" ++ (ppPPterm xs)
                      Nothing -> "\n" ++ (ppPPterm xs)


incrList :: Int -> Int -> [Int]
incrList lim i = if lim == i then [] else i:(incrList lim (i+1))

printOriProg :: [TermIndex Int] -> String
printOriProg [] = ""
printOriProg (h:t) =
  case transTermIndextoInstruction h of
    Just p1 -> (unpack (ppll p1))++"\n"++(printOriProg t)
    Nothing -> case transTermIndextoTerminator h of
                  Just p2 -> (unpack (ppll p2))++"\n"++(printOriProg t)
                  Nothing -> "------\n"++(printOriProg t)

ppCSV :: Bool -> String -> String -> [(Int, Int)] -> [Int] -> [Int] -> String
ppCSV hide_option s1 s2 ilist reo1 reo2 =
  if hide_option then ppCSV_true s1 s2 ilist
  else ppCSV_false s1 s2 ilist reo1 reo2

ppCSV_true s1 s2 ilist =
  let
    orp1 = endBy "\n" s1 -- original program 1
    orp2 = endBy "\n" s2 -- original program 2
    orid1 = incrList (length orp1) 0 -- original index 1
    orid2 = incrList (length orp2) 0 -- original index 2
    mlines = matched_lines orid1 ilist orp2
  in
  addnewline (zipTogether myZip [(map show orid1), orp1, mlines, (map show orid2), orp2])

ppCSV_false s1 s2 ilist reo1 reo2 =
  let
    orp1 = endBy "\n" s1 -- original program 1
    orp2 = endBy "\n" s2 -- original program 2
    oid1 = incrList (length orp1) 0 -- original index 1
    oid2 = incrList (length orp2) 0 -- original index 2
    left_index = map fst ilist
    right_index = map snd ilist
    reoid1 = (incrList (minimum reo1) 0) ++ reo1 ++ (incrList (length orp1) ((maximum reo1)+1)) -- reordered index 1
    reoid2 = (incrList (minimum reo2) 0) ++ reo2 ++ (incrList (length orp2) ((maximum reo2)+1)) -- reordered index 2
    reorp1 = reorderlines orp1 reoid1 -- reordered program 1
    reorp2 = reorderlines orp2 reoid2 -- reordered program 2
    mlines = matched_lines oid1 ilist orp2
  in
    addnewline (zipTogether myZip [reorp1, (map show reoid1), (map show oid1), orp1, mlines, (map show oid2), orp2, (map show oid2), (map show reoid2), reorp2])

matched_lines [] _ _ = []
matched_lines (x:xs) ilst orp2 =
  (matched_lines_helper x ilst orp2):(matched_lines xs ilst orp2)
  where
    matched_lines_helper _ [] _ = " ? "
    matched_lines_helper x ((l,r):xs) orp2 =
      if x == l then ((orp2!!r)++"?"++(show r)) else matched_lines_helper x xs orp2

reorderlines _ [] = []
reorderlines lst (idx:rst) = (lst!!idx):(reorderlines lst rst)
myZip [] [] = []
myZip [] lst = map (\x -> "  ?"++ x) lst
myZip lst [] = map (\x -> x ++ "? ") lst
myZip (a:as) (b:bs) = (a ++ "?" ++ b ):(myZip as bs)
zipTogether myzipfun [] = error "empty list"
zipTogether myzipfun [x] = x
zipTogether myzipfun (x:xs) = myzipfun x (zipTogether myzipfun xs)
addnewline [] = ""
addnewline (x:xs) = x ++ "\n" ++ (addnewline xs)
{-
-- [(8,10),(9,9),(10,8),(11,11),(12,12),(14,14)]
-- ppMatchedprogram :: program1 program2 matched term neworderpro1 neworderpro2 -> csv
-- oprog1 oridx1 reor1 reorprog1 matchedindex1 matchedindex2 reorprog2 reor2 oridx2 orprog2
-- 1      2      3     4         5             6             7         8     9      10
ppCSV :: String -> String -> [(Int,Int)] -> [Int] -> [Int] -> String
ppCSV s1 s2 ilst reo1 reo2 =
  let
    orp1 = endBy "\n" s1 -- column 1
    orp2 = endBy "\n" s2 -- column 10
    orid1 = incrList (length orp1) 0 -- column 2
    orid2 = incrList (length orp2) 0 -- column 9
    left_index = map fst ilst
    right_index = map snd ilst
    reoid1 = (incrList (minimum reo1) 0) ++ reo1 ++ (incrList (length orp1) ((maximum reo1)+1)) -- column 3
    reoid2 = (incrList (minimum reo2) 0) ++ reo2 ++ (incrList (length orp2) ((maximum reo2)+1)) -- column 8
    reorp1 = reorderlines orp1 reoid1 -- column 4
    reorp2 = reorderlines orp2 reoid2 -- column 7
    matchedid1 = (incrList (minimum left_index) 0) ++ left_index ++ (incrList (length orp1) ((maximum left_index))) -- column 5
    matchedid2 = (incrList (minimum right_index) 0) ++ right_index ++ (incrList (length orp2) ((maximum right_index))) -- column 6
  in addnewline (zipTogether myZip [orp1, (map show orid1), (map show reoid1), reorp1, (map show matchedid1), (map show matchedid2), reorp2, (map show reoid2), (map show orid2), orp2])
  where
    reorderlines _ [] = []
    reorderlines lst (idx:rst) = (lst!!idx):(reorderlines lst rst)
    myZip [] [] = []
    myZip [] lst = map (\x -> "  ?"++ x) lst
    myZip lst [] = map (\x -> x ++ "? ") lst
    myZip (a:as) (b:bs) = (a ++ "?" ++ b ):(myZip as bs)
    zipTogether myzipfun [] = error "empty list"
    zipTogether myzipfun [x] = x
    zipTogether myzipfun (x:xs) = myzipfun x (zipTogether myzipfun xs)
    addnewline [] = ""
    addnewline (x:xs) = x ++ "\n" ++ (addnewline xs)
-}



{-
-- ppMatchedprogram :: String -> String -> [(Int,Int)] -> String
-- ppMatchedprogram s1 s2 ilst =
--   let
--     lines1 = endBy "\n" s1
--     lines2 = endBy "\n" s2
--     left_index = map fst ilst
--     right_index = map snd ilst
--   in myZip (changelines lines1 left_index 0) (changelines lines2 right_index 0)
--   where
--     changelines [] _ _ = []
--     changelines (x:xs) idxlst idx =
--       case (elemIndex idx idxlst) of
--         Just a -> (show a ++ "<-- " ++ x ++ " -->"):(changelines xs idxlst (idx+1))
--         Nothing -> x:(changelines xs idxlst (idx+1))
--     myZip [] [] = ""
--     myZip [] lst = foldr (++) "" (map (\x -> "  ?"++ x ++ "\n") lst)
--     myZip lst [] = foldr (++) "" (map (\x -> x ++ "?  \n") lst)
--     myZip (a:as) (b:bs) = (a ++ "?" ++ b ++ "\n")++(myZip as bs)
-}





















--
-- compareWithEqClasses :: [Term] -> [Term] -> [EqClass] ->[EqClass]
-- compareWithEqClasses terms1 terms2 eqclass =
--   concatMap (\x -> findEqClass x terms2 eqclass) terms1

-- buildEqClass :: [TermIndex Int] -> [EqClass]-> [EqClass]
-- buildEqClass [] eqclass = eqclass
-- buildEqClass (x:xs) eqclass =
-- --  let updatedclass = map (updateEqClassTerms x) eqclass in
--   let updatedclass = map (updateEqClassVar x) eqclass in
--   if updatedclass == eqclass then buildEqClass xs {--}((x, (getVarConst x)):eqclass)--((x,[x]):eqclass)
--   else buildEqClass xs updatedclass
--
-- updateEqClassTerms :: TermIndex Int -> EqClass -> EqClass
-- updateEqClassTerms t e@(form, members) =
--   case unify (Subst []) t form of
--     Successful _ -> (form, t:members)
--     Partial _ _ -> e
--
-- updateEqClassVar :: TermIndex Int -> EqClass -> EqClass
-- updateEqClassVar t e@(form, members) =
--   case unify (Subst []) t form of
--     Successful (Subst lst) -> insertEqClass lst e
--     Partial _ _ -> e
--
-- insertEqClass :: [(LLVM.AST.Name, TermIndex Int)] -> EqClass -> EqClass
-- insertEqClass [] e = e
-- insertEqClass ((nm, t):xs) e@(form, members)
--  | ((TiVar nm) `elem` members) && (t `elem` members) = insertEqClass xs e
--  | ((TiVar nm) `notElem` members) && (t `elem` members) = insertEqClass xs (form, ((TiVar nm):members))
--  | ((TiVar nm) `elem` members) && (t `notElem` members) = insertEqClass xs e--(form, (t:members))
--  | ((TiVar nm) `notElem` members) && (t `notElem` members) = insertEqClass xs e--(form, ((Var nm):t:members))
--
-- getVarConst :: TermIndex a -> [TermIndex a]
-- getVarConst t@(TiVar _) = [t]
-- getVarConst t@(TiConst _) = [t]
-- getVarConst t@(TiApp _ _ terms) = concatMap (getVarConst) terms
--
-- combineEqClass :: [EqClass] -> [EqClass] -> [CombinedEqClass]
-- combineEqClass [] [] = []
-- combineEqClass [] xs = convertEqClass xs
-- combineEqClass (x@(f, mems):xs) eqclass2 =
--   (f, (mems, (combineEqClassHelper x eqclass2))):(combineEqClass xs eqclass2)
--   where
--     combineEqClassHelper _ [] = []
--     combineEqClassHelper e1@(form, members) ((form1, members1):rst) =
--       case unify (Subst []) form form1 of
--         Successful _ -> if checkMembers members members1 then members1 else combineEqClassHelper e1 rst
--         Partial _ _ -> combineEqClassHelper e1 rst
--     checkMembers [] _ = True
--     checkMembers (h:t) m2 =
--       case h of
--         TiVar _ -> checkMembers t m2
--         TiConst _ -> if h `elem` m2 then checkMembers t m2 else False
--
-- convertEqClass :: [EqClass] -> [CombinedEqClass]
-- convertEqClass [] = []
-- convertEqClass ((f, m):rs) =
--   (f, ([], m)):(convertEqClass rs)


--compareASTs :: LLVM.AST.Module -> LLVM.AST.Module -> IO ()
-- compareASTs (LLVM.AST.Module _ _ _ _ modDefLst1) (LLVM.AST.Module _ _ _ _ modDefLst2) = Nothing
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
