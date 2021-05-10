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

%_uR3_srt_struct = type <{i64, i64, i64, i64, i64}>
%_uR4_srt_struct = type <{i64, i64, i64, i64}>
%cQs_str_struct = type <{[12 x i8]}>
%cQP_str_struct = type <{[5 x i8]}>
%sQ9_closure_struct = type <{i64, i64, i64, i64}>
@_uR3_srt$def = internal global %_uR3_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zpzp_closure to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 0}>
@_uR3_srt = internal alias i8, bitcast (%_uR3_srt_struct* @_uR3_srt$def to i8*)
@_uR4_srt$def = internal global %_uR4_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 ptrtoint (i8* @_uR3_srt to i64), i64 0}>
@_uR4_srt = internal alias i8, bitcast (%_uR4_srt_struct* @_uR4_srt$def to i8*)
@cQs_str$def = internal constant %cQs_str_struct<{[12 x i8] [i8 44, i8 32, i8 121, i8 111, i8 117, i8 32, i8 114, i8 111, i8 99, i8 107, i8 33, i8 0]}>, align 1
@cQs_str = internal alias i8, bitcast (%cQs_str_struct* @cQs_str$def to i8*)
@cQP_str$def = internal constant %cQP_str_struct<{[5 x i8] [i8 72, i8 101, i8 121, i8 32, i8 0]}>, align 1
@cQP_str = internal alias i8, bitcast (%cQP_str_struct* @cQP_str$def to i8*)
@sQ9_closure$def = internal global %sQ9_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ9_info$def to i64), i64 0, i64 0, i64 0}>
@sQ9_closure = internal alias i8, bitcast (%sQ9_closure_struct* @sQ9_closure$def to i8*)
@sQ6_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ6_info$def to i8*)
define internal ghccc void @sQ6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ6_info$def to i64)) to i32),i32 0)}>
{
nR5:
  %lsQ6 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQt
cQt:
  %lnR6 = load i64, i64* %R1_Var
  store i64 %lnR6, i64* %lsQ6
  %lnR7 = load i64*, i64** %Sp_Var
  %lnR8 = getelementptr inbounds i64, i64* %lnR7, i32 1
  %lnR9 = ptrtoint i64* %lnR8 to i64
  %lnRa = sub i64 %lnR9, 24
  %lnRb = icmp ult i64 %lnRa, %SpLim_Arg
  %lnRd = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRb, i1 0 )
  br i1 %lnRd, label %cQu, label %cQv
cQv:
  %lnRf = ptrtoint i8* @stg_upd_frame_info to i64
  %lnRe = load i64*, i64** %Sp_Var
  %lnRg = getelementptr inbounds i64, i64* %lnRe, i32 -2
  store i64 %lnRf, i64* %lnRg, !tbaa !2
  %lnRi = load i64, i64* %lsQ6
  %lnRh = load i64*, i64** %Sp_Var
  %lnRj = getelementptr inbounds i64, i64* %lnRh, i32 -1
  store i64 %lnRi, i64* %lnRj, !tbaa !2
  %lnRk = ptrtoint %cQs_str_struct* @cQs_str$def to i64
  store i64 %lnRk, i64* %R2_Var
  %lnRl = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnRl, i64* %R1_Var
  %lnRm = load i64*, i64** %Sp_Var
  %lnRn = getelementptr inbounds i64, i64* %lnRm, i32 -2
  %lnRo = ptrtoint i64* %lnRn to i64
  %lnRp = inttoptr i64 %lnRo to i64*
  store i64* %lnRp, i64** %Sp_Var
  %lnRq = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRr = load i64*, i64** %Sp_Var
  %lnRs = load i64, i64* %R1_Var
  %lnRt = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRq( i64* %Base_Arg, i64* %lnRr, i64* %Hp_Arg, i64 %lnRs, i64 %lnRt, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQu:
  %lnRu = load i64, i64* %lsQ6
  store i64 %lnRu, i64* %R1_Var
  %lnRv = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnRw = bitcast i64* %lnRv to i64*
  %lnRx = load i64, i64* %lnRw, !tbaa !5
  %lnRy = inttoptr i64 %lnRx to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRz = load i64*, i64** %Sp_Var
  %lnRA = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRy( i64* %Base_Arg, i64* %lnRz, i64* %Hp_Arg, i64 %lnRA, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@sQ5_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ5_info$def to i8*)
define internal ghccc void @sQ5_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ5_info$def to i64)) to i32),i32 0)}>
{
nRB:
  %lsQ5 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQA = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cQB
cQB:
  %lnRC = load i64, i64* %R1_Var
  store i64 %lnRC, i64* %lsQ5
  %lnRD = load i64*, i64** %Sp_Var
  %lnRE = getelementptr inbounds i64, i64* %lnRD, i32 1
  %lnRF = ptrtoint i64* %lnRE to i64
  %lnRG = sub i64 %lnRF, 40
  %lnRH = icmp ult i64 %lnRG, %SpLim_Arg
  %lnRI = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRH, i1 0 )
  br i1 %lnRI, label %cQC, label %cQD
cQD:
  %lnRJ = load i64*, i64** %Hp_Var
  %lnRK = getelementptr inbounds i64, i64* %lnRJ, i32 2
  %lnRL = ptrtoint i64* %lnRK to i64
  %lnRM = inttoptr i64 %lnRL to i64*
  store i64* %lnRM, i64** %Hp_Var
  %lnRN = load i64*, i64** %Hp_Var
  %lnRO = ptrtoint i64* %lnRN to i64
  %lnRP = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnRQ = bitcast i64* %lnRP to i64*
  %lnRR = load i64, i64* %lnRQ, !tbaa !5
  %lnRS = icmp ugt i64 %lnRO, %lnRR
  %lnRT = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnRS, i1 0 )
  br i1 %lnRT, label %cQF, label %cQE
