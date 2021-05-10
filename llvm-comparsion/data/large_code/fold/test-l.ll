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

%_u12c_srt_struct = type <{i64, i64, i64, i64}>
%s11v_closure_struct = type <{i64, i64, i64, i64}>
@_u12c_srt$def = internal global %_u12c_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64), i64 ptrtoint (i8* @base_DataziFoldable_zdfFoldableZMZN_closure to i64), i64 0}>
@_u12c_srt = internal alias i8, bitcast (%_u12c_srt_struct* @_u12c_srt$def to i8*)
@s11v_closure$def = internal global %s11v_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11v_info$def to i64), i64 0, i64 0, i64 0}>
@s11v_closure = internal alias i8, bitcast (%s11v_closure_struct* @s11v_closure$def to i8*)
@s11g_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11g_info$def to i8*)
define internal ghccc void @s11g_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11g_info$def to i64)) to i32),i32 0)}>
{
n12d:
  %ls11g = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc11U = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c11V
c11V:
  %ln12e = load i64, i64* %R1_Var
  store i64 %ln12e, i64* %ls11g
  %ln12f = load i64*, i64** %Sp_Var
  %ln12g = getelementptr inbounds i64, i64* %ln12f, i32 1
  %ln12h = ptrtoint i64* %ln12g to i64
  %ln12i = sub i64 %ln12h, 40
  %ln12j = icmp ult i64 %ln12i, %SpLim_Arg
  %ln12l = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln12j, i1 0 )
  br i1 %ln12l, label %c11W, label %c11X
c11X:
  %ln12m = load i64*, i64** %Hp_Var
  %ln12n = getelementptr inbounds i64, i64* %ln12m, i32 2
  %ln12o = ptrtoint i64* %ln12n to i64
  %ln12p = inttoptr i64 %ln12o to i64*
  store i64* %ln12p, i64** %Hp_Var
  %ln12q = load i64*, i64** %Hp_Var
  %ln12r = ptrtoint i64* %ln12q to i64
  %ln12s = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln12t = bitcast i64* %ln12s to i64*
  %ln12u = load i64, i64* %ln12t, !tbaa !5
  %ln12v = icmp ugt i64 %ln12r, %ln12u
  %ln12w = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln12v, i1 0 )
  br i1 %ln12w, label %c11Z, label %c11Y
c11Y:
  %ln12y = ptrtoint i8* @stg_upd_frame_info to i64
  %ln12x = load i64*, i64** %Sp_Var
  %ln12z = getelementptr inbounds i64, i64* %ln12x, i32 -2
  store i64 %ln12y, i64* %ln12z, !tbaa !2
  %ln12B = load i64, i64* %ls11g
  %ln12A = load i64*, i64** %Sp_Var
  %ln12C = getelementptr inbounds i64, i64* %ln12A, i32 -1
  store i64 %ln12B, i64* %ln12C, !tbaa !2
  %ln12E = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln12D = load i64*, i64** %Hp_Var
  %ln12F = getelementptr inbounds i64, i64* %ln12D, i32 -1
  store i64 %ln12E, i64* %ln12F, !tbaa !3
  %ln12G = load i64*, i64** %Hp_Var
  %ln12H = getelementptr inbounds i64, i64* %ln12G, i32 0
  store i64 0, i64* %ln12H, !tbaa !3
  %ln12J = load i64*, i64** %Hp_Var
  %ln12K = ptrtoint i64* %ln12J to i64
  %ln12L = add i64 %ln12K, -7
  store i64 %ln12L, i64* %lc11U
  %ln12M = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln12M, i64* %R2_Var
  %ln12O = ptrtoint i8* @stg_ap_p_info to i64
  %ln12N = load i64*, i64** %Sp_Var
  %ln12P = getelementptr inbounds i64, i64* %ln12N, i32 -4
  store i64 %ln12O, i64* %ln12P, !tbaa !2
  %ln12R = load i64, i64* %lc11U
  %ln12Q = load i64*, i64** %Sp_Var
  %ln12S = getelementptr inbounds i64, i64* %ln12Q, i32 -3
  store i64 %ln12R, i64* %ln12S, !tbaa !2
  %ln12T = load i64*, i64** %Sp_Var
  %ln12U = getelementptr inbounds i64, i64* %ln12T, i32 -4
  %ln12V = ptrtoint i64* %ln12U to i64
  %ln12W = inttoptr i64 %ln12V to i64*
  store i64* %ln12W, i64** %Sp_Var
  %ln12X = bitcast i8* @base_GHCziNum_fromInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln12Y = load i64*, i64** %Sp_Var
  %ln12Z = load i64*, i64** %Hp_Var
  %ln130 = load i64, i64* %R1_Var
  %ln131 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln12X( i64* %Base_Arg, i64* %ln12Y, i64* %ln12Z, i64 %ln130, i64 %ln131, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c11Z:
  %ln132 = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln132, !tbaa !5
  br label %c11W
c11W:
  %ln133 = load i64, i64* %ls11g
  store i64 %ln133, i64* %R1_Var
  %ln134 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln135 = bitcast i64* %ln134 to i64*
  %ln136 = load i64, i64* %ln135, !tbaa !5
  %ln137 = inttoptr i64 %ln136 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln138 = load i64*, i64** %Sp_Var
  %ln139 = load i64*, i64** %Hp_Var
  %ln13a = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln137( i64* %Base_Arg, i64* %ln138, i64* %ln139, i64 %ln13a, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@s119_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s119_info$def to i8*)
define internal ghccc void @s119_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s119_info$def to i64)) to i32),i32 0)}>
{
n13b:
  %ls119 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c124
c124:
  %ln13c = load i64, i64* %R1_Var
  store i64 %ln13c, i64* %ls119
  %ln13d = load i64*, i64** %Sp_Var
  %ln13e = getelementptr inbounds i64, i64* %ln13d, i32 1
  %ln13f = ptrtoint i64* %ln13e to i64
  %ln13g = sub i64 %ln13f, 24
  %ln13h = icmp ult i64 %ln13g, %SpLim_Arg
  %ln13i = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln13h, i1 0 )
  br i1 %ln13i, label %c125, label %c126
