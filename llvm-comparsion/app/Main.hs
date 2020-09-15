{-# OPTIONS_GHC -Wall #-}
module Main where

import System.IO as SIO
import Data.Text as T
import Data.Text.IO as TIO
import LLVM.AST
import LLVM.Module
import LLVM.Internal.Module
import LLVM.Internal.Context
-- import Data.Tuple.Extra (thd3)
-- import Control.Monad.Except
import Data.ByteString as BS
import Data.ByteString.UTF8 as BSU
import qualified Data.ByteString.Short as BSS
         (ShortByteString, toShort, fromShort)
import Eq
import Struc
import Paths_llvm_comparsion

main :: IO ()
main = do
  filepath <- getDataFileName "varDef/varDef.ll"
  filepath1 <- getDataFileName "varDef/varDef1.ll"
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
  pairs <- compareASTs astModule1 astModule2
  return pairs

isGlobalVariable :: Definition -> [Single]
isGlobalVariable def =
  case def of
    GlobalDefinition (GlobalVariable nm _ _ _ _ _ _ _ _ initi _ _ _ _) -> [Single nm initi]
    _ -> []

isFunction :: Definition -> [Global]
isFunction def =
  case def of
    GlobalDefinition f@(Function{}) -> [f]
    _ -> []

compareASTs :: LLVM.AST.Module -> LLVM.AST.Module -> IO ()
compareASTs (LLVM.AST.Module _ _ _ _ modDefLst1) (LLVM.AST.Module _ _ _ _ modDefLst2) =
  let
    varLst1 = Prelude.concatMap isGlobalVariable modDefLst1
    varLst2 = Prelude.concatMap isGlobalVariable modDefLst2
    funcLst1 = Prelude.concatMap isFunction modDefLst1
    funcLst2 = Prelude.concatMap isFunction modDefLst2
    globalVarResult = Prelude.concatMap (\x -> pairDefs x varLst2) varLst1
    funcResult = compareFunctions funcLst1 funcLst2
    result = globalVarResult ++ funcResult
  in
  TIO.writeFile "data/varDef/sampleReport0_1.txt" (T.pack (Prelude.concatMap pprintVarResult result))

pprintVarResult :: Paired -> [Char]
pprintVarResult (Paired nm1 nm2) = (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n"
--pprintVarResult (Paired (LLVM.AST.UnName nm1) (LLVM.AST.UnName nm2)) = (show nm1) ++ " < -- > " ++ (show nm2) ++ "\n"

pprintVarResult _ = error "not implement in pprintVarResult"

pairDefs :: Single -> [Single] -> [Paired]
pairDefs _ [] = []
pairDefs def1@(Single nm1 val1) ((Single nm2 val2):t) =
  if val1 == val2 then (Paired nm1 nm2):(pairDefs def1 t) else (pairDefs def1 t)

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
