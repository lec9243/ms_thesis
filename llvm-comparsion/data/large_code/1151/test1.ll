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

%_uQP_srt_struct = type <{i64, i64, i64, i64, i64}>
%_uQQ_srt_struct = type <{i64, i64, i64, i64}>
%cQe_str_struct = type <{[12 x i8]}>
%cQB_str_struct = type <{[5 x i8]}>
%sPV_closure_struct = type <{i64, i64, i64, i64}>
@_uQP_srt$def = internal global %_uQP_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zpzp_closure to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 0}>
@_uQP_srt = internal alias i8, bitcast (%_uQP_srt_struct* @_uQP_srt$def to i8*)
@_uQQ_srt$def = internal global %_uQQ_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 ptrtoint (i8* @_uQP_srt to i64), i64 0}>
@_uQQ_srt = internal alias i8, bitcast (%_uQQ_srt_struct* @_uQQ_srt$def to i8*)
@cQe_str$def = internal constant %cQe_str_struct<{[12 x i8] [i8 44, i8 32, i8 121, i8 111, i8 117, i8 32, i8 114, i8 111, i8 99, i8 107, i8 33, i8 0]}>, align 1
@cQe_str = internal alias i8, bitcast (%cQe_str_struct* @cQe_str$def to i8*)
@cQB_str$def = internal constant %cQB_str_struct<{[5 x i8] [i8 72, i8 101, i8 121, i8 32, i8 0]}>, align 1
@cQB_str = internal alias i8, bitcast (%cQB_str_struct* @cQB_str$def to i8*)
@sPV_closure$def = internal global %sPV_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPV_info$def to i64), i64 0, i64 0, i64 0}>
@sPV_closure = internal alias i8, bitcast (%sPV_closure_struct* @sPV_closure$def to i8*)
@sPS_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPS_info$def to i8*)
define internal ghccc void @sPS_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPS_info$def to i64)) to i32),i32 0)}>
{
nQR:
  %lsPS = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQf
cQf:
  %lnQS = load i64, i64* %R1_Var
  store i64 %lnQS, i64* %lsPS
  %lnQT = load i64*, i64** %Sp_Var
  %lnQU = getelementptr inbounds i64, i64* %lnQT, i32 1
  %lnQV = ptrtoint i64* %lnQU to i64
  %lnQW = sub i64 %lnQV, 24
  %lnQX = icmp ult i64 %lnQW, %SpLim_Arg
  %lnQZ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnQX, i1 0 )
  br i1 %lnQZ, label %cQg, label %cQh
cQh:
  %lnR1 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnR0 = load i64*, i64** %Sp_Var
  %lnR2 = getelementptr inbounds i64, i64* %lnR0, i32 -2
  store i64 %lnR1, i64* %lnR2, !tbaa !2
  %lnR4 = load i64, i64* %lsPS
  %lnR3 = load i64*, i64** %Sp_Var
  %lnR5 = getelementptr inbounds i64, i64* %lnR3, i32 -1
  store i64 %lnR4, i64* %lnR5, !tbaa !2
  %lnR6 = ptrtoint %cQe_str_struct* @cQe_str$def to i64
  store i64 %lnR6, i64* %R2_Var
  %lnR7 = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnR7, i64* %R1_Var
  %lnR8 = load i64*, i64** %Sp_Var
  %lnR9 = getelementptr inbounds i64, i64* %lnR8, i32 -2
  %lnRa = ptrtoint i64* %lnR9 to i64
  %lnRb = inttoptr i64 %lnRa to i64*
  store i64* %lnRb, i64** %Sp_Var
  %lnRc = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRd = load i64*, i64** %Sp_Var
  %lnRe = load i64, i64* %R1_Var
  %lnRf = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRc( i64* %Base_Arg, i64* %lnRd, i64* %Hp_Arg, i64 %lnRe, i64 %lnRf, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQg:
  %lnRg = load i64, i64* %lsPS
  store i64 %lnRg, i64* %R1_Var
  %lnRh = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnRi = bitcast i64* %lnRh to i64*
  %lnRj = load i64, i64* %lnRi, !tbaa !5
  %lnRk = inttoptr i64 %lnRj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRl = load i64*, i64** %Sp_Var
  %lnRm = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRk( i64* %Base_Arg, i64* %lnRl, i64* %Hp_Arg, i64 %lnRm, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@sPR_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPR_info$def to i8*)
define internal ghccc void @sPR_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPR_info$def to i64)) to i32),i32 0)}>
{
nRn:
  %lsPR = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQm = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cQn
cQn:
  %lnRo = load i64, i64* %R1_Var
  store i64 %lnRo, i64* %lsPR
  %lnRp = load i64*, i64** %Sp_Var
  %lnRq = getelementptr inbounds i64, i64* %lnRp, i32 1
  %lnRr = ptrtoint i64* %lnRq to i64
  %lnRs = sub i64 %lnRr, 40
  %lnRt = icmp ult i64 %lnRs, %SpLim_Arg
  %lnRu = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRt, i1 0 )
  br i1 %lnRu, label %cQo, label %cQp
cQp:
  %lnRv = load i64*, i64** %Hp_Var
  %lnRw = getelementptr inbounds i64, i64* %lnRv, i32 2
  %lnRx = ptrtoint i64* %lnRw to i64
  %lnRy = inttoptr i64 %lnRx to i64*
  store i64* %lnRy, i64** %Hp_Var
  %lnRz = load i64*, i64** %Hp_Var
  %lnRA = ptrtoint i64* %lnRz to i64
  %lnRB = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnRC = bitcast i64* %lnRB to i64*
  %lnRD = load i64, i64* %lnRC, !tbaa !5
  %lnRE = icmp ugt i64 %lnRA, %lnRD
  %lnRF = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRE, i1 0 )
  br i1 %lnRF, label %cQr, label %cQq