cQE:
  %lnRV = ptrtoint i8* @stg_upd_frame_info to i64
  %lnRU = load i64*, i64** %Sp_Var
  %lnRW = getelementptr inbounds i64, i64* %lnRU, i32 -2
  store i64 %lnRV, i64* %lnRW, !tbaa !2
  %lnRY = load i64, i64* %lsQ5
  %lnRX = load i64*, i64** %Sp_Var
  %lnRZ = getelementptr inbounds i64, i64* %lnRX, i32 -1
  store i64 %lnRY, i64* %lnRZ, !tbaa !2
  %lnS1 = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %lnS0 = load i64*, i64** %Hp_Var
  %lnS2 = getelementptr inbounds i64, i64* %lnS0, i32 -1
  store i64 %lnS1, i64* %lnS2, !tbaa !3
  %lnS3 = load i64*, i64** %Hp_Var
  %lnS4 = getelementptr inbounds i64, i64* %lnS3, i32 0
  store i64 1, i64* %lnS4, !tbaa !3
  %lnS6 = load i64*, i64** %Hp_Var
  %lnS7 = ptrtoint i64* %lnS6 to i64
  %lnS8 = add i64 %lnS7, -7
  store i64 %lnS8, i64* %lcQA
  %lnS9 = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %lnS9, i64* %R2_Var
  %lnSb = ptrtoint i8* @stg_ap_p_info to i64
  %lnSa = load i64*, i64** %Sp_Var
  %lnSc = getelementptr inbounds i64, i64* %lnSa, i32 -4
  store i64 %lnSb, i64* %lnSc, !tbaa !2
  %lnSe = load i64, i64* %lcQA
  %lnSd = load i64*, i64** %Sp_Var
  %lnSf = getelementptr inbounds i64, i64* %lnSd, i32 -3
  store i64 %lnSe, i64* %lnSf, !tbaa !2
  %lnSg = load i64*, i64** %Sp_Var
  %lnSh = getelementptr inbounds i64, i64* %lnSg, i32 -4
  %lnSi = ptrtoint i64* %lnSh to i64
  %lnSj = inttoptr i64 %lnSi to i64*
  store i64* %lnSj, i64** %Sp_Var
  %lnSk = bitcast i8* @base_GHCziShow_show_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSl = load i64*, i64** %Sp_Var
  %lnSm = load i64*, i64** %Hp_Var
  %lnSn = load i64, i64* %R1_Var
  %lnSo = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSk( i64* %Base_Arg, i64* %lnSl, i64* %lnSm, i64 %lnSn, i64 %lnSo, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQF:
  %lnSp = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnSp, !tbaa !5
  br label %cQC
cQC:
  %lnSq = load i64, i64* %lsQ5
  store i64 %lnSq, i64* %R1_Var
  %lnSr = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnSs = bitcast i64* %lnSr to i64*
  %lnSt = load i64, i64* %lnSs, !tbaa !5
  %lnSu = inttoptr i64 %lnSt to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSv = load i64*, i64** %Sp_Var
  %lnSw = load i64*, i64** %Hp_Var
  %lnSx = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSu( i64* %Base_Arg, i64* %lnSv, i64* %lnSw, i64 %lnSx, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sQ7_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ7_info$def to i8*)
define internal ghccc void @sQ7_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uR3_srt_struct* @_uR3_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ7_info$def to i64)) to i32),i32 0)}>
{
nSy:
  %lsQ7 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQo = alloca i64, i32 1
  %lcQw = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQG
cQG:
  %lnSz = load i64, i64* %R1_Var
  store i64 %lnSz, i64* %lsQ7
  %lnSA = load i64*, i64** %Sp_Var
  %lnSB = getelementptr inbounds i64, i64* %lnSA, i32 1
  %lnSC = ptrtoint i64* %lnSB to i64
  %lnSD = sub i64 %lnSC, 24
  %lnSE = icmp ult i64 %lnSD, %SpLim_Arg
  %lnSF = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnSE, i1 0 )
  br i1 %lnSF, label %cQH, label %cQI
cQI:
  %lnSG = load i64*, i64** %Hp_Var
  %lnSH = getelementptr inbounds i64, i64* %lnSG, i32 4
  %lnSI = ptrtoint i64* %lnSH to i64
  %lnSJ = inttoptr i64 %lnSI to i64*
  store i64* %lnSJ, i64** %Hp_Var
  %lnSK = load i64*, i64** %Hp_Var
  %lnSL = ptrtoint i64* %lnSK to i64
  %lnSM = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnSN = bitcast i64* %lnSM to i64*
  %lnSO = load i64, i64* %lnSN, !tbaa !5
  %lnSP = icmp ugt i64 %lnSL, %lnSO
  %lnSQ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnSP, i1 0 )
  br i1 %lnSQ, label %cQK, label %cQJ
