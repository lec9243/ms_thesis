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

%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
nIs:
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
  %lcIm = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %cIp
cIp:
  %lnIt = load i64, i64* %R1_Var
  store i64 %lnIt, i64* %lr1
  %lnIu = load i64*, i64** %Sp_Var
  %lnIv = getelementptr inbounds i64, i64* %lnIu, i32 1
  %lnIw = ptrtoint i64* %lnIv to i64
  %lnIx = sub i64 %lnIw, 40
  %lnIy = icmp ult i64 %lnIx, %SpLim_Arg
  %lnIA = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnIy, i1 0 )
  br i1 %lnIA, label %cIq, label %cIr
cIr:
  %lnIB = ptrtoint i64* %Base_Arg to i64
  %lnIC = inttoptr i64 %lnIB to i8*
  %lnID = load i64, i64* %lr1
  %lnIE = inttoptr i64 %lnID to i8*
  %lnIF = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnIG = call ccc i8* (i8*, i8*) %lnIF( i8* %lnIC, i8* %lnIE ) nounwind
  %lnIH = ptrtoint i8* %lnIG to i64
  store i64 %lnIH, i64* %lcIm
  %lnII = load i64, i64* %lcIm
  %lnIJ = icmp eq i64 %lnII, 0
  br i1 %lnIJ, label %cIo, label %cIn
