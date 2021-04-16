{-# OPTIONS_GHC -Wall #-}
module Main where

import System.IO as SIO
import Data.Text as T (pack)
import Data.Text.IO as TIO (writeFile)
import LLVM.AST
import LLVM.Pretty
import LLVM.Module
import LLVM.Internal.Module
import LLVM.Internal.Context

import Data.List.Split
import Data.List
import Data.Text.Internal.Lazy

--import Eq
import Struc
import Unify
import TransModule
import PPprogram
import Paths_llvm_comparsion

main :: IO ()
main = do
  putStrLn "Please input the first program filename:"
  file <- getLine
  -- filepath <- getDataFileName ("return0/" ++ file)
  putStrLn "Please input the second program filename:"
  file1 <- getLine
  -- filepath1 <- getDataFileName ("return0/" ++ file1)
  putStrLn "Please input the substituion filename:"
  file2 <- getLine
  putStrLn "Please input the upperbound filename:"
  file3 <- getLine
  putStrLn "Please input the lowerbound filename:"
  file4 <- getLine
  putStrLn "Please input the fstProgram txt filename:"
  file5 <- getLine
  putStrLn "Please input the sndProgram txt filename:"
  file6 <- getLine
  putStrLn "Do you want to hide reodered program(True/False):"
  opt <- getLine
  -- filepath2 <- getDataFileName ("return0/" ++ file2)
  putStrLn "Loading..........."
  src1 <- SIO.readFile file
  src2 <- SIO.readFile file1
  src3 <- SIO.readFile file2
  src4 <- SIO.readFile file3
  src5 <- SIO.readFile file4
  src6 <- SIO.readFile file5
  src7 <- SIO.readFile file6
  let p1 = read src1::TermIndex Int
      p2 = read src2::TermIndex Int
      subs = read src3::Subst
      upp = read src4::[(Int, Int)]
      lower = read src5::[(Int, Int)]
      flag = read opt::Bool
      ptxt1 =  src6
      ptxt2 =  src7
      lineN1 = [9,7,11,8,10,12,13]
      lineN2 = [8,10,9,11,7,12,13]
  putStrLn ".....Upperbound......"
  print (calUpperBound p1 p2 upp subs)
  putStrLn ".....Lowerbound......"
  print (snd (calculateScore p1 p2 lower subs))
  TIO.writeFile "matchedTerms.txt" (T.pack (show (fst (calculateScore p1 p2 lower subs))))
  let matched = fst (calculateScore p1 p2 lower subs)
  putStrLn ".....Print Line Numer....."
  print (ppLineNumber ptxt1 ptxt2 matched)
  -- TIO.writeFile "ppMatchedprogram_hide.csv" (T.pack (ppCSV flag ptxt1 ptxt2 (ppLineNumber ptxt1 ptxt2 matched) lineN1 lineN2))
  return ()

-- parseLLVM :: (LLVM.Internal.Module.LLVMAssemblyInput s1,
--               LLVM.Internal.Module.LLVMAssemblyInput s2) =>
--                    s1 -> s2 -> String -> IO ()
-- parseLLVM src1 src2 subst = do
--   astModule1 <- withContext $
--     \context ->
--         withModuleFromLLVMAssembly context src1 moduleAST
--   astModule2 <- withContext $
--     \context ->
--         withModuleFromLLVMAssembly context src2 moduleAST
-- --  print (show (termsToVertices (transModuleToTerms astModule1)))data/return0/
-- --  print (show (termsToVertices (transModuleToTerms astModule2)))
--   let term1 = transTermstoTermIndex (transModuleToTerms astModule1)
--       term2 = transTermstoTermIndex (transModuleToTerms astModule2)
--       g = buildGraph (termToVertices (head term1)) (termToVertices (head term2))
--       m = maxMatching g []
--   -- TIO.writeFile "data/return0/unifyTermIndex2.txt" (T.pack (show (unify (Subst []) (head term1) (head term2))))
--   -- TIO.writeFile "data/return0/termIndex1.txt" (T.pack (show term1))
--   -- TIO.writeFile "data/return0/maxMatching1.txt" (T.pack (show m))
--   case read subst of
--      Successful s ->  print (calculateScore (head term1) (head term2) m s)
--      Partial s _ -> print (calculateScore (head term1) (head term2) m s)
--   -- print (lookupTermIndex 10 (head term1))
-- --  TIO.writeFile "data/return0/vertices1.txt" (T.pack (show (termsToVertices (transModuleToTerms astModule1))))
-- --  TIO.writeFile "data/return0/vertices2.txt" (T.pack (show (termsToVertices (transModuleToTerms astModule2))))
-- --  TIO.writeFile "data/return0/buildGraph.txt" (T.pack (show (buildGraph (transModuleToTerms astModule1) (transModuleToTerms astModule2))))
-- --  TIO.writeFile "data/return0/unmatchedNode1.txt" (T.pack (show (unmatchedNode (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2)) (maxMatching (buildGraph (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2))) []))))
-- --  TIO.writeFile "data/return0/unifyScore1.txt" (T.pack (show (similarityScore (termsToVertices (transModuleToTerms astModule1)) (termsToVertices (transModuleToTerms astModule2)) )))
--   return ()
{-
pprintVarResult :: [Paired] -> [Char]
pprintVarResult pairedLst =
  concatMap (\(Paired nm1 nm2) -> (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n") pairedLst
-}
