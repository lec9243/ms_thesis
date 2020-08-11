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

%rEw_bytes_struct = type <{[5 x i8]}>
@rEw_bytes$def = internal constant %rEw_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rEw_bytes = internal alias i8, bitcast (%rEw_bytes_struct* @rEw_bytes$def to i8*)
%rEC_closure_struct = type <{i64, i64}>
@rEC_closure$def = internal global %rEC_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rEw_bytes_struct* @rEw_bytes$def to i64)}>
@rEC_closure = internal alias i8, bitcast (%rEC_closure_struct* @rEC_closure$def to i8*)
%rED_bytes_struct = type <{[5 x i8]}>
@rED_bytes$def = internal constant %rED_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rED_bytes = internal alias i8, bitcast (%rED_bytes_struct* @rED_bytes$def to i8*)
%rEE_closure_struct = type <{i64, i64}>
@rEE_closure$def = internal global %rEE_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rED_bytes_struct* @rED_bytes$def to i64)}>
@rEE_closure = internal alias i8, bitcast (%rEE_closure_struct* @rEE_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rEC_closure_struct* @rEC_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rEE_closure_struct* @rEE_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%_uLP_srt_struct = type <{i64, i64, i64, i64}>
%_uLQ_srt_struct = type <{i64, i64, i64, i64}>
%_uLR_srt_struct = type <{i64, i64, i64, i64, i64}>
%cLj_str_struct = type <{[12 x i8]}>
%cLw_str_struct = type <{[5 x i8]}>
%sKV_closure_struct = type <{i64, i64, i64, i64}>
@_uLP_srt$def = internal global %_uLP_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zpzp_closure to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 0}>
@_uLP_srt = internal alias i8, bitcast (%_uLP_srt_struct* @_uLP_srt$def to i8*)
@_uLQ_srt$def = internal global %_uLQ_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 ptrtoint (i8* @_uLP_srt to i64), i64 0}>
@_uLQ_srt = internal alias i8, bitcast (%_uLQ_srt_struct* @_uLQ_srt$def to i8*)
@_uLR_srt$def = internal global %_uLR_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_getLine_closure to i64), i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64), i64 ptrtoint (i8* @_uLQ_srt to i64), i64 0}>
@_uLR_srt = internal alias i8, bitcast (%_uLR_srt_struct* @_uLR_srt$def to i8*)
@cLj_str$def = internal constant %cLj_str_struct<{[12 x i8] [i8 44, i8 32, i8 121, i8 111, i8 117, i8 32, i8 114, i8 111, i8 99, i8 107, i8 33, i8 0]}>, align 1
@cLj_str = internal alias i8, bitcast (%cLj_str_struct* @cLj_str$def to i8*)
@cLw_str$def = internal constant %cLw_str_struct<{[5 x i8] [i8 72, i8 101, i8 121, i8 32, i8 0]}>, align 1
@cLw_str = internal alias i8, bitcast (%cLw_str_struct* @cLw_str$def to i8*)
@sKV_closure$def = internal global %sKV_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKV_info$def to i64), i64 0, i64 0, i64 0}>
@sKV_closure = internal alias i8, bitcast (%sKV_closure_struct* @sKV_closure$def to i8*)
@sKR_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKR_info$def to i8*)
define internal ghccc void @sKR_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKR_info$def to i64)) to i32),i32 0)}>
{
nLS:
  %lsKR = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cLk
cLk:
  %lnLT = load i64, i64* %R1_Var
  store i64 %lnLT, i64* %lsKR
  %lnLU = load i64*, i64** %Sp_Var
  %lnLV = getelementptr inbounds i64, i64* %lnLU, i32 1
  %lnLW = ptrtoint i64* %lnLV to i64
  %lnLX = sub i64 %lnLW, 24
  %lnLY = icmp ult i64 %lnLX, %SpLim_Arg
  %lnM0 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnLY, i1 0 )
  br i1 %lnM0, label %cLl, label %cLm
cLm:
  %lnM2 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnM1 = load i64*, i64** %Sp_Var
  %lnM3 = getelementptr inbounds i64, i64* %lnM1, i32 -2
  store i64 %lnM2, i64* %lnM3, !tbaa !2
  %lnM5 = load i64, i64* %lsKR
  %lnM4 = load i64*, i64** %Sp_Var
  %lnM6 = getelementptr inbounds i64, i64* %lnM4, i32 -1
  store i64 %lnM5, i64* %lnM6, !tbaa !2
  %lnM7 = ptrtoint %cLj_str_struct* @cLj_str$def to i64
  store i64 %lnM7, i64* %R2_Var
  %lnM8 = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnM8, i64* %R1_Var
  %lnM9 = load i64*, i64** %Sp_Var
  %lnMa = getelementptr inbounds i64, i64* %lnM9, i32 -2
  %lnMb = ptrtoint i64* %lnMa to i64
  %lnMc = inttoptr i64 %lnMb to i64*
  store i64* %lnMc, i64** %Sp_Var
  %lnMd = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnMe = load i64*, i64** %Sp_Var
  %lnMf = load i64, i64* %R1_Var
  %lnMg = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnMd( i64* %Base_Arg, i64* %lnMe, i64* %Hp_Arg, i64 %lnMf, i64 %lnMg, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLl:
  %lnMh = load i64, i64* %lsKR
  store i64 %lnMh, i64* %R1_Var
  %lnMi = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnMj = bitcast i64* %lnMi to i64*
  %lnMk = load i64, i64* %lnMj, !tbaa !5
  %lnMl = inttoptr i64 %lnMk to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnMm = load i64*, i64** %Sp_Var
  %lnMn = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnMl( i64* %Base_Arg, i64* %lnMm, i64* %Hp_Arg, i64 %lnMn, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@sKS_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKS_info$def to i8*)
define internal ghccc void @sKS_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uLP_srt_struct* @_uLP_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKS_info$def to i64)) to i32),i32 0)}>
{
nMo:
  %lsKS = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lsKP = alloca i64, i32 1
  %lcLf = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cLn
cLn:
  %lnMp = load i64, i64* %R1_Var
  store i64 %lnMp, i64* %lsKS
  %lnMq = load i64*, i64** %Sp_Var
  %lnMr = getelementptr inbounds i64, i64* %lnMq, i32 1
  %lnMs = ptrtoint i64* %lnMr to i64
  %lnMt = sub i64 %lnMs, 24
  %lnMu = icmp ult i64 %lnMt, %SpLim_Arg
  %lnMv = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnMu, i1 0 )
  br i1 %lnMv, label %cLo, label %cLp