c126:
  %ln13k = ptrtoint i8* @stg_upd_frame_info to i64
  %ln13j = load i64*, i64** %Sp_Var
  %ln13l = getelementptr inbounds i64, i64* %ln13j, i32 -2
  store i64 %ln13k, i64* %ln13l, !tbaa !2
  %ln13n = load i64, i64* %ls119
  %ln13m = load i64*, i64** %Sp_Var
  %ln13o = getelementptr inbounds i64, i64* %ln13m, i32 -1
  store i64 %ln13n, i64* %ln13o, !tbaa !2
  %ln13p = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln13p, i64* %R2_Var
  %ln13q = load i64*, i64** %Sp_Var
  %ln13r = getelementptr inbounds i64, i64* %ln13q, i32 -2
  %ln13s = ptrtoint i64* %ln13r to i64
  %ln13t = inttoptr i64 %ln13s to i64*
  store i64* %ln13t, i64** %Sp_Var
  %ln13u = bitcast i8* @base_GHCziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln13v = load i64*, i64** %Sp_Var
  %ln13w = load i64, i64* %R1_Var
  %ln13x = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln13u( i64* %Base_Arg, i64* %ln13v, i64* %Hp_Arg, i64 %ln13w, i64 %ln13x, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c125:
  %ln13y = load i64, i64* %ls119
  store i64 %ln13y, i64* %R1_Var
  %ln13z = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln13A = bitcast i64* %ln13z to i64*
  %ln13B = load i64, i64* %ln13A, !tbaa !5
  %ln13C = inttoptr i64 %ln13B to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln13D = load i64*, i64** %Sp_Var
  %ln13E = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln13C( i64* %Base_Arg, i64* %ln13D, i64* %Hp_Arg, i64 %ln13E, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s11v_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11v_info$def to i8*)
define internal ghccc void @s11v_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u12c_srt_struct* @_u12c_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11v_info$def to i64)) to i32),i32 0)}>
{
n13F:
  %ls11v = alloca i64, i32 1
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
  %lc11z = alloca i64, i32 1
  %lc11C = alloca i64, i32 1
  %lc11D = alloca i64, i32 1
  %lc11E = alloca i64, i32 1
  %lc11F = alloca i64, i32 1
  %lc11G = alloca i64, i32 1
  %lc11H = alloca i64, i32 1
  %lc11I = alloca i64, i32 1
  %lc11J = alloca i64, i32 1
  %lc11K = alloca i64, i32 1
  %lc11L = alloca i64, i32 1
  %lc11M = alloca i64, i32 1
  %lc11N = alloca i64, i32 1
  %lc11O = alloca i64, i32 1
  %lc11P = alloca i64, i32 1
  %lc11Q = alloca i64, i32 1
  %lc120 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c127
c127:
  %ln13G = load i64, i64* %R1_Var
  store i64 %ln13G, i64* %ls11v
  %ln13H = load i64*, i64** %Sp_Var
  %ln13I = getelementptr inbounds i64, i64* %ln13H, i32 1
  %ln13J = ptrtoint i64* %ln13I to i64
  %ln13K = sub i64 %ln13J, 56
  %ln13L = icmp ult i64 %ln13K, %SpLim_Arg
  %ln13M = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln13L, i1 0 )
  br i1 %ln13M, label %c128, label %c129
