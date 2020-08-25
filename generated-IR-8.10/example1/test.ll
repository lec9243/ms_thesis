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

%sPr_closure_struct = type <{i64, i64}>
@sPr_closure$def = internal global %sPr_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 1}>
@sPr_closure = internal alias i8, bitcast (%sPr_closure_struct* @sPr_closure$def to i8*)
%_uPB_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_uPB_srt$def = internal global %_uPB_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%sPr_closure_struct* @sPr_closure$def to i64), i64 0}>
@_uPB_srt = internal alias i8, bitcast (%_uPB_srt_struct* @_uPB_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uPB_srt_struct* @_uPB_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nPC:
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
  %lcPv = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cPy
cPy:
  %lnPD = load i64, i64* %R1_Var
  store i64 %lnPD, i64* %lr1
  %lnPE = load i64*, i64** %Sp_Var
  %lnPF = getelementptr inbounds i64, i64* %lnPE, i32 1
  %lnPG = ptrtoint i64* %lnPF to i64
  %lnPH = sub i64 %lnPG, 24
  %lnPI = icmp ult i64 %lnPH, %SpLim_Arg
  %lnPK = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnPI, i1 0 )
  br i1 %lnPK, label %cPz, label %cPA
cPA:
  %lnPL = ptrtoint i64* %Base_Arg to i64
  %lnPM = inttoptr i64 %lnPL to i8*
  %lnPN = load i64, i64* %lr1
  %lnPO = inttoptr i64 %lnPN to i8*
  %lnPP = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnPQ = call ccc i8* (i8*, i8*) %lnPP( i8* %lnPM, i8* %lnPO ) nounwind
  %lnPR = ptrtoint i8* %lnPQ to i64
  store i64 %lnPR, i64* %lcPv
  %lnPS = load i64, i64* %lcPv
  %lnPT = icmp eq i64 %lnPS, 0
  br i1 %lnPT, label %cPx, label %cPw
