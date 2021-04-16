{-# OPTIONS_GHC -Wall #-}
module Reorder where

import LLVM.AST
import LLVM.AST.Name (mkName)
import LLVM.AST.Constant as CON
import Data.List

import Common
import Struc
import Unify

data Constraints = Constraints {statement :: TermIndex Int,
                                def_use :: [TermIndex Int],
                                def_def :: [TermIndex Int],
                                escape :: [TermIndex Int]} deriving (Show, Read)
data ConstraintsIndex = ConstraintsIndex {statementId :: Int,
                                          def_useId :: [Int],
                                          def_defId :: [Int],
                                          escapeId :: [Int]} deriving (Show, Read)

type Block = [[Int]]

lo = mkName "Load"
st = mkName "Store"
al = mkName "Alloc"
ret = mkName "Ret"

buildConstraints :: [TermIndex Int] -> [Constraints]
buildConstraints [] = []
buildConstraints (h:t) =
  (findConstraints h t):(buildConstraints t)

findConstraints :: TermIndex Int -> [TermIndex Int] -> Constraints
findConstraints x xs =
  case x of
    TiApp _ (Other nm) lst ->
      if (nm == lo || nm == st || nm == al) then
                      (let [TiApp _ _ (var:_)] = lst
                           du_ = defUsed var xs
                           dd_ = defDef  var xs
                           es_ = escapeTerm xs
                       in Constraints x du_ dd_ es_)
      else if nm == ret then Constraints x [] [] xs
      else Constraints x [] [] []
    otherwise -> Constraints x [] [] []

defUsed :: TermIndex Int -> [TermIndex Int] -> [TermIndex Int]
defUsed tvar [] = []
defUsed tvar (h:t) =
  case h of
    TiApp _ (Other nm) lst ->
     (if (nm == al || nm == ret) then defUsed tvar t
      else if nm == lo then
        (let [TiApp _ _ [_, (TiConst (LocalReference _ nm))]] = lst in
        if tvar == (TiVar nm) then h:(defUsed tvar t) else defUsed tvar t)
      else if nm ==  st then
        (case lst of
          [TiApp _ _ [_, (TiConst (ConstantOperand _))]] -> (defUsed tvar t)
          [TiApp _ _ [_, (TiConst (LocalReference _ nm))]] ->
                  (if ((TiVar nm) == tvar) then h:(defUsed tvar t) else defUsed tvar t)
         )
      else error "not know what happen in defused"
     )

defDef :: TermIndex Int -> [TermIndex Int] -> [TermIndex Int]
defDef tvar [] = []
defDef tvar (h:t) =
  case h of
    TiApp _ (Other nm) lst ->
      (if (nm == al || nm == ret || nm == lo) then defDef tvar t
       else if nm == st then
         let [TiApp _ _ [tv1, _]] = lst in
         if (tv1 == tvar) then h:(defDef tvar t) else defDef tvar t
       else error "not know what happen in defdef")

escapeTerm :: [TermIndex Int] -> [TermIndex Int]
escapeTerm [] = []
escapeTerm (h:t) =
  case h of
    TiApp _ (Other nm) _ -> if nm == ret then h:(escapeTerm t) else escapeTerm t


reorderProgram :: [TermIndex Int] -> [Constraints] -> [TermIndex Int]
reorderProgram terms constrs=
  let
    constrsId = constrToConstrId constrs
    indexlst = map getTermIndex terms
    perm_indexlst = permutations indexlst
    filter_perm_indexlst = filter (\x -> checkConstraints constrsId x) perm_indexlst
    dist_ = map (calculateDistance constrsId) filter_perm_indexlst
    (Just min_id) =  elemIndex (minimum dist_) dist_
  in
  map (\x -> let (Just a) = lookupTermIndexs x terms in a) (filter_perm_indexlst!!min_id)

calculateDistance :: [ConstraintsIndex] -> [Int] -> [Int]
calculateDistance [] _ = []
calculateDistance (c:rest) terms =
  let
    sid = elemIndex (statementId c) terms
  in case sid of
    Just st_id -> let
                  ddid_ = map (\(Just a) -> a) (map (\x -> elemIndex x terms) (def_defId c))
                  duid_ = map (\(Just a) -> a) (map (\x -> elemIndex x terms) (def_useId c))
                in ((sum (map (\x -> abs(st_id - x)) ddid_)) + (sum (map (\x -> abs(st_id - x)) duid_))):(calculateDistance rest terms)
    Nothing -> calculateDistance rest terms


checkConstraints :: [ConstraintsIndex] -> [Int] -> Bool
checkConstraints _ [] = True
checkConstraints constrs (h:t) =
  (checkConstraintsHelper constrs h t) && (checkConstraints constrs t)
  where
    checkConstraintsHelper [] _ _ = True
    checkConstraintsHelper (c:rest) h t =
      if statementId c == h then
        ((foldr (&&) True (map (\x -> x `elem` t) (def_defId c))) &&
         (foldr (&&) True (map (\x -> x `elem` t) (def_useId c))) &&
         (foldr (&&) True (map (\x -> x `elem` t) (escapeId c))))
      else checkConstraintsHelper rest h t

checkMatchingwithConst :: WMatching -> [ConstraintsIndex] -> [ConstraintsIndex] -> Bool
checkMatchingwithConst wmatching cidx1 cidx2 =
  let
    fst_matching = map (getTermIndex.fst) wmatching
    snd_matching = map (getTermIndex.snd) wmatching
  in
  (checkConstraints cidx1 fst_matching) && (checkConstraints cidx2 snd_matching)

constrToConstrId :: [Constraints] -> [ConstraintsIndex]
constrToConstrId constr = map convertHelper constr
  where
    convertHelper c =
      let st = getTermIndex (statement c)
          du_ = map getTermIndex (def_use c)
          dd_ = map getTermIndex (def_def c)
          es_ = map getTermIndex (escape c)
      in ConstraintsIndex st du_ dd_ es_
---- constrBlock :: [ConstraintsIndex] -> Block
-- constrBlock considx =
--   constrBlockHelper (foldr (++) [] (\x -> ))

termByBlocks :: [TermIndex Int] -> [Constraints] -> [[TermIndex Int]]
termByBlocks terms ctrs =
  let
    constrsId = constrToConstrId ctrs
    block = constrBlock constrsId []
    sortblock = sortBlocks terms constrsId block
  in
  map (map (\x -> let (Just a) = lookupTermIndexs x terms in a)) sortblock

constrBlock :: [ConstraintsIndex] -> Block -> Block
constrBlock [] acc = acc
constrBlock (c:rst) acc =
  constrBlock rst (constrBlockHelper c acc)
  where
    constrBlockHelper c [] = [[statementId c]++(def_useId c)++(def_defId c)++(escapeId c)]
    constrBlockHelper c (h:t) =
      let statements = [statementId c]++(def_useId c)++(def_defId c)++(escapeId c) in
      if sameElem statements h then (nub (h++statements):t) else h:(constrBlockHelper c t)
    sameElem s = foldl (\acc x -> x `elem` s || acc) False

sortBlocks :: [TermIndex Int] -> [ConstraintsIndex] -> Block -> Block
sortBlocks terms clst = map (sortBlocksHelper terms clst)
  where
    sortBlocksHelper terms clst x =
      let
        perm_indexlst = permutations x
        filter_perm_indexlst = filter (\a -> checkConstraints clst a) perm_indexlst
        dist_ = map (calculateDistance clst) filter_perm_indexlst
        (Just min_id) =  elemIndex (minimum dist_) dist_
      in
      filter_perm_indexlst!!min_id