cLp:
  %lnMw = load i64*, i64** %Hp_Var
  %lnMx = getelementptr inbounds i64, i64* %lnMw, i32 2
  %lnMy = ptrtoint i64* %lnMx to i64
  %lnMz = inttoptr i64 %lnMy to i64*
  store i64* %lnMz, i64** %Hp_Var
  %lnMA = load i64*, i64** %Hp_Var
  %lnMB = ptrtoint i64* %lnMA to i64
  %lnMC = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnMD = bitcast i64* %lnMC to i64*
  %lnME = load i64, i64* %lnMD, !tbaa !5
  %lnMF = icmp ugt i64 %lnMB, %lnME
  %lnMG = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnMF, i1 0 )
  br i1 %lnMG, label %cLr, label %cLq
cLq:
  %lnMI = ptrtoint i8* @stg_upd_frame_info to i64
  %lnMH = load i64*, i64** %Sp_Var
  %lnMJ = getelementptr inbounds i64, i64* %lnMH, i32 -2
  store i64 %lnMI, i64* %lnMJ, !tbaa !2
  %lnML = load i64, i64* %lsKS
  %lnMK = load i64*, i64** %Sp_Var
  %lnMM = getelementptr inbounds i64, i64* %lnMK, i32 -1
  store i64 %lnML, i64* %lnMM, !tbaa !2
  %lnMN = load i64, i64* %lsKS
  %lnMO = add i64 %lnMN, 16
  %lnMP = inttoptr i64 %lnMO to i64*
  %lnMQ = load i64, i64* %lnMP, !tbaa !1
  store i64 %lnMQ, i64* %lsKP
  %lnMS = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKR_info$def to i64
  %lnMR = load i64*, i64** %Hp_Var
  %lnMT = getelementptr inbounds i64, i64* %lnMR, i32 -1
  store i64 %lnMS, i64* %lnMT, !tbaa !3
  %lnMU = load i64*, i64** %Hp_Var
  %lnMV = getelementptr inbounds i64, i64* %lnMU, i32 -1
  %lnMW = ptrtoint i64* %lnMV to i64
  store i64 %lnMW, i64* %lcLf
  %lnMX = load i64, i64* %lcLf
  store i64 %lnMX, i64* %R3_Var
  %lnMY = load i64, i64* %lsKP
  store i64 %lnMY, i64* %R2_Var
  %lnMZ = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnMZ, i64* %R1_Var
  %lnN0 = load i64*, i64** %Sp_Var
  %lnN1 = getelementptr inbounds i64, i64* %lnN0, i32 -2
  %lnN2 = ptrtoint i64* %lnN1 to i64
  %lnN3 = inttoptr i64 %lnN2 to i64*
  store i64* %lnN3, i64** %Sp_Var
  %lnN4 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnN5 = load i64*, i64** %Sp_Var
  %lnN6 = load i64*, i64** %Hp_Var
  %lnN7 = load i64, i64* %R1_Var
  %lnN8 = load i64, i64* %R2_Var
  %lnN9 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnN4( i64* %Base_Arg, i64* %lnN5, i64* %lnN6, i64 %lnN7, i64 %lnN8, i64 %lnN9, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLr:
  %lnNa = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnNa, !tbaa !5
  br label %cLo
cLo:
  %lnNb = load i64, i64* %lsKS
  store i64 %lnNb, i64* %R1_Var
  %lnNc = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnNd = bitcast i64* %lnNc to i64*
  %lnNe = load i64, i64* %lnNd, !tbaa !5
  %lnNf = inttoptr i64 %lnNe to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNg = load i64*, i64** %Sp_Var
  %lnNh = load i64*, i64** %Hp_Var
  %lnNi = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNf( i64* %Base_Arg, i64* %lnNg, i64* %lnNh, i64 %lnNi, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sKQ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKQ_info$def to i8*)
define internal ghccc void @sKQ_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKQ_info$def to i64)) to i32),i32 0)}>
{
nNj:
  %lsKQ = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cLx
cLx:
  %lnNk = load i64, i64* %R1_Var
  store i64 %lnNk, i64* %lsKQ
  %lnNl = load i64*, i64** %Sp_Var
  %lnNm = getelementptr inbounds i64, i64* %lnNl, i32 1
  %lnNn = ptrtoint i64* %lnNm to i64
  %lnNo = sub i64 %lnNn, 24
  %lnNp = icmp ult i64 %lnNo, %SpLim_Arg
  %lnNq = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnNp, i1 0 )
  br i1 %lnNq, label %cLy, label %cLz