cQq:
  %lnRH = ptrtoint i8* @stg_upd_frame_info to i64
  %lnRG = load i64*, i64** %Sp_Var
  %lnRI = getelementptr inbounds i64, i64* %lnRG, i32 -2
  store i64 %lnRH, i64* %lnRI, !tbaa !2
  %lnRK = load i64, i64* %lsPR
  %lnRJ = load i64*, i64** %Sp_Var
  %lnRL = getelementptr inbounds i64, i64* %lnRJ, i32 -1
  store i64 %lnRK, i64* %lnRL, !tbaa !2
  %lnRN = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %lnRM = load i64*, i64** %Hp_Var
  %lnRO = getelementptr inbounds i64, i64* %lnRM, i32 -1
  store i64 %lnRN, i64* %lnRO, !tbaa !3
  %lnRP = load i64*, i64** %Hp_Var
  %lnRQ = getelementptr inbounds i64, i64* %lnRP, i32 0
  store i64 1, i64* %lnRQ, !tbaa !3
  %lnRS = load i64*, i64** %Hp_Var
  %lnRT = ptrtoint i64* %lnRS to i64
  %lnRU = add i64 %lnRT, -7
  store i64 %lnRU, i64* %lcQm
  %lnRV = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %lnRV, i64* %R2_Var
  %lnRX = ptrtoint i8* @stg_ap_p_info to i64
  %lnRW = load i64*, i64** %Sp_Var
  %lnRY = getelementptr inbounds i64, i64* %lnRW, i32 -4
  store i64 %lnRX, i64* %lnRY, !tbaa !2
  %lnS0 = load i64, i64* %lcQm
  %lnRZ = load i64*, i64** %Sp_Var
  %lnS1 = getelementptr inbounds i64, i64* %lnRZ, i32 -3
  store i64 %lnS0, i64* %lnS1, !tbaa !2
  %lnS2 = load i64*, i64** %Sp_Var
  %lnS3 = getelementptr inbounds i64, i64* %lnS2, i32 -4
  %lnS4 = ptrtoint i64* %lnS3 to i64
  %lnS5 = inttoptr i64 %lnS4 to i64*
  store i64* %lnS5, i64** %Sp_Var
  %lnS6 = bitcast i8* @base_GHCziShow_show_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnS7 = load i64*, i64** %Sp_Var
  %lnS8 = load i64*, i64** %Hp_Var
  %lnS9 = load i64, i64* %R1_Var
  %lnSa = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnS6( i64* %Base_Arg, i64* %lnS7, i64* %lnS8, i64 %lnS9, i64 %lnSa, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQr:
  %lnSb = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnSb, !tbaa !5
  br label %cQo
cQo:
  %lnSc = load i64, i64* %lsPR
  store i64 %lnSc, i64* %R1_Var
  %lnSd = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnSe = bitcast i64* %lnSd to i64*
  %lnSf = load i64, i64* %lnSe, !tbaa !5
  %lnSg = inttoptr i64 %lnSf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSh = load i64*, i64** %Sp_Var
  %lnSi = load i64*, i64** %Hp_Var
  %lnSj = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSg( i64* %Base_Arg, i64* %lnSh, i64* %lnSi, i64 %lnSj, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPT_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPT_info$def to i8*)
define internal ghccc void @sPT_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uQP_srt_struct* @_uQP_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPT_info$def to i64)) to i32),i32 0)}>
{
nSk:
  %lsPT = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQa = alloca i64, i32 1
  %lcQi = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQs
cQs:
  %lnSl = load i64, i64* %R1_Var
  store i64 %lnSl, i64* %lsPT
  %lnSm = load i64*, i64** %Sp_Var
  %lnSn = getelementptr inbounds i64, i64* %lnSm, i32 1
  %lnSo = ptrtoint i64* %lnSn to i64
  %lnSp = sub i64 %lnSo, 24
  %lnSq = icmp ult i64 %lnSp, %SpLim_Arg
  %lnSr = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnSq, i1 0 )
  br i1 %lnSr, label %cQt, label %cQu
cQu:
  %lnSs = load i64*, i64** %Hp_Var
  %lnSt = getelementptr inbounds i64, i64* %lnSs, i32 4
  %lnSu = ptrtoint i64* %lnSt to i64
  %lnSv = inttoptr i64 %lnSu to i64*
  store i64* %lnSv, i64** %Hp_Var
  %lnSw = load i64*, i64** %Hp_Var
  %lnSx = ptrtoint i64* %lnSw to i64
  %lnSy = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnSz = bitcast i64* %lnSy to i64*
  %lnSA = load i64, i64* %lnSz, !tbaa !5
  %lnSB = icmp ugt i64 %lnSx, %lnSA
  %lnSC = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnSB, i1 0 )
  br i1 %lnSC, label %cQw, label %cQv