cIn:
  %lnIL = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnIK = load i64*, i64** %Sp_Var
  %lnIM = getelementptr inbounds i64, i64* %lnIK, i32 -2
  store i64 %lnIL, i64* %lnIM, !tbaa !2
  %lnIO = load i64, i64* %lcIm
  %lnIN = load i64*, i64** %Sp_Var
  %lnIP = getelementptr inbounds i64, i64* %lnIN, i32 -1
  store i64 %lnIO, i64* %lnIP, !tbaa !2
  %lnIQ = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnIQ, i64* %R2_Var
  %lnIS = ptrtoint i8* @stg_ap_p_info to i64
  %lnIR = load i64*, i64** %Sp_Var
  %lnIT = getelementptr inbounds i64, i64* %lnIR, i32 -4
  store i64 %lnIS, i64* %lnIT, !tbaa !2
  %lnIV = ptrtoint i8* @ghczmprim_GHCziTuple_Z0T_closure to i64
  %lnIW = add i64 %lnIV, 1
  %lnIU = load i64*, i64** %Sp_Var
  %lnIX = getelementptr inbounds i64, i64* %lnIU, i32 -3
  store i64 %lnIW, i64* %lnIX, !tbaa !2
  %lnIY = load i64*, i64** %Sp_Var
  %lnIZ = getelementptr inbounds i64, i64* %lnIY, i32 -4
  %lnJ0 = ptrtoint i64* %lnIZ to i64
  %lnJ1 = inttoptr i64 %lnJ0 to i64*
  store i64* %lnJ1, i64** %Sp_Var
  %lnJ2 = bitcast i8* @base_GHCziBase_return_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJ3 = load i64*, i64** %Sp_Var
  %lnJ4 = load i64, i64* %R1_Var
  %lnJ5 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJ2( i64* %Base_Arg, i64* %lnJ3, i64* %Hp_Arg, i64 %lnJ4, i64 %lnJ5, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cIo:
  %lnJ6 = load i64, i64* %lr1
  %lnJ7 = inttoptr i64 %lnJ6 to i64*
  %lnJ8 = load i64, i64* %lnJ7, !tbaa !1
  %lnJ9 = inttoptr i64 %lnJ8 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJa = load i64*, i64** %Sp_Var
  %lnJb = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJ9( i64* %Base_Arg, i64* %lnJa, i64* %Hp_Arg, i64 %lnJb, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cIq:
  %lnJc = load i64, i64* %lr1
  store i64 %lnJc, i64* %R1_Var
  %lnJd = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnJe = bitcast i64* %lnJd to i64*
  %lnJf = load i64, i64* %lnJe, !tbaa !5
  %lnJg = inttoptr i64 %lnJf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJh = load i64*, i64** %Sp_Var
  %lnJi = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJg( i64* %Base_Arg, i64* %lnJh, i64* %Hp_Arg, i64 %lnJi, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
%_uJs_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_uJs_srt$def = internal global %_uJs_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_uJs_srt = internal alias i8, bitcast (%_uJs_srt_struct* @_uJs_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_uJs_srt_struct* @_uJs_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
nJt:
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
  %lcJm = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %cJp
cJp:
  %lnJu = load i64, i64* %R1_Var
  store i64 %lnJu, i64* %l01D
  %lnJv = load i64*, i64** %Sp_Var
  %lnJw = getelementptr inbounds i64, i64* %lnJv, i32 1
  %lnJx = ptrtoint i64* %lnJw to i64
  %lnJy = sub i64 %lnJx, 24
  %lnJz = icmp ult i64 %lnJy, %SpLim_Arg
  %lnJA = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %lnJz, i1 0 )
  br i1 %lnJA, label %cJq, label %cJr
cJr:
  %lnJB = ptrtoint i64* %Base_Arg to i64
  %lnJC = inttoptr i64 %lnJB to i8*
  %lnJD = load i64, i64* %l01D
  %lnJE = inttoptr i64 %lnJD to i8*
  %lnJF = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnJG = call ccc i8* (i8*, i8*) %lnJF( i8* %lnJC, i8* %lnJE ) nounwind
  %lnJH = ptrtoint i8* %lnJG to i64
  store i64 %lnJH, i64* %lcJm
  %lnJI = load i64, i64* %lcJm
  %lnJJ = icmp eq i64 %lnJI, 0
  br i1 %lnJJ, label %cJo, label %cJn
cJn:
  %lnJL = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnJK = load i64*, i64** %Sp_Var
  %lnJM = getelementptr inbounds i64, i64* %lnJK, i32 -2
  store i64 %lnJL, i64* %lnJM, !tbaa !2
  %lnJO = load i64, i64* %lcJm
  %lnJN = load i64*, i64** %Sp_Var
  %lnJP = getelementptr inbounds i64, i64* %lnJN, i32 -1
  store i64 %lnJO, i64* %lnJP, !tbaa !2
  %lnJQ = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnJQ, i64* %R2_Var
  %lnJR = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnJR, i64* %R1_Var
  %lnJS = load i64*, i64** %Sp_Var
  %lnJT = getelementptr inbounds i64, i64* %lnJS, i32 -2
  %lnJU = ptrtoint i64* %lnJT to i64
  %lnJV = inttoptr i64 %lnJU to i64*
  store i64* %lnJV, i64** %Sp_Var
  %lnJW = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnJX = load i64*, i64** %Sp_Var
  %lnJY = load i64, i64* %R1_Var
  %lnJZ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnJW( i64* %Base_Arg, i64* %lnJX, i64* %Hp_Arg, i64 %lnJY, i64 %lnJZ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cJo:
  %lnK0 = load i64, i64* %l01D
  %lnK1 = inttoptr i64 %lnK0 to i64*
  %lnK2 = load i64, i64* %lnK1, !tbaa !1
  %lnK3 = inttoptr i64 %lnK2 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnK4 = load i64*, i64** %Sp_Var
  %lnK5 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnK3( i64* %Base_Arg, i64* %lnK4, i64* %Hp_Arg, i64 %lnK5, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cJq:
  %lnK6 = load i64, i64* %l01D
  store i64 %lnK6, i64* %R1_Var
  %lnK7 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnK8 = bitcast i64* %lnK7 to i64*
  %lnK9 = load i64, i64* %lnK8, !tbaa !5
  %lnKa = inttoptr i64 %lnK9 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnKb = load i64*, i64** %Sp_Var
  %lnKc = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnKa( i64* %Base_Arg, i64* %lnKb, i64* %Hp_Arg, i64 %lnKc, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%rH6_bytes_struct = type <{[5 x i8]}>
@rH6_bytes$def = internal constant %rH6_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rH6_bytes = internal alias i8, bitcast (%rH6_bytes_struct* @rH6_bytes$def to i8*)
%rHc_closure_struct = type <{i64, i64}>
@rHc_closure$def = internal global %rHc_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rH6_bytes_struct* @rH6_bytes$def to i64)}>
@rHc_closure = internal alias i8, bitcast (%rHc_closure_struct* @rHc_closure$def to i8*)
%rHd_bytes_struct = type <{[5 x i8]}>
@rHd_bytes$def = internal constant %rHd_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@rHd_bytes = internal alias i8, bitcast (%rHd_bytes_struct* @rHd_bytes$def to i8*)
%rHe_closure_struct = type <{i64, i64}>
@rHe_closure$def = internal global %rHe_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%rHd_bytes_struct* @rHd_bytes$def to i64)}>
@rHe_closure = internal alias i8, bitcast (%rHe_closure_struct* @rHe_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%rHc_closure_struct* @rHc_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rHe_closure_struct* @rHe_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziBase_zdfMonadIO_closure = external global i8
@stg_ap_p_info = external global i8
@ghczmprim_GHCziTuple_Z0T_closure = external global i8
@base_GHCziBase_return_info = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [8 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rHe_closure_struct* @rHe_closure$def to i8*), i8* bitcast (%rHd_bytes_struct* @rHd_bytes$def to i8*), i8* bitcast (%rHc_closure_struct* @rHc_closure$def to i8*), i8* bitcast (%rH6_bytes_struct* @rH6_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_uJs_srt_struct* @_uJs_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)], section "llvm.metadata"
