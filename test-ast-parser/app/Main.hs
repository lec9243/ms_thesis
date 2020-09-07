module Main where

import System.IO as SIO
import Data.Text as T
import Data.Text.IO as TIO
import LLVM.AST
import LLVM.AST.Constant as CON
import LLVM.AST.Global
import LLVM.Pretty (ppllvm)
import LLVM.Module
import LLVM.Internal.Context
import Control.Monad.Error
import Data.ByteString as BS
import Data.ByteString.UTF8 as BSU
import qualified Data.ByteString.Short as BSS
         (ShortByteString, toShort, fromShort)
import Paths_test_ast_parser



-- main :: IO ()
main = do
  filepath <- getDataFileName "compare/helloworld.ll"
  filepath1 <- getDataFileName "compare/helloworld1.ll"
  src <- SIO.readFile filepath
  src1 <- SIO.readFile filepath1
  parseLLVM src src1


  -- parseLLVM :: String -> LLVM.AST.Module
parseLLVM src1 src2 = do
  astModule1 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src1 $
          \mod -> moduleAST mod
  astModule2 <- withContext $
    \context ->
        withModuleFromLLVMAssembly context src2 $
          \mod -> moduleAST mod
  pairs <- compareASTs astModule1 astModule2
--  TIO.writeFile "data/compare/sampleReport.txt" (T.pack pairs)
  return pairs


data PairDefs = Single LLVM.AST.Name (Maybe CON.Constant)
              | Paired LLVM.AST.Name LLVM.AST.Name (Maybe CON.Constant) Int deriving (Eq, Show)
-- Src Defnition Init Times: a def's name, value (from file1/file2)
-- Paired Def1 Def2 Init score: two defs have different Names but same value, score is put here in case one def can be paired with more than one time

isGlobalDefinition def =
  case def of
    GlobalDefinition (GlobalVariable nm _ _ _ _ _ _ _ _ initi _ _ _ _) -> [Single nm initi]
    _ -> []


-- compareASTs :: LLVM.AST.Module -> LLVM.AST.Module -> IO ()
compareASTs ast1@(Module _ _ _ _ modDefLst1) ast2@(Module _ _ _ _ modDefLst2) =
  let
  filteredLst1 = Prelude.foldr (++) [] (Prelude.map isGlobalDefinition modDefLst1)
  filteredLst2 = Prelude.foldr (++) [] (Prelude.map isGlobalDefinition modDefLst2)
  result = Prelude.map (\x -> pairDefs x filteredLst2) $ filteredLst1
  in
  TIO.writeFile "data/compare/sampleReport.txt" (T.pack (Prelude.foldr (++) "" (Prelude.foldr (++) [] (Prelude.map (Prelude.map pprintResult) (result)))))
  where
    pprintResult (Paired (LLVM.AST.Name nm1) (LLVM.AST.Name nm2) _ _) = (BSU.toString (BSS.fromShort nm1)) ++ " < -- > " ++ BSU.toString (BSS.fromShort nm2) ++ "\n"

pairDefs _ [] = []
pairDefs def1@(Single nm1 val1) ((Single nm2 val2):t) =
  if val1 == val2 then (Paired nm1 nm2 val1 0):(pairDefs def1 t) else (pairDefs def1 t)
{- GlobalVariable {
        name :: Name,
        linkage :: L.Linkage,
        visibility :: V.Visibility,
        dllStorageClass :: Maybe DLL.StorageClass,
        threadLocalMode :: Maybe TLS.Model,
        unnamedAddr :: Maybe UnnamedAddr,
        isConstant :: Bool,
        type' :: Type,
        addrSpace :: AddrSpace,
        initializer :: Maybe Constant,
        section :: Maybe ShortByteString,
        comdat :: Maybe ShortByteString,
        alignment :: Word32,
        metadata :: [(ShortByteString, MDRef MDNode)]
      }
-}
