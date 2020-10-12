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
import Paths_llvm_comparsion

main :: IO ()
main = do
  filepath <- getDataFileName "return0/returnZero1.ll"
  filepath1 <- getDataFileName "return0/returnZero2.ll"
  src <- SIO.readFile filepath
  src1 <- SIO.readFile filepath1
  parseLLVM src src1

parseLLVM :: (LLVM.Internal.Module.LLVMAssemblyInput s1,
              LLVM.Internal.Module.LLVMAssemblyInput s2) =>
                   s1 -> s2 -> IO ()
parseLLVM src1 src2 = do
  astModule1 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src1 $
          \md -> moduleAST md
  astModule2 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src2 $
          \md -> moduleAST md
  print (show (unifyTerms (transModuleToTerms astModule1) (transModuleToTerms astModule2)))
  TIO.writeFile "data/return0/testOutput.txt" (T.pack (show (unifyTerms (transModuleToTerms astModule1) (transModuleToTerms astModule2))))
  return ()

pprintVarResult :: [Paired] -> [Char]
pprintVarResult pairedLst =
  concatMap (\(Paired nm1 nm2) -> (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n") pairedLst