c129:
  %ln13N = load i64*, i64** %Hp_Var
  %ln13O = getelementptr inbounds i64, i64* %ln13N, i32 39
  %ln13P = ptrtoint i64* %ln13O to i64
  %ln13Q = inttoptr i64 %ln13P to i64*
  store i64* %ln13Q, i64** %Hp_Var
  %ln13R = load i64*, i64** %Hp_Var
  %ln13S = ptrtoint i64* %ln13R to i64
  %ln13T = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln13U = bitcast i64* %ln13T to i64*
  %ln13V = load i64, i64* %ln13U, !tbaa !5
  %ln13W = icmp ugt i64 %ln13S, %ln13V
  %ln13X = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln13W, i1 0 )
  br i1 %ln13X, label %c12b, label %c12a
c12a:
  %ln13Y = ptrtoint i64* %Base_Arg to i64
  %ln13Z = inttoptr i64 %ln13Y to i8*
  %ln140 = load i64, i64* %ls11v
  %ln141 = inttoptr i64 %ln140 to i8*
  %ln142 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln143 = call ccc i8* (i8*, i8*) %ln142( i8* %ln13Z, i8* %ln141 ) nounwind
  %ln144 = ptrtoint i8* %ln143 to i64
  store i64 %ln144, i64* %lc11z
  %ln145 = load i64, i64* %lc11z
  %ln146 = icmp eq i64 %ln145, 0
  br i1 %ln146, label %c11B, label %c11A
