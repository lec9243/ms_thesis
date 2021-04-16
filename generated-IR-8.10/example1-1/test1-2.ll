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

%sPk_closure_struct = type <{i64, i64}>
@sPk_closure$def = internal global %sPk_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 2}>
@sPk_closure = internal alias i8, bitcast (%sPk_closure_struct* @sPk_closure$def to i8*)
%_uPu_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uPu_srt$def = internal global %_uPu_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%sPk_closure_struct* @sPk_closure$def to i64), i64 0}>
@_uPu_srt = internal alias i8, bitcast (%_uPu_srt_struct* @_uPu_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uPu_srt_struct* @_uPu_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nPv:
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
  %lcPo = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cPr
cPr:
  %lnPw = load i64, i64* %R1_Var
  store i64 %lnPw, i64* %lr1
  %lnPx = load i64*, i64** %Sp_Var
  %lnPy = getelementptr inbounds i64, i64* %lnPx, i32 1
  %lnPz = ptrtoint i64* %lnPy to i64
  %lnPA = sub i64 %lnPz, 24
  %lnPB = icmp ult i64 %lnPA, %SpLim_Arg
  %lnPD = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnPB, i1 0 )
  br i1 %lnPD, label %cPs, label %cPt
cPt:
  %lnPE = ptrtoint i64* %Base_Arg to i64
  %lnPF = inttoptr i64 %lnPE to i8*
  %lnPG = load i64, i64* %lr1
  %lnPH = inttoptr i64 %lnPG to i8*
  %lnPI = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnPJ = call ccc i8* (i8*, i8*) %lnPI( i8* %lnPF, i8* %lnPH ) nounwind
  %lnPK = ptrtoint i8* %lnPJ to i64
  store i64 %lnPK, i64* %lcPo
  %lnPL = load i64, i64* %lcPo
  %lnPM = icmp eq i64 %lnPL, 0
  br i1 %lnPM, label %cPq, label %cPp
