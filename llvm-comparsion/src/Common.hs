{-# OPTIONS_GHC -Wall #-}
module Common where

import LLVM.AST
import LLVM.AST.Constant as CON
import Struc

isGlobalVariable :: [Definition] -> [VarGlobal]
isGlobalVariable def =
  foldr (\x acc -> case x of
                   GlobalDefinition (GlobalVariable nm _ _ _ _ _ _ _ _ initi _ _ _ _) -> (VarGlobal nm initi):acc
                   _ -> acc
        ) [] def

isFunction :: [Definition] -> [Global]
isFunction def =
  foldr (\x acc -> case x of
                   GlobalDefinition f@(Function{}) -> f:acc
                   _ -> acc
        ) [] def

getBasicBlocks :: Global -> [BasicBlock]
getBasicBlocks (Function _ _ _ _ _ _ _ _ _ _ _ _ _ _ bb _ _) = bb

getNamedInstruction :: BasicBlock -> [Named Instruction]
getNamedInstruction (BasicBlock _ nmInstructionLst _) = nmInstructionLst

getLocalRefNm (LocalReference _ nm) = nm
getLocalRefTy (LocalReference ty _) = ty

lookupFuncArgus _ [] = False
lookupFuncArgus nm ((op,_):t) =
  case op of
    LocalReference _ newnm -> if (newnm == nm) then True else (lookupFuncArgus nm t)
    _ -> (lookupFuncArgus nm t)--error "case not implement in lookupFuncArgs"