cLz:
  %lnNs = ptrtoint i8* @stg_upd_frame_info to i64
  %lnNr = load i64*, i64** %Sp_Var
  %lnNt = getelementptr inbounds i64, i64* %lnNr, i32 -2
  store i64 %lnNs, i64* %lnNt, !tbaa !2
  %lnNv = load i64, i64* %lsKQ
  %lnNu = load i64*, i64** %Sp_Var
  %lnNw = getelementptr inbounds i64, i64* %lnNu, i32 -1
  store i64 %lnNv, i64* %lnNw, !tbaa !2
  %lnNx = ptrtoint %cLw_str_struct* @cLw_str$def to i64
  store i64 %lnNx, i64* %R2_Var
  %lnNy = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnNy, i64* %R1_Var
  %lnNz = load i64*, i64** %Sp_Var
  %lnNA = getelementptr inbounds i64, i64* %lnNz, i32 -2
  %lnNB = ptrtoint i64* %lnNA to i64
  %lnNC = inttoptr i64 %lnNB to i64*
  store i64* %lnNC, i64** %Sp_Var
  %lnND = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNE = load i64*, i64** %Sp_Var
  %lnNF = load i64, i64* %R1_Var
  %lnNG = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnND( i64* %Base_Arg, i64* %lnNE, i64* %Hp_Arg, i64 %lnNF, i64 %lnNG, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLy:
  %lnNH = load i64, i64* %lsKQ
  store i64 %lnNH, i64* %R1_Var
  %lnNI = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnNJ = bitcast i64* %lnNI to i64*
  %lnNK = load i64, i64* %lnNJ, !tbaa !5
  %lnNL = inttoptr i64 %lnNK to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNM = load i64*, i64** %Sp_Var
  %lnNN = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNL( i64* %Base_Arg, i64* %lnNM, i64* %Hp_Arg, i64 %lnNN, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sKT_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKT_info$def to i8*)
define internal ghccc void @sKT_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uLP_srt_struct* @_uLP_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKT_info$def to i64)) to i32),i32 0)}>
{
nNO:
  %lsKT = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lsKP = alloca i64, i32 1
  %lcLb = alloca i64, i32 1
  %lcLs = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cLA
cLA:
  %lnNP = load i64, i64* %R1_Var
  store i64 %lnNP, i64* %lsKT
  %lnNQ = load i64*, i64** %Sp_Var
  %lnNR = getelementptr inbounds i64, i64* %lnNQ, i32 1
  %lnNS = ptrtoint i64* %lnNR to i64
  %lnNT = sub i64 %lnNS, 24
  %lnNU = icmp ult i64 %lnNT, %SpLim_Arg
  %lnNV = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnNU, i1 0 )
  br i1 %lnNV, label %cLB, label %cLC
cLC:
  %lnNW = load i64*, i64** %Hp_Var
  %lnNX = getelementptr inbounds i64, i64* %lnNW, i32 5
  %lnNY = ptrtoint i64* %lnNX to i64
  %lnNZ = inttoptr i64 %lnNY to i64*
  store i64* %lnNZ, i64** %Hp_Var
  %lnO0 = load i64*, i64** %Hp_Var
  %lnO1 = ptrtoint i64* %lnO0 to i64
  %lnO2 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnO3 = bitcast i64* %lnO2 to i64*
  %lnO4 = load i64, i64* %lnO3, !tbaa !5
  %lnO5 = icmp ugt i64 %lnO1, %lnO4
  %lnO6 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnO5, i1 0 )
  br i1 %lnO6, label %cLE, label %cLD
cLD:
  %lnO8 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnO7 = load i64*, i64** %Sp_Var
  %lnO9 = getelementptr inbounds i64, i64* %lnO7, i32 -2
  store i64 %lnO8, i64* %lnO9, !tbaa !2
  %lnOb = load i64, i64* %lsKT
  %lnOa = load i64*, i64** %Sp_Var
  %lnOc = getelementptr inbounds i64, i64* %lnOa, i32 -1
  store i64 %lnOb, i64* %lnOc, !tbaa !2
  %lnOd = load i64, i64* %lsKT
  %lnOe = add i64 %lnOd, 16
  %lnOf = inttoptr i64 %lnOe to i64*
  %lnOg = load i64, i64* %lnOf, !tbaa !1
  store i64 %lnOg, i64* %lsKP
  %lnOi = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKS_info$def to i64
  %lnOh = load i64*, i64** %Hp_Var
  %lnOj = getelementptr inbounds i64, i64* %lnOh, i32 -4
  store i64 %lnOi, i64* %lnOj, !tbaa !3
  %lnOl = load i64, i64* %lsKP
  %lnOk = load i64*, i64** %Hp_Var
  %lnOm = getelementptr inbounds i64, i64* %lnOk, i32 -2
  store i64 %lnOl, i64* %lnOm, !tbaa !3
  %lnOn = load i64*, i64** %Hp_Var
  %lnOo = getelementptr inbounds i64, i64* %lnOn, i32 -4
  %lnOp = ptrtoint i64* %lnOo to i64
  store i64 %lnOp, i64* %lcLb
  %lnOr = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKQ_info$def to i64
  %lnOq = load i64*, i64** %Hp_Var
  %lnOs = getelementptr inbounds i64, i64* %lnOq, i32 -1
  store i64 %lnOr, i64* %lnOs, !tbaa !3
  %lnOt = load i64*, i64** %Hp_Var
  %lnOu = getelementptr inbounds i64, i64* %lnOt, i32 -1
  %lnOv = ptrtoint i64* %lnOu to i64
  store i64 %lnOv, i64* %lcLs
  %lnOw = load i64, i64* %lcLb
  store i64 %lnOw, i64* %R3_Var
  %lnOx = load i64, i64* %lcLs
  store i64 %lnOx, i64* %R2_Var
  %lnOy = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnOy, i64* %R1_Var
  %lnOz = load i64*, i64** %Sp_Var
  %lnOA = getelementptr inbounds i64, i64* %lnOz, i32 -2
  %lnOB = ptrtoint i64* %lnOA to i64
  %lnOC = inttoptr i64 %lnOB to i64*
  store i64* %lnOC, i64** %Sp_Var
  %lnOD = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOE = load i64*, i64** %Sp_Var
  %lnOF = load i64*, i64** %Hp_Var
  %lnOG = load i64, i64* %R1_Var
  %lnOH = load i64, i64* %R2_Var
  %lnOI = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOD( i64* %Base_Arg, i64* %lnOE, i64* %lnOF, i64 %lnOG, i64 %lnOH, i64 %lnOI, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLE:
  %lnOJ = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 40, i64* %lnOJ, !tbaa !5
  br label %cLB
cLB:
  %lnOK = load i64, i64* %lsKT
  store i64 %lnOK, i64* %R1_Var
  %lnOL = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnOM = bitcast i64* %lnOL to i64*
  %lnON = load i64, i64* %lnOM, !tbaa !5
  %lnOO = inttoptr i64 %lnON to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOP = load i64*, i64** %Sp_Var
  %lnOQ = load i64*, i64** %Hp_Var
  %lnOR = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOO( i64* %Base_Arg, i64* %lnOP, i64* %lnOQ, i64 %lnOR, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sKU_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKU_info$def to i8*)
define internal ghccc void @sKU_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 4294967296, i32 10, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uLQ_srt_struct* @_uLQ_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKU_info$def to i64)) to i32),i32 0)}>
{
nOS:
  %lsKP = alloca i64, i32 1
  %lsKU = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcL7 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cLF
cLF:
  %lnOT = load i64, i64* %R2_Var
  store i64 %lnOT, i64* %lsKP
  %lnOU = load i64, i64* %R1_Var
  store i64 %lnOU, i64* %lsKU
  br label %cLH
cLH:
  %lnOV = load i64*, i64** %Hp_Var
  %lnOW = getelementptr inbounds i64, i64* %lnOV, i32 3
  %lnOX = ptrtoint i64* %lnOW to i64
  %lnOY = inttoptr i64 %lnOX to i64*
  store i64* %lnOY, i64** %Hp_Var
  %lnOZ = load i64*, i64** %Hp_Var
  %lnP0 = ptrtoint i64* %lnOZ to i64
  %lnP1 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnP2 = bitcast i64* %lnP1 to i64*
  %lnP3 = load i64, i64* %lnP2, !tbaa !5
  %lnP4 = icmp ugt i64 %lnP0, %lnP3
  %lnP5 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnP4, i1 0 )
  br i1 %lnP5, label %cLJ, label %cLI
