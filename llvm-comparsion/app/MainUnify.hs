{-# OPTIONS_GHC -Wall #-}
module Main where

import System.IO as SIO
import Data.Text as T (pack)
import Data.Text.IO as TIO (writeFile)
import LLVM.AST
import LLVM.Module
import LLVM.Internal.Module
import LLVM.Internal.Context
--import Eq
import Struc
import Unify
import TransModule
import Paths_llvm_comparsion

main :: IO ()
main = do
  putStrLn "Please input the first program filename:"
  file <- getLine
  filepath <- getDataFileName ("return0/" ++ file)
  putStrLn "\nPlease input the second program filename:"
  file1 <- getLine
  filepath1 <- getDataFileName ("return0/" ++ file1)
  putStrLn "Loading..........."
  src <- SIO.readFile filepath
  src1 <- SIO.readFile filepath1
  parseLLVM src src1

parseLLVM :: (LLVM.Internal.Module.LLVMAssemblyInput s1,
              LLVM.Internal.Module.LLVMAssemblyInput s2) =>
                   s1 -> s2 -> IO ()
parseLLVM src1 src2 = do
  astModule1 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src1 moduleAST
  astModule2 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src2 moduleAST
--  print (show (termsToVertices (transModuleToTerms astModule1)))
--  print (show (termsToVertices (transModuleToTerms astModule2)))
  let term1 = transTermstoTermIndex (transModuleToTerms astModule1)
      term2 = transTermstoTermIndex (transModuleToTerms astModule2)
      -- g = buildGraph (termToVertices (head term1)) (termToVertices (head term2))
      -- m = maxMatching g []
  putStrLn "Please input the output filename:"
  filenm <- getLine
  TIO.writeFile ("data/return0/" ++ filenm) (T.pack (show (unify (Subst []) (head term1) (head term2))))
  putStrLn "...Complete..."
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
{-
pprintVarResult :: [Paired] -> [Char]
pprintVarResult pairedLst =
  concatMap (\(Paired nm1 nm2) -> (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n") pairedLst
-}
