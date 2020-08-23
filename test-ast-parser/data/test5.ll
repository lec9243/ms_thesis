target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"
declare ccc i8* @memcpy$def(i8*, i8*, i64)
declare ccc i8* @memmove$def(i8*, i8*, i64)
declare ccc i8* @memset$def(i8*, i64, i64)
declare ccc i64 @newSpark$def(i8*, i8*)
!0 = !{!"root"}
!1 = !{!"top", !0}
!2 = !{!"stack", !1}
!3 = !{!"heap", !1}
!4 = !{!"rx", !3}
!5 = !{!"base", !1}

%rB6_bytes_struct = type <{[5 x i8]}>
@rB6_bytes$def = internal constant %rB6_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rB6_bytes = internal alias i8, bitcast (%rB6_bytes_struct* @rB6_bytes$def to i8*)
%rBc_closure_struct = type <{i64, i64}>
@rBc_closure$def = internal global %rBc_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rB6_bytes_struct* @rB6_bytes$def to i64)}>
@rBc_closure = internal alias i8, bitcast (%rBc_closure_struct* @rBc_closure$def to i8*)
%rBd_bytes_struct = type <{[5 x i8]}>
@rBd_bytes$def = internal constant %rBd_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rBd_bytes = internal alias i8, bitcast (%rBd_bytes_struct* @rBd_bytes$def to i8*)
%rBe_closure_struct = type <{i64, i64}>
@rBe_closure$def = internal global %rBe_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rBd_bytes_struct* @rBd_bytes$def to i64)}>
@rBe_closure = internal alias i8, bitcast (%rBe_closure_struct* @rBe_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rBc_closure_struct* @rBc_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rBe_closure_struct* @rBe_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nHw:
  %lrgc = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R5_Var = alloca i64, i32 1
  store i64 undef, i64* %R5_Var
  %R6_Var = alloca i64, i32 1
  store i64 undef, i64* %R6_Var
  %F1_Var = alloca float, i32 1
  store float undef, float* %F1_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %F2_Var = alloca float, i32 1
  store float undef, float* %F2_Var
  %D2_Var = alloca double, i32 1
  store double undef, double* %D2_Var
  %F3_Var = alloca float, i32 1
  store float undef, float* %F3_Var
  %D3_Var = alloca double, i32 1
  store double undef, double* %D3_Var
  %F4_Var = alloca float, i32 1
  store float undef, float* %F4_Var
  %D4_Var = alloca double, i32 1
  store double undef, double* %D4_Var
  %F5_Var = alloca float, i32 1
  store float undef, float* %F5_Var
  %D5_Var = alloca double, i32 1
  store double undef, double* %D5_Var
  %F6_Var = alloca float, i32 1
  store float undef, float* %F6_Var
  %D6_Var = alloca double, i32 1
  store double undef, double* %D6_Var
  %lcHq = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cHt
cHt:
  %lnHx = load i64, i64* %R1_Var
  store i64 %lnHx, i64* %lrgc
  %lnHy = load i64*, i64** %Sp_Var
  %lnHz = getelementptr inbounds i64, i64* %lnHy, i32 1
  %lnHA = ptrtoint i64* %lnHz to i64
  %lnHB = sub i64 %lnHA, 40
  %lnHC = icmp ult i64 %lnHB, %SpLim_Arg
  %lnHE = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnHC, i1 0 )
  br i1 %lnHE, label %cHu, label %cHv
cHv:
  %lnHF = ptrtoint i64* %Base_Arg to i64
  %lnHG = inttoptr i64 %lnHF to i8*
  %lnHH = load i64, i64* %lrgc
  %lnHI = inttoptr i64 %lnHH to i8*
  %lnHJ = bitcast i8* @newCAF to i8* (i8*, i8*)*
  store i64 undef, i64* %R3_Var
  store i64 undef, i64* %R4_Var
  store i64 undef, i64* %R5_Var
  store i64 undef, i64* %R6_Var
  store float undef, float* %F1_Var
  store double undef, double* %D1_Var
  store float undef, float* %F2_Var
  store double undef, double* %D2_Var
  store float undef, float* %F3_Var
  store double undef, double* %D3_Var
  store float undef, float* %F4_Var
  store double undef, double* %D4_Var
  store float undef, float* %F5_Var
  store double undef, double* %D5_Var
  store float undef, float* %F6_Var
  store double undef, double* %D6_Var
  %lnHK = call ccc i8* (i8*, i8*) %lnHJ( i8* %lnHG, i8* %lnHI ) nounwind
  %lnHL = ptrtoint i8* %lnHK to i64
  store i64 %lnHL, i64* %lcHq
  %lnHM = load i64, i64* %lcHq
  %lnHN = icmp eq i64 %lnHM, 0
  br i1 %lnHN, label %cHs, label %cHr
