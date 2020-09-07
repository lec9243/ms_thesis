module Main_old where

import System.IO as SIO
import Data.Text as T
import Data.Text.IO as TIO
import LLVM.AST
import LLVM.Pretty (ppllvm)
import LLVM.Module
import LLVM.Internal.Context
import Control.Monad.Error
import Paths_test_ast_parser

main :: IO ()
main = do
  filepath <- getDataFileName "compare/helloworld1.ll"
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
            TIO.writeFile "data/compare/helloworldAST1.txt" (T.pack (show ast)) -- (prettyPrintAST (T.pack (show ast)))
            --TIO.putStrLn (ppllvm ast)
  return ()


prettyPrintAST :: Text -> Text
prettyPrintAST str =
  prettyPrintASThelper str 0 (T.empty)
  where
    appendSpaces num =
      if num < 0 then (T.pack "\t")
      else (T.pack "\t") `T.append` (appendSpaces (num-1))
    prettyPrintASThelper st dep final_str =
      if st == T.empty then final_str
      else
        let
          h = (T.head st)
          t = T.tail st
        in
        if h == '{' then prettyPrintASThelper t (dep+1) (final_str `T.append` (T.pack "\n") `T.append` (appendSpaces dep) `T.append` (singleton h))
        else if h == '}' then prettyPrintASThelper t (dep-1) (final_str `T.append` (T.pack "\n") `T.append` (appendSpaces dep) `T.append` (singleton h))
        else if h == ',' then prettyPrintASThelper t dep (final_str `T.append` (T.pack " ") `T.append` (singleton h) `T.append` (T.pack "\n") `T.append` (appendSpaces (dep)))
        else prettyPrintASThelper t dep (final_str `T.append` (singleton h))