cPw:
  %lnPV = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnPU = load i64*, i64** %Sp_Var
  %lnPW = getelementptr inbounds i64, i64* %lnPU, i32 -2
  store i64 %lnPV, i64* %lnPW, !tbaa !2
  %lnPY = load i64, i64* %lcPv
  %lnPX = load i64*, i64** %Sp_Var
  %lnPZ = getelementptr inbounds i64, i64* %lnPX, i32 -1
  store i64 %lnPY, i64* %lnPZ, !tbaa !2
  %lnQ0 = ptrtoint %sPr_closure_struct* @sPr_closure$def to i64
  %lnQ1 = add i64 %lnQ0, 1
  store i64 %lnQ1, i64* %R3_Var
  %lnQ2 = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %lnQ2, i64* %R2_Var
  %lnQ3 = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %lnQ3, i64* %R1_Var
  %lnQ4 = load i64*, i64** %Sp_Var
  %lnQ5 = getelementptr inbounds i64, i64* %lnQ4, i32 -2
  %lnQ6 = ptrtoint i64* %lnQ5 to i64
  %lnQ7 = inttoptr i64 %lnQ6 to i64*
  store i64* %lnQ7, i64** %Sp_Var
  %lnQ8 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQ9 = load i64*, i64** %Sp_Var
  %lnQa = load i64, i64* %R1_Var
  %lnQb = load i64, i64* %R2_Var
  %lnQc = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQ8( i64* %Base_Arg, i64* %lnQ9, i64* %Hp_Arg, i64 %lnQa, i64 %lnQb, i64 %lnQc, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cPx:
  %lnQd = load i64, i64* %lr1
  %lnQe = inttoptr i64 %lnQd to i64*
  %lnQf = load i64, i64* %lnQe, !tbaa !1
  %lnQg = inttoptr i64 %lnQf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQh = load i64*, i64** %Sp_Var
  %lnQi = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQg( i64* %Base_Arg, i64* %lnQh, i64* %Hp_Arg, i64 %lnQi, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cPz:
  %lnQj = load i64, i64* %lr1
  store i64 %lnQj, i64* %R1_Var
  %lnQk = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnQl = bitcast i64* %lnQk to i64*
  %lnQm = load i64, i64* %lnQl, !tbaa !5
  %lnQn = inttoptr i64 %lnQm to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQo = load i64*, i64** %Sp_Var
  %lnQp = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQn( i64* %Base_Arg, i64* %lnQo, i64* %Hp_Arg, i64 %lnQp, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
%_uQz_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uQz_srt$def = internal global %_uQz_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uQz_srt = internal alias i8, bitcast (%_uQz_srt_struct* @_uQz_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uQz_srt_struct* @_uQz_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nQA:
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
  %lcQt = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cQw
cQw:
  %lnQB = load i64, i64* %R1_Var
  store i64 %lnQB, i64* %l01D
  %lnQC = load i64*, i64** %Sp_Var
  %lnQD = getelementptr inbounds i64, i64* %lnQC, i32 1
  %lnQE = ptrtoint i64* %lnQD to i64
  %lnQF = sub i64 %lnQE, 24
  %lnQG = icmp ult i64 %lnQF, %SpLim_Arg
  %lnQH = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnQG, i1 0 )
  br i1 %lnQH, label %cQx, label %cQy
cQy:
  %lnQI = ptrtoint i64* %Base_Arg to i64
  %lnQJ = inttoptr i64 %lnQI to i8*
  %lnQK = load i64, i64* %l01D
  %lnQL = inttoptr i64 %lnQK to i8*
  %lnQM = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnQN = call ccc i8* (i8*, i8*) %lnQM( i8* %lnQJ, i8* %lnQL ) nounwind
  %lnQO = ptrtoint i8* %lnQN to i64
  store i64 %lnQO, i64* %lcQt
  %lnQP = load i64, i64* %lcQt
  %lnQQ = icmp eq i64 %lnQP, 0
  br i1 %lnQQ, label %cQv, label %cQu
cQu:
  %lnQS = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnQR = load i64*, i64** %Sp_Var
  %lnQT = getelementptr inbounds i64, i64* %lnQR, i32 -2
  store i64 %lnQS, i64* %lnQT, !tbaa !2
  %lnQV = load i64, i64* %lcQt
  %lnQU = load i64*, i64** %Sp_Var
  %lnQW = getelementptr inbounds i64, i64* %lnQU, i32 -1
  store i64 %lnQV, i64* %lnQW, !tbaa !2
  %lnQX = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnQX, i64* %R2_Var
  %lnQY = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnQY, i64* %R1_Var
  %lnQZ = load i64*, i64** %Sp_Var
  %lnR0 = getelementptr inbounds i64, i64* %lnQZ, i32 -2
  %lnR1 = ptrtoint i64* %lnR0 to i64
  %lnR2 = inttoptr i64 %lnR1 to i64*
  store i64* %lnR2, i64** %Sp_Var
  %lnR3 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnR4 = load i64*, i64** %Sp_Var
  %lnR5 = load i64, i64* %R1_Var
  %lnR6 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnR3( i64* %Base_Arg, i64* %lnR4, i64* %Hp_Arg, i64 %lnR5, i64 %lnR6, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQv:
  %lnR7 = load i64, i64* %l01D
  %lnR8 = inttoptr i64 %lnR7 to i64*
  %lnR9 = load i64, i64* %lnR8, !tbaa !1
  %lnRa = inttoptr i64 %lnR9 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRb = load i64*, i64** %Sp_Var
  %lnRc = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRa( i64* %Base_Arg, i64* %lnRb, i64* %Hp_Arg, i64 %lnRc, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cQx:
  %lnRd = load i64, i64* %l01D
  store i64 %lnRd, i64* %R1_Var
  %lnRe = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnRf = bitcast i64* %lnRe to i64*
  %lnRg = load i64, i64* %lnRf, !tbaa !5
  %lnRh = inttoptr i64 %lnRg to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRi = load i64*, i64** %Sp_Var
  %lnRj = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRh( i64* %Base_Arg, i64* %lnRi, i64* %Hp_Arg, i64 %lnRj, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%rP3_bytes_struct = type <{[5 x i8]}>
@rP3_bytes$def = internal constant %rP3_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rP3_bytes = internal alias i8, bitcast (%rP3_bytes_struct* @rP3_bytes$def to i8*)
%rPi_closure_struct = type <{i64, i64}>
@rPi_closure$def = internal global %rPi_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rP3_bytes_struct* @rP3_bytes$def to i64)}>
@rPi_closure = internal alias i8, bitcast (%rPi_closure_struct* @rPi_closure$def to i8*)
%rPj_bytes_struct = type <{[5 x i8]}>
@rPj_bytes$def = internal constant %rPj_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rPj_bytes = internal alias i8, bitcast (%rPj_bytes_struct* @rPj_bytes$def to i8*)
%rPk_closure_struct = type <{i64, i64}>
@rPk_closure$def = internal global %rPk_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rPj_bytes_struct* @rPj_bytes$def to i64)}>
@rPk_closure = internal alias i8, bitcast (%rPk_closure_struct* @rPk_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rPi_closure_struct* @rPi_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rPk_closure_struct* @rPk_closure$def to i64),i64 1), i64 3}>
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
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rPk_closure_struct* @rPk_closure$def to i8*), i8* bitcast (%rPj_bytes_struct* @rPj_bytes$def to i8*), i8* bitcast (%rPi_closure_struct* @rPi_closure$def to i8*), i8* bitcast (%rP3_bytes_struct* @rP3_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uQz_srt_struct* @_uQz_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_uPB_srt_struct* @_uPB_srt$def to i8*), i8* bitcast (%sPr_closure_struct* @sPr_closure$def to i8*)], section "llvm.metadata"