cQv:
  %lnSE = ptrtoint i8* @stg_upd_frame_info to i64
  %lnSD = load i64*, i64** %Sp_Var
  %lnSF = getelementptr inbounds i64, i64* %lnSD, i32 -2
  store i64 %lnSE, i64* %lnSF, !tbaa !2
  %lnSH = load i64, i64* %lsPT
  %lnSG = load i64*, i64** %Sp_Var
  %lnSI = getelementptr inbounds i64, i64* %lnSG, i32 -1
  store i64 %lnSH, i64* %lnSI, !tbaa !2
  %lnSK = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPS_info$def to i64
  %lnSJ = load i64*, i64** %Hp_Var
  %lnSL = getelementptr inbounds i64, i64* %lnSJ, i32 -3
  store i64 %lnSK, i64* %lnSL, !tbaa !3
  %lnSM = load i64*, i64** %Hp_Var
  %lnSN = getelementptr inbounds i64, i64* %lnSM, i32 -3
  %lnSO = ptrtoint i64* %lnSN to i64
  store i64 %lnSO, i64* %lcQa
  %lnSQ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPR_info$def to i64
  %lnSP = load i64*, i64** %Hp_Var
  %lnSR = getelementptr inbounds i64, i64* %lnSP, i32 -1
  store i64 %lnSQ, i64* %lnSR, !tbaa !3
  %lnSS = load i64*, i64** %Hp_Var
  %lnST = getelementptr inbounds i64, i64* %lnSS, i32 -1
  %lnSU = ptrtoint i64* %lnST to i64
  store i64 %lnSU, i64* %lcQi
  %lnSV = load i64, i64* %lcQa
  store i64 %lnSV, i64* %R3_Var
  %lnSW = load i64, i64* %lcQi
  store i64 %lnSW, i64* %R2_Var
  %lnSX = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnSX, i64* %R1_Var
  %lnSY = load i64*, i64** %Sp_Var
  %lnSZ = getelementptr inbounds i64, i64* %lnSY, i32 -2
  %lnT0 = ptrtoint i64* %lnSZ to i64
  %lnT1 = inttoptr i64 %lnT0 to i64*
  store i64* %lnT1, i64** %Sp_Var
  %lnT2 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnT3 = load i64*, i64** %Sp_Var
  %lnT4 = load i64*, i64** %Hp_Var
  %lnT5 = load i64, i64* %R1_Var
  %lnT6 = load i64, i64* %R2_Var
  %lnT7 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnT2( i64* %Base_Arg, i64* %lnT3, i64* %lnT4, i64 %lnT5, i64 %lnT6, i64 %lnT7, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQw:
  %lnT8 = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %lnT8, !tbaa !5
  br label %cQt
cQt:
  %lnT9 = load i64, i64* %lsPT
  store i64 %lnT9, i64* %R1_Var
  %lnTa = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTb = bitcast i64* %lnTa to i64*
  %lnTc = load i64, i64* %lnTb, !tbaa !5
  %lnTd = inttoptr i64 %lnTc to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTe = load i64*, i64** %Sp_Var
  %lnTf = load i64*, i64** %Hp_Var
  %lnTg = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTd( i64* %Base_Arg, i64* %lnTe, i64* %lnTf, i64 %lnTg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPK_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPK_info$def to i8*)
define internal ghccc void @sPK_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPK_info$def to i64)) to i32),i32 0)}>
{
nTh:
  %lsPK = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQC
cQC:
  %lnTi = load i64, i64* %R1_Var
  store i64 %lnTi, i64* %lsPK
  %lnTj = load i64*, i64** %Sp_Var
  %lnTk = getelementptr inbounds i64, i64* %lnTj, i32 1
  %lnTl = ptrtoint i64* %lnTk to i64
  %lnTm = sub i64 %lnTl, 24
  %lnTn = icmp ult i64 %lnTm, %SpLim_Arg
  %lnTo = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnTn, i1 0 )
  br i1 %lnTo, label %cQD, label %cQE
cQE:
  %lnTq = ptrtoint i8* @stg_upd_frame_info to i64
  %lnTp = load i64*, i64** %Sp_Var
  %lnTr = getelementptr inbounds i64, i64* %lnTp, i32 -2
  store i64 %lnTq, i64* %lnTr, !tbaa !2
  %lnTt = load i64, i64* %lsPK
  %lnTs = load i64*, i64** %Sp_Var
  %lnTu = getelementptr inbounds i64, i64* %lnTs, i32 -1
  store i64 %lnTt, i64* %lnTu, !tbaa !2
  %lnTv = ptrtoint %cQB_str_struct* @cQB_str$def to i64
  store i64 %lnTv, i64* %R2_Var
  %lnTw = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnTw, i64* %R1_Var
  %lnTx = load i64*, i64** %Sp_Var
  %lnTy = getelementptr inbounds i64, i64* %lnTx, i32 -2
  %lnTz = ptrtoint i64* %lnTy to i64
  %lnTA = inttoptr i64 %lnTz to i64*
  store i64* %lnTA, i64** %Sp_Var
  %lnTB = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTC = load i64*, i64** %Sp_Var
  %lnTD = load i64, i64* %R1_Var
  %lnTE = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTB( i64* %Base_Arg, i64* %lnTC, i64* %Hp_Arg, i64 %lnTD, i64 %lnTE, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQD:
  %lnTF = load i64, i64* %lsPK
  store i64 %lnTF, i64* %R1_Var
  %lnTG = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTH = bitcast i64* %lnTG to i64*
  %lnTI = load i64, i64* %lnTH, !tbaa !5
  %lnTJ = inttoptr i64 %lnTI to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTK = load i64*, i64** %Sp_Var
  %lnTL = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTJ( i64* %Base_Arg, i64* %lnTK, i64* %Hp_Arg, i64 %lnTL, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPU_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPU_info$def to i8*)
define internal ghccc void @sPU_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uQP_srt_struct* @_uQP_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPU_info$def to i64)) to i32),i32 0)}>
{
nTM:
  %lsPU = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQ6 = alloca i64, i32 1
  %lcQx = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQF
cQF:
  %lnTN = load i64, i64* %R1_Var
  store i64 %lnTN, i64* %lsPU
  %lnTO = load i64*, i64** %Sp_Var
  %lnTP = getelementptr inbounds i64, i64* %lnTO, i32 1
  %lnTQ = ptrtoint i64* %lnTP to i64
  %lnTR = sub i64 %lnTQ, 24
  %lnTS = icmp ult i64 %lnTR, %SpLim_Arg
  %lnTT = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnTS, i1 0 )
  br i1 %lnTT, label %cQG, label %cQH