cQJ:
  %lnSS = ptrtoint i8* @stg_upd_frame_info to i64
  %lnSR = load i64*, i64** %Sp_Var
  %lnST = getelementptr inbounds i64, i64* %lnSR, i32 -2
  store i64 %lnSS, i64* %lnST, !tbaa !2
  %lnSV = load i64, i64* %lsQ7
  %lnSU = load i64*, i64** %Sp_Var
  %lnSW = getelementptr inbounds i64, i64* %lnSU, i32 -1
  store i64 %lnSV, i64* %lnSW, !tbaa !2
  %lnSY = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ6_info$def to i64
  %lnSX = load i64*, i64** %Hp_Var
  %lnSZ = getelementptr inbounds i64, i64* %lnSX, i32 -3
  store i64 %lnSY, i64* %lnSZ, !tbaa !3
  %lnT0 = load i64*, i64** %Hp_Var
  %lnT1 = getelementptr inbounds i64, i64* %lnT0, i32 -3
  %lnT2 = ptrtoint i64* %lnT1 to i64
  store i64 %lnT2, i64* %lcQo
  %lnT4 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ5_info$def to i64
  %lnT3 = load i64*, i64** %Hp_Var
  %lnT5 = getelementptr inbounds i64, i64* %lnT3, i32 -1
  store i64 %lnT4, i64* %lnT5, !tbaa !3
  %lnT6 = load i64*, i64** %Hp_Var
  %lnT7 = getelementptr inbounds i64, i64* %lnT6, i32 -1
  %lnT8 = ptrtoint i64* %lnT7 to i64
  store i64 %lnT8, i64* %lcQw
  %lnT9 = load i64, i64* %lcQo
  store i64 %lnT9, i64* %R3_Var
  %lnTa = load i64, i64* %lcQw
  store i64 %lnTa, i64* %R2_Var
  %lnTb = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnTb, i64* %R1_Var
  %lnTc = load i64*, i64** %Sp_Var
  %lnTd = getelementptr inbounds i64, i64* %lnTc, i32 -2
  %lnTe = ptrtoint i64* %lnTd to i64
  %lnTf = inttoptr i64 %lnTe to i64*
  store i64* %lnTf, i64** %Sp_Var
  %lnTg = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTh = load i64*, i64** %Sp_Var
  %lnTi = load i64*, i64** %Hp_Var
  %lnTj = load i64, i64* %R1_Var
  %lnTk = load i64, i64* %R2_Var
  %lnTl = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTg( i64* %Base_Arg, i64* %lnTh, i64* %lnTi, i64 %lnTj, i64 %lnTk, i64 %lnTl, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQK:
  %lnTm = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %lnTm, !tbaa !5
  br label %cQH
cQH:
  %lnTn = load i64, i64* %lsQ7
  store i64 %lnTn, i64* %R1_Var
  %lnTo = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTp = bitcast i64* %lnTo to i64*
  %lnTq = load i64, i64* %lnTp, !tbaa !5
  %lnTr = inttoptr i64 %lnTq to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTs = load i64*, i64** %Sp_Var
  %lnTt = load i64*, i64** %Hp_Var
  %lnTu = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTr( i64* %Base_Arg, i64* %lnTs, i64* %lnTt, i64 %lnTu, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPY_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPY_info$def to i8*)
define internal ghccc void @sPY_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPY_info$def to i64)) to i32),i32 0)}>
{
nTv:
  %lsPY = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQQ
cQQ:
  %lnTw = load i64, i64* %R1_Var
  store i64 %lnTw, i64* %lsPY
  %lnTx = load i64*, i64** %Sp_Var
  %lnTy = getelementptr inbounds i64, i64* %lnTx, i32 1
  %lnTz = ptrtoint i64* %lnTy to i64
  %lnTA = sub i64 %lnTz, 24
  %lnTB = icmp ult i64 %lnTA, %SpLim_Arg
  %lnTC = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnTB, i1 0 )
  br i1 %lnTC, label %cQR, label %cQS
cQS:
  %lnTE = ptrtoint i8* @stg_upd_frame_info to i64
  %lnTD = load i64*, i64** %Sp_Var
  %lnTF = getelementptr inbounds i64, i64* %lnTD, i32 -2
  store i64 %lnTE, i64* %lnTF, !tbaa !2
  %lnTH = load i64, i64* %lsPY
  %lnTG = load i64*, i64** %Sp_Var
  %lnTI = getelementptr inbounds i64, i64* %lnTG, i32 -1
  store i64 %lnTH, i64* %lnTI, !tbaa !2
  %lnTJ = ptrtoint %cQP_str_struct* @cQP_str$def to i64
  store i64 %lnTJ, i64* %R2_Var
  %lnTK = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnTK, i64* %R1_Var
  %lnTL = load i64*, i64** %Sp_Var
  %lnTM = getelementptr inbounds i64, i64* %lnTL, i32 -2
  %lnTN = ptrtoint i64* %lnTM to i64
  %lnTO = inttoptr i64 %lnTN to i64*
  store i64* %lnTO, i64** %Sp_Var
  %lnTP = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTQ = load i64*, i64** %Sp_Var
  %lnTR = load i64, i64* %R1_Var
  %lnTS = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTP( i64* %Base_Arg, i64* %lnTQ, i64* %Hp_Arg, i64 %lnTR, i64 %lnTS, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQR:
  %lnTT = load i64, i64* %lsPY
  store i64 %lnTT, i64* %R1_Var
  %lnTU = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTV = bitcast i64* %lnTU to i64*
  %lnTW = load i64, i64* %lnTV, !tbaa !5
  %lnTX = inttoptr i64 %lnTW to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTY = load i64*, i64** %Sp_Var
  %lnTZ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTX( i64* %Base_Arg, i64* %lnTY, i64* %Hp_Arg, i64 %lnTZ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sQ8_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ8_info$def to i8*)
define internal ghccc void @sQ8_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uR3_srt_struct* @_uR3_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ8_info$def to i64)) to i32),i32 0)}>
{
nU0:
  %lsQ8 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcQk = alloca i64, i32 1
  %lcQL = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQT
cQT:
  %lnU1 = load i64, i64* %R1_Var
  store i64 %lnU1, i64* %lsQ8
  %lnU2 = load i64*, i64** %Sp_Var
  %lnU3 = getelementptr inbounds i64, i64* %lnU2, i32 1
  %lnU4 = ptrtoint i64* %lnU3 to i64
  %lnU5 = sub i64 %lnU4, 24
  %lnU6 = icmp ult i64 %lnU5, %SpLim_Arg
  %lnU7 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnU6, i1 0 )
  br i1 %lnU7, label %cQU, label %cQV
