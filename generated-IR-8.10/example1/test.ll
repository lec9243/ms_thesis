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
%s10q_closure_struct = type <{i64, i64}>
@s10q_closure$def = internal global %s10q_closure_struct<{i64 ptrtoint (i8* @integerzmgmp_GHCziIntegerziType_Szh_static_info to i64), i64 1}>
@s10q_closure = internal alias i8* bitcast (%s10q_closure_struct* @s10q_closure$def to i8*)
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S10B_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)),i64 0), i64 0, i64 30064771094}>
{
c10y:
  %lrn5 = alloca i64, i32 1
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
  %lc10v = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln10C = load i64, i64* %R1_Var
  store i64 %ln10C, i64* %lrn5
  %ln10D = load i64*, i64** %Sp_Var
  %ln10E = getelementptr inbounds i64, i64* %ln10D, i32 1
  %ln10F = ptrtoint i64* %ln10E to i64
  %ln10G = sub i64 %ln10F, 24
  %ln10H = icmp ult i64 %ln10G, %SpLim_Arg
  br i1 %ln10H, label %c10z, label %c10A
c10A:
  %ln10I = ptrtoint i64* %Base_Arg to i64
  %ln10J = inttoptr i64 %ln10I to i8*
  %ln10K = load i64, i64* %lrn5
  %ln10L = inttoptr i64 %ln10K to i8*
  %ln10M = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln10N = call ccc i8* (i8*, i8*) %ln10M( i8* %ln10J, i8* %ln10L ) nounwind
  %ln10O = ptrtoint i8* %ln10N to i64
  store i64 %ln10O, i64* %lc10v
  %ln10P = load i64, i64* %lc10v
  %ln10Q = icmp eq i64 %ln10P, 0
  br i1 %ln10Q, label %c10x, label %c10w
c10w:
  %ln10S = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln10R = load i64*, i64** %Sp_Var
  %ln10T = getelementptr inbounds i64, i64* %ln10R, i32 -2
  store i64 %ln10S, i64* %ln10T, !tbaa !1
  %ln10V = load i64, i64* %lc10v
  %ln10U = load i64*, i64** %Sp_Var
  %ln10W = getelementptr inbounds i64, i64* %ln10U, i32 -1
  store i64 %ln10V, i64* %ln10W, !tbaa !1
  %ln10X = ptrtoint %s10q_closure_struct* @s10q_closure$def to i64
  %ln10Y = add i64 %ln10X, 1
  store i64 %ln10Y, i64* %R3_Var
  %ln10Z = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %ln10Z, i64* %R2_Var
  %ln110 = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %ln110, i64* %R1_Var
  %ln111 = load i64*, i64** %Sp_Var
  %ln112 = getelementptr inbounds i64, i64* %ln111, i32 -2
  %ln113 = ptrtoint i64* %ln112 to i64
  %ln114 = inttoptr i64 %ln113 to i64*
  store i64* %ln114, i64** %Sp_Var
  %ln115 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln116 = load i64*, i64** %Sp_Var
  %ln117 = load i64, i64* %R1_Var
  %ln118 = load i64, i64* %R2_Var
  %ln119 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln115( i64* %Base_Arg, i64* %ln116, i64* %Hp_Arg, i64 %ln117, i64 %ln118, i64 %ln119, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c10x:
  %ln11a = load i64, i64* %lrn5
  %ln11b = inttoptr i64 %ln11a to i64*
  %ln11c = load i64, i64* %ln11b, !tbaa !5
  %ln11d = inttoptr i64 %ln11c to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln11e = load i64*, i64** %Sp_Var
  %ln11f = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln11d( i64* %Base_Arg, i64* %ln11e, i64* %Hp_Arg, i64 %ln11f, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c10z:
  %ln11g = load i64, i64* %lrn5
  store i64 %ln11g, i64* %R1_Var
  %ln11h = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln11i = bitcast i64* %ln11h to i64*
  %ln11j = load i64, i64* %ln11i, !tbaa !4
  %ln11k = inttoptr i64 %ln11j to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln11l = load i64*, i64** %Sp_Var
  %ln11m = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln11k( i64* %Base_Arg, i64* %ln11l, i64* %Hp_Arg, i64 %ln11m, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S10B_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)),i64 24), i64 0, i64 12884901910}>
{
c11u:
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
  %lc11r = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln11x = load i64, i64* %R1_Var
  store i64 %ln11x, i64* %l01D
  %ln11y = load i64*, i64** %Sp_Var
  %ln11z = getelementptr inbounds i64, i64* %ln11y, i32 1
  %ln11A = ptrtoint i64* %ln11z to i64
  %ln11B = sub i64 %ln11A, 24
  %ln11C = icmp ult i64 %ln11B, %SpLim_Arg
  br i1 %ln11C, label %c11v, label %c11w
c11w:
  %ln11D = ptrtoint i64* %Base_Arg to i64
  %ln11E = inttoptr i64 %ln11D to i8*
  %ln11F = load i64, i64* %l01D
  %ln11G = inttoptr i64 %ln11F to i8*
  %ln11H = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln11I = call ccc i8* (i8*, i8*) %ln11H( i8* %ln11E, i8* %ln11G ) nounwind
  %ln11J = ptrtoint i8* %ln11I to i64
  store i64 %ln11J, i64* %lc11r
  %ln11K = load i64, i64* %lc11r
  %ln11L = icmp eq i64 %ln11K, 0
  br i1 %ln11L, label %c11t, label %c11s
c11s:
  %ln11N = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln11M = load i64*, i64** %Sp_Var
  %ln11O = getelementptr inbounds i64, i64* %ln11M, i32 -2
  store i64 %ln11N, i64* %ln11O, !tbaa !1
  %ln11Q = load i64, i64* %lc11r
  %ln11P = load i64*, i64** %Sp_Var
  %ln11R = getelementptr inbounds i64, i64* %ln11P, i32 -1
  store i64 %ln11Q, i64* %ln11R, !tbaa !1
  %ln11S = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %ln11S, i64* %R2_Var
  %ln11T = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %ln11T, i64* %R1_Var
  %ln11U = load i64*, i64** %Sp_Var
  %ln11V = getelementptr inbounds i64, i64* %ln11U, i32 -2
  %ln11W = ptrtoint i64* %ln11V to i64
  %ln11X = inttoptr i64 %ln11W to i64*
  store i64* %ln11X, i64** %Sp_Var
  %ln11Y = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln11Z = load i64*, i64** %Sp_Var
  %ln120 = load i64, i64* %R1_Var
  %ln121 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln11Y( i64* %Base_Arg, i64* %ln11Z, i64* %Hp_Arg, i64 %ln120, i64 %ln121, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c11t:
  %ln122 = load i64, i64* %l01D
  %ln123 = inttoptr i64 %ln122 to i64*
  %ln124 = load i64, i64* %ln123, !tbaa !5
  %ln125 = inttoptr i64 %ln124 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln126 = load i64*, i64** %Sp_Var
  %ln127 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln125( i64* %Base_Arg, i64* %ln126, i64* %Hp_Arg, i64 %ln127, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c11v:
  %ln128 = load i64, i64* %l01D
  store i64 %ln128, i64* %R1_Var
  %ln129 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln12a = bitcast i64* %ln129 to i64*
  %ln12b = load i64, i64* %ln12a, !tbaa !4
  %ln12c = inttoptr i64 %ln12b to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln12d = load i64*, i64** %Sp_Var
  %ln12e = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln12c( i64* %Base_Arg, i64* %ln12d, i64* %Hp_Arg, i64 %ln12e, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%c12g_str_struct = type <{[5 x i8]}>
%r103_closure_struct = type <{i64, i64}>
@c12g_str$def = internal constant %c12g_str_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>
@c12g_str = internal alias i8* bitcast (%c12g_str_struct* @c12g_str$def to i8*)
@r103_closure$def = internal global %r103_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @c12g_str to i64)}>
@r103_closure = internal alias i8* bitcast (%r103_closure_struct* @r103_closure$def to i8*)
%c12i_str_struct = type <{[5 x i8]}>
%r10e_closure_struct = type <{i64, i64}>
@c12i_str$def = internal constant %c12i_str_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>
@c12i_str = internal alias i8* bitcast (%c12i_str_struct* @c12i_str$def to i8*)
@r10e_closure$def = internal global %r10e_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @c12i_str to i64)}>
@r10e_closure = internal alias i8* bitcast (%r10e_closure_struct* @r10e_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_static_info to i64), i64 add (i64 ptrtoint (%r103_closure_struct* @r103_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%r10e_closure_struct* @r10e_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%S10B_srt_struct = type <{i64, i64, i64, i64, i64}>
@S10B_srt$def = internal constant %S10B_srt_struct<{i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%s10q_closure_struct* @s10q_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64)}>
@S10B_srt = internal alias i8* bitcast (%S10B_srt_struct* @S10B_srt$def to i8*)
@integerzmgmp_GHCziIntegerziType_Szh_static_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@base_SystemziIO_print_closure = external global i8
@stg_ap_pp_fast = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@ghczmprim_GHCziTypes_TrNameS_static_info = external global i8
@ghczmprim_GHCziTypes_Module_static_info = external global i8
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%S10B_srt_struct* @S10B_srt$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%r10e_closure_struct* @r10e_closure$def to i8*), i8* bitcast (%c12i_str_struct* @c12i_str$def to i8*), i8* bitcast (%r103_closure_struct* @r103_closure$def to i8*), i8* bitcast (%c12g_str_struct* @c12g_str$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%s10q_closure_struct* @s10q_closure$def to i8*), i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)], section "llvm.metadata"