cQH:
  %lnTU = load i64*, i64** %Hp_Var
  %lnTV = getelementptr inbounds i64, i64* %lnTU, i32 4
  %lnTW = ptrtoint i64* %lnTV to i64
  %lnTX = inttoptr i64 %lnTW to i64*
  store i64* %lnTX, i64** %Hp_Var
  %lnTY = load i64*, i64** %Hp_Var
  %lnTZ = ptrtoint i64* %lnTY to i64
  %lnU0 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnU1 = bitcast i64* %lnU0 to i64*
  %lnU2 = load i64, i64* %lnU1, !tbaa !5
  %lnU3 = icmp ugt i64 %lnTZ, %lnU2
  %lnU4 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnU3, i1 0 )
  br i1 %lnU4, label %cQJ, label %cQI
cQI:
  %lnU6 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnU5 = load i64*, i64** %Sp_Var
  %lnU7 = getelementptr inbounds i64, i64* %lnU5, i32 -2
  store i64 %lnU6, i64* %lnU7, !tbaa !2
  %lnU9 = load i64, i64* %lsPU
  %lnU8 = load i64*, i64** %Sp_Var
  %lnUa = getelementptr inbounds i64, i64* %lnU8, i32 -1
  store i64 %lnU9, i64* %lnUa, !tbaa !2
  %lnUc = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPT_info$def to i64
  %lnUb = load i64*, i64** %Hp_Var
  %lnUd = getelementptr inbounds i64, i64* %lnUb, i32 -3
  store i64 %lnUc, i64* %lnUd, !tbaa !3
  %lnUe = load i64*, i64** %Hp_Var
  %lnUf = getelementptr inbounds i64, i64* %lnUe, i32 -3
  %lnUg = ptrtoint i64* %lnUf to i64
  store i64 %lnUg, i64* %lcQ6
  %lnUi = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPK_info$def to i64
  %lnUh = load i64*, i64** %Hp_Var
  %lnUj = getelementptr inbounds i64, i64* %lnUh, i32 -1
  store i64 %lnUi, i64* %lnUj, !tbaa !3
  %lnUk = load i64*, i64** %Hp_Var
  %lnUl = getelementptr inbounds i64, i64* %lnUk, i32 -1
  %lnUm = ptrtoint i64* %lnUl to i64
  store i64 %lnUm, i64* %lcQx
  %lnUn = load i64, i64* %lcQ6
  store i64 %lnUn, i64* %R3_Var
  %lnUo = load i64, i64* %lcQx
  store i64 %lnUo, i64* %R2_Var
  %lnUp = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnUp, i64* %R1_Var
  %lnUq = load i64*, i64** %Sp_Var
  %lnUr = getelementptr inbounds i64, i64* %lnUq, i32 -2
  %lnUs = ptrtoint i64* %lnUr to i64
  %lnUt = inttoptr i64 %lnUs to i64*
  store i64* %lnUt, i64** %Sp_Var
  %lnUu = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUv = load i64*, i64** %Sp_Var
  %lnUw = load i64*, i64** %Hp_Var
  %lnUx = load i64, i64* %R1_Var
  %lnUy = load i64, i64* %R2_Var
  %lnUz = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUu( i64* %Base_Arg, i64* %lnUv, i64* %lnUw, i64 %lnUx, i64 %lnUy, i64 %lnUz, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQJ:
  %lnUA = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %lnUA, !tbaa !5
  br label %cQG
cQG:
  %lnUB = load i64, i64* %lsPU
  store i64 %lnUB, i64* %R1_Var
  %lnUC = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnUD = bitcast i64* %lnUC to i64*
  %lnUE = load i64, i64* %lnUD, !tbaa !5
  %lnUF = inttoptr i64 %lnUE to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUG = load i64*, i64** %Sp_Var
  %lnUH = load i64*, i64** %Hp_Var
  %lnUI = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUF( i64* %Base_Arg, i64* %lnUG, i64* %lnUH, i64 %lnUI, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPV_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPV_info$def to i8*)
define internal ghccc void @sPV_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uQQ_srt_struct* @_uQQ_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPV_info$def to i64)) to i32),i32 0)}>
{
nUJ:
  %lsPV = alloca i64, i32 1
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
  %lcPZ = alloca i64, i32 1
  %lcQ2 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQK
cQK:
  %lnUK = load i64, i64* %R1_Var
  store i64 %lnUK, i64* %lsPV
  %lnUL = load i64*, i64** %Sp_Var
  %lnUM = getelementptr inbounds i64, i64* %lnUL, i32 1
  %lnUN = ptrtoint i64* %lnUM to i64
  %lnUO = sub i64 %lnUN, 24
  %lnUP = icmp ult i64 %lnUO, %SpLim_Arg
  %lnUQ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnUP, i1 0 )
  br i1 %lnUQ, label %cQL, label %cQM
cQM:
  %lnUR = load i64*, i64** %Hp_Var
  %lnUS = getelementptr inbounds i64, i64* %lnUR, i32 2
  %lnUT = ptrtoint i64* %lnUS to i64
  %lnUU = inttoptr i64 %lnUT to i64*
  store i64* %lnUU, i64** %Hp_Var
  %lnUV = load i64*, i64** %Hp_Var
  %lnUW = ptrtoint i64* %lnUV to i64
  %lnUX = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnUY = bitcast i64* %lnUX to i64*
  %lnUZ = load i64, i64* %lnUY, !tbaa !5
  %lnV0 = icmp ugt i64 %lnUW, %lnUZ
  %lnV1 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnV0, i1 0 )
  br i1 %lnV1, label %cQO, label %cQN
cQN:
  %lnV2 = ptrtoint i64* %Base_Arg to i64
  %lnV3 = inttoptr i64 %lnV2 to i8*
  %lnV4 = load i64, i64* %lsPV
  %lnV5 = inttoptr i64 %lnV4 to i8*
  %lnV6 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnV7 = call ccc i8* (i8*, i8*) %lnV6( i8* %lnV3, i8* %lnV5 ) nounwind
  %lnV8 = ptrtoint i8* %lnV7 to i64
  store i64 %lnV8, i64* %lcPZ
  %lnV9 = load i64, i64* %lcPZ
  %lnVa = icmp eq i64 %lnV9, 0
  br i1 %lnVa, label %cQ1, label %cQ0