cQV:
  %lnU8 = load i64*, i64** %Hp_Var
  %lnU9 = getelementptr inbounds i64, i64* %lnU8, i32 4
  %lnUa = ptrtoint i64* %lnU9 to i64
  %lnUb = inttoptr i64 %lnUa to i64*
  store i64* %lnUb, i64** %Hp_Var
  %lnUc = load i64*, i64** %Hp_Var
  %lnUd = ptrtoint i64* %lnUc to i64
  %lnUe = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnUf = bitcast i64* %lnUe to i64*
  %lnUg = load i64, i64* %lnUf, !tbaa !5
  %lnUh = icmp ugt i64 %lnUd, %lnUg
  %lnUi = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnUh, i1 0 )
  br i1 %lnUi, label %cQX, label %cQW
cQW:
  %lnUk = ptrtoint i8* @stg_upd_frame_info to i64
  %lnUj = load i64*, i64** %Sp_Var
  %lnUl = getelementptr inbounds i64, i64* %lnUj, i32 -2
  store i64 %lnUk, i64* %lnUl, !tbaa !2
  %lnUn = load i64, i64* %lsQ8
  %lnUm = load i64*, i64** %Sp_Var
  %lnUo = getelementptr inbounds i64, i64* %lnUm, i32 -1
  store i64 %lnUn, i64* %lnUo, !tbaa !2
  %lnUq = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ7_info$def to i64
  %lnUp = load i64*, i64** %Hp_Var
  %lnUr = getelementptr inbounds i64, i64* %lnUp, i32 -3
  store i64 %lnUq, i64* %lnUr, !tbaa !3
  %lnUs = load i64*, i64** %Hp_Var
  %lnUt = getelementptr inbounds i64, i64* %lnUs, i32 -3
  %lnUu = ptrtoint i64* %lnUt to i64
  store i64 %lnUu, i64* %lcQk
  %lnUw = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPY_info$def to i64
  %lnUv = load i64*, i64** %Hp_Var
  %lnUx = getelementptr inbounds i64, i64* %lnUv, i32 -1
  store i64 %lnUw, i64* %lnUx, !tbaa !3
  %lnUy = load i64*, i64** %Hp_Var
  %lnUz = getelementptr inbounds i64, i64* %lnUy, i32 -1
  %lnUA = ptrtoint i64* %lnUz to i64
  store i64 %lnUA, i64* %lcQL
  %lnUB = load i64, i64* %lcQk
  store i64 %lnUB, i64* %R3_Var
  %lnUC = load i64, i64* %lcQL
  store i64 %lnUC, i64* %R2_Var
  %lnUD = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnUD, i64* %R1_Var
  %lnUE = load i64*, i64** %Sp_Var
  %lnUF = getelementptr inbounds i64, i64* %lnUE, i32 -2
  %lnUG = ptrtoint i64* %lnUF to i64
  %lnUH = inttoptr i64 %lnUG to i64*
  store i64* %lnUH, i64** %Sp_Var
  %lnUI = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUJ = load i64*, i64** %Sp_Var
  %lnUK = load i64*, i64** %Hp_Var
  %lnUL = load i64, i64* %R1_Var
  %lnUM = load i64, i64* %R2_Var
  %lnUN = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUI( i64* %Base_Arg, i64* %lnUJ, i64* %lnUK, i64 %lnUL, i64 %lnUM, i64 %lnUN, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQX:
  %lnUO = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %lnUO, !tbaa !5
  br label %cQU
cQU:
  %lnUP = load i64, i64* %lsQ8
  store i64 %lnUP, i64* %R1_Var
  %lnUQ = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnUR = bitcast i64* %lnUQ to i64*
  %lnUS = load i64, i64* %lnUR, !tbaa !5
  %lnUT = inttoptr i64 %lnUS to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUU = load i64*, i64** %Sp_Var
  %lnUV = load i64*, i64** %Hp_Var
  %lnUW = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUT( i64* %Base_Arg, i64* %lnUU, i64* %lnUV, i64 %lnUW, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sQ9_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ9_info$def to i8*)
define internal ghccc void @sQ9_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uR4_srt_struct* @_uR4_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ9_info$def to i64)) to i32),i32 0)}>
{
nUX:
  %lsQ9 = alloca i64, i32 1
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
  %lcQd = alloca i64, i32 1
  %lcQg = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQY
cQY:
  %lnUY = load i64, i64* %R1_Var
  store i64 %lnUY, i64* %lsQ9
  %lnUZ = load i64*, i64** %Sp_Var
  %lnV0 = getelementptr inbounds i64, i64* %lnUZ, i32 1
  %lnV1 = ptrtoint i64* %lnV0 to i64
  %lnV2 = sub i64 %lnV1, 24
  %lnV3 = icmp ult i64 %lnV2, %SpLim_Arg
  %lnV4 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnV3, i1 0 )
  br i1 %lnV4, label %cQZ, label %cR0
cR0:
  %lnV5 = load i64*, i64** %Hp_Var
  %lnV6 = getelementptr inbounds i64, i64* %lnV5, i32 2
  %lnV7 = ptrtoint i64* %lnV6 to i64
  %lnV8 = inttoptr i64 %lnV7 to i64*
  store i64* %lnV8, i64** %Hp_Var
  %lnV9 = load i64*, i64** %Hp_Var
  %lnVa = ptrtoint i64* %lnV9 to i64
  %lnVb = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnVc = bitcast i64* %lnVb to i64*
  %lnVd = load i64, i64* %lnVc, !tbaa !5
  %lnVe = icmp ugt i64 %lnVa, %lnVd
  %lnVf = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnVe, i1 0 )
  br i1 %lnVf, label %cR2, label %cR1
