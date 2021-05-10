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

%rLg_bytes_struct = type <{[5 x i8]}>
@rLg_bytes$def = internal constant %rLg_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rLg_bytes = internal alias i8, bitcast (%rLg_bytes_struct* @rLg_bytes$def to i8*)
%rLm_closure_struct = type <{i64, i64}>
@rLm_closure$def = internal global %rLm_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rLg_bytes_struct* @rLg_bytes$def to i64)}>
@rLm_closure = internal alias i8, bitcast (%rLm_closure_struct* @rLm_closure$def to i8*)
%rLn_bytes_struct = type <{[5 x i8]}>
@rLn_bytes$def = internal constant %rLn_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rLn_bytes = internal alias i8, bitcast (%rLn_bytes_struct* @rLn_bytes$def to i8*)
%rLo_closure_struct = type <{i64, i64}>
@rLo_closure$def = internal global %rLo_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rLn_bytes_struct* @rLn_bytes$def to i64)}>
@rLo_closure = internal alias i8, bitcast (%rLo_closure_struct* @rLo_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rLm_closure_struct* @rLm_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rLo_closure_struct* @rLo_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%sM6_closure_struct = type <{i64, i64, i64, i64}>
@sM6_closure$def = internal global %sM6_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i64), i64 0, i64 0, i64 0}>
@sM6_closure = internal alias i8, bitcast (%sM6_closure_struct* @sM6_closure$def to i8*)
@sM6_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i8*)
define internal ghccc void @sM6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziNum_zdfNumInt_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i64)) to i32),i32 0)}>
{
nMg:
  %lsM6 = alloca i64, i32 1
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
  %lcMa = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cMd
cMd:
  %lnMh = load i64, i64* %R1_Var
  store i64 %lnMh, i64* %lsM6
  %lnMi = load i64*, i64** %Sp_Var
  %lnMj = getelementptr inbounds i64, i64* %lnMi, i32 1
  %lnMk = ptrtoint i64* %lnMj to i64
  %lnMl = sub i64 %lnMk, 48
  %lnMm = icmp ult i64 %lnMl, %SpLim_Arg
  %lnMo = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnMm, i1 0 )
  br i1 %lnMo, label %cMe, label %cMf
cMf:
  %lnMp = ptrtoint i64* %Base_Arg to i64
  %lnMq = inttoptr i64 %lnMp to i8*
  %lnMr = load i64, i64* %lsM6
  %lnMs = inttoptr i64 %lnMr to i8*
  %lnMt = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnMu = call ccc i8* (i8*, i8*) %lnMt( i8* %lnMq, i8* %lnMs ) nounwind
  %lnMv = ptrtoint i8* %lnMu to i64
  store i64 %lnMv, i64* %lcMa
  %lnMw = load i64, i64* %lcMa
  %lnMx = icmp eq i64 %lnMw, 0
  br i1 %lnMx, label %cMc, label %cMb