cQ0:
  %lnVc = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnVb = load i64*, i64** %Sp_Var
  %lnVd = getelementptr inbounds i64, i64* %lnVb, i32 -2
  store i64 %lnVc, i64* %lnVd, !tbaa !2
  %lnVf = load i64, i64* %lcPZ
  %lnVe = load i64*, i64** %Sp_Var
  %lnVg = getelementptr inbounds i64, i64* %lnVe, i32 -1
  store i64 %lnVf, i64* %lnVg, !tbaa !2
  %lnVi = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPU_info$def to i64
  %lnVh = load i64*, i64** %Hp_Var
  %lnVj = getelementptr inbounds i64, i64* %lnVh, i32 -1
  store i64 %lnVi, i64* %lnVj, !tbaa !3
  %lnVk = load i64*, i64** %Hp_Var
  %lnVl = getelementptr inbounds i64, i64* %lnVk, i32 -1
  %lnVm = ptrtoint i64* %lnVl to i64
  store i64 %lnVm, i64* %lcQ2
  %lnVn = load i64, i64* %lcQ2
  store i64 %lnVn, i64* %R2_Var
  %lnVo = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnVo, i64* %R1_Var
  %lnVp = load i64*, i64** %Sp_Var
  %lnVq = getelementptr inbounds i64, i64* %lnVp, i32 -2
  %lnVr = ptrtoint i64* %lnVq to i64
  %lnVs = inttoptr i64 %lnVr to i64*
  store i64* %lnVs, i64** %Sp_Var
  %lnVt = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVu = load i64*, i64** %Sp_Var
  %lnVv = load i64*, i64** %Hp_Var
  %lnVw = load i64, i64* %R1_Var
  %lnVx = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVt( i64* %Base_Arg, i64* %lnVu, i64* %lnVv, i64 %lnVw, i64 %lnVx, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQ1:
  %lnVy = load i64, i64* %lsPV
  %lnVz = inttoptr i64 %lnVy to i64*
  %lnVA = load i64, i64* %lnVz, !tbaa !1
  %lnVB = inttoptr i64 %lnVA to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVC = load i64*, i64** %Sp_Var
  %lnVD = load i64*, i64** %Hp_Var
  %lnVE = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVB( i64* %Base_Arg, i64* %lnVC, i64* %lnVD, i64 %lnVE, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQO:
  %lnVF = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnVF, !tbaa !5
  br label %cQL
cQL:
  %lnVG = load i64, i64* %lsPV
  store i64 %lnVG, i64* %R1_Var
  %lnVH = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnVI = bitcast i64* %lnVH to i64*
  %lnVJ = load i64, i64* %lnVI, !tbaa !5
  %lnVK = inttoptr i64 %lnVJ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVL = load i64*, i64** %Sp_Var
  %lnVM = load i64*, i64** %Hp_Var
  %lnVN = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVK( i64* %Base_Arg, i64* %lnVL, i64* %lnVM, i64 %lnVN, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uW7_srt_struct = type <{i64, i64, i64, i64}>
%cVY_str_struct = type <{[25 x i8]}>
%sPJ_closure_struct = type <{i64, i64, i64, i64}>
@_uW7_srt$def = internal global %_uW7_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 0}>
@_uW7_srt = internal alias i8, bitcast (%_uW7_srt_struct* @_uW7_srt$def to i8*)
@cVY_str$def = internal constant %cVY_str_struct<{[25 x i8] [i8 72, i8 101, i8 108, i8 108, i8 111, i8 44, i8 32, i8 119, i8 104, i8 97, i8 116, i8 39, i8 115, i8 32, i8 121, i8 111, i8 117, i8 114, i8 32, i8 110, i8 97, i8 109, i8 101, i8 63, i8 0]}>, align 1
@cVY_str = internal alias i8, bitcast (%cVY_str_struct* @cVY_str$def to i8*)
@sPJ_closure$def = internal global %sPJ_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPJ_info$def to i64), i64 0, i64 0, i64 0}>
@sPJ_closure = internal alias i8, bitcast (%sPJ_closure_struct* @sPJ_closure$def to i8*)
@sPI_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPI_info$def to i8*)
define internal ghccc void @sPI_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPI_info$def to i64)) to i32),i32 0)}>
{
nW8:
  %lsPI = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cVZ
cVZ:
  %lnW9 = load i64, i64* %R1_Var
  store i64 %lnW9, i64* %lsPI
  %lnWa = load i64*, i64** %Sp_Var
  %lnWb = getelementptr inbounds i64, i64* %lnWa, i32 1
  %lnWc = ptrtoint i64* %lnWb to i64
  %lnWd = sub i64 %lnWc, 24
  %lnWe = icmp ult i64 %lnWd, %SpLim_Arg
  %lnWf = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnWe, i1 0 )
  br i1 %lnWf, label %cW0, label %cW1