cR1:
  %lnVg = ptrtoint i64* %Base_Arg to i64
  %lnVh = inttoptr i64 %lnVg to i8*
  %lnVi = load i64, i64* %lsQ9
  %lnVj = inttoptr i64 %lnVi to i8*
  %lnVk = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnVl = call ccc i8* (i8*, i8*) %lnVk( i8* %lnVh, i8* %lnVj ) nounwind
  %lnVm = ptrtoint i8* %lnVl to i64
  store i64 %lnVm, i64* %lcQd
  %lnVn = load i64, i64* %lcQd
  %lnVo = icmp eq i64 %lnVn, 0
  br i1 %lnVo, label %cQf, label %cQe
cQe:
  %lnVq = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnVp = load i64*, i64** %Sp_Var
  %lnVr = getelementptr inbounds i64, i64* %lnVp, i32 -2
  store i64 %lnVq, i64* %lnVr, !tbaa !2
  %lnVt = load i64, i64* %lcQd
  %lnVs = load i64*, i64** %Sp_Var
  %lnVu = getelementptr inbounds i64, i64* %lnVs, i32 -1
  store i64 %lnVt, i64* %lnVu, !tbaa !2
  %lnVw = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sQ8_info$def to i64
  %lnVv = load i64*, i64** %Hp_Var
  %lnVx = getelementptr inbounds i64, i64* %lnVv, i32 -1
  store i64 %lnVw, i64* %lnVx, !tbaa !3
  %lnVy = load i64*, i64** %Hp_Var
  %lnVz = getelementptr inbounds i64, i64* %lnVy, i32 -1
  %lnVA = ptrtoint i64* %lnVz to i64
  store i64 %lnVA, i64* %lcQg
  %lnVB = load i64, i64* %lcQg
  store i64 %lnVB, i64* %R2_Var
  %lnVC = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnVC, i64* %R1_Var
  %lnVD = load i64*, i64** %Sp_Var
  %lnVE = getelementptr inbounds i64, i64* %lnVD, i32 -2
  %lnVF = ptrtoint i64* %lnVE to i64
  %lnVG = inttoptr i64 %lnVF to i64*
  store i64* %lnVG, i64** %Sp_Var
  %lnVH = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVI = load i64*, i64** %Sp_Var
  %lnVJ = load i64*, i64** %Hp_Var
  %lnVK = load i64, i64* %R1_Var
  %lnVL = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVH( i64* %Base_Arg, i64* %lnVI, i64* %lnVJ, i64 %lnVK, i64 %lnVL, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQf:
  %lnVM = load i64, i64* %lsQ9
  %lnVN = inttoptr i64 %lnVM to i64*
  %lnVO = load i64, i64* %lnVN, !tbaa !1
  %lnVP = inttoptr i64 %lnVO to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVQ = load i64*, i64** %Sp_Var
  %lnVR = load i64*, i64** %Hp_Var
  %lnVS = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVP( i64* %Base_Arg, i64* %lnVQ, i64* %lnVR, i64 %lnVS, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cR2:
  %lnVT = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnVT, !tbaa !5
  br label %cQZ
cQZ:
  %lnVU = load i64, i64* %lsQ9
  store i64 %lnVU, i64* %R1_Var
  %lnVV = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnVW = bitcast i64* %lnVV to i64*
  %lnVX = load i64, i64* %lnVW, !tbaa !5
  %lnVY = inttoptr i64 %lnVX to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVZ = load i64*, i64** %Sp_Var
  %lnW0 = load i64*, i64** %Hp_Var
  %lnW1 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVY( i64* %Base_Arg, i64* %lnVZ, i64* %lnW0, i64 %lnW1, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uWl_srt_struct = type <{i64, i64, i64, i64}>
%cWc_str_struct = type <{[25 x i8]}>
%sPX_closure_struct = type <{i64, i64, i64, i64}>
@_uWl_srt$def = internal global %_uWl_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 0}>
@_uWl_srt = internal alias i8, bitcast (%_uWl_srt_struct* @_uWl_srt$def to i8*)
@cWc_str$def = internal constant %cWc_str_struct<{[25 x i8] [i8 72, i8 101, i8 108, i8 108, i8 111, i8 44, i8 32, i8 119, i8 104, i8 97, i8 116, i8 39, i8 115, i8 32, i8 121, i8 111, i8 117, i8 114, i8 32, i8 110, i8 97, i8 109, i8 101, i8 63, i8 0]}>, align 1
@cWc_str = internal alias i8, bitcast (%cWc_str_struct* @cWc_str$def to i8*)
@sPX_closure$def = internal global %sPX_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPX_info$def to i64), i64 0, i64 0, i64 0}>
@sPX_closure = internal alias i8, bitcast (%sPX_closure_struct* @sPX_closure$def to i8*)
@sPW_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPW_info$def to i8*)
define internal ghccc void @sPW_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPW_info$def to i64)) to i32),i32 0)}>
{
nWm:
  %lsPW = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cWd
cWd:
  %lnWn = load i64, i64* %R1_Var
  store i64 %lnWn, i64* %lsPW
  %lnWo = load i64*, i64** %Sp_Var
  %lnWp = getelementptr inbounds i64, i64* %lnWo, i32 1
  %lnWq = ptrtoint i64* %lnWp to i64
  %lnWr = sub i64 %lnWq, 24
  %lnWs = icmp ult i64 %lnWr, %SpLim_Arg
  %lnWt = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnWs, i1 0 )
  br i1 %lnWt, label %cWe, label %cWf
