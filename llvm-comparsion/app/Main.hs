{-# OPTIONS_GHC -Wall #-}
module Main where

import System.IO as SIO
import Data.Text as T (pack)
import Data.Text.IO as TIO (writeFile)
import LLVM.AST
import LLVM.Module
import LLVM.Internal.Module
import LLVM.Internal.Context
import Eq
import Struc
import Paths_llvm_comparsion

main :: IO ()
main = do
  filepath <- getDataFileName "printInt/example1.ll"
  filepath1 <- getDataFileName "printInt/example2.ll"
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
  TIO.writeFile "data/printInt/sampleReport1_2.txt" (T.pack (pprintVarResult (compareASTs astModule1 astModule2)))
  return ()

pprintVarResult :: [Paired] -> [Char]
pprintVarResult pairedLst =
  concatMap (\(Paired nm1 nm2) -> (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n") pairedLst
