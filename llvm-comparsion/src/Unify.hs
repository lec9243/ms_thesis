{-# OPTIONS_GHC -Wall #-}
module Unify where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Data.List

import Common
import Struc

insert :: Subst -> Name -> TermIndex Int -> PartialUnifer Subst
insert (Subst subst) n t =
  case Data.List.lookup n subst of
    Nothing -> return (Subst ((n,t):subst)) --
    Just t2 -> if (occursCheck (Subst subst) (TiVar n) t2) then Partial (Subst subst) [((TiVar n),t2)]
               else unify (Subst subst) t t2

unify :: Subst -> TermIndex Int -> TermIndex Int  -> PartialUnifer Subst
unify subst (TiVar v) t2 =
  Unify.insert subst v t2
unify subst (TiConst c) (TiVar v) =
  Unify.insert subst v (TiConst c)
unify subst (TiConst (LocalReference _ nm1)) (TiConst (LocalReference _ nm2)) =
  Unify.insert subst nm1 (TiVar nm2)
unify subst (TiConst (LocalReference _ nm1)) t@(TiConst _) =
  Unify.insert subst nm1 t
unify subst t1@(TiConst c1) t2@(TiConst c2) =
  if c1 == c2 then return subst else (Partial subst [(t1,t2)])
unify subst t1@(TiConst _) t2@(TiApp _ _ _) = (Partial subst [(t1,t2)])
unify subst t1@(TiApp _ f1 ts1) t2@(TiApp _ f2 ts2)
  |f1 == f2 = substUnion =<< sequenceA (zipWith (unify subst) ts1 ts2)
  |otherwise =  (Partial subst [(t1,t2)])
  where
    substUnion [] = return subst
    substUnion [x] = return x
    substUnion (x:xs) = substUnion2 x =<< substUnion xs
unify subst t1@(TiApp _ _ _) (TiVar v) =
  Unify.insert subst v t1
unify subst t1@(TiApp _ _ _) t2@(TiConst _) =  (Partial subst [(t1,t2)])

substUnion2 :: Subst -> Subst -> PartialUnifer Subst
substUnion2 (Subst []) subst  = return subst
substUnion2 (Subst ((v,t):xs)) subst
  = substUnion2 (Subst xs) =<< Unify.insert subst v t

occursCheck :: Subst -> TermIndex Int -> TermIndex Int -> Bool
occursCheck (Subst s) t1@(TiVar v1) (TiVar v2) =
  if v1 == v2 then True
  else
    case Data.List.lookup v2 s of
      Nothing -> False
      Just t2 -> occursCheck (Subst s) t1 t2
occursCheck subst t1@(TiVar _) (TiApp _ _ args) =
  any (\x -> occursCheck subst t1 x) args
occursCheck _ _ _ = False


termToVertices :: TermIndex Int -> [TermIndex Int]
termToVertices (TiApp _ Seq terms) = termsToVertices terms
termToVertices (TiApp i (UserDefined nm) terms) = (TiApp i (UserDefined nm) [(head terms)]):(termsToVertices (tail terms))
termToVertices (TiApp i (Block nm) terms) = (TiApp i (Block nm) []):(termsToVertices terms)
termToVertices term = [term]

termsToVertices :: [TermIndex Int] -> [TermIndex Int]
termsToVertices [] = []
termsToVertices (x:xs) = (termToVertices x) ++ (termsToVertices xs)

buildGraph :: [TermIndex Int] -> [TermIndex Int] -> Graph
buildGraph terms1 terms2 =
  [(x, buildEdges x terms2) | x <- terms1]

buildEdges :: TermIndex Int -> [TermIndex Int] -> [TermIndex Int]
buildEdges _ [] = []
buildEdges t (x:xs) =
  case unify (Subst []) t x of
    Successful _ -> x:(buildEdges t xs)
    Partial _ _ ->  buildEdges t xs

maxMatching :: Graph -> Matching -> Matching
maxMatching g m
  | augmenting == [] = m
  | otherwise = maxMatching g updatedm
  where
     unsat = (map fst g) Data.List.\\ (map fst m)
     augmenting = augmentPath g m unsat []
     updatedm = updating m augmenting

augmentPath :: Graph -> Matching -> [TermIndex Int] -> NewGraph -> NewGraph
augmentPath _ _ [] newg = newg
augmentPath g m (x:xs) newg =
  case Data.List.lookup x g of
    Just sth -> if (sth Data.List.\\ (map snd m)) == [] then (augmentPath g m xs newg)
                else ((sth Data.List.\\ (map snd m)),x):(augmentPath g m xs newg)
    Nothing -> error "should not happen"

updating :: Matching -> NewGraph -> Matching
updating m augmenting =
  case Data.List.lookup (shortest (map fst augmenting)) (augmenting) of
    Just key -> ((key,(head (shortest (map fst augmenting)))):m)
    Nothing -> error "should not happen"

shortest :: [[a]] -> [a]
shortest [] = []
shortest [y] = y    --base case: if there's only one element left, return it.
shortest (x:y:lst)  --extract the first two elements x, y from the list.
    | length x < length y = shortest (x:lst)
    | otherwise = shortest (y:lst)

genPermutation :: [a] -> [[a]]
genPermutation [] = [[]]
genPermutation (x:xs) = [take i p ++ x:(drop i p) | i <- [0..length xs], p <- genPermutation xs]

unmatchedNode :: [TermIndex Int] -> [TermIndex Int] -> Matching -> Unmatch -- A -> B -> [(A,B)] -> ([A],[B])
unmatchedNode terms1 terms2 mtch =
  ((helper terms1 (map fst mtch)),(helper terms2 (map snd mtch)))
  where
    helper terms matched = filter (\x -> x `notElem` matched) terms

--
-- compareWithEqClasses :: [Term] -> [Term] -> [EqClass] ->[EqClass]
-- compareWithEqClasses terms1 terms2 eqclass =
--   concatMap (\x -> findEqClass x terms2 eqclass) terms1

buildEqClass :: [TermIndex Int] -> [EqClass]-> [EqClass]
buildEqClass [] eqclass = eqclass
buildEqClass (x:xs) eqclass =
--  let updatedclass = map (updateEqClassTerms x) eqclass in
  let updatedclass = map (updateEqClassVar x) eqclass in
  if updatedclass == eqclass then buildEqClass xs {--}((x, (getVarConst x)):eqclass)--((x,[x]):eqclass)
  else buildEqClass xs updatedclass

updateEqClassTerms :: TermIndex Int -> EqClass -> EqClass
updateEqClassTerms t e@(form, members) =
  case unify (Subst []) t form of
    Successful _ -> (form, t:members)
    Partial _ _ -> e

updateEqClassVar :: TermIndex Int -> EqClass -> EqClass
updateEqClassVar t e@(form, members) =
  case unify (Subst []) t form of
    Successful (Subst lst) -> insertEqClass lst e
    Partial _ _ -> e

insertEqClass :: [(LLVM.AST.Name, TermIndex Int)] -> EqClass -> EqClass
insertEqClass [] e = e
insertEqClass ((nm, t):xs) e@(form, members)
 | ((TiVar nm) `elem` members) && (t `elem` members) = insertEqClass xs e
 | ((TiVar nm) `notElem` members) && (t `elem` members) = insertEqClass xs (form, ((TiVar nm):members))
 | ((TiVar nm) `elem` members) && (t `notElem` members) = insertEqClass xs e--(form, (t:members))
 | ((TiVar nm) `notElem` members) && (t `notElem` members) = insertEqClass xs e--(form, ((Var nm):t:members))

getVarConst :: TermIndex a -> [TermIndex a]
getVarConst t@(TiVar _) = [t]
getVarConst t@(TiConst _) = [t]
getVarConst t@(TiApp _ _ terms) = concatMap (getVarConst) terms

combineEqClass :: [EqClass] -> [EqClass] -> [CombinedEqClass]
combineEqClass [] [] = []
combineEqClass [] xs = convertEqClass xs
combineEqClass (x@(f, mems):xs) eqclass2 =
  (f, (mems, (combineEqClassHelper x eqclass2))):(combineEqClass xs eqclass2)
  where
    combineEqClassHelper _ [] = []
    combineEqClassHelper e1@(form, members) ((form1, members1):rst) =
      case unify (Subst []) form form1 of
        Successful _ -> if checkMembers members members1 then members1 else combineEqClassHelper e1 rst
        Partial _ _ -> combineEqClassHelper e1 rst
    checkMembers [] _ = True
    checkMembers (h:t) m2 =
      case h of
        TiVar _ -> checkMembers t m2
        TiConst _ -> if h `elem` m2 then checkMembers t m2 else False

convertEqClass :: [EqClass] -> [CombinedEqClass]
convertEqClass [] = []
convertEqClass ((f, m):rs) =
  (f, ([], m)):(convertEqClass rs)


lookupTermIndex :: Int -> TermIndex Int -> Maybe (TermIndex Int)
lookupTermIndex idx t@(TiApp i _ terms) =
  if idx == i then Just t else lookupTermIndexs idx terms
lookupTermIndex idx _ = Nothing

lookupTermIndexs :: Int -> [TermIndex Int] -> Maybe (TermIndex Int)
lookupTermIndexs idx [] = Nothing
lookupTermIndexs idx (h:t) =
  case lookupTermIndex idx h of
    Just term -> Just term
    Nothing -> lookupTermIndexs idx t

noRepeat :: [TermIndex Int] -> Bool
noRepeat [] = True
noRepeat (h:t) =
  h `notElem` t && noRepeat t

--maxmize(sum(score(vi, vj))) (vi,vj)∈Matching

calculateScore :: TermIndex Int -> TermIndex Int -> Matching -> Subst -> Integer
calculateScore termid1 termid2 maxmatching (Subst subs)  =
  let
   matching_fst = map fst maxmatching
   matching_snd = map snd maxmatching
  in
  if (noRepeat matching_fst) && (noRepeat matching_snd)
  then (score maxmatching)-- subs [])
  else -1
  where
    score [] = 0
    score ((t1, t2):xs) =
      case unify (Subst []) t1 t2 of
        Successful (Subst []) -> 1+(score xs)
        Successful (Subst [u]) -> if (u `elem` subs) then 1+(score xs)
                                  -- else if checkSubst u subs acc then 1+(calculateScoreHelper xs subs (u:acc))
                                  else -1
        Successful (Subst lst) -> if (all (\x -> x `elem` subs) lst) then 1+(score xs) else -1
        Partial _ _ -> -1
    -- checkSubst u subs acc =
    --   if u `elem` subs then ((fst u) `notElem` (map fst acc)) && ((snd u) `notElem` (map snd acc))
    --   else False
  -- foldr (+) 0 (map (\x -> checkUnifers x subs) maxmatching)
  -- where
  --   checkUnifers (t1, t2) sublst =
  --     case unify (Subst []) t1 t2 of
  --       Successful (Subst []) -> 0
  --       Successful (Subst [u]) -> if u `elem` sublst then 1 else 0
  --       Partial _ _ -> -1
  --       o -> error ("case should not happen in calculateScore" ++ (show t1) ++ "\n" ++ (show t2))






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