cLI:
  %lnP7 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKT_info$def to i64
  %lnP6 = load i64*, i64** %Hp_Var
  %lnP8 = getelementptr inbounds i64, i64* %lnP6, i32 -2
  store i64 %lnP7, i64* %lnP8, !tbaa !3
  %lnPa = load i64, i64* %lsKP
  %lnP9 = load i64*, i64** %Hp_Var
  %lnPb = getelementptr inbounds i64, i64* %lnP9, i32 0
  store i64 %lnPa, i64* %lnPb, !tbaa !3
  %lnPc = load i64*, i64** %Hp_Var
  %lnPd = getelementptr inbounds i64, i64* %lnPc, i32 -2
  %lnPe = ptrtoint i64* %lnPd to i64
  store i64 %lnPe, i64* %lcL7
  %lnPf = load i64, i64* %lcL7
  store i64 %lnPf, i64* %R2_Var
  %lnPg = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnPg, i64* %R1_Var
  %lnPh = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnPi = load i64*, i64** %Hp_Var
  %lnPj = load i64, i64* %R1_Var
  %lnPk = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnPh( i64* %Base_Arg, i64* %Sp_Arg, i64* %lnPi, i64 %lnPj, i64 %lnPk, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLJ:
  %lnPl = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %lnPl, !tbaa !5
  br label %cLG
cLG:
  %lnPm = load i64, i64* %lsKP
  store i64 %lnPm, i64* %R2_Var
  %lnPn = load i64, i64* %lsKU
  store i64 %lnPn, i64* %R1_Var
  %lnPo = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %lnPp = bitcast i64* %lnPo to i64*
  %lnPq = load i64, i64* %lnPp, !tbaa !5
  %lnPr = inttoptr i64 %lnPq to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnPs = load i64*, i64** %Hp_Var
  %lnPt = load i64, i64* %R1_Var
  %lnPu = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnPr( i64* %Base_Arg, i64* %Sp_Arg, i64* %lnPs, i64 %lnPt, i64 %lnPu, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sKV_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKV_info$def to i8*)
define internal ghccc void @sKV_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uLR_srt_struct* @_uLR_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKV_info$def to i64)) to i32),i32 0)}>
{
nPv:
  %lsKV = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
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
  %lcKZ = alloca i64, i32 1
  %lcL2 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cLK
cLK:
  %lnPw = load i64, i64* %R1_Var
  store i64 %lnPw, i64* %lsKV
  %lnPx = load i64*, i64** %Sp_Var
  %lnPy = getelementptr inbounds i64, i64* %lnPx, i32 1
  %lnPz = ptrtoint i64* %lnPy to i64
  %lnPA = sub i64 %lnPz, 48
  %lnPB = icmp ult i64 %lnPA, %SpLim_Arg
  %lnPC = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnPB, i1 0 )
  br i1 %lnPC, label %cLL, label %cLM
cLM:
  %lnPD = load i64*, i64** %Hp_Var
  %lnPE = getelementptr inbounds i64, i64* %lnPD, i32 2
  %lnPF = ptrtoint i64* %lnPE to i64
  %lnPG = inttoptr i64 %lnPF to i64*
  store i64* %lnPG, i64** %Hp_Var
  %lnPH = load i64*, i64** %Hp_Var
  %lnPI = ptrtoint i64* %lnPH to i64
  %lnPJ = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnPK = bitcast i64* %lnPJ to i64*
  %lnPL = load i64, i64* %lnPK, !tbaa !5
  %lnPM = icmp ugt i64 %lnPI, %lnPL
  %lnPN = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnPM, i1 0 )
  br i1 %lnPN, label %cLO, label %cLN