cHr:
  %lnHP = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnHO = load i64*, i64** %Sp_Var
  %lnHQ = getelementptr inbounds i64, i64* %lnHO, i32 -2
  store i64 %lnHP, i64* %lnHQ, !tbaa !2
  %lnHS = load i64, i64* %lcHq
  %lnHR = load i64*, i64** %Sp_Var
  %lnHT = getelementptr inbounds i64, i64* %lnHR, i32 -1
  store i64 %lnHS, i64* %lnHT, !tbaa !2
  %lnHU = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnHU, i64* %R2_Var
  %lnHW = ptrtoint i8* @stg_ap_p_info to i64
  %lnHV = load i64*, i64** %Sp_Var
  %lnHX = getelementptr inbounds i64, i64* %lnHV, i32 -4
  store i64 %lnHW, i64* %lnHX, !tbaa !2
  %lnHZ = ptrtoint i8* @ghczmprim_GHCziTuple_Z0T_closure to i64
  %lnI0 = add i64 %lnHZ, 1
  %lnHY = load i64*, i64** %Sp_Var
  %lnI1 = getelementptr inbounds i64, i64* %lnHY, i32 -3
  store i64 %lnI0, i64* %lnI1, !tbaa !2
  %lnI2 = load i64*, i64** %Sp_Var
  %lnI3 = getelementptr inbounds i64, i64* %lnI2, i32 -4
  %lnI4 = ptrtoint i64* %lnI3 to i64
  %lnI5 = inttoptr i64 %lnI4 to i64*
  store i64* %lnI5, i64** %Sp_Var
  %lnI6 = bitcast i8* @base_GHCziBase_return_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnI7 = load i64*, i64** %Sp_Var
  %lnI8 = load i64, i64* %R1_Var
  %lnI9 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnI6( i64* %Base_Arg, i64* %lnI7, i64* %Hp_Arg, i64 %lnI8, i64 %lnI9, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cHs:
  %lnIa = load i64, i64* %lrgc
  %lnIb = inttoptr i64 %lnIa to i64*
  %lnIc = load i64, i64* %lnIb, !tbaa !1
  %lnId = inttoptr i64 %lnIc to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnIe = load i64*, i64** %Sp_Var
  %lnIf = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnId( i64* %Base_Arg, i64* %lnIe, i64* %Hp_Arg, i64 %lnIf, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cHu:
  %lnIg = load i64, i64* %lrgc
  store i64 %lnIg, i64* %R1_Var
  %lnIh = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnIi = bitcast i64* %lnIh to i64*
  %lnIj = load i64, i64* %lnIi, !tbaa !5
  %lnIk = inttoptr i64 %lnIj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnIl = load i64*, i64** %Sp_Var
  %lnIm = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnIk( i64* %Base_Arg, i64* %lnIl, i64* %Hp_Arg, i64 %lnIm, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
%_uIw_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uIw_srt$def = internal global %_uIw_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uIw_srt = internal alias i8, bitcast (%_uIw_srt_struct* @_uIw_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uIw_srt_struct* @_uIw_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nIx:
  %l01D = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R5_Var = alloca i64, i32 1
  store i64 undef, i64* %R5_Var
  %R6_Var = alloca i64, i32 1
  store i64 undef, i64* %R6_Var
  %F1_Var = alloca float, i32 1
  store float undef, float* %F1_Var
  %D1_Var = alloca double, i32 1
  store double undef, double* %D1_Var
  %F2_Var = alloca float, i32 1
  store float undef, float* %F2_Var
  %D2_Var = alloca double, i32 1
  store double undef, double* %D2_Var
  %F3_Var = alloca float, i32 1
  store float undef, float* %F3_Var
  %D3_Var = alloca double, i32 1
  store double undef, double* %D3_Var
  %F4_Var = alloca float, i32 1
  store float undef, float* %F4_Var
  %D4_Var = alloca double, i32 1
  store double undef, double* %D4_Var
  %F5_Var = alloca float, i32 1
  store float undef, float* %F5_Var
  %D5_Var = alloca double, i32 1
  store double undef, double* %D5_Var
  %F6_Var = alloca float, i32 1
  store float undef, float* %F6_Var
  %D6_Var = alloca double, i32 1
  store double undef, double* %D6_Var
  %lcIq = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cIt
cIt:
  %lnIy = load i64, i64* %R1_Var
  store i64 %lnIy, i64* %l01D
  %lnIz = load i64*, i64** %Sp_Var
  %lnIA = getelementptr inbounds i64, i64* %lnIz, i32 1
  %lnIB = ptrtoint i64* %lnIA to i64
  %lnIC = sub i64 %lnIB, 24
  %lnID = icmp ult i64 %lnIC, %SpLim_Arg
  %lnIE = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnID, i1 0 )
  br i1 %lnIE, label %cIu, label %cIv
cIv:
  %lnIF = ptrtoint i64* %Base_Arg to i64
  %lnIG = inttoptr i64 %lnIF to i8*
  %lnIH = load i64, i64* %l01D
  %lnII = inttoptr i64 %lnIH to i8*
  %lnIJ = bitcast i8* @newCAF to i8* (i8*, i8*)*
  store i64 undef, i64* %R3_Var
  store i64 undef, i64* %R4_Var
  store i64 undef, i64* %R5_Var
  store i64 undef, i64* %R6_Var
  store float undef, float* %F1_Var
  store double undef, double* %D1_Var
  store float undef, float* %F2_Var
  store double undef, double* %D2_Var
  store float undef, float* %F3_Var
  store double undef, double* %D3_Var
  store float undef, float* %F4_Var
  store double undef, double* %D4_Var
  store float undef, float* %F5_Var
  store double undef, double* %D5_Var
  store float undef, float* %F6_Var
  store double undef, double* %D6_Var
  %lnIK = call ccc i8* (i8*, i8*) %lnIJ( i8* %lnIG, i8* %lnII ) nounwind
  %lnIL = ptrtoint i8* %lnIK to i64
  store i64 %lnIL, i64* %lcIq
  %lnIM = load i64, i64* %lcIq
  %lnIN = icmp eq i64 %lnIM, 0
  br i1 %lnIN, label %cIs, label %cIr
cIr:
  %lnIP = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnIO = load i64*, i64** %Sp_Var
  %lnIQ = getelementptr inbounds i64, i64* %lnIO, i32 -2
  store i64 %lnIP, i64* %lnIQ, !tbaa !2
  %lnIS = load i64, i64* %lcIq
  %lnIR = load i64*, i64** %Sp_Var
  %lnIT = getelementptr inbounds i64, i64* %lnIR, i32 -1
  store i64 %lnIS, i64* %lnIT, !tbaa !2
  %lnIU = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnIU, i64* %R2_Var
  %lnIV = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnIV, i64* %R1_Var
  %lnIW = load i64*, i64** %Sp_Var
  %lnIX = getelementptr inbounds i64, i64* %lnIW, i32 -2
  %lnIY = ptrtoint i64* %lnIX to i64
  %lnIZ = inttoptr i64 %lnIY to i64*
  store i64* %lnIZ, i64** %Sp_Var
  %lnJ0 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJ1 = load i64*, i64** %Sp_Var
  %lnJ2 = load i64, i64* %R1_Var
  %lnJ3 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJ0( i64* %Base_Arg, i64* %lnJ1, i64* %Hp_Arg, i64 %lnJ2, i64 %lnJ3, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cIs:
  %lnJ4 = load i64, i64* %l01D
  %lnJ5 = inttoptr i64 %lnJ4 to i64*
  %lnJ6 = load i64, i64* %lnJ5, !tbaa !1
  %lnJ7 = inttoptr i64 %lnJ6 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJ8 = load i64*, i64** %Sp_Var
  %lnJ9 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJ7( i64* %Base_Arg, i64* %lnJ8, i64* %Hp_Arg, i64 %lnJ9, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cIu:
  %lnJa = load i64, i64* %l01D
  store i64 %lnJa, i64* %R1_Var
  %lnJb = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnJc = bitcast i64* %lnJb to i64*
  %lnJd = load i64, i64* %lnJc, !tbaa !5
  %lnJe = inttoptr i64 %lnJd to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJf = load i64*, i64** %Sp_Var
  %lnJg = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJe( i64* %Base_Arg, i64* %lnJf, i64* %Hp_Arg, i64 %lnJg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziBase_zdfMonadIO_closure = external global i8
@stg_ap_p_info = external global i8
@ghczmprim_GHCziTuple_Z0T_closure = external global i8
@base_GHCziBase_return_info = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@llvm.used = appending constant [8 x i8*] [i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uIw_srt_struct* @_uIw_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rBe_closure_struct* @rBe_closure$def to i8*), i8* bitcast (%rBd_bytes_struct* @rBd_bytes$def to i8*), i8* bitcast (%rBc_closure_struct* @rBc_closure$def to i8*), i8* bitcast (%rB6_bytes_struct* @rB6_bytes$def to i8*)], section "llvm.metadata"