c11A:
  %ln148 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln147 = load i64*, i64** %Sp_Var
  %ln149 = getelementptr inbounds i64, i64* %ln147, i32 -2
  store i64 %ln148, i64* %ln149, !tbaa !2
  %ln14b = load i64, i64* %lc11z
  %ln14a = load i64*, i64** %Sp_Var
  %ln14c = getelementptr inbounds i64, i64* %ln14a, i32 -1
  store i64 %ln14b, i64* %ln14c, !tbaa !2
  %ln14e = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln14d = load i64*, i64** %Hp_Var
  %ln14f = getelementptr inbounds i64, i64* %ln14d, i32 -38
  store i64 %ln14e, i64* %ln14f, !tbaa !3
  %ln14g = load i64*, i64** %Hp_Var
  %ln14h = getelementptr inbounds i64, i64* %ln14g, i32 -37
  store i64 7, i64* %ln14h, !tbaa !3
  %ln14j = load i64*, i64** %Hp_Var
  %ln14k = ptrtoint i64* %ln14j to i64
  %ln14l = add i64 %ln14k, -303
  store i64 %ln14l, i64* %lc11C
  %ln14n = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln14m = load i64*, i64** %Hp_Var
  %ln14o = getelementptr inbounds i64, i64* %ln14m, i32 -36
  store i64 %ln14n, i64* %ln14o, !tbaa !3
  %ln14q = load i64, i64* %lc11C
  %ln14p = load i64*, i64** %Hp_Var
  %ln14r = getelementptr inbounds i64, i64* %ln14p, i32 -35
  store i64 %ln14q, i64* %ln14r, !tbaa !3
  %ln14t = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln14u = add i64 %ln14t, 1
  %ln14s = load i64*, i64** %Hp_Var
  %ln14v = getelementptr inbounds i64, i64* %ln14s, i32 -34
  store i64 %ln14u, i64* %ln14v, !tbaa !3
  %ln14x = load i64*, i64** %Hp_Var
  %ln14y = ptrtoint i64* %ln14x to i64
  %ln14z = add i64 %ln14y, -286
  store i64 %ln14z, i64* %lc11D
  %ln14B = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln14A = load i64*, i64** %Hp_Var
  %ln14C = getelementptr inbounds i64, i64* %ln14A, i32 -33
  store i64 %ln14B, i64* %ln14C, !tbaa !3
  %ln14D = load i64*, i64** %Hp_Var
  %ln14E = getelementptr inbounds i64, i64* %ln14D, i32 -32
  store i64 6, i64* %ln14E, !tbaa !3
  %ln14G = load i64*, i64** %Hp_Var
  %ln14H = ptrtoint i64* %ln14G to i64
  %ln14I = add i64 %ln14H, -263
  store i64 %ln14I, i64* %lc11E
  %ln14K = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln14J = load i64*, i64** %Hp_Var
  %ln14L = getelementptr inbounds i64, i64* %ln14J, i32 -31
  store i64 %ln14K, i64* %ln14L, !tbaa !3
  %ln14N = load i64, i64* %lc11E
  %ln14M = load i64*, i64** %Hp_Var
  %ln14O = getelementptr inbounds i64, i64* %ln14M, i32 -30
  store i64 %ln14N, i64* %ln14O, !tbaa !3
  %ln14Q = load i64, i64* %lc11D
  %ln14P = load i64*, i64** %Hp_Var
  %ln14R = getelementptr inbounds i64, i64* %ln14P, i32 -29
  store i64 %ln14Q, i64* %ln14R, !tbaa !3
  %ln14T = load i64*, i64** %Hp_Var
  %ln14U = ptrtoint i64* %ln14T to i64
  %ln14V = add i64 %ln14U, -246
  store i64 %ln14V, i64* %lc11F
  %ln14X = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln14W = load i64*, i64** %Hp_Var
  %ln14Y = getelementptr inbounds i64, i64* %ln14W, i32 -28
  store i64 %ln14X, i64* %ln14Y, !tbaa !3
  %ln14Z = load i64*, i64** %Hp_Var
  %ln150 = getelementptr inbounds i64, i64* %ln14Z, i32 -27
  store i64 5, i64* %ln150, !tbaa !3
  %ln152 = load i64*, i64** %Hp_Var
  %ln153 = ptrtoint i64* %ln152 to i64
  %ln154 = add i64 %ln153, -223
  store i64 %ln154, i64* %lc11G
  %ln156 = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln155 = load i64*, i64** %Hp_Var
  %ln157 = getelementptr inbounds i64, i64* %ln155, i32 -26
  store i64 %ln156, i64* %ln157, !tbaa !3
  %ln159 = load i64, i64* %lc11G
  %ln158 = load i64*, i64** %Hp_Var
  %ln15a = getelementptr inbounds i64, i64* %ln158, i32 -25
  store i64 %ln159, i64* %ln15a, !tbaa !3
  %ln15c = load i64, i64* %lc11F
  %ln15b = load i64*, i64** %Hp_Var
  %ln15d = getelementptr inbounds i64, i64* %ln15b, i32 -24
  store i64 %ln15c, i64* %ln15d, !tbaa !3
  %ln15f = load i64*, i64** %Hp_Var
  %ln15g = ptrtoint i64* %ln15f to i64
  %ln15h = add i64 %ln15g, -206
  store i64 %ln15h, i64* %lc11H
  %ln15j = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln15i = load i64*, i64** %Hp_Var
  %ln15k = getelementptr inbounds i64, i64* %ln15i, i32 -23
  store i64 %ln15j, i64* %ln15k, !tbaa !3
  %ln15l = load i64*, i64** %Hp_Var
  %ln15m = getelementptr inbounds i64, i64* %ln15l, i32 -22
  store i64 4, i64* %ln15m, !tbaa !3
  %ln15o = load i64*, i64** %Hp_Var
  %ln15p = ptrtoint i64* %ln15o to i64
  %ln15q = add i64 %ln15p, -183
  store i64 %ln15q, i64* %lc11I
  %ln15s = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln15r = load i64*, i64** %Hp_Var
  %ln15t = getelementptr inbounds i64, i64* %ln15r, i32 -21
  store i64 %ln15s, i64* %ln15t, !tbaa !3
  %ln15v = load i64, i64* %lc11I
  %ln15u = load i64*, i64** %Hp_Var
  %ln15w = getelementptr inbounds i64, i64* %ln15u, i32 -20
  store i64 %ln15v, i64* %ln15w, !tbaa !3
  %ln15y = load i64, i64* %lc11H
  %ln15x = load i64*, i64** %Hp_Var
  %ln15z = getelementptr inbounds i64, i64* %ln15x, i32 -19
  store i64 %ln15y, i64* %ln15z, !tbaa !3
  %ln15B = load i64*, i64** %Hp_Var
  %ln15C = ptrtoint i64* %ln15B to i64
  %ln15D = add i64 %ln15C, -166
  store i64 %ln15D, i64* %lc11J
  %ln15F = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln15E = load i64*, i64** %Hp_Var
  %ln15G = getelementptr inbounds i64, i64* %ln15E, i32 -18
  store i64 %ln15F, i64* %ln15G, !tbaa !3
  %ln15H = load i64*, i64** %Hp_Var
  %ln15I = getelementptr inbounds i64, i64* %ln15H, i32 -17
  store i64 3, i64* %ln15I, !tbaa !3
  %ln15K = load i64*, i64** %Hp_Var
  %ln15L = ptrtoint i64* %ln15K to i64
  %ln15M = add i64 %ln15L, -143
  store i64 %ln15M, i64* %lc11K
  %ln15O = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln15N = load i64*, i64** %Hp_Var
  %ln15P = getelementptr inbounds i64, i64* %ln15N, i32 -16
  store i64 %ln15O, i64* %ln15P, !tbaa !3
  %ln15R = load i64, i64* %lc11K
  %ln15Q = load i64*, i64** %Hp_Var
  %ln15S = getelementptr inbounds i64, i64* %ln15Q, i32 -15
  store i64 %ln15R, i64* %ln15S, !tbaa !3
  %ln15U = load i64, i64* %lc11J
  %ln15T = load i64*, i64** %Hp_Var
  %ln15V = getelementptr inbounds i64, i64* %ln15T, i32 -14
  store i64 %ln15U, i64* %ln15V, !tbaa !3
  %ln15X = load i64*, i64** %Hp_Var
  %ln15Y = ptrtoint i64* %ln15X to i64
  %ln15Z = add i64 %ln15Y, -126
  store i64 %ln15Z, i64* %lc11L
  %ln161 = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln160 = load i64*, i64** %Hp_Var
  %ln162 = getelementptr inbounds i64, i64* %ln160, i32 -13
  store i64 %ln161, i64* %ln162, !tbaa !3
  %ln163 = load i64*, i64** %Hp_Var
  %ln164 = getelementptr inbounds i64, i64* %ln163, i32 -12
  store i64 2, i64* %ln164, !tbaa !3
  %ln166 = load i64*, i64** %Hp_Var
  %ln167 = ptrtoint i64* %ln166 to i64
  %ln168 = add i64 %ln167, -103
  store i64 %ln168, i64* %lc11M
  %ln16a = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln169 = load i64*, i64** %Hp_Var
  %ln16b = getelementptr inbounds i64, i64* %ln169, i32 -11
  store i64 %ln16a, i64* %ln16b, !tbaa !3
  %ln16d = load i64, i64* %lc11M
  %ln16c = load i64*, i64** %Hp_Var
  %ln16e = getelementptr inbounds i64, i64* %ln16c, i32 -10
  store i64 %ln16d, i64* %ln16e, !tbaa !3
  %ln16g = load i64, i64* %lc11L
  %ln16f = load i64*, i64** %Hp_Var
  %ln16h = getelementptr inbounds i64, i64* %ln16f, i32 -9
  store i64 %ln16g, i64* %ln16h, !tbaa !3
  %ln16j = load i64*, i64** %Hp_Var
  %ln16k = ptrtoint i64* %ln16j to i64
  %ln16l = add i64 %ln16k, -86
  store i64 %ln16l, i64* %lc11N
  %ln16n = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln16m = load i64*, i64** %Hp_Var
  %ln16o = getelementptr inbounds i64, i64* %ln16m, i32 -8
  store i64 %ln16n, i64* %ln16o, !tbaa !3
  %ln16p = load i64*, i64** %Hp_Var
  %ln16q = getelementptr inbounds i64, i64* %ln16p, i32 -7
  store i64 1, i64* %ln16q, !tbaa !3
  %ln16s = load i64*, i64** %Hp_Var
  %ln16t = ptrtoint i64* %ln16s to i64
  %ln16u = add i64 %ln16t, -63
  store i64 %ln16u, i64* %lc11O
  %ln16w = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln16v = load i64*, i64** %Hp_Var
  %ln16x = getelementptr inbounds i64, i64* %ln16v, i32 -6
  store i64 %ln16w, i64* %ln16x, !tbaa !3
  %ln16z = load i64, i64* %lc11O
  %ln16y = load i64*, i64** %Hp_Var
  %ln16A = getelementptr inbounds i64, i64* %ln16y, i32 -5
  store i64 %ln16z, i64* %ln16A, !tbaa !3
  %ln16C = load i64, i64* %lc11N
  %ln16B = load i64*, i64** %Hp_Var
  %ln16D = getelementptr inbounds i64, i64* %ln16B, i32 -4
  store i64 %ln16C, i64* %ln16D, !tbaa !3
  %ln16F = load i64*, i64** %Hp_Var
  %ln16G = ptrtoint i64* %ln16F to i64
  %ln16H = add i64 %ln16G, -46
  store i64 %ln16H, i64* %lc11P
  %ln16J = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s11g_info$def to i64
  %ln16I = load i64*, i64** %Hp_Var
  %ln16K = getelementptr inbounds i64, i64* %ln16I, i32 -3
  store i64 %ln16J, i64* %ln16K, !tbaa !3
  %ln16L = load i64*, i64** %Hp_Var
  %ln16M = getelementptr inbounds i64, i64* %ln16L, i32 -3
  %ln16N = ptrtoint i64* %ln16M to i64
  store i64 %ln16N, i64* %lc11Q
  %ln16P = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s119_info$def to i64
  %ln16O = load i64*, i64** %Hp_Var
  %ln16Q = getelementptr inbounds i64, i64* %ln16O, i32 -1
  store i64 %ln16P, i64* %ln16Q, !tbaa !3
  %ln16R = load i64*, i64** %Hp_Var
  %ln16S = getelementptr inbounds i64, i64* %ln16R, i32 -1
  %ln16T = ptrtoint i64* %ln16S to i64
  store i64 %ln16T, i64* %lc120
  %ln16U = ptrtoint i8* @base_DataziFoldable_zdfFoldableZMZN_closure to i64
  store i64 %ln16U, i64* %R2_Var
  %ln16W = ptrtoint i8* @stg_ap_ppp_info to i64
  %ln16V = load i64*, i64** %Sp_Var
  %ln16X = getelementptr inbounds i64, i64* %ln16V, i32 -6
  store i64 %ln16W, i64* %ln16X, !tbaa !2
  %ln16Z = load i64, i64* %lc120
  %ln16Y = load i64*, i64** %Sp_Var
  %ln170 = getelementptr inbounds i64, i64* %ln16Y, i32 -5
  store i64 %ln16Z, i64* %ln170, !tbaa !2
  %ln172 = load i64, i64* %lc11Q
  %ln171 = load i64*, i64** %Sp_Var
  %ln173 = getelementptr inbounds i64, i64* %ln171, i32 -4
  store i64 %ln172, i64* %ln173, !tbaa !2
  %ln175 = load i64, i64* %lc11P
  %ln174 = load i64*, i64** %Sp_Var
  %ln176 = getelementptr inbounds i64, i64* %ln174, i32 -3
  store i64 %ln175, i64* %ln176, !tbaa !2
  %ln177 = load i64*, i64** %Sp_Var
  %ln178 = getelementptr inbounds i64, i64* %ln177, i32 -6
  %ln179 = ptrtoint i64* %ln178 to i64
  %ln17a = inttoptr i64 %ln179 to i64*
  store i64* %ln17a, i64** %Sp_Var
  %ln17b = bitcast i8* @base_DataziFoldable_foldl_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln17c = load i64*, i64** %Sp_Var
  %ln17d = load i64*, i64** %Hp_Var
  %ln17e = load i64, i64* %R1_Var
  %ln17f = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln17b( i64* %Base_Arg, i64* %ln17c, i64* %ln17d, i64 %ln17e, i64 %ln17f, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c11B:
  %ln17g = load i64, i64* %ls11v
  %ln17h = inttoptr i64 %ln17g to i64*
  %ln17i = load i64, i64* %ln17h, !tbaa !1
  %ln17j = inttoptr i64 %ln17i to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln17k = load i64*, i64** %Sp_Var
  %ln17l = load i64*, i64** %Hp_Var
  %ln17m = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln17j( i64* %Base_Arg, i64* %ln17k, i64* %ln17l, i64 %ln17m, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c12b:
  %ln17n = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 312, i64* %ln17n, !tbaa !5
  br label %c128
c128:
  %ln17o = load i64, i64* %ls11v
  store i64 %ln17o, i64* %R1_Var
  %ln17p = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln17q = bitcast i64* %ln17p to i64*
  %ln17r = load i64, i64* %ln17q, !tbaa !5
  %ln17s = inttoptr i64 %ln17r to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln17t = load i64*, i64** %Sp_Var
  %ln17u = load i64*, i64** %Hp_Var
  %ln17v = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln17s( i64* %Base_Arg, i64* %ln17t, i64* %ln17u, i64 %ln17v, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u17F_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_u17F_srt$def = internal global %_u17F_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%s11v_closure_struct* @s11v_closure$def to i64), i64 0}>
@_u17F_srt = internal alias i8, bitcast (%_u17F_srt_struct* @_u17F_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u17F_srt_struct* @_u17F_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
n17G:
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
  %lc17z = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c17C
c17C:
  %ln17H = load i64, i64* %R1_Var
  store i64 %ln17H, i64* %lrgd
  %ln17I = load i64*, i64** %Sp_Var
  %ln17J = getelementptr inbounds i64, i64* %ln17I, i32 1
  %ln17K = ptrtoint i64* %ln17J to i64
  %ln17L = sub i64 %ln17K, 24
  %ln17M = icmp ult i64 %ln17L, %SpLim_Arg
  %ln17N = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln17M, i1 0 )
  br i1 %ln17N, label %c17D, label %c17E
c17E:
  %ln17O = ptrtoint i64* %Base_Arg to i64
  %ln17P = inttoptr i64 %ln17O to i8*
  %ln17Q = load i64, i64* %lrgd
  %ln17R = inttoptr i64 %ln17Q to i8*
  %ln17S = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln17T = call ccc i8* (i8*, i8*) %ln17S( i8* %ln17P, i8* %ln17R ) nounwind
  %ln17U = ptrtoint i8* %ln17T to i64
  store i64 %ln17U, i64* %lc17z
  %ln17V = load i64, i64* %lc17z
  %ln17W = icmp eq i64 %ln17V, 0
  br i1 %ln17W, label %c17B, label %c17A
c17A:
  %ln17Y = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln17X = load i64*, i64** %Sp_Var
  %ln17Z = getelementptr inbounds i64, i64* %ln17X, i32 -2
  store i64 %ln17Y, i64* %ln17Z, !tbaa !2
  %ln181 = load i64, i64* %lc17z
  %ln180 = load i64*, i64** %Sp_Var
  %ln182 = getelementptr inbounds i64, i64* %ln180, i32 -1
  store i64 %ln181, i64* %ln182, !tbaa !2
  %ln183 = ptrtoint %s11v_closure_struct* @s11v_closure$def to i64
  store i64 %ln183, i64* %R3_Var
  %ln184 = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %ln184, i64* %R2_Var
  %ln185 = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %ln185, i64* %R1_Var
  %ln186 = load i64*, i64** %Sp_Var
  %ln187 = getelementptr inbounds i64, i64* %ln186, i32 -2
  %ln188 = ptrtoint i64* %ln187 to i64
  %ln189 = inttoptr i64 %ln188 to i64*
  store i64* %ln189, i64** %Sp_Var
  %ln18a = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln18b = load i64*, i64** %Sp_Var
  %ln18c = load i64, i64* %R1_Var
  %ln18d = load i64, i64* %R2_Var
  %ln18e = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln18a( i64* %Base_Arg, i64* %ln18b, i64* %Hp_Arg, i64 %ln18c, i64 %ln18d, i64 %ln18e, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c17B:
  %ln18f = load i64, i64* %lrgd
  %ln18g = inttoptr i64 %ln18f to i64*
  %ln18h = load i64, i64* %ln18g, !tbaa !1
  %ln18i = inttoptr i64 %ln18h to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln18j = load i64*, i64** %Sp_Var
  %ln18k = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln18i( i64* %Base_Arg, i64* %ln18j, i64* %Hp_Arg, i64 %ln18k, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c17D:
  %ln18l = load i64, i64* %lrgd
  store i64 %ln18l, i64* %R1_Var
  %ln18m = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln18n = bitcast i64* %ln18m to i64*
  %ln18o = load i64, i64* %ln18n, !tbaa !5
  %ln18p = inttoptr i64 %ln18o to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln18q = load i64*, i64** %Sp_Var
  %ln18r = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln18p( i64* %Base_Arg, i64* %ln18q, i64* %Hp_Arg, i64 %ln18r, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u18B_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_u18B_srt$def = internal global %_u18B_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_u18B_srt = internal alias i8, bitcast (%_u18B_srt_struct* @_u18B_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u18B_srt_struct* @_u18B_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
n18C:
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
  %lc18v = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c18y
c18y:
  %ln18D = load i64, i64* %R1_Var
  store i64 %ln18D, i64* %l01D
  %ln18E = load i64*, i64** %Sp_Var
  %ln18F = getelementptr inbounds i64, i64* %ln18E, i32 1
  %ln18G = ptrtoint i64* %ln18F to i64
  %ln18H = sub i64 %ln18G, 24
  %ln18I = icmp ult i64 %ln18H, %SpLim_Arg
  %ln18J = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln18I, i1 0 )
  br i1 %ln18J, label %c18z, label %c18A
c18A:
  %ln18K = ptrtoint i64* %Base_Arg to i64
  %ln18L = inttoptr i64 %ln18K to i8*
  %ln18M = load i64, i64* %l01D
  %ln18N = inttoptr i64 %ln18M to i8*
  %ln18O = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln18P = call ccc i8* (i8*, i8*) %ln18O( i8* %ln18L, i8* %ln18N ) nounwind
  %ln18Q = ptrtoint i8* %ln18P to i64
  store i64 %ln18Q, i64* %lc18v
  %ln18R = load i64, i64* %lc18v
  %ln18S = icmp eq i64 %ln18R, 0
  br i1 %ln18S, label %c18x, label %c18w
c18w:
  %ln18U = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln18T = load i64*, i64** %Sp_Var
  %ln18V = getelementptr inbounds i64, i64* %ln18T, i32 -2
  store i64 %ln18U, i64* %ln18V, !tbaa !2
  %ln18X = load i64, i64* %lc18v
  %ln18W = load i64*, i64** %Sp_Var
  %ln18Y = getelementptr inbounds i64, i64* %ln18W, i32 -1
  store i64 %ln18X, i64* %ln18Y, !tbaa !2
  %ln18Z = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %ln18Z, i64* %R2_Var
  %ln190 = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %ln190, i64* %R1_Var
  %ln191 = load i64*, i64** %Sp_Var
  %ln192 = getelementptr inbounds i64, i64* %ln191, i32 -2
  %ln193 = ptrtoint i64* %ln192 to i64
  %ln194 = inttoptr i64 %ln193 to i64*
  store i64* %ln194, i64** %Sp_Var
  %ln195 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln196 = load i64*, i64** %Sp_Var
  %ln197 = load i64, i64* %R1_Var
  %ln198 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln195( i64* %Base_Arg, i64* %ln196, i64* %Hp_Arg, i64 %ln197, i64 %ln198, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c18x:
  %ln199 = load i64, i64* %l01D
  %ln19a = inttoptr i64 %ln199 to i64*
  %ln19b = load i64, i64* %ln19a, !tbaa !1
  %ln19c = inttoptr i64 %ln19b to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln19d = load i64*, i64** %Sp_Var
  %ln19e = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln19c( i64* %Base_Arg, i64* %ln19d, i64* %Hp_Arg, i64 %ln19e, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c18z:
  %ln19f = load i64, i64* %l01D
  store i64 %ln19f, i64* %R1_Var
  %ln19g = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln19h = bitcast i64* %ln19g to i64*
  %ln19i = load i64, i64* %ln19h, !tbaa !5
  %ln19j = inttoptr i64 %ln19i to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln19k = load i64*, i64** %Sp_Var
  %ln19l = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln19j( i64* %Base_Arg, i64* %ln19k, i64* %Hp_Arg, i64 %ln19l, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%r10U_bytes_struct = type <{[5 x i8]}>
@r10U_bytes$def = internal constant %r10U_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@r10U_bytes = internal alias i8, bitcast (%r10U_bytes_struct* @r10U_bytes$def to i8*)
%r115_closure_struct = type <{i64, i64}>
@r115_closure$def = internal global %r115_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r10U_bytes_struct* @r10U_bytes$def to i64)}>
@r115_closure = internal alias i8, bitcast (%r115_closure_struct* @r115_closure$def to i8*)
%r116_bytes_struct = type <{[5 x i8]}>
@r116_bytes$def = internal constant %r116_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@r116_bytes = internal alias i8, bitcast (%r116_bytes_struct* @r116_bytes$def to i8*)
%r117_closure_struct = type <{i64, i64}>
@r117_closure$def = internal global %r117_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r116_bytes_struct* @r116_bytes$def to i64)}>
@r117_closure = internal alias i8, bitcast (%r117_closure_struct* @r117_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%r115_closure_struct* @r115_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%r117_closure_struct* @r117_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
@stg_SRT_2_info = external global i8
@base_GHCziNum_zdfNumInteger_closure = external global i8
@base_DataziFoldable_zdfFoldableZMZN_closure = external global i8
@stg_upd_frame_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_Szh_con_info = external global i8
@stg_ap_p_info = external global i8
@base_GHCziNum_fromInteger_info = external global i8
@base_GHCziNum_zp_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@ghczmprim_GHCziTypes_ZC_con_info = external global i8
@ghczmprim_GHCziTypes_ZMZN_closure = external global i8
@stg_ap_ppp_info = external global i8
@base_DataziFoldable_foldl_info = external global i8
@stg_SRT_3_info = external global i8
@base_SystemziIO_print_closure = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@stg_ap_pp_fast = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [11 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%r117_closure_struct* @r117_closure$def to i8*), i8* bitcast (%r116_bytes_struct* @r116_bytes$def to i8*), i8* bitcast (%r115_closure_struct* @r115_closure$def to i8*), i8* bitcast (%r10U_bytes_struct* @r10U_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_u18B_srt_struct* @_u18B_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_u17F_srt_struct* @_u17F_srt$def to i8*), i8* bitcast (%s11v_closure_struct* @s11v_closure$def to i8*), i8* bitcast (%_u12c_srt_struct* @_u12c_srt$def to i8*)], section "llvm.metadata"