cLN:
  %lnPO = ptrtoint i64* %Base_Arg to i64
  %lnPP = inttoptr i64 %lnPO to i8*
  %lnPQ = load i64, i64* %lsKV
  %lnPR = inttoptr i64 %lnPQ to i8*
  %lnPS = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnPT = call ccc i8* (i8*, i8*) %lnPS( i8* %lnPP, i8* %lnPR ) nounwind
  %lnPU = ptrtoint i8* %lnPT to i64
  store i64 %lnPU, i64* %lcKZ
  %lnPV = load i64, i64* %lcKZ
  %lnPW = icmp eq i64 %lnPV, 0
  br i1 %lnPW, label %cL1, label %cL0
cL0:
  %lnPY = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnPX = load i64*, i64** %Sp_Var
  %lnPZ = getelementptr inbounds i64, i64* %lnPX, i32 -2
  store i64 %lnPY, i64* %lnPZ, !tbaa !2
  %lnQ1 = load i64, i64* %lcKZ
  %lnQ0 = load i64*, i64** %Sp_Var
  %lnQ2 = getelementptr inbounds i64, i64* %lnQ0, i32 -1
  store i64 %lnQ1, i64* %lnQ2, !tbaa !2
  %lnQ4 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKU_info$def to i64
  %lnQ3 = load i64*, i64** %Hp_Var
  %lnQ5 = getelementptr inbounds i64, i64* %lnQ3, i32 -1
  store i64 %lnQ4, i64* %lnQ5, !tbaa !3
  %lnQ7 = load i64*, i64** %Hp_Var
  %lnQ8 = ptrtoint i64* %lnQ7 to i64
  %lnQ9 = add i64 %lnQ8, -7
  store i64 %lnQ9, i64* %lcL2
  %lnQa = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnQa, i64* %R2_Var
  %lnQc = ptrtoint i8* @stg_ap_pp_info to i64
  %lnQb = load i64*, i64** %Sp_Var
  %lnQd = getelementptr inbounds i64, i64* %lnQb, i32 -5
  store i64 %lnQc, i64* %lnQd, !tbaa !2
  %lnQf = ptrtoint i8* @base_SystemziIO_getLine_closure to i64
  %lnQe = load i64*, i64** %Sp_Var
  %lnQg = getelementptr inbounds i64, i64* %lnQe, i32 -4
  store i64 %lnQf, i64* %lnQg, !tbaa !2
  %lnQi = load i64, i64* %lcL2
  %lnQh = load i64*, i64** %Sp_Var
  %lnQj = getelementptr inbounds i64, i64* %lnQh, i32 -3
  store i64 %lnQi, i64* %lnQj, !tbaa !2
  %lnQk = load i64*, i64** %Sp_Var
  %lnQl = getelementptr inbounds i64, i64* %lnQk, i32 -5
  %lnQm = ptrtoint i64* %lnQl to i64
  %lnQn = inttoptr i64 %lnQm to i64*
  store i64* %lnQn, i64** %Sp_Var
  %lnQo = bitcast i8* @base_GHCziBase_zgzgze_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQp = load i64*, i64** %Sp_Var
  %lnQq = load i64*, i64** %Hp_Var
  %lnQr = load i64, i64* %R1_Var
  %lnQs = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQo( i64* %Base_Arg, i64* %lnQp, i64* %lnQq, i64 %lnQr, i64 %lnQs, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cL1:
  %lnQt = load i64, i64* %lsKV
  %lnQu = inttoptr i64 %lnQt to i64*
  %lnQv = load i64, i64* %lnQu, !tbaa !1
  %lnQw = inttoptr i64 %lnQv to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQx = load i64*, i64** %Sp_Var
  %lnQy = load i64*, i64** %Hp_Var
  %lnQz = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQw( i64* %Base_Arg, i64* %lnQx, i64* %lnQy, i64 %lnQz, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cLO:
  %lnQA = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnQA, !tbaa !5
  br label %cLL
cLL:
  %lnQB = load i64, i64* %lsKV
  store i64 %lnQB, i64* %R1_Var
  %lnQC = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnQD = bitcast i64* %lnQC to i64*
  %lnQE = load i64, i64* %lnQD, !tbaa !5
  %lnQF = inttoptr i64 %lnQE to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQG = load i64*, i64** %Sp_Var
  %lnQH = load i64*, i64** %Hp_Var
  %lnQI = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQF( i64* %Base_Arg, i64* %lnQG, i64* %lnQH, i64 %lnQI, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uR2_srt_struct = type <{i64, i64, i64, i64}>
%cQT_str_struct = type <{[25 x i8]}>
%sKO_closure_struct = type <{i64, i64, i64, i64}>
@_uR2_srt$def = internal global %_uR2_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 0}>
@_uR2_srt = internal alias i8, bitcast (%_uR2_srt_struct* @_uR2_srt$def to i8*)
@cQT_str$def = internal constant %cQT_str_struct<{[25 x i8] [i8 72, i8 101, i8 108, i8 108, i8 111, i8 44, i8 32, i8 119, i8 104, i8 97, i8 116, i8 39, i8 115, i8 32, i8 121, i8 111, i8 117, i8 114, i8 32, i8 110, i8 97, i8 109, i8 101, i8 63, i8 0]}>, align 1
@cQT_str = internal alias i8, bitcast (%cQT_str_struct* @cQT_str$def to i8*)
@sKO_closure$def = internal global %sKO_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKO_info$def to i64), i64 0, i64 0, i64 0}>
@sKO_closure = internal alias i8, bitcast (%sKO_closure_struct* @sKO_closure$def to i8*)
@sKN_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKN_info$def to i8*)
define internal ghccc void @sKN_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKN_info$def to i64)) to i32),i32 0)}>
{
nR3:
  %lsKN = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQU
cQU:
  %lnR4 = load i64, i64* %R1_Var
  store i64 %lnR4, i64* %lsKN
  %lnR5 = load i64*, i64** %Sp_Var
  %lnR6 = getelementptr inbounds i64, i64* %lnR5, i32 1
  %lnR7 = ptrtoint i64* %lnR6 to i64
  %lnR8 = sub i64 %lnR7, 24
  %lnR9 = icmp ult i64 %lnR8, %SpLim_Arg
  %lnRa = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnR9, i1 0 )
  br i1 %lnRa, label %cQV, label %cQW
