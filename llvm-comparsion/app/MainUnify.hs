{-# OPTIONS_GHC -Wall #-}
module Main where

import System.IO as SIO
import Data.Text as T (pack)
import Data.Text.Lazy (unpack)
import Data.Text.IO as TIO (writeFile)
import LLVM.AST
import LLVM.Module
import LLVM.Internal.Module
import LLVM.Internal.Context
import LLVM.Pretty
import Struc
import Unify
import TransModule
import Reorder
import PPprogram
import Paths_llvm_comparsion

main :: IO ()
main = do
  putStrLn "Please input the first program filename:"
  file <- getLine
  putStrLn "\nPlease input the second program filename:"
  file1 <- getLine
  putStrLn "Loading..........."
  src <- SIO.readFile file
  src1 <- SIO.readFile file1
  -- let str = read src::String
  --     str1 = read src1::String
  parseLLVM src src1 src src1

printLLVMList [] = ""
printLLVMList (x:hs) = ((unpack (ppll x)))++"\n"++(printLLVMList hs)

filter_Function [] = []
filter_Function (x:xs) =
  case x of
    GlobalDefinition (Function _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) -> x:(filter_Function xs)
    otherwise -> filter_Function xs

trans_Global_list [] = print "finished"
trans_Global_list (x:xs) = do print (show (transDefinitionToTerms x))
                              trans_Global_list xs

parseLLVM :: (LLVM.Internal.Module.LLVMAssemblyInput s1,
              LLVM.Internal.Module.LLVMAssemblyInput s2) =>
                   s1 -> s2 -> String -> String -> IO ()
parseLLVM src1 src2 str1 str2 = do
  astModule1 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src1 moduleAST
  astModule2 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src2 moduleAST
  TIO.writeFile "prom_AST.txt" (T.pack (show (astModule1)))
  putStrLn "Loading again..........."
  let mds1 = moduleDefinitions astModule1
      mds2 = moduleDefinitions astModule2
  -- trans_Global_list (filter_Function mds)

  -- TIO.writeFile "prom_AST_Function.txt" (T.pack (show (filter_Function mds)))
  -- TIO.writeFile "prom_AST_Function_Code.txt" (T.pack (printLLVMList (filter_Function mds)))
  -- printLLVMList (filter_Function mds)
  -- TIO.writeFile "gcdAST-llvm.txt" (T.pack (unpack (ppllvm astModule1)))
--  print (show (termsToVertices (transModuleToTerms astModule2)))
      term1 = map (renaming_text "_left") ((transTermstoTermIndex (map transDefinitionToTerms mds1)))
      term2 = map (renaming_text "_right") ((transTermstoTermIndex (map transDefinitionToTerms mds2)))
      -- g = buildGraph (termToVertices term1) (termToVertices term2)
      -- m = maxMatching g []
      terms1 = map termToTermList term1
      terms2 = map termToTermList term2
      -- constrs1 = buildConstraints terms1
      -- constrs2 = buildConstraints terms2
      -- reorderT2 = reorderProgram terms2 constrs2
      -- reorderT1 = reorderProgram terms1 constrs1

  TIO.writeFile "rename_p1.txt" (T.pack (show term1))
  TIO.writeFile "rename_p2.txt" (T.pack (show term2))
  -- TIO.writeFile "termindex_p2.txt" (T.pack (show terms2))
  -- TIO.writeFile "constraints_p2.txt" (T.pack (show constrs2))
  -- TIO.writeFile "reordered_p2.hxt" (T.pack (ppPPterm (ppTerm terms2 reorderT2)))
  -- TIO.writeFile "blocks_p2.txt" (T.pack (printOriProg (foldr (++) [] (termByBlocks terms2 constrs2))))
  -- print (lineNumofTerm str1 reorderT1)
  -- print (lineNumofTerm str2 reorderT2)
  -- print (printOriProg (foldr (++) [] (termByBlocks terms2 constrs2)))

  putStrLn "Loading subst..........."
  case (unify (Subst []) term1 term2) of
    Successful s ->   TIO.writeFile "subst.txt" (T.pack (show s))
    Partial s _ -> TIO.writeFile "subst.txt" (T.pack (show s))
  -- putStrLn "Loading bound..........."
  -- TIO.writeFile "upper.txt" (T.pack (show (upperbound term1 term2)))
  -- TIO.writeFile "lower.txt" (T.pack (show (lowerbound term1 term2)))
  -- putStrLn "Loading graph..........."
  -- TIO.writeFile "new_graph.txt" (T.pack (show (buildGraph terms1 terms2 [])))
  -- -- putStrLn "Loading subst..........."
  -- -- TIO.writeFile "new_subst.txt" (T.pack (show (matchingToSubst (maxWeight term1 term2))))
  -- putStrLn "Loading matching..........."
  -- -- TIO.writeFile "new_matching.txt" (T.pack (show (subsToMatching (matchingToSubst (maxWeight term1 term2)) term1 term2)))
  -- TIO.writeFile "new_matching_list.txt" (T.pack (show ( ((maxWeight term1 term2)) )))
  -- putStrLn ".....Print matching Validation....."
  -- print (checkMatchingwithConst (maxWeight term1 term2) (constrToConstrId constrs1) (constrToConstrId constrs2))
  -- putStrLn "...Complete..."
  -- TIO.writeFile "data/return0/termIndex1.txt" (T.pack (show term1))
  -- TIO.writeFile "data/return0/maxMatching1.txt" (T.pack (show m))
  -- case (unify (Subst []) (head term1) (head term2)) of
  --    Successful s ->  print (calculateScore (head term1) (head term2) m s)
  --    Partial s _ -> print (calculateScore (head term1) (head term2) m s)
  -- print (lookupTermIndex 10 (head term1))
--  TIO.writeFile "data/return0/vertices1.txt" (T.pack (show (termsToVertices (transModuleToTerms astModule1))))
--  TIO.writeFile "data/return0/vertices2.txt" (T.pack (show (termsToVertices (transModuleToTerms astModule2))))
--  TIO.writeFile "data/return0/buildGraph.txt" (T.pack (show (buildGraph (transModuleToTerms astModule1) (transModuleToTerms astModule2))))
--  TIO.writeFile "data/return0/unmatchedNode1.txt" (T.pack (show (unmatchedNode (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2)) (maxMatching (buildGraph (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2))) []))))
--  TIO.writeFile "data/return0/unifyScore1.txt" (T.pack (show (similarityScore (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2)) )))
  return ()