cMb:
  %lnMz = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnMy = load i64*, i64** %Sp_Var
  %lnMA = getelementptr inbounds i64, i64* %lnMy, i32 -2
  store i64 %lnMz, i64* %lnMA, !tbaa !2
  %lnMC = load i64, i64* %lcMa
  %lnMB = load i64*, i64** %Sp_Var
  %lnMD = getelementptr inbounds i64, i64* %lnMB, i32 -1
  store i64 %lnMC, i64* %lnMD, !tbaa !2
  %lnME = ptrtoint i8* @base_GHCziNum_zdfNumInt_closure to i64
  store i64 %lnME, i64* %R2_Var
  %lnMG = ptrtoint i8* @stg_ap_pp_info to i64
  %lnMF = load i64*, i64** %Sp_Var
  %lnMH = getelementptr inbounds i64, i64* %lnMF, i32 -5
  store i64 %lnMG, i64* %lnMH, !tbaa !2
  %lnMJ = ptrtoint i8* @stg_INTLIKE_closure to i64
  %lnMK = add i64 %lnMJ, 273
  %lnMI = load i64*, i64** %Sp_Var
  %lnML = getelementptr inbounds i64, i64* %lnMI, i32 -4
  store i64 %lnMK, i64* %lnML, !tbaa !2
  %lnMN = ptrtoint i8* @stg_INTLIKE_closure to i64
  %lnMO = add i64 %lnMN, 273
  %lnMM = load i64*, i64** %Sp_Var
  %lnMP = getelementptr inbounds i64, i64* %lnMM, i32 -3
  store i64 %lnMO, i64* %lnMP, !tbaa !2
  %lnMQ = load i64*, i64** %Sp_Var
  %lnMR = getelementptr inbounds i64, i64* %lnMQ, i32 -5
  %lnMS = ptrtoint i64* %lnMR to i64
  %lnMT = inttoptr i64 %lnMS to i64*
  store i64* %lnMT, i64** %Sp_Var
  %lnMU = bitcast i8* @base_GHCziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnMV = load i64*, i64** %Sp_Var
  %lnMW = load i64, i64* %R1_Var
  %lnMX = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnMU( i64* %Base_Arg, i64* %lnMV, i64* %Hp_Arg, i64 %lnMW, i64 %lnMX, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMc:
  %lnMY = load i64, i64* %lsM6
  %lnMZ = inttoptr i64 %lnMY to i64*
  %lnN0 = load i64, i64* %lnMZ, !tbaa !1
  %lnN1 = inttoptr i64 %lnN0 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnN2 = load i64*, i64** %Sp_Var
  %lnN3 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnN1( i64* %Base_Arg, i64* %lnN2, i64* %Hp_Arg, i64 %lnN3, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMe:
  %lnN4 = load i64, i64* %lsM6
  store i64 %lnN4, i64* %R1_Var
  %lnN5 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnN6 = bitcast i64* %lnN5 to i64*
  %lnN7 = load i64, i64* %lnN6, !tbaa !5
  %lnN8 = inttoptr i64 %lnN7 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnN9 = load i64*, i64** %Sp_Var
  %lnNa = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnN8( i64* %Base_Arg, i64* %lnN9, i64* %Hp_Arg, i64 %lnNa, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
%_uNk_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uNk_srt$def = internal global %_uNk_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInt_closure to i64), i64 ptrtoint (%sM6_closure_struct* @sM6_closure$def to i64), i64 0}>
@_uNk_srt = internal alias i8, bitcast (%_uNk_srt_struct* @_uNk_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uNk_srt_struct* @_uNk_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nNl:
  %lrgd = alloca i64, i32 1
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
  %lcNe = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cNh
cNh:
  %lnNm = load i64, i64* %R1_Var
  store i64 %lnNm, i64* %lrgd
  %lnNn = load i64*, i64** %Sp_Var
  %lnNo = getelementptr inbounds i64, i64* %lnNn, i32 1
  %lnNp = ptrtoint i64* %lnNo to i64
  %lnNq = sub i64 %lnNp, 24
  %lnNr = icmp ult i64 %lnNq, %SpLim_Arg
  %lnNs = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnNr, i1 0 )
  br i1 %lnNs, label %cNi, label %cNj
cNj:
  %lnNt = ptrtoint i64* %Base_Arg to i64
  %lnNu = inttoptr i64 %lnNt to i8*
  %lnNv = load i64, i64* %lrgd
  %lnNw = inttoptr i64 %lnNv to i8*
  %lnNx = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnNy = call ccc i8* (i8*, i8*) %lnNx( i8* %lnNu, i8* %lnNw ) nounwind
  %lnNz = ptrtoint i8* %lnNy to i64
  store i64 %lnNz, i64* %lcNe
  %lnNA = load i64, i64* %lcNe
  %lnNB = icmp eq i64 %lnNA, 0
  br i1 %lnNB, label %cNg, label %cNf
cNf:
  %lnND = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnNC = load i64*, i64** %Sp_Var
  %lnNE = getelementptr inbounds i64, i64* %lnNC, i32 -2
  store i64 %lnND, i64* %lnNE, !tbaa !2
  %lnNG = load i64, i64* %lcNe
  %lnNF = load i64*, i64** %Sp_Var
  %lnNH = getelementptr inbounds i64, i64* %lnNF, i32 -1
  store i64 %lnNG, i64* %lnNH, !tbaa !2
  %lnNI = ptrtoint %sM6_closure_struct* @sM6_closure$def to i64
  store i64 %lnNI, i64* %R3_Var
  %lnNJ = ptrtoint i8* @base_GHCziShow_zdfShowInt_closure to i64
  store i64 %lnNJ, i64* %R2_Var
  %lnNK = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %lnNK, i64* %R1_Var
  %lnNL = load i64*, i64** %Sp_Var
  %lnNM = getelementptr inbounds i64, i64* %lnNL, i32 -2
  %lnNN = ptrtoint i64* %lnNM to i64
  %lnNO = inttoptr i64 %lnNN to i64*
  store i64* %lnNO, i64** %Sp_Var
  %lnNP = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNQ = load i64*, i64** %Sp_Var
  %lnNR = load i64, i64* %R1_Var
  %lnNS = load i64, i64* %R2_Var
  %lnNT = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNP( i64* %Base_Arg, i64* %lnNQ, i64* %Hp_Arg, i64 %lnNR, i64 %lnNS, i64 %lnNT, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cNg:
  %lnNU = load i64, i64* %lrgd
  %lnNV = inttoptr i64 %lnNU to i64*
  %lnNW = load i64, i64* %lnNV, !tbaa !1
  %lnNX = inttoptr i64 %lnNW to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNY = load i64*, i64** %Sp_Var
  %lnNZ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNX( i64* %Base_Arg, i64* %lnNY, i64* %Hp_Arg, i64 %lnNZ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cNi:
  %lnO0 = load i64, i64* %lrgd
  store i64 %lnO0, i64* %R1_Var
  %lnO1 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnO2 = bitcast i64* %lnO1 to i64*
  %lnO3 = load i64, i64* %lnO2, !tbaa !5
  %lnO4 = inttoptr i64 %lnO3 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnO5 = load i64*, i64** %Sp_Var
  %lnO6 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnO4( i64* %Base_Arg, i64* %lnO5, i64* %Hp_Arg, i64 %lnO6, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uOg_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uOg_srt$def = internal global %_uOg_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uOg_srt = internal alias i8, bitcast (%_uOg_srt_struct* @_uOg_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uOg_srt_struct* @_uOg_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nOh:
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
  %lcOa = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cOd
cOd:
  %lnOi = load i64, i64* %R1_Var
  store i64 %lnOi, i64* %l01D
  %lnOj = load i64*, i64** %Sp_Var
  %lnOk = getelementptr inbounds i64, i64* %lnOj, i32 1
  %lnOl = ptrtoint i64* %lnOk to i64
  %lnOm = sub i64 %lnOl, 24
  %lnOn = icmp ult i64 %lnOm, %SpLim_Arg
  %lnOo = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnOn, i1 0 )
  br i1 %lnOo, label %cOe, label %cOf
cOf:
  %lnOp = ptrtoint i64* %Base_Arg to i64
  %lnOq = inttoptr i64 %lnOp to i8*
  %lnOr = load i64, i64* %l01D
  %lnOs = inttoptr i64 %lnOr to i8*
  %lnOt = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnOu = call ccc i8* (i8*, i8*) %lnOt( i8* %lnOq, i8* %lnOs ) nounwind
  %lnOv = ptrtoint i8* %lnOu to i64
  store i64 %lnOv, i64* %lcOa
  %lnOw = load i64, i64* %lcOa
  %lnOx = icmp eq i64 %lnOw, 0
  br i1 %lnOx, label %cOc, label %cOb
cOb:
  %lnOz = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnOy = load i64*, i64** %Sp_Var
  %lnOA = getelementptr inbounds i64, i64* %lnOy, i32 -2
  store i64 %lnOz, i64* %lnOA, !tbaa !2
  %lnOC = load i64, i64* %lcOa
  %lnOB = load i64*, i64** %Sp_Var
  %lnOD = getelementptr inbounds i64, i64* %lnOB, i32 -1
  store i64 %lnOC, i64* %lnOD, !tbaa !2
  %lnOE = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnOE, i64* %R2_Var
  %lnOF = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnOF, i64* %R1_Var
  %lnOG = load i64*, i64** %Sp_Var
  %lnOH = getelementptr inbounds i64, i64* %lnOG, i32 -2
  %lnOI = ptrtoint i64* %lnOH to i64
  %lnOJ = inttoptr i64 %lnOI to i64*
  store i64* %lnOJ, i64** %Sp_Var
  %lnOK = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOL = load i64*, i64** %Sp_Var
  %lnOM = load i64, i64* %R1_Var
  %lnON = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOK( i64* %Base_Arg, i64* %lnOL, i64* %Hp_Arg, i64 %lnOM, i64 %lnON, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cOc:
  %lnOO = load i64, i64* %l01D
  %lnOP = inttoptr i64 %lnOO to i64*
  %lnOQ = load i64, i64* %lnOP, !tbaa !1
  %lnOR = inttoptr i64 %lnOQ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOS = load i64*, i64** %Sp_Var
  %lnOT = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOR( i64* %Base_Arg, i64* %lnOS, i64* %Hp_Arg, i64 %lnOT, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cOe:
  %lnOU = load i64, i64* %l01D
  store i64 %lnOU, i64* %R1_Var
  %lnOV = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnOW = bitcast i64* %lnOV to i64*
  %lnOX = load i64, i64* %lnOW, !tbaa !5
  %lnOY = inttoptr i64 %lnOX to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOZ = load i64*, i64** %Sp_Var
  %lnP0 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOY( i64* %Base_Arg, i64* %lnOZ, i64* %Hp_Arg, i64 %lnP0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziNum_zdfNumInt_closure = external global i8
@stg_ap_pp_info = external global i8
@stg_INTLIKE_closure = external global i8
@base_GHCziNum_zp_info = external global i8
@stg_SRT_3_info = external global i8
@base_SystemziIO_print_closure = external global i8
@base_GHCziShow_zdfShowInt_closure = external global i8
@stg_ap_pp_fast = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uOg_srt_struct* @_uOg_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uNk_srt_struct* @_uNk_srt$def to i8*), i8* bitcast (%sM6_closure_struct* @sM6_closure$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rLo_closure_struct* @rLo_closure$def to i8*), i8* bitcast (%rLn_bytes_struct* @rLn_bytes$def to i8*), i8* bitcast (%rLm_closure_struct* @rLm_closure$def to i8*), i8* bitcast (%rLg_bytes_struct* @rLg_bytes$def to i8*)], section "llvm.metadata"
