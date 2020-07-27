target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-linux-gnu"
declare ccc i8* @memcpy$def(i8*, i8*, i64)
declare ccc i8* @memmove$def(i8*, i8*, i64)
declare ccc i8* @memset$def(i8*, i64, i64)
declare ccc i64 @newSpark$def(i8*, i8*)
!0 = !{!"top", null}
!1 = !{!"stack", !0}
!2 = !{!"heap", !0}
!3 = !{!"rx", !2}
!4 = !{!"base", !0}
!5 = !{!"other", !0}
%__stginit_Main_struct = type <{}>
@__stginit_Main$def = internal global %__stginit_Main_struct<{}>
@__stginit_Main = alias i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)
%cX1_str_struct = type <{[5 x i8]}>
%rWK_closure_struct = type <{i64, i64}>
@cX1_str$def = internal constant %cX1_str_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>
@cX1_str = internal alias i8* bitcast (%cX1_str_struct* @cX1_str$def to i8*)
@rWK_closure$def = internal global %rWK_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @cX1_str to i64)}>
@rWK_closure = internal alias i8* bitcast (%rWK_closure_struct* @rWK_closure$def to i8*)
%cX3_str_struct = type <{[5 x i8]}>
%rWU_closure_struct = type <{i64, i64}>
@cX3_str$def = internal constant %cX3_str_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>
@cX3_str = internal alias i8* bitcast (%cX3_str_struct* @cX3_str$def to i8*)
@rWU_closure$def = internal global %rWU_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @cX3_str to i64)}>
@rWU_closure = internal alias i8* bitcast (%rWU_closure_struct* @rWU_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_static_info to i64), i64 add (i64 ptrtoint (%rWK_closure_struct* @rWK_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rWU_closure_struct* @rWU_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%sX0_closure_struct = type <{i64, i64, i64, i64}>
@sX0_closure$def = internal global %sX0_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sX0_info$def to i64), i64 0, i64 0, i64 0}>
@sX0_closure = internal alias i8* bitcast (%sX0_closure_struct* @sX0_closure$def to i8*)
@sX0_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sX0_info$def to i8*)
define internal ghccc void @sX0_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SXf_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sX0_info$def to i64)),i64 0), i64 0, i64 4294967318}>
{
cXc:
  %lsX0 = alloca i64, i32 1
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
  %lcX9 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lnXg = load i64, i64* %R1_Var
  store i64 %lnXg, i64* %lsX0
  %lnXh = load i64*, i64** %Sp_Var
  %lnXi = getelementptr inbounds i64, i64* %lnXh, i32 1
  %lnXj = ptrtoint i64* %lnXi to i64
  %lnXk = sub i64 %lnXj, 48
  %lnXl = icmp ult i64 %lnXk, %SpLim_Arg
  br i1 %lnXl, label %cXd, label %cXe
cXe:
  %lnXm = ptrtoint i64* %Base_Arg to i64
  %lnXn = inttoptr i64 %lnXm to i8*
  %lnXo = load i64, i64* %lsX0
  %lnXp = inttoptr i64 %lnXo to i8*
  %lnXq = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnXr = call ccc i8* (i8*, i8*) %lnXq( i8* %lnXn, i8* %lnXp ) nounwind
  %lnXs = ptrtoint i8* %lnXr to i64
  store i64 %lnXs, i64* %lcX9
  %lnXt = load i64, i64* %lcX9
  %lnXu = icmp eq i64 %lnXt, 0
  br i1 %lnXu, label %cXb, label %cXa
cXa:
  %lnXw = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnXv = load i64*, i64** %Sp_Var
  %lnXx = getelementptr inbounds i64, i64* %lnXv, i32 -2
  store i64 %lnXw, i64* %lnXx, !tbaa !1
  %lnXz = load i64, i64* %lcX9
  %lnXy = load i64*, i64** %Sp_Var
  %lnXA = getelementptr inbounds i64, i64* %lnXy, i32 -1
  store i64 %lnXz, i64* %lnXA, !tbaa !1
  %lnXB = ptrtoint i8* @base_GHCziNum_zdfNumInt_closure to i64
  store i64 %lnXB, i64* %R2_Var
  %lnXD = ptrtoint i8* @stg_ap_pp_info to i64
  %lnXC = load i64*, i64** %Sp_Var
  %lnXE = getelementptr inbounds i64, i64* %lnXC, i32 -5
  store i64 %lnXD, i64* %lnXE, !tbaa !1
  %lnXG = ptrtoint i8* @stg_INTLIKE_closure to i64
  %lnXH = add i64 %lnXG, 273
  %lnXF = load i64*, i64** %Sp_Var
  %lnXI = getelementptr inbounds i64, i64* %lnXF, i32 -4
  store i64 %lnXH, i64* %lnXI, !tbaa !1
  %lnXK = ptrtoint i8* @stg_INTLIKE_closure to i64
  %lnXL = add i64 %lnXK, 273
  %lnXJ = load i64*, i64** %Sp_Var
  %lnXM = getelementptr inbounds i64, i64* %lnXJ, i32 -3
  store i64 %lnXL, i64* %lnXM, !tbaa !1
  %lnXN = load i64*, i64** %Sp_Var
  %lnXO = getelementptr inbounds i64, i64* %lnXN, i32 -5
  %lnXP = ptrtoint i64* %lnXO to i64
  %lnXQ = inttoptr i64 %lnXP to i64*
  store i64* %lnXQ, i64** %Sp_Var
  %lnXR = bitcast i8* @base_GHCziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXS = load i64*, i64** %Sp_Var
  %lnXT = load i64, i64* %R1_Var
  %lnXU = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXR( i64* %Base_Arg, i64* %lnXS, i64* %Hp_Arg, i64 %lnXT, i64 %lnXU, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cXb:
  %lnXV = load i64, i64* %lsX0
  %lnXW = inttoptr i64 %lnXV to i64*
  %lnXX = load i64, i64* %lnXW, !tbaa !5
  %lnXY = inttoptr i64 %lnXX to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnXZ = load i64*, i64** %Sp_Var
  %lnY0 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnXY( i64* %Base_Arg, i64* %lnXZ, i64* %Hp_Arg, i64 %lnY0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cXd:
  %lnY1 = load i64, i64* %lsX0
  store i64 %lnY1, i64* %R1_Var
  %lnY2 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnY3 = bitcast i64* %lnY2 to i64*
  %lnY4 = load i64, i64* %lnY3, !tbaa !4
  %lnY5 = inttoptr i64 %lnY4 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnY6 = load i64*, i64** %Sp_Var
  %lnY7 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnY5( i64* %Base_Arg, i64* %lnY6, i64* %Hp_Arg, i64 %lnY7, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SXf_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)),i64 8), i64 0, i64 30064771094}>
{
cYf:
  %lroW = alloca i64, i32 1
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
  %lcYc = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnYi = load i64, i64* %R1_Var
  store i64 %lnYi, i64* %lroW
  %lnYj = load i64*, i64** %Sp_Var
  %lnYk = getelementptr inbounds i64, i64* %lnYj, i32 1
  %lnYl = ptrtoint i64* %lnYk to i64
  %lnYm = sub i64 %lnYl, 24
  %lnYn = icmp ult i64 %lnYm, %SpLim_Arg
  br i1 %lnYn, label %cYg, label %cYh
cYh:
  %lnYo = ptrtoint i64* %Base_Arg to i64
  %lnYp = inttoptr i64 %lnYo to i8*
  %lnYq = load i64, i64* %lroW
  %lnYr = inttoptr i64 %lnYq to i8*
  %lnYs = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnYt = call ccc i8* (i8*, i8*) %lnYs( i8* %lnYp, i8* %lnYr ) nounwind
  %lnYu = ptrtoint i8* %lnYt to i64
  store i64 %lnYu, i64* %lcYc
  %lnYv = load i64, i64* %lcYc
  %lnYw = icmp eq i64 %lnYv, 0
  br i1 %lnYw, label %cYe, label %cYd
cYd:
  %lnYy = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnYx = load i64*, i64** %Sp_Var
  %lnYz = getelementptr inbounds i64, i64* %lnYx, i32 -2
  store i64 %lnYy, i64* %lnYz, !tbaa !1
  %lnYB = load i64, i64* %lcYc
  %lnYA = load i64*, i64** %Sp_Var
  %lnYC = getelementptr inbounds i64, i64* %lnYA, i32 -1
  store i64 %lnYB, i64* %lnYC, !tbaa !1
  %lnYD = ptrtoint %sX0_closure_struct* @sX0_closure$def to i64
  store i64 %lnYD, i64* %R3_Var
  %lnYE = ptrtoint i8* @base_GHCziShow_zdfShowInt_closure to i64
  store i64 %lnYE, i64* %R2_Var
  %lnYF = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %lnYF, i64* %R1_Var
  %lnYG = load i64*, i64** %Sp_Var
  %lnYH = getelementptr inbounds i64, i64* %lnYG, i32 -2
  %lnYI = ptrtoint i64* %lnYH to i64
  %lnYJ = inttoptr i64 %lnYI to i64*
  store i64* %lnYJ, i64** %Sp_Var
  %lnYK = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYL = load i64*, i64** %Sp_Var
  %lnYM = load i64, i64* %R1_Var
  %lnYN = load i64, i64* %R2_Var
  %lnYO = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYK( i64* %Base_Arg, i64* %lnYL, i64* %Hp_Arg, i64 %lnYM, i64 %lnYN, i64 %lnYO, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cYe:
  %lnYP = load i64, i64* %lroW
  %lnYQ = inttoptr i64 %lnYP to i64*
  %lnYR = load i64, i64* %lnYQ, !tbaa !5
  %lnYS = inttoptr i64 %lnYR to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnYT = load i64*, i64** %Sp_Var
  %lnYU = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYS( i64* %Base_Arg, i64* %lnYT, i64* %Hp_Arg, i64 %lnYU, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cYg:
  %lnYV = load i64, i64* %lroW
  store i64 %lnYV, i64* %R1_Var
  %lnYW = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnYX = bitcast i64* %lnYW to i64*
  %lnYY = load i64, i64* %lnYX, !tbaa !4
  %lnYZ = inttoptr i64 %lnYY to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZ0 = load i64*, i64** %Sp_Var
  %lnZ1 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnYZ( i64* %Base_Arg, i64* %lnZ0, i64* %Hp_Arg, i64 %lnZ1, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SXf_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)),i64 32), i64 0, i64 12884901910}>
{
cZ9:
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
  %lcZ6 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnZc = load i64, i64* %R1_Var
  store i64 %lnZc, i64* %l01D
  %lnZd = load i64*, i64** %Sp_Var
  %lnZe = getelementptr inbounds i64, i64* %lnZd, i32 1
  %lnZf = ptrtoint i64* %lnZe to i64
  %lnZg = sub i64 %lnZf, 24
  %lnZh = icmp ult i64 %lnZg, %SpLim_Arg
  br i1 %lnZh, label %cZa, label %cZb
cZb:
  %lnZi = ptrtoint i64* %Base_Arg to i64
  %lnZj = inttoptr i64 %lnZi to i8*
  %lnZk = load i64, i64* %l01D
  %lnZl = inttoptr i64 %lnZk to i8*
  %lnZm = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnZn = call ccc i8* (i8*, i8*) %lnZm( i8* %lnZj, i8* %lnZl ) nounwind
  %lnZo = ptrtoint i8* %lnZn to i64
  store i64 %lnZo, i64* %lcZ6
  %lnZp = load i64, i64* %lcZ6
  %lnZq = icmp eq i64 %lnZp, 0
  br i1 %lnZq, label %cZ8, label %cZ7
cZ7:
  %lnZs = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnZr = load i64*, i64** %Sp_Var
  %lnZt = getelementptr inbounds i64, i64* %lnZr, i32 -2
  store i64 %lnZs, i64* %lnZt, !tbaa !1
  %lnZv = load i64, i64* %lcZ6
  %lnZu = load i64*, i64** %Sp_Var
  %lnZw = getelementptr inbounds i64, i64* %lnZu, i32 -1
  store i64 %lnZv, i64* %lnZw, !tbaa !1
  %lnZx = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnZx, i64* %R2_Var
  %lnZy = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnZy, i64* %R1_Var
  %lnZz = load i64*, i64** %Sp_Var
  %lnZA = getelementptr inbounds i64, i64* %lnZz, i32 -2
  %lnZB = ptrtoint i64* %lnZA to i64
  %lnZC = inttoptr i64 %lnZB to i64*
  store i64* %lnZC, i64** %Sp_Var
  %lnZD = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZE = load i64*, i64** %Sp_Var
  %lnZF = load i64, i64* %R1_Var
  %lnZG = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZD( i64* %Base_Arg, i64* %lnZE, i64* %Hp_Arg, i64 %lnZF, i64 %lnZG, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cZ8:
  %lnZH = load i64, i64* %l01D
  %lnZI = inttoptr i64 %lnZH to i64*
  %lnZJ = load i64, i64* %lnZI, !tbaa !5
  %lnZK = inttoptr i64 %lnZJ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZL = load i64*, i64** %Sp_Var
  %lnZM = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZK( i64* %Base_Arg, i64* %lnZL, i64* %Hp_Arg, i64 %lnZM, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cZa:
  %lnZN = load i64, i64* %l01D
  store i64 %lnZN, i64* %R1_Var
  %lnZO = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnZP = bitcast i64* %lnZO to i64*
  %lnZQ = load i64, i64* %lnZP, !tbaa !4
  %lnZR = inttoptr i64 %lnZQ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnZS = load i64*, i64** %Sp_Var
  %lnZT = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnZR( i64* %Base_Arg, i64* %lnZS, i64* %Hp_Arg, i64 %lnZT, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%SXf_srt_struct = type <{i64, i64, i64, i64, i64, i64}>
@SXf_srt$def = internal constant %SXf_srt_struct<{i64 ptrtoint (i8* @base_GHCziNum_zdfNumInt_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInt_closure to i64), i64 ptrtoint (%sX0_closure_struct* @sX0_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64)}>
@SXf_srt = internal alias i8* bitcast (%SXf_srt_struct* @SXf_srt$def to i8*)
@ghczmprim_GHCziTypes_TrNameS_static_info = external global i8
@ghczmprim_GHCziTypes_Module_static_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziNum_zdfNumInt_closure = external global i8
@stg_ap_pp_info = external global i8
@stg_INTLIKE_closure = external global i8
@base_GHCziNum_zp_info = external global i8
@base_GHCziShow_zdfShowInt_closure = external global i8
@base_SystemziIO_print_closure = external global i8
@stg_ap_pp_fast = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%SXf_srt_struct* @SXf_srt$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%sX0_closure_struct* @sX0_closure$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rWU_closure_struct* @rWU_closure$def to i8*), i8* bitcast (%cX3_str_struct* @cX3_str$def to i8*), i8* bitcast (%rWK_closure_struct* @rWK_closure$def to i8*), i8* bitcast (%cX1_str_struct* @cX1_str$def to i8*), i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)], section "llvm.metadata"