cQW:
  %lnRc = ptrtoint i8* @stg_upd_frame_info to i64
  %lnRb = load i64*, i64** %Sp_Var
  %lnRd = getelementptr inbounds i64, i64* %lnRb, i32 -2
  store i64 %lnRc, i64* %lnRd, !tbaa !2
  %lnRf = load i64, i64* %lsKN
  %lnRe = load i64*, i64** %Sp_Var
  %lnRg = getelementptr inbounds i64, i64* %lnRe, i32 -1
  store i64 %lnRf, i64* %lnRg, !tbaa !2
  %lnRh = ptrtoint %cQT_str_struct* @cQT_str$def to i64
  store i64 %lnRh, i64* %R2_Var
  %lnRi = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnRi, i64* %R1_Var
  %lnRj = load i64*, i64** %Sp_Var
  %lnRk = getelementptr inbounds i64, i64* %lnRj, i32 -2
  %lnRl = ptrtoint i64* %lnRk to i64
  %lnRm = inttoptr i64 %lnRl to i64*
  store i64* %lnRm, i64** %Sp_Var
  %lnRn = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRo = load i64*, i64** %Sp_Var
  %lnRp = load i64, i64* %R1_Var
  %lnRq = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRn( i64* %Base_Arg, i64* %lnRo, i64* %Hp_Arg, i64 %lnRp, i64 %lnRq, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQV:
  %lnRr = load i64, i64* %lsKN
  store i64 %lnRr, i64* %R1_Var
  %lnRs = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnRt = bitcast i64* %lnRs to i64*
  %lnRu = load i64, i64* %lnRt, !tbaa !5
  %lnRv = inttoptr i64 %lnRu to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRw = load i64*, i64** %Sp_Var
  %lnRx = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRv( i64* %Base_Arg, i64* %lnRw, i64* %Hp_Arg, i64 %lnRx, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sKO_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKO_info$def to i8*)
define internal ghccc void @sKO_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uR2_srt_struct* @_uR2_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKO_info$def to i64)) to i32),i32 0)}>
{
nRy:
  %lsKO = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
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
  %lcQM = alloca i64, i32 1
  %lcQP = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQX
cQX:
  %lnRz = load i64, i64* %R1_Var
  store i64 %lnRz, i64* %lsKO
  %lnRA = load i64*, i64** %Sp_Var
  %lnRB = getelementptr inbounds i64, i64* %lnRA, i32 1
  %lnRC = ptrtoint i64* %lnRB to i64
  %lnRD = sub i64 %lnRC, 24
  %lnRE = icmp ult i64 %lnRD, %SpLim_Arg
  %lnRF = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRE, i1 0 )
  br i1 %lnRF, label %cQY, label %cQZ
cQZ:
  %lnRG = load i64*, i64** %Hp_Var
  %lnRH = getelementptr inbounds i64, i64* %lnRG, i32 2
  %lnRI = ptrtoint i64* %lnRH to i64
  %lnRJ = inttoptr i64 %lnRI to i64*
  store i64* %lnRJ, i64** %Hp_Var
  %lnRK = load i64*, i64** %Hp_Var
  %lnRL = ptrtoint i64* %lnRK to i64
  %lnRM = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnRN = bitcast i64* %lnRM to i64*
  %lnRO = load i64, i64* %lnRN, !tbaa !5
  %lnRP = icmp ugt i64 %lnRL, %lnRO
  %lnRQ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRP, i1 0 )
  br i1 %lnRQ, label %cR1, label %cR0
cR0:
  %lnRR = ptrtoint i64* %Base_Arg to i64
  %lnRS = inttoptr i64 %lnRR to i8*
  %lnRT = load i64, i64* %lsKO
  %lnRU = inttoptr i64 %lnRT to i8*
  %lnRV = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnRW = call ccc i8* (i8*, i8*) %lnRV( i8* %lnRS, i8* %lnRU ) nounwind
  %lnRX = ptrtoint i8* %lnRW to i64
  store i64 %lnRX, i64* %lcQM
  %lnRY = load i64, i64* %lcQM
  %lnRZ = icmp eq i64 %lnRY, 0
  br i1 %lnRZ, label %cQO, label %cQN
