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
%s20J_closure_struct = type <{i64, i64, i64, i64}>
@s20J_closure$def = internal global %s20J_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20J_info$def to i64), i64 0, i64 0, i64 0}>
@s20J_closure = internal alias i8* bitcast (%s20J_closure_struct* @s20J_closure$def to i8*)
@s20B_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20B_info$def to i8*)
define internal ghccc void @s20B_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20B_info$def to i64)),i64 0), i64 0, i64 4294967312}>
{
c218:
  %ls20B = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc217 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln228 = load i64, i64* %R1_Var
  store i64 %ln228, i64* %ls20B
  %ln229 = load i64*, i64** %Sp_Var
  %ln22a = getelementptr inbounds i64, i64* %ln229, i32 1
  %ln22b = ptrtoint i64* %ln22a to i64
  %ln22c = sub i64 %ln22b, 40
  %ln22d = icmp ult i64 %ln22c, %SpLim_Arg
  br i1 %ln22d, label %c219, label %c21a
c21a:
  %ln22e = load i64*, i64** %Hp_Var
  %ln22f = getelementptr inbounds i64, i64* %ln22e, i32 2
  %ln22g = ptrtoint i64* %ln22f to i64
  %ln22h = inttoptr i64 %ln22g to i64*
  store i64* %ln22h, i64** %Hp_Var
  %ln22i = load i64*, i64** %Hp_Var
  %ln22j = ptrtoint i64* %ln22i to i64
  %ln22k = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln22l = bitcast i64* %ln22k to i64*
  %ln22m = load i64, i64* %ln22l, !tbaa !4
  %ln22n = icmp ugt i64 %ln22j, %ln22m
  br i1 %ln22n, label %c21c, label %c21b
c21b:
  %ln22p = ptrtoint i8* @stg_upd_frame_info to i64
  %ln22o = load i64*, i64** %Sp_Var
  %ln22q = getelementptr inbounds i64, i64* %ln22o, i32 -2
  store i64 %ln22p, i64* %ln22q, !tbaa !1
  %ln22s = load i64, i64* %ls20B
  %ln22r = load i64*, i64** %Sp_Var
  %ln22t = getelementptr inbounds i64, i64* %ln22r, i32 -1
  store i64 %ln22s, i64* %ln22t, !tbaa !1
  %ln22v = ptrtoint i8* @integerzmgmp_GHCziIntegerziType_Szh_con_info to i64
  %ln22u = load i64*, i64** %Hp_Var
  %ln22w = getelementptr inbounds i64, i64* %ln22u, i32 -1
  store i64 %ln22v, i64* %ln22w, !tbaa !2
  %ln22x = load i64*, i64** %Hp_Var
  %ln22y = getelementptr inbounds i64, i64* %ln22x, i32 0
  store i64 1, i64* %ln22y, !tbaa !2
  %ln22A = load i64*, i64** %Hp_Var
  %ln22B = ptrtoint i64* %ln22A to i64
  %ln22C = add i64 %ln22B, -7
  store i64 %ln22C, i64* %lc217
  %ln22D = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln22D, i64* %R2_Var
  %ln22F = ptrtoint i8* @stg_ap_p_info to i64
  %ln22E = load i64*, i64** %Sp_Var
  %ln22G = getelementptr inbounds i64, i64* %ln22E, i32 -4
  store i64 %ln22F, i64* %ln22G, !tbaa !1
  %ln22I = load i64, i64* %lc217
  %ln22H = load i64*, i64** %Sp_Var
  %ln22J = getelementptr inbounds i64, i64* %ln22H, i32 -3
  store i64 %ln22I, i64* %ln22J, !tbaa !1
  %ln22K = load i64*, i64** %Sp_Var
  %ln22L = getelementptr inbounds i64, i64* %ln22K, i32 -4
  %ln22M = ptrtoint i64* %ln22L to i64
  %ln22N = inttoptr i64 %ln22M to i64*
  store i64* %ln22N, i64** %Sp_Var
  %ln22O = bitcast i8* @base_GHCziNum_fromInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln22P = load i64*, i64** %Sp_Var
  %ln22Q = load i64*, i64** %Hp_Var
  %ln22R = load i64, i64* %R1_Var
  %ln22S = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln22O( i64* %Base_Arg, i64* %ln22P, i64* %ln22Q, i64 %ln22R, i64 %ln22S, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21c:
  %ln22T = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln22T, !tbaa !4
  br label %c219
c219:
  %ln22U = load i64, i64* %ls20B
  store i64 %ln22U, i64* %R1_Var
  %ln22V = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln22W = bitcast i64* %ln22V to i64*
  %ln22X = load i64, i64* %ln22W, !tbaa !4
  %ln22Y = inttoptr i64 %ln22X to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln22Z = load i64*, i64** %Sp_Var
  %ln230 = load i64*, i64** %Hp_Var
  %ln231 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln22Y( i64* %Base_Arg, i64* %ln22Z, i64* %ln230, i64 %ln231, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s20F_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20F_info$def to i8*)
define internal ghccc void @s20F_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20F_info$def to i64)),i64 0), i64 0, i64 4294967312}>
{
c21v:
  %ls20F = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc21u = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln232 = load i64, i64* %R1_Var
  store i64 %ln232, i64* %ls20F
  %ln233 = load i64*, i64** %Sp_Var
  %ln234 = getelementptr inbounds i64, i64* %ln233, i32 1
  %ln235 = ptrtoint i64* %ln234 to i64
  %ln236 = sub i64 %ln235, 40
  %ln237 = icmp ult i64 %ln236, %SpLim_Arg
  br i1 %ln237, label %c21w, label %c21x
c21x:
  %ln238 = load i64*, i64** %Hp_Var
  %ln239 = getelementptr inbounds i64, i64* %ln238, i32 2
  %ln23a = ptrtoint i64* %ln239 to i64
  %ln23b = inttoptr i64 %ln23a to i64*
  store i64* %ln23b, i64** %Hp_Var
  %ln23c = load i64*, i64** %Hp_Var
  %ln23d = ptrtoint i64* %ln23c to i64
  %ln23e = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln23f = bitcast i64* %ln23e to i64*
  %ln23g = load i64, i64* %ln23f, !tbaa !4
  %ln23h = icmp ugt i64 %ln23d, %ln23g
  br i1 %ln23h, label %c21z, label %c21y
c21y:
  %ln23j = ptrtoint i8* @stg_upd_frame_info to i64
  %ln23i = load i64*, i64** %Sp_Var
  %ln23k = getelementptr inbounds i64, i64* %ln23i, i32 -2
  store i64 %ln23j, i64* %ln23k, !tbaa !1
  %ln23m = load i64, i64* %ls20F
  %ln23l = load i64*, i64** %Sp_Var
  %ln23n = getelementptr inbounds i64, i64* %ln23l, i32 -1
  store i64 %ln23m, i64* %ln23n, !tbaa !1
  %ln23p = ptrtoint i8* @integerzmgmp_GHCziIntegerziType_Szh_con_info to i64
  %ln23o = load i64*, i64** %Hp_Var
  %ln23q = getelementptr inbounds i64, i64* %ln23o, i32 -1
  store i64 %ln23p, i64* %ln23q, !tbaa !2
  %ln23r = load i64*, i64** %Hp_Var
  %ln23s = getelementptr inbounds i64, i64* %ln23r, i32 0
  store i64 1, i64* %ln23s, !tbaa !2
  %ln23u = load i64*, i64** %Hp_Var
  %ln23v = ptrtoint i64* %ln23u to i64
  %ln23w = add i64 %ln23v, -7
  store i64 %ln23w, i64* %lc21u
  %ln23x = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln23x, i64* %R2_Var
  %ln23z = ptrtoint i8* @stg_ap_p_info to i64
  %ln23y = load i64*, i64** %Sp_Var
  %ln23A = getelementptr inbounds i64, i64* %ln23y, i32 -4
  store i64 %ln23z, i64* %ln23A, !tbaa !1
  %ln23C = load i64, i64* %lc21u
  %ln23B = load i64*, i64** %Sp_Var
  %ln23D = getelementptr inbounds i64, i64* %ln23B, i32 -3
  store i64 %ln23C, i64* %ln23D, !tbaa !1
  %ln23E = load i64*, i64** %Sp_Var
  %ln23F = getelementptr inbounds i64, i64* %ln23E, i32 -4
  %ln23G = ptrtoint i64* %ln23F to i64
  %ln23H = inttoptr i64 %ln23G to i64*
  store i64* %ln23H, i64** %Sp_Var
  %ln23I = bitcast i8* @base_GHCziNum_fromInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln23J = load i64*, i64** %Sp_Var
  %ln23K = load i64*, i64** %Hp_Var
  %ln23L = load i64, i64* %R1_Var
  %ln23M = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln23I( i64* %Base_Arg, i64* %ln23J, i64* %ln23K, i64 %ln23L, i64 %ln23M, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21z:
  %ln23N = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln23N, !tbaa !4
  br label %c21w
c21w:
  %ln23O = load i64, i64* %ls20F
  store i64 %ln23O, i64* %R1_Var
  %ln23P = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln23Q = bitcast i64* %ln23P to i64*
  %ln23R = load i64, i64* %ln23Q, !tbaa !4
  %ln23S = inttoptr i64 %ln23R to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln23T = load i64*, i64** %Sp_Var
  %ln23U = load i64*, i64** %Hp_Var
  %ln23V = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln23S( i64* %Base_Arg, i64* %ln23T, i64* %ln23U, i64 %ln23V, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s20G_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20G_info$def to i8*)
define internal ghccc void @s20G_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20G_info$def to i64)),i64 0), i64 1, i64 4294967313}>
{
c21A:
  %ls20G = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls20u = alloca i64, i32 1
  %lc21q = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln23W = load i64, i64* %R1_Var
  store i64 %ln23W, i64* %ls20G
  %ln23X = load i64*, i64** %Sp_Var
  %ln23Y = getelementptr inbounds i64, i64* %ln23X, i32 1
  %ln23Z = ptrtoint i64* %ln23Y to i64
  %ln240 = sub i64 %ln23Z, 48
  %ln241 = icmp ult i64 %ln240, %SpLim_Arg
  br i1 %ln241, label %c21B, label %c21C
c21C:
  %ln242 = load i64*, i64** %Hp_Var
  %ln243 = getelementptr inbounds i64, i64* %ln242, i32 2
  %ln244 = ptrtoint i64* %ln243 to i64
  %ln245 = inttoptr i64 %ln244 to i64*
  store i64* %ln245, i64** %Hp_Var
  %ln246 = load i64*, i64** %Hp_Var
  %ln247 = ptrtoint i64* %ln246 to i64
  %ln248 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln249 = bitcast i64* %ln248 to i64*
  %ln24a = load i64, i64* %ln249, !tbaa !4
  %ln24b = icmp ugt i64 %ln247, %ln24a
  br i1 %ln24b, label %c21E, label %c21D
c21D:
  %ln24d = ptrtoint i8* @stg_upd_frame_info to i64
  %ln24c = load i64*, i64** %Sp_Var
  %ln24e = getelementptr inbounds i64, i64* %ln24c, i32 -2
  store i64 %ln24d, i64* %ln24e, !tbaa !1
  %ln24g = load i64, i64* %ls20G
  %ln24f = load i64*, i64** %Sp_Var
  %ln24h = getelementptr inbounds i64, i64* %ln24f, i32 -1
  store i64 %ln24g, i64* %ln24h, !tbaa !1
  %ln24i = load i64, i64* %ls20G
  %ln24j = add i64 %ln24i, 16
  %ln24k = inttoptr i64 %ln24j to i64*
  %ln24l = load i64, i64* %ln24k, !tbaa !5
  store i64 %ln24l, i64* %ls20u
  %ln24n = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20F_info$def to i64
  %ln24m = load i64*, i64** %Hp_Var
  %ln24o = getelementptr inbounds i64, i64* %ln24m, i32 -1
  store i64 %ln24n, i64* %ln24o, !tbaa !2
  %ln24p = load i64*, i64** %Hp_Var
  %ln24q = getelementptr inbounds i64, i64* %ln24p, i32 -1
  %ln24r = ptrtoint i64* %ln24q to i64
  store i64 %ln24r, i64* %lc21q
  %ln24s = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln24s, i64* %R2_Var
  %ln24u = ptrtoint i8* @stg_ap_pp_info to i64
  %ln24t = load i64*, i64** %Sp_Var
  %ln24v = getelementptr inbounds i64, i64* %ln24t, i32 -5
  store i64 %ln24u, i64* %ln24v, !tbaa !1
  %ln24x = load i64, i64* %ls20u
  %ln24w = load i64*, i64** %Sp_Var
  %ln24y = getelementptr inbounds i64, i64* %ln24w, i32 -4
  store i64 %ln24x, i64* %ln24y, !tbaa !1
  %ln24A = load i64, i64* %lc21q
  %ln24z = load i64*, i64** %Sp_Var
  %ln24B = getelementptr inbounds i64, i64* %ln24z, i32 -3
  store i64 %ln24A, i64* %ln24B, !tbaa !1
  %ln24C = load i64*, i64** %Sp_Var
  %ln24D = getelementptr inbounds i64, i64* %ln24C, i32 -5
  %ln24E = ptrtoint i64* %ln24D to i64
  %ln24F = inttoptr i64 %ln24E to i64*
  store i64* %ln24F, i64** %Sp_Var
  %ln24G = bitcast i8* @base_GHCziNum_zm_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln24H = load i64*, i64** %Sp_Var
  %ln24I = load i64*, i64** %Hp_Var
  %ln24J = load i64, i64* %R1_Var
  %ln24K = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln24G( i64* %Base_Arg, i64* %ln24H, i64* %ln24I, i64 %ln24J, i64 %ln24K, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21E:
  %ln24L = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln24L, !tbaa !4
  br label %c21B
c21B:
  %ln24M = load i64, i64* %ls20G
  store i64 %ln24M, i64* %R1_Var
  %ln24N = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln24O = bitcast i64* %ln24N to i64*
  %ln24P = load i64, i64* %ln24O, !tbaa !4
  %ln24Q = inttoptr i64 %ln24P to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln24R = load i64*, i64** %Sp_Var
  %ln24S = load i64*, i64** %Hp_Var
  %ln24T = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln24Q( i64* %Base_Arg, i64* %ln24R, i64* %ln24S, i64 %ln24T, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s20H_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20H_info$def to i8*)
define internal ghccc void @s20H_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20H_info$def to i64)),i64 0), i64 2, i64 12884901907}>
{
c21F:
  %ls20H = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls20t = alloca i64, i32 1
  %ls20u = alloca i64, i32 1
  %lc21m = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln24U = load i64, i64* %R1_Var
  store i64 %ln24U, i64* %ls20H
  %ln24V = load i64*, i64** %Sp_Var
  %ln24W = getelementptr inbounds i64, i64* %ln24V, i32 1
  %ln24X = ptrtoint i64* %ln24W to i64
  %ln24Y = sub i64 %ln24X, 24
  %ln24Z = icmp ult i64 %ln24Y, %SpLim_Arg
  br i1 %ln24Z, label %c21G, label %c21H
c21H:
  %ln250 = load i64*, i64** %Hp_Var
  %ln251 = getelementptr inbounds i64, i64* %ln250, i32 3
  %ln252 = ptrtoint i64* %ln251 to i64
  %ln253 = inttoptr i64 %ln252 to i64*
  store i64* %ln253, i64** %Hp_Var
  %ln254 = load i64*, i64** %Hp_Var
  %ln255 = ptrtoint i64* %ln254 to i64
  %ln256 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln257 = bitcast i64* %ln256 to i64*
  %ln258 = load i64, i64* %ln257, !tbaa !4
  %ln259 = icmp ugt i64 %ln255, %ln258
  br i1 %ln259, label %c21J, label %c21I
c21I:
  %ln25b = ptrtoint i8* @stg_upd_frame_info to i64
  %ln25a = load i64*, i64** %Sp_Var
  %ln25c = getelementptr inbounds i64, i64* %ln25a, i32 -2
  store i64 %ln25b, i64* %ln25c, !tbaa !1
  %ln25e = load i64, i64* %ls20H
  %ln25d = load i64*, i64** %Sp_Var
  %ln25f = getelementptr inbounds i64, i64* %ln25d, i32 -1
  store i64 %ln25e, i64* %ln25f, !tbaa !1
  %ln25g = load i64, i64* %ls20H
  %ln25h = add i64 %ln25g, 16
  %ln25i = inttoptr i64 %ln25h to i64*
  %ln25j = load i64, i64* %ln25i, !tbaa !5
  store i64 %ln25j, i64* %ls20t
  %ln25k = load i64, i64* %ls20H
  %ln25l = add i64 %ln25k, 24
  %ln25m = inttoptr i64 %ln25l to i64*
  %ln25n = load i64, i64* %ln25m, !tbaa !5
  store i64 %ln25n, i64* %ls20u
  %ln25p = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20G_info$def to i64
  %ln25o = load i64*, i64** %Hp_Var
  %ln25q = getelementptr inbounds i64, i64* %ln25o, i32 -2
  store i64 %ln25p, i64* %ln25q, !tbaa !2
  %ln25s = load i64, i64* %ls20u
  %ln25r = load i64*, i64** %Hp_Var
  %ln25t = getelementptr inbounds i64, i64* %ln25r, i32 0
  store i64 %ln25s, i64* %ln25t, !tbaa !2
  %ln25u = load i64*, i64** %Hp_Var
  %ln25v = getelementptr inbounds i64, i64* %ln25u, i32 -2
  %ln25w = ptrtoint i64* %ln25v to i64
  store i64 %ln25w, i64* %lc21m
  %ln25x = load i64, i64* %lc21m
  store i64 %ln25x, i64* %R2_Var
  %ln25y = load i64, i64* %ls20t
  store i64 %ln25y, i64* %R1_Var
  %ln25z = load i64*, i64** %Sp_Var
  %ln25A = getelementptr inbounds i64, i64* %ln25z, i32 -2
  %ln25B = ptrtoint i64* %ln25A to i64
  %ln25C = inttoptr i64 %ln25B to i64*
  store i64* %ln25C, i64** %Sp_Var
  %ln25D = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20t_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln25E = load i64*, i64** %Sp_Var
  %ln25F = load i64*, i64** %Hp_Var
  %ln25G = load i64, i64* %R1_Var
  %ln25H = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln25D( i64* %Base_Arg, i64* %ln25E, i64* %ln25F, i64 %ln25G, i64 %ln25H, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21J:
  %ln25I = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln25I, !tbaa !4
  br label %c21G
c21G:
  %ln25J = load i64, i64* %ls20H
  store i64 %ln25J, i64* %R1_Var
  %ln25K = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln25L = bitcast i64* %ln25K to i64*
  %ln25M = load i64, i64* %ln25L, !tbaa !4
  %ln25N = inttoptr i64 %ln25M to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln25O = load i64*, i64** %Sp_Var
  %ln25P = load i64*, i64** %Hp_Var
  %ln25Q = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln25N( i64* %Base_Arg, i64* %ln25O, i64* %ln25P, i64 %ln25Q, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s20t_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20t_info$def to i8*)
define internal ghccc void @s20t_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20t_info$def to i64)),i64 0), i64 4294967301, i64 4294967296, i64 12884901899}>
{
c21O:
  %ls20u = alloca i64, i32 1
  %ls20t = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc213 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %ln25R = load i64, i64* %R2_Var
  store i64 %ln25R, i64* %ls20u
  %ln25S = load i64, i64* %R1_Var
  store i64 %ln25S, i64* %ls20t
  %ln25T = load i64*, i64** %Sp_Var
  %ln25U = getelementptr inbounds i64, i64* %ln25T, i32 1
  %ln25V = ptrtoint i64* %ln25U to i64
  %ln25W = sub i64 %ln25V, 56
  %ln25X = icmp ult i64 %ln25W, %SpLim_Arg
  br i1 %ln25X, label %c21P, label %c21Q
c21Q:
  %ln25Y = load i64*, i64** %Hp_Var
  %ln25Z = getelementptr inbounds i64, i64* %ln25Y, i32 2
  %ln260 = ptrtoint i64* %ln25Z to i64
  %ln261 = inttoptr i64 %ln260 to i64*
  store i64* %ln261, i64** %Hp_Var
  %ln262 = load i64*, i64** %Hp_Var
  %ln263 = ptrtoint i64* %ln262 to i64
  %ln264 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln265 = bitcast i64* %ln264 to i64*
  %ln266 = load i64, i64* %ln265, !tbaa !4
  %ln267 = icmp ugt i64 %ln263, %ln266
  br i1 %ln267, label %c21S, label %c21R
c21R:
  %ln269 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20B_info$def to i64
  %ln268 = load i64*, i64** %Hp_Var
  %ln26a = getelementptr inbounds i64, i64* %ln268, i32 -1
  store i64 %ln269, i64* %ln26a, !tbaa !2
  %ln26b = load i64*, i64** %Hp_Var
  %ln26c = getelementptr inbounds i64, i64* %ln26b, i32 -1
  %ln26d = ptrtoint i64* %ln26c to i64
  store i64 %ln26d, i64* %lc213
  %ln26f = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c21d_info$def to i64
  %ln26e = load i64*, i64** %Sp_Var
  %ln26g = getelementptr inbounds i64, i64* %ln26e, i32 -3
  store i64 %ln26f, i64* %ln26g, !tbaa !1
  %ln26h = ptrtoint i8* @integerzmgmp_GHCziIntegerziType_zdfOrdInteger_closure to i64
  store i64 %ln26h, i64* %R2_Var
  %ln26j = ptrtoint i8* @stg_ap_pp_info to i64
  %ln26i = load i64*, i64** %Sp_Var
  %ln26k = getelementptr inbounds i64, i64* %ln26i, i32 -6
  store i64 %ln26j, i64* %ln26k, !tbaa !1
  %ln26m = load i64, i64* %ls20u
  %ln26l = load i64*, i64** %Sp_Var
  %ln26n = getelementptr inbounds i64, i64* %ln26l, i32 -5
  store i64 %ln26m, i64* %ln26n, !tbaa !1
  %ln26p = load i64, i64* %lc213
  %ln26o = load i64*, i64** %Sp_Var
  %ln26q = getelementptr inbounds i64, i64* %ln26o, i32 -4
  store i64 %ln26p, i64* %ln26q, !tbaa !1
  %ln26s = load i64, i64* %ls20t
  %ln26r = load i64*, i64** %Sp_Var
  %ln26t = getelementptr inbounds i64, i64* %ln26r, i32 -2
  store i64 %ln26s, i64* %ln26t, !tbaa !1
  %ln26v = load i64, i64* %ls20u
  %ln26u = load i64*, i64** %Sp_Var
  %ln26w = getelementptr inbounds i64, i64* %ln26u, i32 -1
  store i64 %ln26v, i64* %ln26w, !tbaa !1
  %ln26x = load i64*, i64** %Sp_Var
  %ln26y = getelementptr inbounds i64, i64* %ln26x, i32 -6
  %ln26z = ptrtoint i64* %ln26y to i64
  %ln26A = inttoptr i64 %ln26z to i64*
  store i64* %ln26A, i64** %Sp_Var
  %ln26B = bitcast i8* @ghczmprim_GHCziClasses_zg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln26C = load i64*, i64** %Sp_Var
  %ln26D = load i64*, i64** %Hp_Var
  %ln26E = load i64, i64* %R1_Var
  %ln26F = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln26B( i64* %Base_Arg, i64* %ln26C, i64* %ln26D, i64 %ln26E, i64 %ln26F, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21S:
  %ln26G = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln26G, !tbaa !4
  br label %c21P
c21P:
  %ln26H = load i64, i64* %ls20u
  store i64 %ln26H, i64* %R2_Var
  %ln26I = load i64, i64* %ls20t
  store i64 %ln26I, i64* %R1_Var
  %ln26J = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln26K = bitcast i64* %ln26J to i64*
  %ln26L = load i64, i64* %ln26K, !tbaa !4
  %ln26M = inttoptr i64 %ln26L to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln26N = load i64*, i64** %Sp_Var
  %ln26O = load i64*, i64** %Hp_Var
  %ln26P = load i64, i64* %R1_Var
  %ln26Q = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln26M( i64* %Base_Arg, i64* %ln26N, i64* %ln26O, i64 %ln26P, i64 %ln26Q, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c21d_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c21d_info$def to i8*)
define internal ghccc void @c21d_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c21d_info$def to i64)),i64 0), i64 2, i64 12884901920}>
{
c21d:
  %ls20t = alloca i64, i32 1
  %ls20u = alloca i64, i32 1
  %ls20C = alloca i64, i32 1
  %lc21N = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc220 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lc21i = alloca i64, i32 1
  %ln26R = load i64*, i64** %Sp_Var
  %ln26S = getelementptr inbounds i64, i64* %ln26R, i32 1
  %ln26T = bitcast i64* %ln26S to i64*
  %ln26U = load i64, i64* %ln26T, !tbaa !1
  store i64 %ln26U, i64* %ls20t
  %ln26V = load i64*, i64** %Sp_Var
  %ln26W = getelementptr inbounds i64, i64* %ln26V, i32 2
  %ln26X = bitcast i64* %ln26W to i64*
  %ln26Y = load i64, i64* %ln26X, !tbaa !1
  store i64 %ln26Y, i64* %ls20u
  %ln26Z = load i64, i64* %R1_Var
  store i64 %ln26Z, i64* %ls20C
  %ln270 = load i64, i64* %ls20C
  %ln271 = and i64 %ln270, 7
  store i64 %ln271, i64* %lc21N
  %ln272 = load i64, i64* %lc21N
  switch i64 %ln272, label %c21L [i64 1, label %c21L
i64 2, label %c21M]
c21L:
  %ln273 = load i64*, i64** %Hp_Var
  %ln274 = getelementptr inbounds i64, i64* %ln273, i32 2
  %ln275 = ptrtoint i64* %ln274 to i64
  %ln276 = inttoptr i64 %ln275 to i64*
  store i64* %ln276, i64** %Hp_Var
  %ln277 = load i64*, i64** %Hp_Var
  %ln278 = ptrtoint i64* %ln277 to i64
  %ln279 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln27a = bitcast i64* %ln279 to i64*
  %ln27b = load i64, i64* %ln27a, !tbaa !4
  %ln27c = icmp ugt i64 %ln278, %ln27b
  br i1 %ln27c, label %c21W, label %c21V
c21V:
  %ln27e = ptrtoint i8* @integerzmgmp_GHCziIntegerziType_Szh_con_info to i64
  %ln27d = load i64*, i64** %Hp_Var
  %ln27f = getelementptr inbounds i64, i64* %ln27d, i32 -1
  store i64 %ln27e, i64* %ln27f, !tbaa !2
  %ln27g = load i64*, i64** %Hp_Var
  %ln27h = getelementptr inbounds i64, i64* %ln27g, i32 0
  store i64 1, i64* %ln27h, !tbaa !2
  %ln27j = load i64*, i64** %Hp_Var
  %ln27k = ptrtoint i64* %ln27j to i64
  %ln27l = add i64 %ln27k, -7
  store i64 %ln27l, i64* %lc220
  %ln27m = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln27m, i64* %R2_Var
  %ln27o = ptrtoint i8* @stg_ap_p_info to i64
  %ln27n = load i64*, i64** %Sp_Var
  %ln27p = getelementptr inbounds i64, i64* %ln27n, i32 1
  store i64 %ln27o, i64* %ln27p, !tbaa !1
  %ln27r = load i64, i64* %lc220
  %ln27q = load i64*, i64** %Sp_Var
  %ln27s = getelementptr inbounds i64, i64* %ln27q, i32 2
  store i64 %ln27r, i64* %ln27s, !tbaa !1
  %ln27t = load i64*, i64** %Sp_Var
  %ln27u = getelementptr inbounds i64, i64* %ln27t, i32 1
  %ln27v = ptrtoint i64* %ln27u to i64
  %ln27w = inttoptr i64 %ln27v to i64*
  store i64* %ln27w, i64** %Sp_Var
  %ln27x = bitcast i8* @base_GHCziNum_fromInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln27y = load i64*, i64** %Sp_Var
  %ln27z = load i64*, i64** %Hp_Var
  %ln27A = load i64, i64* %R1_Var
  %ln27B = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln27x( i64* %Base_Arg, i64* %ln27y, i64* %ln27z, i64 %ln27A, i64 %ln27B, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21W:
  %ln27C = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln27C, !tbaa !4
  %ln27D = load i64, i64* %ls20C
  store i64 %ln27D, i64* %R1_Var
  %ln27E = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln27F = load i64*, i64** %Sp_Var
  %ln27G = load i64*, i64** %Hp_Var
  %ln27H = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln27E( i64* %Base_Arg, i64* %ln27F, i64* %ln27G, i64 %ln27H, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21M:
  %ln27I = load i64*, i64** %Hp_Var
  %ln27J = getelementptr inbounds i64, i64* %ln27I, i32 4
  %ln27K = ptrtoint i64* %ln27J to i64
  %ln27L = inttoptr i64 %ln27K to i64*
  store i64* %ln27L, i64** %Hp_Var
  %ln27M = load i64*, i64** %Hp_Var
  %ln27N = ptrtoint i64* %ln27M to i64
  %ln27O = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln27P = bitcast i64* %ln27O to i64*
  %ln27Q = load i64, i64* %ln27P, !tbaa !4
  %ln27R = icmp ugt i64 %ln27N, %ln27Q
  br i1 %ln27R, label %c21Z, label %c21Y
c21Y:
  %ln27T = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20H_info$def to i64
  %ln27S = load i64*, i64** %Hp_Var
  %ln27U = getelementptr inbounds i64, i64* %ln27S, i32 -3
  store i64 %ln27T, i64* %ln27U, !tbaa !2
  %ln27W = load i64, i64* %ls20t
  %ln27V = load i64*, i64** %Hp_Var
  %ln27X = getelementptr inbounds i64, i64* %ln27V, i32 -1
  store i64 %ln27W, i64* %ln27X, !tbaa !2
  %ln27Z = load i64, i64* %ls20u
  %ln27Y = load i64*, i64** %Hp_Var
  %ln280 = getelementptr inbounds i64, i64* %ln27Y, i32 0
  store i64 %ln27Z, i64* %ln280, !tbaa !2
  %ln281 = load i64*, i64** %Hp_Var
  %ln282 = getelementptr inbounds i64, i64* %ln281, i32 -3
  %ln283 = ptrtoint i64* %ln282 to i64
  store i64 %ln283, i64* %lc21i
  %ln284 = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln284, i64* %R2_Var
  %ln286 = ptrtoint i8* @stg_ap_pp_info to i64
  %ln285 = load i64*, i64** %Sp_Var
  %ln287 = getelementptr inbounds i64, i64* %ln285, i32 0
  store i64 %ln286, i64* %ln287, !tbaa !1
  %ln289 = load i64, i64* %ls20u
  %ln288 = load i64*, i64** %Sp_Var
  %ln28a = getelementptr inbounds i64, i64* %ln288, i32 1
  store i64 %ln289, i64* %ln28a, !tbaa !1
  %ln28c = load i64, i64* %lc21i
  %ln28b = load i64*, i64** %Sp_Var
  %ln28d = getelementptr inbounds i64, i64* %ln28b, i32 2
  store i64 %ln28c, i64* %ln28d, !tbaa !1
  %ln28e = bitcast i8* @base_GHCziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln28f = load i64*, i64** %Sp_Var
  %ln28g = load i64*, i64** %Hp_Var
  %ln28h = load i64, i64* %R1_Var
  %ln28i = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln28e( i64* %Base_Arg, i64* %ln28f, i64* %ln28g, i64 %ln28h, i64 %ln28i, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c21Z:
  %ln28j = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %ln28j, !tbaa !4
  %ln28k = load i64, i64* %ls20C
  store i64 %ln28k, i64* %R1_Var
  %ln28l = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln28m = load i64*, i64** %Sp_Var
  %ln28n = load i64*, i64** %Hp_Var
  %ln28o = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln28l( i64* %Base_Arg, i64* %ln28m, i64* %ln28n, i64 %ln28o, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s20J_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20J_info$def to i8*)
define internal ghccc void @s20J_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20J_info$def to i64)),i64 0), i64 0, i64 12884901910}>
{
c222:
  %ls20J = alloca i64, i32 1
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
  %lc20V = alloca i64, i32 1
  %lc20Y = alloca i64, i32 1
  %lc221 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln28p = load i64, i64* %R1_Var
  store i64 %ln28p, i64* %ls20J
  %ln28q = load i64*, i64** %Sp_Var
  %ln28r = getelementptr inbounds i64, i64* %ln28q, i32 1
  %ln28s = ptrtoint i64* %ln28r to i64
  %ln28t = sub i64 %ln28s, 24
  %ln28u = icmp ult i64 %ln28t, %SpLim_Arg
  br i1 %ln28u, label %c223, label %c224
c224:
  %ln28v = load i64*, i64** %Hp_Var
  %ln28w = getelementptr inbounds i64, i64* %ln28v, i32 4
  %ln28x = ptrtoint i64* %ln28w to i64
  %ln28y = inttoptr i64 %ln28x to i64*
  store i64* %ln28y, i64** %Hp_Var
  %ln28z = load i64*, i64** %Hp_Var
  %ln28A = ptrtoint i64* %ln28z to i64
  %ln28B = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln28C = bitcast i64* %ln28B to i64*
  %ln28D = load i64, i64* %ln28C, !tbaa !4
  %ln28E = icmp ugt i64 %ln28A, %ln28D
  br i1 %ln28E, label %c226, label %c225
c225:
  %ln28F = ptrtoint i64* %Base_Arg to i64
  %ln28G = inttoptr i64 %ln28F to i8*
  %ln28H = load i64, i64* %ls20J
  %ln28I = inttoptr i64 %ln28H to i8*
  %ln28J = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln28K = call ccc i8* (i8*, i8*) %ln28J( i8* %ln28G, i8* %ln28I ) nounwind
  %ln28L = ptrtoint i8* %ln28K to i64
  store i64 %ln28L, i64* %lc20V
  %ln28M = load i64, i64* %lc20V
  %ln28N = icmp eq i64 %ln28M, 0
  br i1 %ln28N, label %c20X, label %c20W
c20W:
  %ln28P = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln28O = load i64*, i64** %Sp_Var
  %ln28Q = getelementptr inbounds i64, i64* %ln28O, i32 -2
  store i64 %ln28P, i64* %ln28Q, !tbaa !1
  %ln28S = load i64, i64* %lc20V
  %ln28R = load i64*, i64** %Sp_Var
  %ln28T = getelementptr inbounds i64, i64* %ln28R, i32 -1
  store i64 %ln28S, i64* %ln28T, !tbaa !1
  %ln28V = load i64*, i64** %Hp_Var
  %ln28W = ptrtoint i64* %ln28V to i64
  %ln28X = add i64 %ln28W, -23
  store i64 %ln28X, i64* %lc20Y
  %ln28Z = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20t_info$def to i64
  %ln28Y = load i64*, i64** %Hp_Var
  %ln290 = getelementptr inbounds i64, i64* %ln28Y, i32 -3
  store i64 %ln28Z, i64* %ln290, !tbaa !2
  %ln292 = ptrtoint i8* @integerzmgmp_GHCziIntegerziType_Szh_con_info to i64
  %ln291 = load i64*, i64** %Hp_Var
  %ln293 = getelementptr inbounds i64, i64* %ln291, i32 -1
  store i64 %ln292, i64* %ln293, !tbaa !2
  %ln294 = load i64*, i64** %Hp_Var
  %ln295 = getelementptr inbounds i64, i64* %ln294, i32 0
  store i64 3, i64* %ln295, !tbaa !2
  %ln297 = load i64*, i64** %Hp_Var
  %ln298 = ptrtoint i64* %ln297 to i64
  %ln299 = add i64 %ln298, -7
  store i64 %ln299, i64* %lc221
  %ln29a = load i64, i64* %lc221
  store i64 %ln29a, i64* %R2_Var
  %ln29b = load i64, i64* %lc20Y
  store i64 %ln29b, i64* %R1_Var
  %ln29c = load i64*, i64** %Sp_Var
  %ln29d = getelementptr inbounds i64, i64* %ln29c, i32 -2
  %ln29e = ptrtoint i64* %ln29d to i64
  %ln29f = inttoptr i64 %ln29e to i64*
  store i64* %ln29f, i64** %Sp_Var
  %ln29g = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s20t_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln29h = load i64*, i64** %Sp_Var
  %ln29i = load i64*, i64** %Hp_Var
  %ln29j = load i64, i64* %R1_Var
  %ln29k = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln29g( i64* %Base_Arg, i64* %ln29h, i64* %ln29i, i64 %ln29j, i64 %ln29k, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c20X:
  %ln29l = load i64, i64* %ls20J
  %ln29m = inttoptr i64 %ln29l to i64*
  %ln29n = load i64, i64* %ln29m, !tbaa !5
  %ln29o = inttoptr i64 %ln29n to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln29p = load i64*, i64** %Sp_Var
  %ln29q = load i64*, i64** %Hp_Var
  %ln29r = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln29o( i64* %Base_Arg, i64* %ln29p, i64* %ln29q, i64 %ln29r, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c226:
  %ln29s = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 32, i64* %ln29s, !tbaa !4
  br label %c223
c223:
  %ln29t = load i64, i64* %ls20J
  store i64 %ln29t, i64* %R1_Var
  %ln29u = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln29v = bitcast i64* %ln29u to i64*
  %ln29w = load i64, i64* %ln29v, !tbaa !4
  %ln29x = inttoptr i64 %ln29w to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln29y = load i64*, i64** %Sp_Var
  %ln29z = load i64*, i64** %Hp_Var
  %ln29A = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln29x( i64* %Base_Arg, i64* %ln29y, i64* %ln29z, i64 %ln29A, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)),i64 16), i64 0, i64 30064771094}>
{
c29I:
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
  %lc29F = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln29L = load i64, i64* %R1_Var
  store i64 %ln29L, i64* %lroW
  %ln29M = load i64*, i64** %Sp_Var
  %ln29N = getelementptr inbounds i64, i64* %ln29M, i32 1
  %ln29O = ptrtoint i64* %ln29N to i64
  %ln29P = sub i64 %ln29O, 24
  %ln29Q = icmp ult i64 %ln29P, %SpLim_Arg
  br i1 %ln29Q, label %c29J, label %c29K
c29K:
  %ln29R = ptrtoint i64* %Base_Arg to i64
  %ln29S = inttoptr i64 %ln29R to i8*
  %ln29T = load i64, i64* %lroW
  %ln29U = inttoptr i64 %ln29T to i8*
  %ln29V = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln29W = call ccc i8* (i8*, i8*) %ln29V( i8* %ln29S, i8* %ln29U ) nounwind
  %ln29X = ptrtoint i8* %ln29W to i64
  store i64 %ln29X, i64* %lc29F
  %ln29Y = load i64, i64* %lc29F
  %ln29Z = icmp eq i64 %ln29Y, 0
  br i1 %ln29Z, label %c29H, label %c29G
c29G:
  %ln2a1 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2a0 = load i64*, i64** %Sp_Var
  %ln2a2 = getelementptr inbounds i64, i64* %ln2a0, i32 -2
  store i64 %ln2a1, i64* %ln2a2, !tbaa !1
  %ln2a4 = load i64, i64* %lc29F
  %ln2a3 = load i64*, i64** %Sp_Var
  %ln2a5 = getelementptr inbounds i64, i64* %ln2a3, i32 -1
  store i64 %ln2a4, i64* %ln2a5, !tbaa !1
  %ln2a6 = ptrtoint %s20J_closure_struct* @s20J_closure$def to i64
  store i64 %ln2a6, i64* %R3_Var
  %ln2a7 = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %ln2a7, i64* %R2_Var
  %ln2a8 = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %ln2a8, i64* %R1_Var
  %ln2a9 = load i64*, i64** %Sp_Var
  %ln2aa = getelementptr inbounds i64, i64* %ln2a9, i32 -2
  %ln2ab = ptrtoint i64* %ln2aa to i64
  %ln2ac = inttoptr i64 %ln2ab to i64*
  store i64* %ln2ac, i64** %Sp_Var
  %ln2ad = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2ae = load i64*, i64** %Sp_Var
  %ln2af = load i64, i64* %R1_Var
  %ln2ag = load i64, i64* %R2_Var
  %ln2ah = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2ad( i64* %Base_Arg, i64* %ln2ae, i64* %Hp_Arg, i64 %ln2af, i64 %ln2ag, i64 %ln2ah, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c29H:
  %ln2ai = load i64, i64* %lroW
  %ln2aj = inttoptr i64 %ln2ai to i64*
  %ln2ak = load i64, i64* %ln2aj, !tbaa !5
  %ln2al = inttoptr i64 %ln2ak to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2am = load i64*, i64** %Sp_Var
  %ln2an = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2al( i64* %Base_Arg, i64* %ln2am, i64* %Hp_Arg, i64 %ln2an, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c29J:
  %ln2ao = load i64, i64* %lroW
  store i64 %ln2ao, i64* %R1_Var
  %ln2ap = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2aq = bitcast i64* %ln2ap to i64*
  %ln2ar = load i64, i64* %ln2aq, !tbaa !4
  %ln2as = inttoptr i64 %ln2ar to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2at = load i64*, i64** %Sp_Var
  %ln2au = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2as( i64* %Base_Arg, i64* %ln2at, i64* %Hp_Arg, i64 %ln2au, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @S227_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)),i64 40), i64 0, i64 12884901910}>
{
c2aC:
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
  %lc2az = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %ln2aF = load i64, i64* %R1_Var
  store i64 %ln2aF, i64* %l01D
  %ln2aG = load i64*, i64** %Sp_Var
  %ln2aH = getelementptr inbounds i64, i64* %ln2aG, i32 1
  %ln2aI = ptrtoint i64* %ln2aH to i64
  %ln2aJ = sub i64 %ln2aI, 24
  %ln2aK = icmp ult i64 %ln2aJ, %SpLim_Arg
  br i1 %ln2aK, label %c2aD, label %c2aE
c2aE:
  %ln2aL = ptrtoint i64* %Base_Arg to i64
  %ln2aM = inttoptr i64 %ln2aL to i8*
  %ln2aN = load i64, i64* %l01D
  %ln2aO = inttoptr i64 %ln2aN to i8*
  %ln2aP = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2aQ = call ccc i8* (i8*, i8*) %ln2aP( i8* %ln2aM, i8* %ln2aO ) nounwind
  %ln2aR = ptrtoint i8* %ln2aQ to i64
  store i64 %ln2aR, i64* %lc2az
  %ln2aS = load i64, i64* %lc2az
  %ln2aT = icmp eq i64 %ln2aS, 0
  br i1 %ln2aT, label %c2aB, label %c2aA
c2aA:
  %ln2aV = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2aU = load i64*, i64** %Sp_Var
  %ln2aW = getelementptr inbounds i64, i64* %ln2aU, i32 -2
  store i64 %ln2aV, i64* %ln2aW, !tbaa !1
  %ln2aY = load i64, i64* %lc2az
  %ln2aX = load i64*, i64** %Sp_Var
  %ln2aZ = getelementptr inbounds i64, i64* %ln2aX, i32 -1
  store i64 %ln2aY, i64* %ln2aZ, !tbaa !1
  %ln2b0 = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %ln2b0, i64* %R2_Var
  %ln2b1 = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %ln2b1, i64* %R1_Var
  %ln2b2 = load i64*, i64** %Sp_Var
  %ln2b3 = getelementptr inbounds i64, i64* %ln2b2, i32 -2
  %ln2b4 = ptrtoint i64* %ln2b3 to i64
  %ln2b5 = inttoptr i64 %ln2b4 to i64*
  store i64* %ln2b5, i64** %Sp_Var
  %ln2b6 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2b7 = load i64*, i64** %Sp_Var
  %ln2b8 = load i64, i64* %R1_Var
  %ln2b9 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2b6( i64* %Base_Arg, i64* %ln2b7, i64* %Hp_Arg, i64 %ln2b8, i64 %ln2b9, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2aB:
  %ln2ba = load i64, i64* %l01D
  %ln2bb = inttoptr i64 %ln2ba to i64*
  %ln2bc = load i64, i64* %ln2bb, !tbaa !5
  %ln2bd = inttoptr i64 %ln2bc to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2be = load i64*, i64** %Sp_Var
  %ln2bf = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2bd( i64* %Base_Arg, i64* %ln2be, i64* %Hp_Arg, i64 %ln2bf, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2aD:
  %ln2bg = load i64, i64* %l01D
  store i64 %ln2bg, i64* %R1_Var
  %ln2bh = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2bi = bitcast i64* %ln2bh to i64*
  %ln2bj = load i64, i64* %ln2bi, !tbaa !4
  %ln2bk = inttoptr i64 %ln2bj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2bl = load i64*, i64** %Sp_Var
  %ln2bm = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2bk( i64* %Base_Arg, i64* %ln2bl, i64* %Hp_Arg, i64 %ln2bm, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%c2bo_str_struct = type <{[5 x i8]}>
%r207_closure_struct = type <{i64, i64}>
@c2bo_str$def = internal constant %c2bo_str_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>
@c2bo_str = internal alias i8* bitcast (%c2bo_str_struct* @c2bo_str$def to i8*)
@r207_closure$def = internal global %r207_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @c2bo_str to i64)}>
@r207_closure = internal alias i8* bitcast (%r207_closure_struct* @r207_closure$def to i8*)
%c2bq_str_struct = type <{[5 x i8]}>
%r20p_closure_struct = type <{i64, i64}>
@c2bq_str$def = internal constant %c2bq_str_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>
@c2bq_str = internal alias i8* bitcast (%c2bq_str_struct* @c2bq_str$def to i8*)
@r20p_closure$def = internal global %r20p_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @c2bq_str to i64)}>
@r20p_closure = internal alias i8* bitcast (%r20p_closure_struct* @r20p_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_static_info to i64), i64 add (i64 ptrtoint (%r207_closure_struct* @r207_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%r20p_closure_struct* @r20p_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%S227_srt_struct = type <{i64, i64, i64, i64, i64, i64, i64}>
@S227_srt$def = internal constant %S227_srt_struct<{i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64), i64 ptrtoint (i8* @integerzmgmp_GHCziIntegerziType_zdfOrdInteger_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%s20J_closure_struct* @s20J_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64)}>
@S227_srt = internal alias i8* bitcast (%S227_srt_struct* @S227_srt$def to i8*)
@stg_upd_frame_info = external global i8
@integerzmgmp_GHCziIntegerziType_Szh_con_info = external global i8
@base_GHCziNum_zdfNumInteger_closure = external global i8
@stg_ap_p_info = external global i8
@base_GHCziNum_fromInteger_info = external global i8
@stg_ap_pp_info = external global i8
@base_GHCziNum_zm_info = external global i8
@integerzmgmp_GHCziIntegerziType_zdfOrdInteger_closure = external global i8
@ghczmprim_GHCziClasses_zg_info = external global i8
@stg_gc_unpt_r1 = external global i8
@base_GHCziNum_zp_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@base_SystemziIO_print_closure = external global i8
@stg_ap_pp_fast = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@ghczmprim_GHCziTypes_TrNameS_static_info = external global i8
@ghczmprim_GHCziTypes_Module_static_info = external global i8
@llvm.used = appending constant [10 x i8*] [i8* bitcast (%S227_srt_struct* @S227_srt$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%r20p_closure_struct* @r20p_closure$def to i8*), i8* bitcast (%c2bq_str_struct* @c2bq_str$def to i8*), i8* bitcast (%r207_closure_struct* @r207_closure$def to i8*), i8* bitcast (%c2bo_str_struct* @c2bo_str$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%s20J_closure_struct* @s20J_closure$def to i8*), i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)], section "llvm.metadata"