cWf:
  %lnWv = ptrtoint i8* @stg_upd_frame_info to i64
  %lnWu = load i64*, i64** %Sp_Var
  %lnWw = getelementptr inbounds i64, i64* %lnWu, i32 -2
  store i64 %lnWv, i64* %lnWw, !tbaa !2
  %lnWy = load i64, i64* %lsPW
  %lnWx = load i64*, i64** %Sp_Var
  %lnWz = getelementptr inbounds i64, i64* %lnWx, i32 -1
  store i64 %lnWy, i64* %lnWz, !tbaa !2
  %lnWA = ptrtoint %cWc_str_struct* @cWc_str$def to i64
  store i64 %lnWA, i64* %R2_Var
  %lnWB = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnWB, i64* %R1_Var
  %lnWC = load i64*, i64** %Sp_Var
  %lnWD = getelementptr inbounds i64, i64* %lnWC, i32 -2
  %lnWE = ptrtoint i64* %lnWD to i64
  %lnWF = inttoptr i64 %lnWE to i64*
  store i64* %lnWF, i64** %Sp_Var
  %lnWG = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnWH = load i64*, i64** %Sp_Var
  %lnWI = load i64, i64* %R1_Var
  %lnWJ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnWG( i64* %Base_Arg, i64* %lnWH, i64* %Hp_Arg, i64 %lnWI, i64 %lnWJ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cWe:
  %lnWK = load i64, i64* %lsPW
  store i64 %lnWK, i64* %R1_Var
  %lnWL = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnWM = bitcast i64* %lnWL to i64*
  %lnWN = load i64, i64* %lnWM, !tbaa !5
  %lnWO = inttoptr i64 %lnWN to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnWP = load i64*, i64** %Sp_Var
  %lnWQ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnWO( i64* %Base_Arg, i64* %lnWP, i64* %Hp_Arg, i64 %lnWQ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sPX_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPX_info$def to i8*)
define internal ghccc void @sPX_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uWl_srt_struct* @_uWl_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPX_info$def to i64)) to i32),i32 0)}>
{
nWR:
  %lsPX = alloca i64, i32 1
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
  %lcW5 = alloca i64, i32 1
  %lcW8 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cWg
cWg:
  %lnWS = load i64, i64* %R1_Var
  store i64 %lnWS, i64* %lsPX
  %lnWT = load i64*, i64** %Sp_Var
  %lnWU = getelementptr inbounds i64, i64* %lnWT, i32 1
  %lnWV = ptrtoint i64* %lnWU to i64
  %lnWW = sub i64 %lnWV, 24
  %lnWX = icmp ult i64 %lnWW, %SpLim_Arg
  %lnWY = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnWX, i1 0 )
  br i1 %lnWY, label %cWh, label %cWi
cWi:
  %lnWZ = load i64*, i64** %Hp_Var
  %lnX0 = getelementptr inbounds i64, i64* %lnWZ, i32 2
  %lnX1 = ptrtoint i64* %lnX0 to i64
  %lnX2 = inttoptr i64 %lnX1 to i64*
  store i64* %lnX2, i64** %Hp_Var
  %lnX3 = load i64*, i64** %Hp_Var
  %lnX4 = ptrtoint i64* %lnX3 to i64
  %lnX5 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnX6 = bitcast i64* %lnX5 to i64*
  %lnX7 = load i64, i64* %lnX6, !tbaa !5
  %lnX8 = icmp ugt i64 %lnX4, %lnX7
  %lnX9 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnX8, i1 0 )
  br i1 %lnX9, label %cWk, label %cWj
cWj:
  %lnXa = ptrtoint i64* %Base_Arg to i64
  %lnXb = inttoptr i64 %lnXa to i8*
  %lnXc = load i64, i64* %lsPX
  %lnXd = inttoptr i64 %lnXc to i8*
  %lnXe = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnXf = call ccc i8* (i8*, i8*) %lnXe( i8* %lnXb, i8* %lnXd ) nounwind
  %lnXg = ptrtoint i8* %lnXf to i64
  store i64 %lnXg, i64* %lcW5
  %lnXh = load i64, i64* %lcW5
  %lnXi = icmp eq i64 %lnXh, 0
  br i1 %lnXi, label %cW7, label %cW6