cW1:
  %lnWh = ptrtoint i8* @stg_upd_frame_info to i64
  %lnWg = load i64*, i64** %Sp_Var
  %lnWi = getelementptr inbounds i64, i64* %lnWg, i32 -2
  store i64 %lnWh, i64* %lnWi, !tbaa !2
  %lnWk = load i64, i64* %lsPI
  %lnWj = load i64*, i64** %Sp_Var
  %lnWl = getelementptr inbounds i64, i64* %lnWj, i32 -1
  store i64 %lnWk, i64* %lnWl, !tbaa !2
  %lnWm = ptrtoint %cVY_str_struct* @cVY_str$def to i64
  store i64 %lnWm, i64* %R2_Var
  %lnWn = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnWn, i64* %R1_Var
  %lnWo = load i64*, i64** %Sp_Var
  %lnWp = getelementptr inbounds i64, i64* %lnWo, i32 -2
  %lnWq = ptrtoint i64* %lnWp to i64
  %lnWr = inttoptr i64 %lnWq to i64*
  store i64* %lnWr, i64** %Sp_Var
  %lnWs = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnWt = load i64*, i64** %Sp_Var
  %lnWu = load i64, i64* %R1_Var
  %lnWv = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnWs( i64* %Base_Arg, i64* %lnWt, i64* %Hp_Arg, i64 %lnWu, i64 %lnWv, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cW0:
  %lnWw = load i64, i64* %lsPI
  store i64 %lnWw, i64* %R1_Var
  %lnWx = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnWy = bitcast i64* %lnWx to i64*
  %lnWz = load i64, i64* %lnWy, !tbaa !5
  %lnWA = inttoptr i64 %lnWz to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnWB = load i64*, i64** %Sp_Var
  %lnWC = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnWA( i64* %Base_Arg, i64* %lnWB, i64* %Hp_Arg, i64 %lnWC, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPJ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPJ_info$def to i8*)
define internal ghccc void @sPJ_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uW7_srt_struct* @_uW7_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPJ_info$def to i64)) to i32),i32 0)}>
{
nWD:
  %lsPJ = alloca i64, i32 1
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
  %lcVR = alloca i64, i32 1
  %lcVU = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cW2
cW2:
  %lnWE = load i64, i64* %R1_Var
  store i64 %lnWE, i64* %lsPJ
  %lnWF = load i64*, i64** %Sp_Var
  %lnWG = getelementptr inbounds i64, i64* %lnWF, i32 1
  %lnWH = ptrtoint i64* %lnWG to i64
  %lnWI = sub i64 %lnWH, 24
  %lnWJ = icmp ult i64 %lnWI, %SpLim_Arg
  %lnWK = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnWJ, i1 0 )
  br i1 %lnWK, label %cW3, label %cW4
cW4:
  %lnWL = load i64*, i64** %Hp_Var
  %lnWM = getelementptr inbounds i64, i64* %lnWL, i32 2
  %lnWN = ptrtoint i64* %lnWM to i64
  %lnWO = inttoptr i64 %lnWN to i64*
  store i64* %lnWO, i64** %Hp_Var
  %lnWP = load i64*, i64** %Hp_Var
  %lnWQ = ptrtoint i64* %lnWP to i64
  %lnWR = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnWS = bitcast i64* %lnWR to i64*
  %lnWT = load i64, i64* %lnWS, !tbaa !5
  %lnWU = icmp ugt i64 %lnWQ, %lnWT
  %lnWV = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnWU, i1 0 )
  br i1 %lnWV, label %cW6, label %cW5
cW5:
  %lnWW = ptrtoint i64* %Base_Arg to i64
  %lnWX = inttoptr i64 %lnWW to i8*
  %lnWY = load i64, i64* %lsPJ
  %lnWZ = inttoptr i64 %lnWY to i8*
  %lnX0 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnX1 = call ccc i8* (i8*, i8*) %lnX0( i8* %lnWX, i8* %lnWZ ) nounwind
  %lnX2 = ptrtoint i8* %lnX1 to i64
  store i64 %lnX2, i64* %lcVR
  %lnX3 = load i64, i64* %lcVR
  %lnX4 = icmp eq i64 %lnX3, 0
  br i1 %lnX4, label %cVT, label %cVS
