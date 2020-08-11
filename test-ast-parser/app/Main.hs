module Main where

import System.IO as SIO
import Data.Text.Lazy.IO as TIO
import LLVM.AST
import LLVM.Pretty (ppllvm)
import LLVM.Module
import LLVM.Internal.Context
import Control.Monad.Error
import Paths_test_ast_parser

main :: IO ()
main = do
  filepath <- getDataFileName "test4.ll"
  src <- SIO.readFile filepath
  parseLLVM src

parseLLVM :: String -> IO ()
parseLLVM src = do
  astModule <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src $
          \mod -> do
            ast <- moduleAST mod
            print (show ast)
            SIO.writeFile "data/test4AST-nonpp.txt" (show ast) --(prettyPrintAST (show ast))
            --TIO.putStrLn (ppllvm ast)
  return ()


prettyPrintAST :: String -> String
prettyPrintAST str =
  prettyPrintASThelper str 0 ""
  where
    appendSpaces num =
      if num < 0 then "\t\t"
      else "\t\t" ++ (appendSpaces (num-1))
    prettyPrintASThelper st dep final_str =
      if st == [] then final_str
      else
        let
          h = [(head st)]
          t = tail st
        in
        if h == "{" then prettyPrintASThelper t (dep+1) (final_str ++ "\n" ++ (appendSpaces dep) ++ h)
        else if h == "}" then prettyPrintASThelper t (dep-1) (final_str ++ "\n" ++ (appendSpaces dep) ++ h)
        else if h == "," then prettyPrintASThelper t dep (final_str ++ " " ++ h ++ "\n" ++ (appendSpaces (dep)))
        else prettyPrintASThelper t dep (final_str ++ h)