cW6:
  %lnXk = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnXj = load i64*, i64** %Sp_Var
  %lnXl = getelementptr inbounds i64, i64* %lnXj, i32 -2
  store i64 %lnXk, i64* %lnXl, !tbaa !2
  %lnXn = load i64, i64* %lcW5
  %lnXm = load i64*, i64** %Sp_Var
  %lnXo = getelementptr inbounds i64, i64* %lnXm, i32 -1
  store i64 %lnXn, i64* %lnXo, !tbaa !2
  %lnXq = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sPW_info$def to i64
  %lnXp = load i64*, i64** %Hp_Var
  %lnXr = getelementptr inbounds i64, i64* %lnXp, i32 -1
  store i64 %lnXq, i64* %lnXr, !tbaa !3
  %lnXs = load i64*, i64** %Hp_Var
  %lnXt = getelementptr inbounds i64, i64* %lnXs, i32 -1
  %lnXu = ptrtoint i64* %lnXt to i64
  store i64 %lnXu, i64* %lcW8
  %lnXv = load i64, i64* %lcW8
  store i64 %lnXv, i64* %R2_Var
  %lnXw = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnXw, i64* %R1_Var
  %lnXx = load i64*, i64** %Sp_Var
  %lnXy = getelementptr inbounds i64, i64* %lnXx, i32 -2
  %lnXz = ptrtoint i64* %lnXy to i64
  %lnXA = inttoptr i64 %lnXz to i64*
  store i64* %lnXA, i64** %Sp_Var
  %lnXB = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXC = load i64*, i64** %Sp_Var
  %lnXD = load i64*, i64** %Hp_Var
  %lnXE = load i64, i64* %R1_Var
  %lnXF = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXB( i64* %Base_Arg, i64* %lnXC, i64* %lnXD, i64 %lnXE, i64 %lnXF, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cW7:
  %lnXG = load i64, i64* %lsPX
  %lnXH = inttoptr i64 %lnXG to i64*
  %lnXI = load i64, i64* %lnXH, !tbaa !1
  %lnXJ = inttoptr i64 %lnXI to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXK = load i64*, i64** %Sp_Var
  %lnXL = load i64*, i64** %Hp_Var
  %lnXM = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXJ( i64* %Base_Arg, i64* %lnXK, i64* %lnXL, i64 %lnXM, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cWk:
  %lnXN = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnXN, !tbaa !5
  br label %cWh
cWh:
  %lnXO = load i64, i64* %lsPX
  store i64 %lnXO, i64* %R1_Var
  %lnXP = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnXQ = bitcast i64* %lnXP to i64*
  %lnXR = load i64, i64* %lnXQ, !tbaa !5
  %lnXS = inttoptr i64 %lnXR to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXT = load i64*, i64** %Sp_Var
  %lnXU = load i64*, i64** %Hp_Var
  %lnXV = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXS( i64* %Base_Arg, i64* %lnXT, i64* %lnXU, i64 %lnXV, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uY5_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uY5_srt$def = internal global %_uY5_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64), i64 ptrtoint (%sPX_closure_struct* @sPX_closure$def to i64), i64 ptrtoint (%sQ9_closure_struct* @sQ9_closure$def to i64), i64 0}>
@_uY5_srt = internal alias i8, bitcast (%_uY5_srt_struct* @_uY5_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uY5_srt_struct* @_uY5_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nY6:
  %lr1 = alloca i64, i32 1
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
  %lcXZ = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cY2
cY2:
  %lnY7 = load i64, i64* %R1_Var
  store i64 %lnY7, i64* %lr1
  %lnY8 = load i64*, i64** %Sp_Var
  %lnY9 = getelementptr inbounds i64, i64* %lnY8, i32 1
  %lnYa = ptrtoint i64* %lnY9 to i64
  %lnYb = sub i64 %lnYa, 48
  %lnYc = icmp ult i64 %lnYb, %SpLim_Arg
  %lnYd = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnYc, i1 0 )
  br i1 %lnYd, label %cY3, label %cY4
cY4:
  %lnYe = ptrtoint i64* %Base_Arg to i64
  %lnYf = inttoptr i64 %lnYe to i8*
  %lnYg = load i64, i64* %lr1
  %lnYh = inttoptr i64 %lnYg to i8*
  %lnYi = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnYj = call ccc i8* (i8*, i8*) %lnYi( i8* %lnYf, i8* %lnYh ) nounwind
  %lnYk = ptrtoint i8* %lnYj to i64
  store i64 %lnYk, i64* %lcXZ
  %lnYl = load i64, i64* %lcXZ
  %lnYm = icmp eq i64 %lnYl, 0
  br i1 %lnYm, label %cY1, label %cY0
cY0:
  %lnYo = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnYn = load i64*, i64** %Sp_Var
  %lnYp = getelementptr inbounds i64, i64* %lnYn, i32 -2
  store i64 %lnYo, i64* %lnYp, !tbaa !2
  %lnYr = load i64, i64* %lcXZ
  %lnYq = load i64*, i64** %Sp_Var
  %lnYs = getelementptr inbounds i64, i64* %lnYq, i32 -1
  store i64 %lnYr, i64* %lnYs, !tbaa !2
  %lnYt = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnYt, i64* %R2_Var
  %lnYv = ptrtoint i8* @stg_ap_pp_info to i64
  %lnYu = load i64*, i64** %Sp_Var
  %lnYw = getelementptr inbounds i64, i64* %lnYu, i32 -5
  store i64 %lnYv, i64* %lnYw, !tbaa !2
  %lnYy = ptrtoint %sPX_closure_struct* @sPX_closure$def to i64
  %lnYx = load i64*, i64** %Sp_Var
  %lnYz = getelementptr inbounds i64, i64* %lnYx, i32 -4
  store i64 %lnYy, i64* %lnYz, !tbaa !2
  %lnYB = ptrtoint %sQ9_closure_struct* @sQ9_closure$def to i64
  %lnYA = load i64*, i64** %Sp_Var
  %lnYC = getelementptr inbounds i64, i64* %lnYA, i32 -3
  store i64 %lnYB, i64* %lnYC, !tbaa !2
  %lnYD = load i64*, i64** %Sp_Var
  %lnYE = getelementptr inbounds i64, i64* %lnYD, i32 -5
  %lnYF = ptrtoint i64* %lnYE to i64
  %lnYG = inttoptr i64 %lnYF to i64*
  store i64* %lnYG, i64** %Sp_Var
  %lnYH = bitcast i8* @base_GHCziBase_zgzg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYI = load i64*, i64** %Sp_Var
  %lnYJ = load i64, i64* %R1_Var
  %lnYK = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYH( i64* %Base_Arg, i64* %lnYI, i64* %Hp_Arg, i64 %lnYJ, i64 %lnYK, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cY1:
  %lnYL = load i64, i64* %lr1
  %lnYM = inttoptr i64 %lnYL to i64*
  %lnYN = load i64, i64* %lnYM, !tbaa !1
  %lnYO = inttoptr i64 %lnYN to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYP = load i64*, i64** %Sp_Var
  %lnYQ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYO( i64* %Base_Arg, i64* %lnYP, i64* %Hp_Arg, i64 %lnYQ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cY3:
  %lnYR = load i64, i64* %lr1
  store i64 %lnYR, i64* %R1_Var
  %lnYS = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnYT = bitcast i64* %lnYS to i64*
  %lnYU = load i64, i64* %lnYT, !tbaa !5
  %lnYV = inttoptr i64 %lnYU to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYW = load i64*, i64** %Sp_Var
  %lnYX = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYV( i64* %Base_Arg, i64* %lnYW, i64* %Hp_Arg, i64 %lnYX, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_uZ7_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uZ7_srt$def = internal global %_uZ7_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uZ7_srt = internal alias i8, bitcast (%_uZ7_srt_struct* @_uZ7_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uZ7_srt_struct* @_uZ7_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nZ8:
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
  %lcZ1 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cZ4
cZ4:
  %lnZ9 = load i64, i64* %R1_Var
  store i64 %lnZ9, i64* %l01D
  %lnZa = load i64*, i64** %Sp_Var
  %lnZb = getelementptr inbounds i64, i64* %lnZa, i32 1
  %lnZc = ptrtoint i64* %lnZb to i64
  %lnZd = sub i64 %lnZc, 24
  %lnZe = icmp ult i64 %lnZd, %SpLim_Arg
  %lnZf = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnZe, i1 0 )
  br i1 %lnZf, label %cZ5, label %cZ6
cZ6:
  %lnZg = ptrtoint i64* %Base_Arg to i64
  %lnZh = inttoptr i64 %lnZg to i8*
  %lnZi = load i64, i64* %l01D
  %lnZj = inttoptr i64 %lnZi to i8*
  %lnZk = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnZl = call ccc i8* (i8*, i8*) %lnZk( i8* %lnZh, i8* %lnZj ) nounwind
  %lnZm = ptrtoint i8* %lnZl to i64
  store i64 %lnZm, i64* %lcZ1
  %lnZn = load i64, i64* %lcZ1
  %lnZo = icmp eq i64 %lnZn, 0
  br i1 %lnZo, label %cZ3, label %cZ2
cZ2:
  %lnZq = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnZp = load i64*, i64** %Sp_Var
  %lnZr = getelementptr inbounds i64, i64* %lnZp, i32 -2
  store i64 %lnZq, i64* %lnZr, !tbaa !2
  %lnZt = load i64, i64* %lcZ1
  %lnZs = load i64*, i64** %Sp_Var
  %lnZu = getelementptr inbounds i64, i64* %lnZs, i32 -1
  store i64 %lnZt, i64* %lnZu, !tbaa !2
  %lnZv = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnZv, i64* %R2_Var
  %lnZw = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnZw, i64* %R1_Var
  %lnZx = load i64*, i64** %Sp_Var
  %lnZy = getelementptr inbounds i64, i64* %lnZx, i32 -2
  %lnZz = ptrtoint i64* %lnZy to i64
  %lnZA = inttoptr i64 %lnZz to i64*
  store i64* %lnZA, i64** %Sp_Var
  %lnZB = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZC = load i64*, i64** %Sp_Var
  %lnZD = load i64, i64* %R1_Var
  %lnZE = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZB( i64* %Base_Arg, i64* %lnZC, i64* %Hp_Arg, i64 %lnZD, i64 %lnZE, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cZ3:
  %lnZF = load i64, i64* %l01D
  %lnZG = inttoptr i64 %lnZF to i64*
  %lnZH = load i64, i64* %lnZG, !tbaa !1
  %lnZI = inttoptr i64 %lnZH to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZJ = load i64*, i64** %Sp_Var
  %lnZK = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZI( i64* %Base_Arg, i64* %lnZJ, i64* %Hp_Arg, i64 %lnZK, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cZ5:
  %lnZL = load i64, i64* %l01D
  store i64 %lnZL, i64* %R1_Var
  %lnZM = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnZN = bitcast i64* %lnZM to i64*
  %lnZO = load i64, i64* %lnZN, !tbaa !5
  %lnZP = inttoptr i64 %lnZO to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZQ = load i64*, i64** %Sp_Var
  %lnZR = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZP( i64* %Base_Arg, i64* %lnZQ, i64* %Hp_Arg, i64 %lnZR, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%rPM_bytes_struct = type <{[5 x i8]}>
@rPM_bytes$def = internal constant %rPM_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPM_bytes = internal alias i8, bitcast (%rPM_bytes_struct* @rPM_bytes$def to i8*)
%rPS_closure_struct = type <{i64, i64}>
@rPS_closure$def = internal global %rPS_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPM_bytes_struct* @rPM_bytes$def to i64)}>
@rPS_closure = internal alias i8, bitcast (%rPS_closure_struct* @rPS_closure$def to i8*)
%rPT_bytes_struct = type <{[5 x i8]}>
@rPT_bytes$def = internal constant %rPT_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPT_bytes = internal alias i8, bitcast (%rPT_bytes_struct* @rPT_bytes$def to i8*)
%rPU_closure_struct = type <{i64, i64}>
@rPU_closure$def = internal global %rPU_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPT_bytes_struct* @rPT_bytes$def to i64)}>
@rPU_closure = internal alias i8, bitcast (%rPU_closure_struct* @rPU_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rPS_closure_struct* @rPS_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rPU_closure_struct* @rPU_closure$def to i64),i64 1), i64 3}>
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
@llvm.used = appending constant [17 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rPU_closure_struct* @rPU_closure$def to i8*), i8* bitcast (%rPT_bytes_struct* @rPT_bytes$def to i8*), i8* bitcast (%rPS_closure_struct* @rPS_closure$def to i8*), i8* bitcast (%rPM_bytes_struct* @rPM_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uZ7_srt_struct* @_uZ7_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uY5_srt_struct* @_uY5_srt$def to i8*), i8* bitcast (%sPX_closure_struct* @sPX_closure$def to i8*), i8* bitcast (%cWc_str_struct* @cWc_str$def to i8*), i8* bitcast (%_uWl_srt_struct* @_uWl_srt$def to i8*), i8* bitcast (%sQ9_closure_struct* @sQ9_closure$def to i8*), i8* bitcast (%cQP_str_struct* @cQP_str$def to i8*), i8* bitcast (%cQs_str_struct* @cQs_str$def to i8*), i8* bitcast (%_uR4_srt_struct* @_uR4_srt$def to i8*), i8* bitcast (%_uR3_srt_struct* @_uR3_srt$def to i8*)], section "llvm.metadata"