cQN:
  %lnS1 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnS0 = load i64*, i64** %Sp_Var
  %lnS2 = getelementptr inbounds i64, i64* %lnS0, i32 -2
  store i64 %lnS1, i64* %lnS2, !tbaa !2
  %lnS4 = load i64, i64* %lcQM
  %lnS3 = load i64*, i64** %Sp_Var
  %lnS5 = getelementptr inbounds i64, i64* %lnS3, i32 -1
  store i64 %lnS4, i64* %lnS5, !tbaa !2
  %lnS7 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sKN_info$def to i64
  %lnS6 = load i64*, i64** %Hp_Var
  %lnS8 = getelementptr inbounds i64, i64* %lnS6, i32 -1
  store i64 %lnS7, i64* %lnS8, !tbaa !3
  %lnS9 = load i64*, i64** %Hp_Var
  %lnSa = getelementptr inbounds i64, i64* %lnS9, i32 -1
  %lnSb = ptrtoint i64* %lnSa to i64
  store i64 %lnSb, i64* %lcQP
  %lnSc = load i64, i64* %lcQP
  store i64 %lnSc, i64* %R2_Var
  %lnSd = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnSd, i64* %R1_Var
  %lnSe = load i64*, i64** %Sp_Var
  %lnSf = getelementptr inbounds i64, i64* %lnSe, i32 -2
  %lnSg = ptrtoint i64* %lnSf to i64
  %lnSh = inttoptr i64 %lnSg to i64*
  store i64* %lnSh, i64** %Sp_Var
  %lnSi = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSj = load i64*, i64** %Sp_Var
  %lnSk = load i64*, i64** %Hp_Var
  %lnSl = load i64, i64* %R1_Var
  %lnSm = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSi( i64* %Base_Arg, i64* %lnSj, i64* %lnSk, i64 %lnSl, i64 %lnSm, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQO:
  %lnSn = load i64, i64* %lsKO
  %lnSo = inttoptr i64 %lnSn to i64*
  %lnSp = load i64, i64* %lnSo, !tbaa !1
  %lnSq = inttoptr i64 %lnSp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSr = load i64*, i64** %Sp_Var
  %lnSs = load i64*, i64** %Hp_Var
  %lnSt = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSq( i64* %Base_Arg, i64* %lnSr, i64* %lnSs, i64 %lnSt, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cR1:
  %lnSu = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnSu, !tbaa !5
  br label %cQY
cQY:
  %lnSv = load i64, i64* %lsKO
  store i64 %lnSv, i64* %R1_Var
  %lnSw = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnSx = bitcast i64* %lnSw to i64*
  %lnSy = load i64, i64* %lnSx, !tbaa !5
  %lnSz = inttoptr i64 %lnSy to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSA = load i64*, i64** %Sp_Var
  %lnSB = load i64*, i64** %Hp_Var
  %lnSC = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSz( i64* %Base_Arg, i64* %lnSA, i64* %lnSB, i64 %lnSC, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uSM_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uSM_srt$def = internal global %_uSM_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64), i64 ptrtoint (%sKO_closure_struct* @sKO_closure$def to i64), i64 ptrtoint (%sKV_closure_struct* @sKV_closure$def to i64), i64 0}>
@_uSM_srt = internal alias i8, bitcast (%_uSM_srt_struct* @_uSM_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uSM_srt_struct* @_uSM_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nSN:
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
  %lcSG = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cSJ
cSJ:
  %lnSO = load i64, i64* %R1_Var
  store i64 %lnSO, i64* %lrgc
  %lnSP = load i64*, i64** %Sp_Var
  %lnSQ = getelementptr inbounds i64, i64* %lnSP, i32 1
  %lnSR = ptrtoint i64* %lnSQ to i64
  %lnSS = sub i64 %lnSR, 48
  %lnST = icmp ult i64 %lnSS, %SpLim_Arg
  %lnSU = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnST, i1 0 )
  br i1 %lnSU, label %cSK, label %cSL
cSL:
  %lnSV = ptrtoint i64* %Base_Arg to i64
  %lnSW = inttoptr i64 %lnSV to i8*
  %lnSX = load i64, i64* %lrgc
  %lnSY = inttoptr i64 %lnSX to i8*
  %lnSZ = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnT0 = call ccc i8* (i8*, i8*) %lnSZ( i8* %lnSW, i8* %lnSY ) nounwind
  %lnT1 = ptrtoint i8* %lnT0 to i64
  store i64 %lnT1, i64* %lcSG
  %lnT2 = load i64, i64* %lcSG
  %lnT3 = icmp eq i64 %lnT2, 0
  br i1 %lnT3, label %cSI, label %cSH
cSH:
  %lnT5 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnT4 = load i64*, i64** %Sp_Var
  %lnT6 = getelementptr inbounds i64, i64* %lnT4, i32 -2
  store i64 %lnT5, i64* %lnT6, !tbaa !2
  %lnT8 = load i64, i64* %lcSG
  %lnT7 = load i64*, i64** %Sp_Var
  %lnT9 = getelementptr inbounds i64, i64* %lnT7, i32 -1
  store i64 %lnT8, i64* %lnT9, !tbaa !2
  %lnTa = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnTa, i64* %R2_Var
  %lnTc = ptrtoint i8* @stg_ap_pp_info to i64
  %lnTb = load i64*, i64** %Sp_Var
  %lnTd = getelementptr inbounds i64, i64* %lnTb, i32 -5
  store i64 %lnTc, i64* %lnTd, !tbaa !2
  %lnTf = ptrtoint %sKO_closure_struct* @sKO_closure$def to i64
  %lnTe = load i64*, i64** %Sp_Var
  %lnTg = getelementptr inbounds i64, i64* %lnTe, i32 -4
  store i64 %lnTf, i64* %lnTg, !tbaa !2
  %lnTi = ptrtoint %sKV_closure_struct* @sKV_closure$def to i64
  %lnTh = load i64*, i64** %Sp_Var
  %lnTj = getelementptr inbounds i64, i64* %lnTh, i32 -3
  store i64 %lnTi, i64* %lnTj, !tbaa !2
  %lnTk = load i64*, i64** %Sp_Var
  %lnTl = getelementptr inbounds i64, i64* %lnTk, i32 -5
  %lnTm = ptrtoint i64* %lnTl to i64
  %lnTn = inttoptr i64 %lnTm to i64*
  store i64* %lnTn, i64** %Sp_Var
  %lnTo = bitcast i8* @base_GHCziBase_zgzg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTp = load i64*, i64** %Sp_Var
  %lnTq = load i64, i64* %R1_Var
  %lnTr = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTo( i64* %Base_Arg, i64* %lnTp, i64* %Hp_Arg, i64 %lnTq, i64 %lnTr, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cSI:
  %lnTs = load i64, i64* %lrgc
  %lnTt = inttoptr i64 %lnTs to i64*
  %lnTu = load i64, i64* %lnTt, !tbaa !1
  %lnTv = inttoptr i64 %lnTu to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTw = load i64*, i64** %Sp_Var
  %lnTx = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTv( i64* %Base_Arg, i64* %lnTw, i64* %Hp_Arg, i64 %lnTx, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cSK:
  %lnTy = load i64, i64* %lrgc
  store i64 %lnTy, i64* %R1_Var
  %lnTz = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTA = bitcast i64* %lnTz to i64*
  %lnTB = load i64, i64* %lnTA, !tbaa !5
  %lnTC = inttoptr i64 %lnTB to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTD = load i64*, i64** %Sp_Var
  %lnTE = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTC( i64* %Base_Arg, i64* %lnTD, i64* %Hp_Arg, i64 %lnTE, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uTO_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uTO_srt$def = internal global %_uTO_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uTO_srt = internal alias i8, bitcast (%_uTO_srt_struct* @_uTO_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uTO_srt_struct* @_uTO_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nTP:
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
  %lcTI = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cTL
cTL:
  %lnTQ = load i64, i64* %R1_Var
  store i64 %lnTQ, i64* %l01D
  %lnTR = load i64*, i64** %Sp_Var
  %lnTS = getelementptr inbounds i64, i64* %lnTR, i32 1
  %lnTT = ptrtoint i64* %lnTS to i64
  %lnTU = sub i64 %lnTT, 24
  %lnTV = icmp ult i64 %lnTU, %SpLim_Arg
  %lnTW = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnTV, i1 0 )
  br i1 %lnTW, label %cTM, label %cTN
cTN:
  %lnTX = ptrtoint i64* %Base_Arg to i64
  %lnTY = inttoptr i64 %lnTX to i8*
  %lnTZ = load i64, i64* %l01D
  %lnU0 = inttoptr i64 %lnTZ to i8*
  %lnU1 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnU2 = call ccc i8* (i8*, i8*) %lnU1( i8* %lnTY, i8* %lnU0 ) nounwind
  %lnU3 = ptrtoint i8* %lnU2 to i64
  store i64 %lnU3, i64* %lcTI
  %lnU4 = load i64, i64* %lcTI
  %lnU5 = icmp eq i64 %lnU4, 0
  br i1 %lnU5, label %cTK, label %cTJ
cTJ:
  %lnU7 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnU6 = load i64*, i64** %Sp_Var
  %lnU8 = getelementptr inbounds i64, i64* %lnU6, i32 -2
  store i64 %lnU7, i64* %lnU8, !tbaa !2
  %lnUa = load i64, i64* %lcTI
  %lnU9 = load i64*, i64** %Sp_Var
  %lnUb = getelementptr inbounds i64, i64* %lnU9, i32 -1
  store i64 %lnUa, i64* %lnUb, !tbaa !2
  %lnUc = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnUc, i64* %R2_Var
  %lnUd = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnUd, i64* %R1_Var
  %lnUe = load i64*, i64** %Sp_Var
  %lnUf = getelementptr inbounds i64, i64* %lnUe, i32 -2
  %lnUg = ptrtoint i64* %lnUf to i64
  %lnUh = inttoptr i64 %lnUg to i64*
  store i64* %lnUh, i64** %Sp_Var
  %lnUi = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUj = load i64*, i64** %Sp_Var
  %lnUk = load i64, i64* %R1_Var
  %lnUl = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUi( i64* %Base_Arg, i64* %lnUj, i64* %Hp_Arg, i64 %lnUk, i64 %lnUl, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cTK:
  %lnUm = load i64, i64* %l01D
  %lnUn = inttoptr i64 %lnUm to i64*
  %lnUo = load i64, i64* %lnUn, !tbaa !1
  %lnUp = inttoptr i64 %lnUo to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUq = load i64*, i64** %Sp_Var
  %lnUr = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUp( i64* %Base_Arg, i64* %lnUq, i64* %Hp_Arg, i64 %lnUr, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cTM:
  %lnUs = load i64, i64* %l01D
  store i64 %lnUs, i64* %R1_Var
  %lnUt = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnUu = bitcast i64* %lnUt to i64*
  %lnUv = load i64, i64* %lnUu, !tbaa !5
  %lnUw = inttoptr i64 %lnUv to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUx = load i64*, i64** %Sp_Var
  %lnUy = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUw( i64* %Base_Arg, i64* %lnUx, i64* %Hp_Arg, i64 %lnUy, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziBase_zpzp_closure = external global i8
@ghczmprim_GHCziCString_unpackCStringzh_closure = external global i8
@base_SystemziIO_putStrLn_closure = external global i8
@stg_SRT_3_info = external global i8
@base_SystemziIO_getLine_closure = external global i8
@base_GHCziBase_zdfMonadIO_closure = external global i8
@stg_upd_frame_info = external global i8
@stg_ap_n_fast = external global i8
@stg_ap_pp_fast = external global i8
@stg_ap_p_fast = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@stg_ap_pp_info = external global i8
@base_GHCziBase_zgzgze_info = external global i8
@base_GHCziBase_zgzg_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@llvm.used = appending constant [18 x i8*] [i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uTO_srt_struct* @_uTO_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uSM_srt_struct* @_uSM_srt$def to i8*), i8* bitcast (%sKO_closure_struct* @sKO_closure$def to i8*), i8* bitcast (%cQT_str_struct* @cQT_str$def to i8*), i8* bitcast (%_uR2_srt_struct* @_uR2_srt$def to i8*), i8* bitcast (%sKV_closure_struct* @sKV_closure$def to i8*), i8* bitcast (%cLw_str_struct* @cLw_str$def to i8*), i8* bitcast (%cLj_str_struct* @cLj_str$def to i8*), i8* bitcast (%_uLR_srt_struct* @_uLR_srt$def to i8*), i8* bitcast (%_uLQ_srt_struct* @_uLQ_srt$def to i8*), i8* bitcast (%_uLP_srt_struct* @_uLP_srt$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rEE_closure_struct* @rEE_closure$def to i8*), i8* bitcast (%rED_bytes_struct* @rED_bytes$def to i8*), i8* bitcast (%rEC_closure_struct* @rEC_closure$def to i8*), i8* bitcast (%rEw_bytes_struct* @rEw_bytes$def to i8*)], section "llvm.metadata"