cVS:
  %lnX6 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnX5 = load i64*, i64** %Sp_Var
  %lnX7 = getelementptr inbounds i64, i64* %lnX5, i32 -2
  store i64 %lnX6, i64* %lnX7, !tbaa !2
  %lnX9 = load i64, i64* %lcVR
  %lnX8 = load i64*, i64** %Sp_Var
  %lnXa = getelementptr inbounds i64, i64* %lnX8, i32 -1
  store i64 %lnX9, i64* %lnXa, !tbaa !2
  %lnXc = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPI_info$def to i64
  %lnXb = load i64*, i64** %Hp_Var
  %lnXd = getelementptr inbounds i64, i64* %lnXb, i32 -1
  store i64 %lnXc, i64* %lnXd, !tbaa !3
  %lnXe = load i64*, i64** %Hp_Var
  %lnXf = getelementptr inbounds i64, i64* %lnXe, i32 -1
  %lnXg = ptrtoint i64* %lnXf to i64
  store i64 %lnXg, i64* %lcVU
  %lnXh = load i64, i64* %lcVU
  store i64 %lnXh, i64* %R2_Var
  %lnXi = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnXi, i64* %R1_Var
  %lnXj = load i64*, i64** %Sp_Var
  %lnXk = getelementptr inbounds i64, i64* %lnXj, i32 -2
  %lnXl = ptrtoint i64* %lnXk to i64
  %lnXm = inttoptr i64 %lnXl to i64*
  store i64* %lnXm, i64** %Sp_Var
  %lnXn = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXo = load i64*, i64** %Sp_Var
  %lnXp = load i64*, i64** %Hp_Var
  %lnXq = load i64, i64* %R1_Var
  %lnXr = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXn( i64* %Base_Arg, i64* %lnXo, i64* %lnXp, i64 %lnXq, i64 %lnXr, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cVT:
  %lnXs = load i64, i64* %lsPJ
  %lnXt = inttoptr i64 %lnXs to i64*
  %lnXu = load i64, i64* %lnXt, !tbaa !1
  %lnXv = inttoptr i64 %lnXu to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXw = load i64*, i64** %Sp_Var
  %lnXx = load i64*, i64** %Hp_Var
  %lnXy = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXv( i64* %Base_Arg, i64* %lnXw, i64* %lnXx, i64 %lnXy, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cW6:
  %lnXz = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnXz, !tbaa !5
  br label %cW3
cW3:
  %lnXA = load i64, i64* %lsPJ
  store i64 %lnXA, i64* %R1_Var
  %lnXB = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnXC = bitcast i64* %lnXB to i64*
  %lnXD = load i64, i64* %lnXC, !tbaa !5
  %lnXE = inttoptr i64 %lnXD to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXF = load i64*, i64** %Sp_Var
  %lnXG = load i64*, i64** %Hp_Var
  %lnXH = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXE( i64* %Base_Arg, i64* %lnXF, i64* %lnXG, i64 %lnXH, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uXR_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uXR_srt$def = internal global %_uXR_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64), i64 ptrtoint (%sPJ_closure_struct* @sPJ_closure$def to i64), i64 ptrtoint (%sPV_closure_struct* @sPV_closure$def to i64), i64 0}>
@_uXR_srt = internal alias i8, bitcast (%_uXR_srt_struct* @_uXR_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uXR_srt_struct* @_uXR_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nXS:
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
  %lcXL = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cXO
cXO:
  %lnXT = load i64, i64* %R1_Var
  store i64 %lnXT, i64* %lrgc
  %lnXU = load i64*, i64** %Sp_Var
  %lnXV = getelementptr inbounds i64, i64* %lnXU, i32 1
  %lnXW = ptrtoint i64* %lnXV to i64
  %lnXX = sub i64 %lnXW, 48
  %lnXY = icmp ult i64 %lnXX, %SpLim_Arg
  %lnXZ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnXY, i1 0 )
  br i1 %lnXZ, label %cXP, label %cXQ
cXQ:
  %lnY0 = ptrtoint i64* %Base_Arg to i64
  %lnY1 = inttoptr i64 %lnY0 to i8*
  %lnY2 = load i64, i64* %lrgc
  %lnY3 = inttoptr i64 %lnY2 to i8*
  %lnY4 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnY5 = call ccc i8* (i8*, i8*) %lnY4( i8* %lnY1, i8* %lnY3 ) nounwind
  %lnY6 = ptrtoint i8* %lnY5 to i64
  store i64 %lnY6, i64* %lcXL
  %lnY7 = load i64, i64* %lcXL
  %lnY8 = icmp eq i64 %lnY7, 0
  br i1 %lnY8, label %cXN, label %cXM
cXM:
  %lnYa = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnY9 = load i64*, i64** %Sp_Var
  %lnYb = getelementptr inbounds i64, i64* %lnY9, i32 -2
  store i64 %lnYa, i64* %lnYb, !tbaa !2
  %lnYd = load i64, i64* %lcXL
  %lnYc = load i64*, i64** %Sp_Var
  %lnYe = getelementptr inbounds i64, i64* %lnYc, i32 -1
  store i64 %lnYd, i64* %lnYe, !tbaa !2
  %lnYf = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnYf, i64* %R2_Var
  %lnYh = ptrtoint i8* @stg_ap_pp_info to i64
  %lnYg = load i64*, i64** %Sp_Var
  %lnYi = getelementptr inbounds i64, i64* %lnYg, i32 -5
  store i64 %lnYh, i64* %lnYi, !tbaa !2
  %lnYk = ptrtoint %sPJ_closure_struct* @sPJ_closure$def to i64
  %lnYj = load i64*, i64** %Sp_Var
  %lnYl = getelementptr inbounds i64, i64* %lnYj, i32 -4
  store i64 %lnYk, i64* %lnYl, !tbaa !2
  %lnYn = ptrtoint %sPV_closure_struct* @sPV_closure$def to i64
  %lnYm = load i64*, i64** %Sp_Var
  %lnYo = getelementptr inbounds i64, i64* %lnYm, i32 -3
  store i64 %lnYn, i64* %lnYo, !tbaa !2
  %lnYp = load i64*, i64** %Sp_Var
  %lnYq = getelementptr inbounds i64, i64* %lnYp, i32 -5
  %lnYr = ptrtoint i64* %lnYq to i64
  %lnYs = inttoptr i64 %lnYr to i64*
  store i64* %lnYs, i64** %Sp_Var
  %lnYt = bitcast i8* @base_GHCziBase_zgzg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYu = load i64*, i64** %Sp_Var
  %lnYv = load i64, i64* %R1_Var
  %lnYw = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYt( i64* %Base_Arg, i64* %lnYu, i64* %Hp_Arg, i64 %lnYv, i64 %lnYw, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cXN:
  %lnYx = load i64, i64* %lrgc
  %lnYy = inttoptr i64 %lnYx to i64*
  %lnYz = load i64, i64* %lnYy, !tbaa !1
  %lnYA = inttoptr i64 %lnYz to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYB = load i64*, i64** %Sp_Var
  %lnYC = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYA( i64* %Base_Arg, i64* %lnYB, i64* %Hp_Arg, i64 %lnYC, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cXP:
  %lnYD = load i64, i64* %lrgc
  store i64 %lnYD, i64* %R1_Var
  %lnYE = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnYF = bitcast i64* %lnYE to i64*
  %lnYG = load i64, i64* %lnYF, !tbaa !5
  %lnYH = inttoptr i64 %lnYG to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYI = load i64*, i64** %Sp_Var
  %lnYJ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYH( i64* %Base_Arg, i64* %lnYI, i64* %Hp_Arg, i64 %lnYJ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uYT_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uYT_srt$def = internal global %_uYT_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uYT_srt = internal alias i8, bitcast (%_uYT_srt_struct* @_uYT_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uYT_srt_struct* @_uYT_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nYU:
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
  %lcYN = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cYQ
cYQ:
  %lnYV = load i64, i64* %R1_Var
  store i64 %lnYV, i64* %l01D
  %lnYW = load i64*, i64** %Sp_Var
  %lnYX = getelementptr inbounds i64, i64* %lnYW, i32 1
  %lnYY = ptrtoint i64* %lnYX to i64
  %lnYZ = sub i64 %lnYY, 24
  %lnZ0 = icmp ult i64 %lnYZ, %SpLim_Arg
  %lnZ1 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnZ0, i1 0 )
  br i1 %lnZ1, label %cYR, label %cYS
cYS:
  %lnZ2 = ptrtoint i64* %Base_Arg to i64
  %lnZ3 = inttoptr i64 %lnZ2 to i8*
  %lnZ4 = load i64, i64* %l01D
  %lnZ5 = inttoptr i64 %lnZ4 to i8*
  %lnZ6 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnZ7 = call ccc i8* (i8*, i8*) %lnZ6( i8* %lnZ3, i8* %lnZ5 ) nounwind
  %lnZ8 = ptrtoint i8* %lnZ7 to i64
  store i64 %lnZ8, i64* %lcYN
  %lnZ9 = load i64, i64* %lcYN
  %lnZa = icmp eq i64 %lnZ9, 0
  br i1 %lnZa, label %cYP, label %cYO
cYO:
  %lnZc = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnZb = load i64*, i64** %Sp_Var
  %lnZd = getelementptr inbounds i64, i64* %lnZb, i32 -2
  store i64 %lnZc, i64* %lnZd, !tbaa !2
  %lnZf = load i64, i64* %lcYN
  %lnZe = load i64*, i64** %Sp_Var
  %lnZg = getelementptr inbounds i64, i64* %lnZe, i32 -1
  store i64 %lnZf, i64* %lnZg, !tbaa !2
  %lnZh = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnZh, i64* %R2_Var
  %lnZi = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnZi, i64* %R1_Var
  %lnZj = load i64*, i64** %Sp_Var
  %lnZk = getelementptr inbounds i64, i64* %lnZj, i32 -2
  %lnZl = ptrtoint i64* %lnZk to i64
  %lnZm = inttoptr i64 %lnZl to i64*
  store i64* %lnZm, i64** %Sp_Var
  %lnZn = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZo = load i64*, i64** %Sp_Var
  %lnZp = load i64, i64* %R1_Var
  %lnZq = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZn( i64* %Base_Arg, i64* %lnZo, i64* %Hp_Arg, i64 %lnZp, i64 %lnZq, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cYP:
  %lnZr = load i64, i64* %l01D
  %lnZs = inttoptr i64 %lnZr to i64*
  %lnZt = load i64, i64* %lnZs, !tbaa !1
  %lnZu = inttoptr i64 %lnZt to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZv = load i64*, i64** %Sp_Var
  %lnZw = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZu( i64* %Base_Arg, i64* %lnZv, i64* %Hp_Arg, i64 %lnZw, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cYR:
  %lnZx = load i64, i64* %l01D
  store i64 %lnZx, i64* %R1_Var
  %lnZy = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnZz = bitcast i64* %lnZy to i64*
  %lnZA = load i64, i64* %lnZz, !tbaa !5
  %lnZB = inttoptr i64 %lnZA to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZC = load i64*, i64** %Sp_Var
  %lnZD = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZB( i64* %Base_Arg, i64* %lnZC, i64* %Hp_Arg, i64 %lnZD, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%rPy_bytes_struct = type <{[5 x i8]}>
@rPy_bytes$def = internal constant %rPy_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPy_bytes = internal alias i8, bitcast (%rPy_bytes_struct* @rPy_bytes$def to i8*)
%rPE_closure_struct = type <{i64, i64}>
@rPE_closure$def = internal global %rPE_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPy_bytes_struct* @rPy_bytes$def to i64)}>
@rPE_closure = internal alias i8, bitcast (%rPE_closure_struct* @rPE_closure$def to i8*)
%rPF_bytes_struct = type <{[5 x i8]}>
@rPF_bytes$def = internal constant %rPF_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPF_bytes = internal alias i8, bitcast (%rPF_bytes_struct* @rPF_bytes$def to i8*)
%rPG_closure_struct = type <{i64, i64}>
@rPG_closure$def = internal global %rPG_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPF_bytes_struct* @rPF_bytes$def to i64)}>
@rPG_closure = internal alias i8, bitcast (%rPG_closure_struct* @rPG_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rPE_closure_struct* @rPE_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rPG_closure_struct* @rPG_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
@stg_SRT_3_info = external global i8
@base_GHCziBase_zpzp_closure = external global i8
@ghczmprim_GHCziCString_unpackCStringzh_closure = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@stg_SRT_2_info = external global i8
@base_SystemziIO_putStrLn_closure = external global i8
@stg_upd_frame_info = external global i8
@stg_ap_n_fast = external global i8
@integerzmwiredzmin_GHCziIntegerziType_Szh_con_info = external global i8
@stg_ap_p_info = external global i8
@base_GHCziShow_show_info = external global i8
@stg_ap_pp_fast = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@stg_ap_p_fast = external global i8
@base_GHCziBase_zdfMonadIO_closure = external global i8
@stg_ap_pp_info = external global i8
@base_GHCziBase_zgzg_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [17 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rPG_closure_struct* @rPG_closure$def to i8*), i8* bitcast (%rPF_bytes_struct* @rPF_bytes$def to i8*), i8* bitcast (%rPE_closure_struct* @rPE_closure$def to i8*), i8* bitcast (%rPy_bytes_struct* @rPy_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uYT_srt_struct* @_uYT_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uXR_srt_struct* @_uXR_srt$def to i8*), i8* bitcast (%sPJ_closure_struct* @sPJ_closure$def to i8*), i8* bitcast (%cVY_str_struct* @cVY_str$def to i8*), i8* bitcast (%_uW7_srt_struct* @_uW7_srt$def to i8*), i8* bitcast (%sPV_closure_struct* @sPV_closure$def to i8*), i8* bitcast (%cQB_str_struct* @cQB_str$def to i8*), i8* bitcast (%cQe_str_struct* @cQe_str$def to i8*), i8* bitcast (%_uQQ_srt_struct* @_uQQ_srt$def to i8*), i8* bitcast (%_uQP_srt_struct* @_uQP_srt$def to i8*)], section "llvm.metadata"