cPp:
  %lnPO = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnPN = load i64*, i64** %Sp_Var
  %lnPP = getelementptr inbounds i64, i64* %lnPN, i32 -2
  store i64 %lnPO, i64* %lnPP, !tbaa !2
  %lnPR = load i64, i64* %lcPo
  %lnPQ = load i64*, i64** %Sp_Var
  %lnPS = getelementptr inbounds i64, i64* %lnPQ, i32 -1
  store i64 %lnPR, i64* %lnPS, !tbaa !2
  %lnPT = ptrtoint %sPk_closure_struct* @sPk_closure$def to i64
  %lnPU = add i64 %lnPT, 1
  store i64 %lnPU, i64* %R3_Var
  %lnPV = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %lnPV, i64* %R2_Var
  %lnPW = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %lnPW, i64* %R1_Var
  %lnPX = load i64*, i64** %Sp_Var
  %lnPY = getelementptr inbounds i64, i64* %lnPX, i32 -2
  %lnPZ = ptrtoint i64* %lnPY to i64
  %lnQ0 = inttoptr i64 %lnPZ to i64*
  store i64* %lnQ0, i64** %Sp_Var
  %lnQ1 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQ2 = load i64*, i64** %Sp_Var
  %lnQ3 = load i64, i64* %R1_Var
  %lnQ4 = load i64, i64* %R2_Var
  %lnQ5 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQ1( i64* %Base_Arg, i64* %lnQ2, i64* %Hp_Arg, i64 %lnQ3, i64 %lnQ4, i64 %lnQ5, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cPq:
  %lnQ6 = load i64, i64* %lr1
  %lnQ7 = inttoptr i64 %lnQ6 to i64*
  %lnQ8 = load i64, i64* %lnQ7, !tbaa !1
  %lnQ9 = inttoptr i64 %lnQ8 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQa = load i64*, i64** %Sp_Var
  %lnQb = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQ9( i64* %Base_Arg, i64* %lnQa, i64* %Hp_Arg, i64 %lnQb, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cPs:
  %lnQc = load i64, i64* %lr1
  store i64 %lnQc, i64* %R1_Var
  %lnQd = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnQe = bitcast i64* %lnQd to i64*
  %lnQf = load i64, i64* %lnQe, !tbaa !5
  %lnQg = inttoptr i64 %lnQf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQh = load i64*, i64** %Sp_Var
  %lnQi = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQg( i64* %Base_Arg, i64* %lnQh, i64* %Hp_Arg, i64 %lnQi, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
%_uQs_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uQs_srt$def = internal global %_uQs_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uQs_srt = internal alias i8, bitcast (%_uQs_srt_struct* @_uQs_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uQs_srt_struct* @_uQs_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nQt:
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
  %lcQm = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQp
cQp:
  %lnQu = load i64, i64* %R1_Var
  store i64 %lnQu, i64* %l01D
  %lnQv = load i64*, i64** %Sp_Var
  %lnQw = getelementptr inbounds i64, i64* %lnQv, i32 1
  %lnQx = ptrtoint i64* %lnQw to i64
  %lnQy = sub i64 %lnQx, 24
  %lnQz = icmp ult i64 %lnQy, %SpLim_Arg
  %lnQA = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnQz, i1 0 )
  br i1 %lnQA, label %cQq, label %cQr
cQr:
  %lnQB = ptrtoint i64* %Base_Arg to i64
  %lnQC = inttoptr i64 %lnQB to i8*
  %lnQD = load i64, i64* %l01D
  %lnQE = inttoptr i64 %lnQD to i8*
  %lnQF = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnQG = call ccc i8* (i8*, i8*) %lnQF( i8* %lnQC, i8* %lnQE ) nounwind
  %lnQH = ptrtoint i8* %lnQG to i64
  store i64 %lnQH, i64* %lcQm
  %lnQI = load i64, i64* %lcQm
  %lnQJ = icmp eq i64 %lnQI, 0
  br i1 %lnQJ, label %cQo, label %cQn
cQn:
  %lnQL = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnQK = load i64*, i64** %Sp_Var
  %lnQM = getelementptr inbounds i64, i64* %lnQK, i32 -2
  store i64 %lnQL, i64* %lnQM, !tbaa !2
  %lnQO = load i64, i64* %lcQm
  %lnQN = load i64*, i64** %Sp_Var
  %lnQP = getelementptr inbounds i64, i64* %lnQN, i32 -1
  store i64 %lnQO, i64* %lnQP, !tbaa !2
  %lnQQ = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnQQ, i64* %R2_Var
  %lnQR = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnQR, i64* %R1_Var
  %lnQS = load i64*, i64** %Sp_Var
  %lnQT = getelementptr inbounds i64, i64* %lnQS, i32 -2
  %lnQU = ptrtoint i64* %lnQT to i64
  %lnQV = inttoptr i64 %lnQU to i64*
  store i64* %lnQV, i64** %Sp_Var
  %lnQW = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQX = load i64*, i64** %Sp_Var
  %lnQY = load i64, i64* %R1_Var
  %lnQZ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQW( i64* %Base_Arg, i64* %lnQX, i64* %Hp_Arg, i64 %lnQY, i64 %lnQZ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQo:
  %lnR0 = load i64, i64* %l01D
  %lnR1 = inttoptr i64 %lnR0 to i64*
  %lnR2 = load i64, i64* %lnR1, !tbaa !1
  %lnR3 = inttoptr i64 %lnR2 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnR4 = load i64*, i64** %Sp_Var
  %lnR5 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnR3( i64* %Base_Arg, i64* %lnR4, i64* %Hp_Arg, i64 %lnR5, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQq:
  %lnR6 = load i64, i64* %l01D
  store i64 %lnR6, i64* %R1_Var
  %lnR7 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnR8 = bitcast i64* %lnR7 to i64*
  %lnR9 = load i64, i64* %lnR8, !tbaa !5
  %lnRa = inttoptr i64 %lnR9 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRb = load i64*, i64** %Sp_Var
  %lnRc = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRa( i64* %Base_Arg, i64* %lnRb, i64* %Hp_Arg, i64 %lnRc, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%rOW_bytes_struct = type <{[5 x i8]}>
@rOW_bytes$def = internal constant %rOW_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rOW_bytes = internal alias i8, bitcast (%rOW_bytes_struct* @rOW_bytes$def to i8*)
%rPb_closure_struct = type <{i64, i64}>
@rPb_closure$def = internal global %rPb_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rOW_bytes_struct* @rOW_bytes$def to i64)}>
@rPb_closure = internal alias i8, bitcast (%rPb_closure_struct* @rPb_closure$def to i8*)
%rPc_bytes_struct = type <{[5 x i8]}>
@rPc_bytes$def = internal constant %rPc_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPc_bytes = internal alias i8, bitcast (%rPc_bytes_struct* @rPc_bytes$def to i8*)
%rPd_closure_struct = type <{i64, i64}>
@rPd_closure$def = internal global %rPd_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPc_bytes_struct* @rPc_bytes$def to i64)}>
@rPd_closure = internal alias i8, bitcast (%rPd_closure_struct* @rPd_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rPb_closure_struct* @rPb_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rPd_closure_struct* @rPd_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
@integerzmwiredzmin_GHCziIntegerziType_Szh_con_info = external global i8
@stg_SRT_3_info = external global i8
@base_SystemziIO_print_closure = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@stg_ap_pp_fast = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rPd_closure_struct* @rPd_closure$def to i8*), i8* bitcast (%rPc_bytes_struct* @rPc_bytes$def to i8*), i8* bitcast (%rPb_closure_struct* @rPb_closure$def to i8*), i8* bitcast (%rOW_bytes_struct* @rOW_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uQs_srt_struct* @_uQs_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uPu_srt_struct* @_uPu_srt$def to i8*), i8* bitcast (%sPk_closure_struct* @sPk_closure$def to i8*)], section "llvm.metadata"
