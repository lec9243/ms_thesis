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

%r1Sv_bytes_struct = type <{[5 x i8]}>
@r1Sv_bytes$def = internal constant %r1Sv_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@r1Sv_bytes = internal alias i8, bitcast (%r1Sv_bytes_struct* @r1Sv_bytes$def to i8*)
%r1Tq_closure_struct = type <{i64, i64}>
@r1Tq_closure$def = internal global %r1Tq_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r1Sv_bytes_struct* @r1Sv_bytes$def to i64)}>
@r1Tq_closure = internal alias i8, bitcast (%r1Tq_closure_struct* @r1Tq_closure$def to i8*)
%r1Tr_bytes_struct = type <{[5 x i8]}>
@r1Tr_bytes$def = internal constant %r1Tr_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@r1Tr_bytes = internal alias i8, bitcast (%r1Tr_bytes_struct* @r1Tr_bytes$def to i8*)
%r1Ts_closure_struct = type <{i64, i64}>
@r1Ts_closure$def = internal global %r1Ts_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r1Tr_bytes_struct* @r1Tr_bytes$def to i64)}>
@r1Ts_closure = internal alias i8, bitcast (%r1Ts_closure_struct* @r1Ts_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%r1Tq_closure_struct* @r1Tq_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%r1Ts_closure_struct* @r1Ts_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%rge_closure_struct = type <{i64, i64, i64, i64}>
@rge_closure$def = internal global %rge_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @rge_info$def to i64), i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_zdfEqInteger_closure to i64), i64 0}>
@rge_closure = internal alias i8, bitcast (%rge_closure_struct* @rge_closure$def to i8*)
@s1TI_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TI_info$def to i8*)
define internal ghccc void @s1TI_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TI_info$def to i64)) to i32),i32 0)}>
{
n1V7:
  %ls1TI = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls1Tu = alloca i64, i32 1
  %lc1U8 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c1U9
c1U9:
  %ln1V8 = load i64, i64* %R1_Var
  store i64 %ln1V8, i64* %ls1TI
  %ln1V9 = load i64*, i64** %Sp_Var
  %ln1Va = getelementptr inbounds i64, i64* %ln1V9, i32 1
  %ln1Vb = ptrtoint i64* %ln1Va to i64
  %ln1Vc = sub i64 %ln1Vb, 48
  %ln1Vd = icmp ult i64 %ln1Vc, %SpLim_Arg
  %ln1Vf = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Vd, i1 0 )
  br i1 %ln1Vf, label %c1Ua, label %c1Ub
c1Ub:
  %ln1Vg = load i64*, i64** %Hp_Var
  %ln1Vh = getelementptr inbounds i64, i64* %ln1Vg, i32 2
  %ln1Vi = ptrtoint i64* %ln1Vh to i64
  %ln1Vj = inttoptr i64 %ln1Vi to i64*
  store i64* %ln1Vj, i64** %Hp_Var
  %ln1Vk = load i64*, i64** %Hp_Var
  %ln1Vl = ptrtoint i64* %ln1Vk to i64
  %ln1Vm = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln1Vn = bitcast i64* %ln1Vm to i64*
  %ln1Vo = load i64, i64* %ln1Vn, !tbaa !5
  %ln1Vp = icmp ugt i64 %ln1Vl, %ln1Vo
  %ln1Vq = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Vp, i1 0 )
  br i1 %ln1Vq, label %c1Ud, label %c1Uc
c1Uc:
  %ln1Vs = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1Vr = load i64*, i64** %Sp_Var
  %ln1Vt = getelementptr inbounds i64, i64* %ln1Vr, i32 -2
  store i64 %ln1Vs, i64* %ln1Vt, !tbaa !2
  %ln1Vv = load i64, i64* %ls1TI
  %ln1Vu = load i64*, i64** %Sp_Var
  %ln1Vw = getelementptr inbounds i64, i64* %ln1Vu, i32 -1
  store i64 %ln1Vv, i64* %ln1Vw, !tbaa !2
  %ln1Vx = load i64, i64* %ls1TI
  %ln1Vy = add i64 %ln1Vx, 16
  %ln1Vz = inttoptr i64 %ln1Vy to i64*
  %ln1VA = load i64, i64* %ln1Vz, !tbaa !1
  store i64 %ln1VA, i64* %ls1Tu
  %ln1VC = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln1VB = load i64*, i64** %Hp_Var
  %ln1VD = getelementptr inbounds i64, i64* %ln1VB, i32 -1
  store i64 %ln1VC, i64* %ln1VD, !tbaa !3
  %ln1VE = load i64*, i64** %Hp_Var
  %ln1VF = getelementptr inbounds i64, i64* %ln1VE, i32 0
  store i64 2, i64* %ln1VF, !tbaa !3
  %ln1VH = load i64*, i64** %Hp_Var
  %ln1VI = ptrtoint i64* %ln1VH to i64
  %ln1VJ = add i64 %ln1VI, -7
  store i64 %ln1VJ, i64* %lc1U8
  %ln1VK = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln1VK, i64* %R2_Var
  %ln1VM = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1VL = load i64*, i64** %Sp_Var
  %ln1VN = getelementptr inbounds i64, i64* %ln1VL, i32 -5
  store i64 %ln1VM, i64* %ln1VN, !tbaa !2
  %ln1VP = load i64, i64* %ls1Tu
  %ln1VO = load i64*, i64** %Sp_Var
  %ln1VQ = getelementptr inbounds i64, i64* %ln1VO, i32 -4
  store i64 %ln1VP, i64* %ln1VQ, !tbaa !2
  %ln1VS = load i64, i64* %lc1U8
  %ln1VR = load i64*, i64** %Sp_Var
  %ln1VT = getelementptr inbounds i64, i64* %ln1VR, i32 -3
  store i64 %ln1VS, i64* %ln1VT, !tbaa !2
  %ln1VU = load i64*, i64** %Sp_Var
  %ln1VV = getelementptr inbounds i64, i64* %ln1VU, i32 -5
  %ln1VW = ptrtoint i64* %ln1VV to i64
  %ln1VX = inttoptr i64 %ln1VW to i64*
  store i64* %ln1VX, i64** %Sp_Var
  %ln1VY = bitcast i8* @base_GHCziNum_zm_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1VZ = load i64*, i64** %Sp_Var
  %ln1W0 = load i64*, i64** %Hp_Var
  %ln1W1 = load i64, i64* %R1_Var
  %ln1W2 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1VY( i64* %Base_Arg, i64* %ln1VZ, i64* %ln1W0, i64 %ln1W1, i64 %ln1W2, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1Ud:
  %ln1W3 = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln1W3, !tbaa !5
  br label %c1Ua
c1Ua:
  %ln1W4 = load i64, i64* %ls1TI
  store i64 %ln1W4, i64* %R1_Var
  %ln1W5 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln1W6 = bitcast i64* %ln1W5 to i64*
  %ln1W7 = load i64, i64* %ln1W6, !tbaa !5
  %ln1W8 = inttoptr i64 %ln1W7 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1W9 = load i64*, i64** %Sp_Var
  %ln1Wa = load i64*, i64** %Hp_Var
  %ln1Wb = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1W8( i64* %Base_Arg, i64* %ln1W9, i64* %ln1Wa, i64 %ln1Wb, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@s1TJ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TJ_info$def to i8*)
define internal ghccc void @s1TJ_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%rge_closure_struct* @rge_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TJ_info$def to i64)) to i32),i32 0)}>
{
n1Wc:
  %ls1TJ = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls1Tu = alloca i64, i32 1
  %lc1U4 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c1Ue
c1Ue:
  %ln1Wd = load i64, i64* %R1_Var
  store i64 %ln1Wd, i64* %ls1TJ
  %ln1We = load i64*, i64** %Sp_Var
  %ln1Wf = getelementptr inbounds i64, i64* %ln1We, i32 1
  %ln1Wg = ptrtoint i64* %ln1Wf to i64
  %ln1Wh = sub i64 %ln1Wg, 24
  %ln1Wi = icmp ult i64 %ln1Wh, %SpLim_Arg
  %ln1Wj = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Wi, i1 0 )
  br i1 %ln1Wj, label %c1Uf, label %c1Ug
c1Ug:
  %ln1Wk = load i64*, i64** %Hp_Var
  %ln1Wl = getelementptr inbounds i64, i64* %ln1Wk, i32 3
  %ln1Wm = ptrtoint i64* %ln1Wl to i64
  %ln1Wn = inttoptr i64 %ln1Wm to i64*
  store i64* %ln1Wn, i64** %Hp_Var
  %ln1Wo = load i64*, i64** %Hp_Var
  %ln1Wp = ptrtoint i64* %ln1Wo to i64
  %ln1Wq = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln1Wr = bitcast i64* %ln1Wq to i64*
  %ln1Ws = load i64, i64* %ln1Wr, !tbaa !5
  %ln1Wt = icmp ugt i64 %ln1Wp, %ln1Ws
  %ln1Wu = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Wt, i1 0 )
  br i1 %ln1Wu, label %c1Ui, label %c1Uh
c1Uh:
  %ln1Ww = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1Wv = load i64*, i64** %Sp_Var
  %ln1Wx = getelementptr inbounds i64, i64* %ln1Wv, i32 -2
  store i64 %ln1Ww, i64* %ln1Wx, !tbaa !2
  %ln1Wz = load i64, i64* %ls1TJ
  %ln1Wy = load i64*, i64** %Sp_Var
  %ln1WA = getelementptr inbounds i64, i64* %ln1Wy, i32 -1
  store i64 %ln1Wz, i64* %ln1WA, !tbaa !2
  %ln1WB = load i64, i64* %ls1TJ
  %ln1WC = add i64 %ln1WB, 16
  %ln1WD = inttoptr i64 %ln1WC to i64*
  %ln1WE = load i64, i64* %ln1WD, !tbaa !1
  store i64 %ln1WE, i64* %ls1Tu
  %ln1WG = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TI_info$def to i64
  %ln1WF = load i64*, i64** %Hp_Var
  %ln1WH = getelementptr inbounds i64, i64* %ln1WF, i32 -2
  store i64 %ln1WG, i64* %ln1WH, !tbaa !3
  %ln1WJ = load i64, i64* %ls1Tu
  %ln1WI = load i64*, i64** %Hp_Var
  %ln1WK = getelementptr inbounds i64, i64* %ln1WI, i32 0
  store i64 %ln1WJ, i64* %ln1WK, !tbaa !3
  %ln1WL = load i64*, i64** %Hp_Var
  %ln1WM = getelementptr inbounds i64, i64* %ln1WL, i32 -2
  %ln1WN = ptrtoint i64* %ln1WM to i64
  store i64 %ln1WN, i64* %lc1U4
  %ln1WO = load i64, i64* %lc1U4
  store i64 %ln1WO, i64* %R2_Var
  %ln1WP = load i64*, i64** %Sp_Var
  %ln1WQ = getelementptr inbounds i64, i64* %ln1WP, i32 -2
  %ln1WR = ptrtoint i64* %ln1WQ to i64
  %ln1WS = inttoptr i64 %ln1WR to i64*
  store i64* %ln1WS, i64** %Sp_Var
  %ln1WT = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @rge_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1WU = load i64*, i64** %Sp_Var
  %ln1WV = load i64*, i64** %Hp_Var
  %ln1WW = load i64, i64* %R1_Var
  %ln1WX = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1WT( i64* %Base_Arg, i64* %ln1WU, i64* %ln1WV, i64 %ln1WW, i64 %ln1WX, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1Ui:
  %ln1WY = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln1WY, !tbaa !5
  br label %c1Uf
c1Uf:
  %ln1WZ = load i64, i64* %ls1TJ
  store i64 %ln1WZ, i64* %R1_Var
  %ln1X0 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln1X1 = bitcast i64* %ln1X0 to i64*
  %ln1X2 = load i64, i64* %ln1X1, !tbaa !5
  %ln1X3 = inttoptr i64 %ln1X2 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1X4 = load i64*, i64** %Sp_Var
  %ln1X5 = load i64*, i64** %Hp_Var
  %ln1X6 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1X3( i64* %Base_Arg, i64* %ln1X4, i64* %ln1X5, i64 %ln1X6, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s1TF_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TF_info$def to i8*)
define internal ghccc void @s1TF_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziNum_zdfNumInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TF_info$def to i64)) to i32),i32 0)}>
{
n1X7:
  %ls1TF = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls1Tu = alloca i64, i32 1
  %lc1Ur = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c1Us
c1Us:
  %ln1X8 = load i64, i64* %R1_Var
  store i64 %ln1X8, i64* %ls1TF
  %ln1X9 = load i64*, i64** %Sp_Var
  %ln1Xa = getelementptr inbounds i64, i64* %ln1X9, i32 1
  %ln1Xb = ptrtoint i64* %ln1Xa to i64
  %ln1Xc = sub i64 %ln1Xb, 48
  %ln1Xd = icmp ult i64 %ln1Xc, %SpLim_Arg
  %ln1Xe = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Xd, i1 0 )
  br i1 %ln1Xe, label %c1Ut, label %c1Uu
c1Uu:
  %ln1Xf = load i64*, i64** %Hp_Var
  %ln1Xg = getelementptr inbounds i64, i64* %ln1Xf, i32 2
  %ln1Xh = ptrtoint i64* %ln1Xg to i64
  %ln1Xi = inttoptr i64 %ln1Xh to i64*
  store i64* %ln1Xi, i64** %Hp_Var
  %ln1Xj = load i64*, i64** %Hp_Var
  %ln1Xk = ptrtoint i64* %ln1Xj to i64
  %ln1Xl = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln1Xm = bitcast i64* %ln1Xl to i64*
  %ln1Xn = load i64, i64* %ln1Xm, !tbaa !5
  %ln1Xo = icmp ugt i64 %ln1Xk, %ln1Xn
  %ln1Xp = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Xo, i1 0 )
  br i1 %ln1Xp, label %c1Uw, label %c1Uv
c1Uv:
  %ln1Xr = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1Xq = load i64*, i64** %Sp_Var
  %ln1Xs = getelementptr inbounds i64, i64* %ln1Xq, i32 -2
  store i64 %ln1Xr, i64* %ln1Xs, !tbaa !2
  %ln1Xu = load i64, i64* %ls1TF
  %ln1Xt = load i64*, i64** %Sp_Var
  %ln1Xv = getelementptr inbounds i64, i64* %ln1Xt, i32 -1
  store i64 %ln1Xu, i64* %ln1Xv, !tbaa !2
  %ln1Xw = load i64, i64* %ls1TF
  %ln1Xx = add i64 %ln1Xw, 16
  %ln1Xy = inttoptr i64 %ln1Xx to i64*
  %ln1Xz = load i64, i64* %ln1Xy, !tbaa !1
  store i64 %ln1Xz, i64* %ls1Tu
  %ln1XB = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln1XA = load i64*, i64** %Hp_Var
  %ln1XC = getelementptr inbounds i64, i64* %ln1XA, i32 -1
  store i64 %ln1XB, i64* %ln1XC, !tbaa !3
  %ln1XD = load i64*, i64** %Hp_Var
  %ln1XE = getelementptr inbounds i64, i64* %ln1XD, i32 0
  store i64 1, i64* %ln1XE, !tbaa !3
  %ln1XG = load i64*, i64** %Hp_Var
  %ln1XH = ptrtoint i64* %ln1XG to i64
  %ln1XI = add i64 %ln1XH, -7
  store i64 %ln1XI, i64* %lc1Ur
  %ln1XJ = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln1XJ, i64* %R2_Var
  %ln1XL = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1XK = load i64*, i64** %Sp_Var
  %ln1XM = getelementptr inbounds i64, i64* %ln1XK, i32 -5
  store i64 %ln1XL, i64* %ln1XM, !tbaa !2
  %ln1XO = load i64, i64* %ls1Tu
  %ln1XN = load i64*, i64** %Sp_Var
  %ln1XP = getelementptr inbounds i64, i64* %ln1XN, i32 -4
  store i64 %ln1XO, i64* %ln1XP, !tbaa !2
  %ln1XR = load i64, i64* %lc1Ur
  %ln1XQ = load i64*, i64** %Sp_Var
  %ln1XS = getelementptr inbounds i64, i64* %ln1XQ, i32 -3
  store i64 %ln1XR, i64* %ln1XS, !tbaa !2
  %ln1XT = load i64*, i64** %Sp_Var
  %ln1XU = getelementptr inbounds i64, i64* %ln1XT, i32 -5
  %ln1XV = ptrtoint i64* %ln1XU to i64
  %ln1XW = inttoptr i64 %ln1XV to i64*
  store i64* %ln1XW, i64** %Sp_Var
  %ln1XX = bitcast i8* @base_GHCziNum_zm_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1XY = load i64*, i64** %Sp_Var
  %ln1XZ = load i64*, i64** %Hp_Var
  %ln1Y0 = load i64, i64* %R1_Var
  %ln1Y1 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1XX( i64* %Base_Arg, i64* %ln1XY, i64* %ln1XZ, i64 %ln1Y0, i64 %ln1Y1, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1Uw:
  %ln1Y2 = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln1Y2, !tbaa !5
  br label %c1Ut
c1Ut:
  %ln1Y3 = load i64, i64* %ls1TF
  store i64 %ln1Y3, i64* %R1_Var
  %ln1Y4 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln1Y5 = bitcast i64* %ln1Y4 to i64*
  %ln1Y6 = load i64, i64* %ln1Y5, !tbaa !5
  %ln1Y7 = inttoptr i64 %ln1Y6 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1Y8 = load i64*, i64** %Sp_Var
  %ln1Y9 = load i64*, i64** %Hp_Var
  %ln1Ya = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1Y7( i64* %Base_Arg, i64* %ln1Y8, i64* %ln1Y9, i64 %ln1Ya, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@s1TG_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TG_info$def to i8*)
define internal ghccc void @s1TG_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%rge_closure_struct* @rge_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TG_info$def to i64)) to i32),i32 0)}>
{
n1Yb:
  %ls1TG = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %ls1Tu = alloca i64, i32 1
  %lc1Un = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c1Ux
c1Ux:
  %ln1Yc = load i64, i64* %R1_Var
  store i64 %ln1Yc, i64* %ls1TG
  %ln1Yd = load i64*, i64** %Sp_Var
  %ln1Ye = getelementptr inbounds i64, i64* %ln1Yd, i32 1
  %ln1Yf = ptrtoint i64* %ln1Ye to i64
  %ln1Yg = sub i64 %ln1Yf, 24
  %ln1Yh = icmp ult i64 %ln1Yg, %SpLim_Arg
  %ln1Yi = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Yh, i1 0 )
  br i1 %ln1Yi, label %c1Uy, label %c1Uz
c1Uz:
  %ln1Yj = load i64*, i64** %Hp_Var
  %ln1Yk = getelementptr inbounds i64, i64* %ln1Yj, i32 3
  %ln1Yl = ptrtoint i64* %ln1Yk to i64
  %ln1Ym = inttoptr i64 %ln1Yl to i64*
  store i64* %ln1Ym, i64** %Hp_Var
  %ln1Yn = load i64*, i64** %Hp_Var
  %ln1Yo = ptrtoint i64* %ln1Yn to i64
  %ln1Yp = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln1Yq = bitcast i64* %ln1Yp to i64*
  %ln1Yr = load i64, i64* %ln1Yq, !tbaa !5
  %ln1Ys = icmp ugt i64 %ln1Yo, %ln1Yr
  %ln1Yt = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Ys, i1 0 )
  br i1 %ln1Yt, label %c1UB, label %c1UA
c1UA:
  %ln1Yv = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1Yu = load i64*, i64** %Sp_Var
  %ln1Yw = getelementptr inbounds i64, i64* %ln1Yu, i32 -2
  store i64 %ln1Yv, i64* %ln1Yw, !tbaa !2
  %ln1Yy = load i64, i64* %ls1TG
  %ln1Yx = load i64*, i64** %Sp_Var
  %ln1Yz = getelementptr inbounds i64, i64* %ln1Yx, i32 -1
  store i64 %ln1Yy, i64* %ln1Yz, !tbaa !2
  %ln1YA = load i64, i64* %ls1TG
  %ln1YB = add i64 %ln1YA, 16
  %ln1YC = inttoptr i64 %ln1YB to i64*
  %ln1YD = load i64, i64* %ln1YC, !tbaa !1
  store i64 %ln1YD, i64* %ls1Tu
  %ln1YF = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TF_info$def to i64
  %ln1YE = load i64*, i64** %Hp_Var
  %ln1YG = getelementptr inbounds i64, i64* %ln1YE, i32 -2
  store i64 %ln1YF, i64* %ln1YG, !tbaa !3
  %ln1YI = load i64, i64* %ls1Tu
  %ln1YH = load i64*, i64** %Hp_Var
  %ln1YJ = getelementptr inbounds i64, i64* %ln1YH, i32 0
  store i64 %ln1YI, i64* %ln1YJ, !tbaa !3
  %ln1YK = load i64*, i64** %Hp_Var
  %ln1YL = getelementptr inbounds i64, i64* %ln1YK, i32 -2
  %ln1YM = ptrtoint i64* %ln1YL to i64
  store i64 %ln1YM, i64* %lc1Un
  %ln1YN = load i64, i64* %lc1Un
  store i64 %ln1YN, i64* %R2_Var
  %ln1YO = load i64*, i64** %Sp_Var
  %ln1YP = getelementptr inbounds i64, i64* %ln1YO, i32 -2
  %ln1YQ = ptrtoint i64* %ln1YP to i64
  %ln1YR = inttoptr i64 %ln1YQ to i64*
  store i64* %ln1YR, i64** %Sp_Var
  %ln1YS = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @rge_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1YT = load i64*, i64** %Sp_Var
  %ln1YU = load i64*, i64** %Hp_Var
  %ln1YV = load i64, i64* %R1_Var
  %ln1YW = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1YS( i64* %Base_Arg, i64* %ln1YT, i64* %ln1YU, i64 %ln1YV, i64 %ln1YW, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UB:
  %ln1YX = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln1YX, !tbaa !5
  br label %c1Uy
c1Uy:
  %ln1YY = load i64, i64* %ls1TG
  store i64 %ln1YY, i64* %R1_Var
  %ln1YZ = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln1Z0 = bitcast i64* %ln1YZ to i64*
  %ln1Z1 = load i64, i64* %ln1Z0, !tbaa !5
  %ln1Z2 = inttoptr i64 %ln1Z1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1Z3 = load i64*, i64** %Sp_Var
  %ln1Z4 = load i64*, i64** %Hp_Var
  %ln1Z5 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1Z2( i64* %Base_Arg, i64* %ln1Z3, i64* %ln1Z4, i64 %ln1Z5, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@rge_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @rge_info$def to i8*)
define internal ghccc void @rge_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 2, i32 14, i32 0}>
{
n1Z6:
  %ls1Tu = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc1TQ = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c1UG
c1UG:
  %ln1Z7 = load i64, i64* %R2_Var
  store i64 %ln1Z7, i64* %ls1Tu
  %ln1Z8 = load i64*, i64** %Sp_Var
  %ln1Z9 = getelementptr inbounds i64, i64* %ln1Z8, i32 1
  %ln1Za = ptrtoint i64* %ln1Z9 to i64
  %ln1Zb = sub i64 %ln1Za, 48
  %ln1Zc = icmp ult i64 %ln1Zb, %SpLim_Arg
  %ln1Zd = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Zc, i1 0 )
  br i1 %ln1Zd, label %c1UH, label %c1UI
c1UI:
  %ln1Ze = load i64*, i64** %Hp_Var
  %ln1Zf = getelementptr inbounds i64, i64* %ln1Ze, i32 2
  %ln1Zg = ptrtoint i64* %ln1Zf to i64
  %ln1Zh = inttoptr i64 %ln1Zg to i64*
  store i64* %ln1Zh, i64** %Hp_Var
  %ln1Zi = load i64*, i64** %Hp_Var
  %ln1Zj = ptrtoint i64* %ln1Zi to i64
  %ln1Zk = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln1Zl = bitcast i64* %ln1Zk to i64*
  %ln1Zm = load i64, i64* %ln1Zl, !tbaa !5
  %ln1Zn = icmp ugt i64 %ln1Zj, %ln1Zm
  %ln1Zo = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln1Zn, i1 0 )
  br i1 %ln1Zo, label %c1UK, label %c1UJ
c1UJ:
  %ln1Zq = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln1Zp = load i64*, i64** %Hp_Var
  %ln1Zr = getelementptr inbounds i64, i64* %ln1Zp, i32 -1
  store i64 %ln1Zq, i64* %ln1Zr, !tbaa !3
  %ln1Zs = load i64*, i64** %Hp_Var
  %ln1Zt = getelementptr inbounds i64, i64* %ln1Zs, i32 0
  store i64 0, i64* %ln1Zt, !tbaa !3
  %ln1Zv = load i64*, i64** %Hp_Var
  %ln1Zw = ptrtoint i64* %ln1Zv to i64
  %ln1Zx = add i64 %ln1Zw, -7
  store i64 %ln1Zx, i64* %lc1TQ
  %ln1Zz = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TR_info$def to i64
  %ln1Zy = load i64*, i64** %Sp_Var
  %ln1ZA = getelementptr inbounds i64, i64* %ln1Zy, i32 -2
  store i64 %ln1Zz, i64* %ln1ZA, !tbaa !2
  %ln1ZB = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_zdfEqInteger_closure to i64
  store i64 %ln1ZB, i64* %R2_Var
  %ln1ZD = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1ZC = load i64*, i64** %Sp_Var
  %ln1ZE = getelementptr inbounds i64, i64* %ln1ZC, i32 -5
  store i64 %ln1ZD, i64* %ln1ZE, !tbaa !2
  %ln1ZG = load i64, i64* %ls1Tu
  %ln1ZF = load i64*, i64** %Sp_Var
  %ln1ZH = getelementptr inbounds i64, i64* %ln1ZF, i32 -4
  store i64 %ln1ZG, i64* %ln1ZH, !tbaa !2
  %ln1ZJ = load i64, i64* %lc1TQ
  %ln1ZI = load i64*, i64** %Sp_Var
  %ln1ZK = getelementptr inbounds i64, i64* %ln1ZI, i32 -3
  store i64 %ln1ZJ, i64* %ln1ZK, !tbaa !2
  %ln1ZM = load i64, i64* %ls1Tu
  %ln1ZL = load i64*, i64** %Sp_Var
  %ln1ZN = getelementptr inbounds i64, i64* %ln1ZL, i32 -1
  store i64 %ln1ZM, i64* %ln1ZN, !tbaa !2
  %ln1ZO = load i64*, i64** %Sp_Var
  %ln1ZP = getelementptr inbounds i64, i64* %ln1ZO, i32 -5
  %ln1ZQ = ptrtoint i64* %ln1ZP to i64
  %ln1ZR = inttoptr i64 %ln1ZQ to i64*
  store i64* %ln1ZR, i64** %Sp_Var
  %ln1ZS = bitcast i8* @ghczmprim_GHCziClasses_zeze_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln1ZT = load i64*, i64** %Sp_Var
  %ln1ZU = load i64*, i64** %Hp_Var
  %ln1ZV = load i64, i64* %R1_Var
  %ln1ZW = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln1ZS( i64* %Base_Arg, i64* %ln1ZT, i64* %ln1ZU, i64 %ln1ZV, i64 %ln1ZW, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UK:
  %ln1ZX = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln1ZX, !tbaa !5
  br label %c1UH
c1UH:
  %ln1ZY = load i64, i64* %ls1Tu
  store i64 %ln1ZY, i64* %R2_Var
  %ln1ZZ = ptrtoint %rge_closure_struct* @rge_closure$def to i64
  store i64 %ln1ZZ, i64* %R1_Var
  %ln200 = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln201 = bitcast i64* %ln200 to i64*
  %ln202 = load i64, i64* %ln201, !tbaa !5
  %ln203 = inttoptr i64 %ln202 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln204 = load i64*, i64** %Sp_Var
  %ln205 = load i64*, i64** %Hp_Var
  %ln206 = load i64, i64* %R1_Var
  %ln207 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln203( i64* %Base_Arg, i64* %ln204, i64* %ln205, i64 %ln206, i64 %ln207, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c1TR_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TR_info$def to i8*)
define internal ghccc void @c1TR_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%rge_closure_struct* @rge_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TR_info$def to i64)) to i32),i32 0)}>
{
n208:
  %ls1Tu = alloca i64, i32 1
  %ls1TB = alloca i64, i32 1
  %lc1UF = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc1TV = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lc1V2 = alloca i64, i32 1
  br label %c1TR
c1TR:
  %ln209 = load i64*, i64** %Sp_Var
  %ln20a = getelementptr inbounds i64, i64* %ln209, i32 1
  %ln20b = bitcast i64* %ln20a to i64*
  %ln20c = load i64, i64* %ln20b, !tbaa !2
  store i64 %ln20c, i64* %ls1Tu
  %ln20d = load i64, i64* %R1_Var
  store i64 %ln20d, i64* %ls1TB
  %ln20e = load i64, i64* %ls1TB
  %ln20f = and i64 %ln20e, 7
  store i64 %ln20f, i64* %lc1UF
  %ln20g = load i64, i64* %lc1UF
  switch i64 %ln20g, label %c1UD [i64 1, label %c1UD
i64 2, label %c1UE]
c1UD:
  %ln20h = load i64*, i64** %Hp_Var
  %ln20i = getelementptr inbounds i64, i64* %ln20h, i32 2
  %ln20j = ptrtoint i64* %ln20i to i64
  %ln20k = inttoptr i64 %ln20j to i64*
  store i64* %ln20k, i64** %Hp_Var
  %ln20l = load i64*, i64** %Hp_Var
  %ln20m = ptrtoint i64* %ln20l to i64
  %ln20n = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln20o = bitcast i64* %ln20n to i64*
  %ln20p = load i64, i64* %ln20o, !tbaa !5
  %ln20q = icmp ugt i64 %ln20m, %ln20p
  %ln20r = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln20q, i1 0 )
  br i1 %ln20r, label %c1UN, label %c1UM
c1UM:
  %ln20t = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln20s = load i64*, i64** %Hp_Var
  %ln20u = getelementptr inbounds i64, i64* %ln20s, i32 -1
  store i64 %ln20t, i64* %ln20u, !tbaa !3
  %ln20v = load i64*, i64** %Hp_Var
  %ln20w = getelementptr inbounds i64, i64* %ln20v, i32 0
  store i64 1, i64* %ln20w, !tbaa !3
  %ln20y = load i64*, i64** %Hp_Var
  %ln20z = ptrtoint i64* %ln20y to i64
  %ln20A = add i64 %ln20z, -7
  store i64 %ln20A, i64* %lc1TV
  %ln20C = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TW_info$def to i64
  %ln20B = load i64*, i64** %Sp_Var
  %ln20D = getelementptr inbounds i64, i64* %ln20B, i32 0
  store i64 %ln20C, i64* %ln20D, !tbaa !2
  %ln20E = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_zdfEqInteger_closure to i64
  store i64 %ln20E, i64* %R2_Var
  %ln20G = ptrtoint i8* @stg_ap_pp_info to i64
  %ln20F = load i64*, i64** %Sp_Var
  %ln20H = getelementptr inbounds i64, i64* %ln20F, i32 -3
  store i64 %ln20G, i64* %ln20H, !tbaa !2
  %ln20J = load i64, i64* %ls1Tu
  %ln20I = load i64*, i64** %Sp_Var
  %ln20K = getelementptr inbounds i64, i64* %ln20I, i32 -2
  store i64 %ln20J, i64* %ln20K, !tbaa !2
  %ln20M = load i64, i64* %lc1TV
  %ln20L = load i64*, i64** %Sp_Var
  %ln20N = getelementptr inbounds i64, i64* %ln20L, i32 -1
  store i64 %ln20M, i64* %ln20N, !tbaa !2
  %ln20O = load i64*, i64** %Sp_Var
  %ln20P = getelementptr inbounds i64, i64* %ln20O, i32 -3
  %ln20Q = ptrtoint i64* %ln20P to i64
  %ln20R = inttoptr i64 %ln20Q to i64*
  store i64* %ln20R, i64** %Sp_Var
  %ln20S = bitcast i8* @ghczmprim_GHCziClasses_zeze_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln20T = load i64*, i64** %Sp_Var
  %ln20U = load i64*, i64** %Hp_Var
  %ln20V = load i64, i64* %R1_Var
  %ln20W = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln20S( i64* %Base_Arg, i64* %ln20T, i64* %ln20U, i64 %ln20V, i64 %ln20W, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UN:
  %ln20X = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln20X, !tbaa !5
  %ln20Y = load i64, i64* %ls1TB
  store i64 %ln20Y, i64* %R1_Var
  %ln20Z = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln210 = load i64*, i64** %Sp_Var
  %ln211 = load i64*, i64** %Hp_Var
  %ln212 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln20Z( i64* %Base_Arg, i64* %ln210, i64* %ln211, i64 %ln212, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UE:
  %ln213 = load i64*, i64** %Hp_Var
  %ln214 = getelementptr inbounds i64, i64* %ln213, i32 2
  %ln215 = ptrtoint i64* %ln214 to i64
  %ln216 = inttoptr i64 %ln215 to i64*
  store i64* %ln216, i64** %Hp_Var
  %ln217 = load i64*, i64** %Hp_Var
  %ln218 = ptrtoint i64* %ln217 to i64
  %ln219 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln21a = bitcast i64* %ln219 to i64*
  %ln21b = load i64, i64* %ln21a, !tbaa !5
  %ln21c = icmp ugt i64 %ln218, %ln21b
  %ln21d = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln21c, i1 0 )
  br i1 %ln21d, label %c1V5, label %c1V4
c1V4:
  %ln21f = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln21e = load i64*, i64** %Hp_Var
  %ln21g = getelementptr inbounds i64, i64* %ln21e, i32 -1
  store i64 %ln21f, i64* %ln21g, !tbaa !3
  %ln21h = load i64*, i64** %Hp_Var
  %ln21i = getelementptr inbounds i64, i64* %ln21h, i32 0
  store i64 0, i64* %ln21i, !tbaa !3
  %ln21k = load i64*, i64** %Hp_Var
  %ln21l = ptrtoint i64* %ln21k to i64
  %ln21m = add i64 %ln21l, -7
  store i64 %ln21m, i64* %lc1V2
  %ln21n = load i64, i64* %lc1V2
  store i64 %ln21n, i64* %R1_Var
  %ln21o = load i64*, i64** %Sp_Var
  %ln21p = getelementptr inbounds i64, i64* %ln21o, i32 2
  %ln21q = ptrtoint i64* %ln21p to i64
  %ln21r = inttoptr i64 %ln21q to i64*
  store i64* %ln21r, i64** %Sp_Var
  %ln21s = load i64*, i64** %Sp_Var
  %ln21t = getelementptr inbounds i64, i64* %ln21s, i32 0
  %ln21u = bitcast i64* %ln21t to i64*
  %ln21v = load i64, i64* %ln21u, !tbaa !2
  %ln21w = inttoptr i64 %ln21v to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln21x = load i64*, i64** %Sp_Var
  %ln21y = load i64*, i64** %Hp_Var
  %ln21z = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln21w( i64* %Base_Arg, i64* %ln21x, i64* %ln21y, i64 %ln21z, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1V5:
  %ln21A = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln21A, !tbaa !5
  %ln21B = load i64, i64* %ls1TB
  store i64 %ln21B, i64* %R1_Var
  %ln21C = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln21D = load i64*, i64** %Sp_Var
  %ln21E = load i64*, i64** %Hp_Var
  %ln21F = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln21C( i64* %Base_Arg, i64* %ln21D, i64* %ln21E, i64 %ln21F, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c1TW_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TW_info$def to i8*)
define internal ghccc void @c1TW_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%rge_closure_struct* @rge_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c1TW_info$def to i64)) to i32),i32 0)}>
{
n21G:
  %ls1Tu = alloca i64, i32 1
  %ls1TD = alloca i64, i32 1
  %lc1V6 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lc1U0 = alloca i64, i32 1
  %lc1Uj = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lc1UV = alloca i64, i32 1
  br label %c1TW
c1TW:
  %ln21H = load i64*, i64** %Sp_Var
  %ln21I = getelementptr inbounds i64, i64* %ln21H, i32 1
  %ln21J = bitcast i64* %ln21I to i64*
  %ln21K = load i64, i64* %ln21J, !tbaa !2
  store i64 %ln21K, i64* %ls1Tu
  %ln21L = load i64, i64* %R1_Var
  store i64 %ln21L, i64* %ls1TD
  %ln21M = load i64, i64* %ls1TD
  %ln21N = and i64 %ln21M, 7
  store i64 %ln21N, i64* %lc1V6
  %ln21O = load i64, i64* %lc1V6
  switch i64 %ln21O, label %c1UP [i64 1, label %c1UP
i64 2, label %c1UW]
c1UP:
  %ln21P = load i64*, i64** %Hp_Var
  %ln21Q = getelementptr inbounds i64, i64* %ln21P, i32 6
  %ln21R = ptrtoint i64* %ln21Q to i64
  %ln21S = inttoptr i64 %ln21R to i64*
  store i64* %ln21S, i64** %Hp_Var
  %ln21T = load i64*, i64** %Hp_Var
  %ln21U = ptrtoint i64* %ln21T to i64
  %ln21V = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln21W = bitcast i64* %ln21V to i64*
  %ln21X = load i64, i64* %ln21W, !tbaa !5
  %ln21Y = icmp ugt i64 %ln21U, %ln21X
  %ln21Z = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln21Y, i1 0 )
  br i1 %ln21Z, label %c1US, label %c1UR
c1UR:
  %ln221 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TJ_info$def to i64
  %ln220 = load i64*, i64** %Hp_Var
  %ln222 = getelementptr inbounds i64, i64* %ln220, i32 -5
  store i64 %ln221, i64* %ln222, !tbaa !3
  %ln224 = load i64, i64* %ls1Tu
  %ln223 = load i64*, i64** %Hp_Var
  %ln225 = getelementptr inbounds i64, i64* %ln223, i32 -3
  store i64 %ln224, i64* %ln225, !tbaa !3
  %ln226 = load i64*, i64** %Hp_Var
  %ln227 = getelementptr inbounds i64, i64* %ln226, i32 -5
  %ln228 = ptrtoint i64* %ln227 to i64
  store i64 %ln228, i64* %lc1U0
  %ln22a = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TG_info$def to i64
  %ln229 = load i64*, i64** %Hp_Var
  %ln22b = getelementptr inbounds i64, i64* %ln229, i32 -2
  store i64 %ln22a, i64* %ln22b, !tbaa !3
  %ln22d = load i64, i64* %ls1Tu
  %ln22c = load i64*, i64** %Hp_Var
  %ln22e = getelementptr inbounds i64, i64* %ln22c, i32 0
  store i64 %ln22d, i64* %ln22e, !tbaa !3
  %ln22f = load i64*, i64** %Hp_Var
  %ln22g = getelementptr inbounds i64, i64* %ln22f, i32 -2
  %ln22h = ptrtoint i64* %ln22g to i64
  store i64 %ln22h, i64* %lc1Uj
  %ln22i = ptrtoint i8* @base_GHCziNum_zdfNumInteger_closure to i64
  store i64 %ln22i, i64* %R2_Var
  %ln22k = ptrtoint i8* @stg_ap_pp_info to i64
  %ln22j = load i64*, i64** %Sp_Var
  %ln22l = getelementptr inbounds i64, i64* %ln22j, i32 -1
  store i64 %ln22k, i64* %ln22l, !tbaa !2
  %ln22n = load i64, i64* %lc1Uj
  %ln22m = load i64*, i64** %Sp_Var
  %ln22o = getelementptr inbounds i64, i64* %ln22m, i32 0
  store i64 %ln22n, i64* %ln22o, !tbaa !2
  %ln22q = load i64, i64* %lc1U0
  %ln22p = load i64*, i64** %Sp_Var
  %ln22r = getelementptr inbounds i64, i64* %ln22p, i32 1
  store i64 %ln22q, i64* %ln22r, !tbaa !2
  %ln22s = load i64*, i64** %Sp_Var
  %ln22t = getelementptr inbounds i64, i64* %ln22s, i32 -1
  %ln22u = ptrtoint i64* %ln22t to i64
  %ln22v = inttoptr i64 %ln22u to i64*
  store i64* %ln22v, i64** %Sp_Var
  %ln22w = bitcast i8* @base_GHCziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln22x = load i64*, i64** %Sp_Var
  %ln22y = load i64*, i64** %Hp_Var
  %ln22z = load i64, i64* %R1_Var
  %ln22A = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln22w( i64* %Base_Arg, i64* %ln22x, i64* %ln22y, i64 %ln22z, i64 %ln22A, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1US:
  %ln22B = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 48, i64* %ln22B, !tbaa !5
  %ln22C = load i64, i64* %ls1TD
  store i64 %ln22C, i64* %R1_Var
  %ln22D = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln22E = load i64*, i64** %Sp_Var
  %ln22F = load i64*, i64** %Hp_Var
  %ln22G = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln22D( i64* %Base_Arg, i64* %ln22E, i64* %ln22F, i64 %ln22G, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UW:
  %ln22H = load i64*, i64** %Hp_Var
  %ln22I = getelementptr inbounds i64, i64* %ln22H, i32 2
  %ln22J = ptrtoint i64* %ln22I to i64
  %ln22K = inttoptr i64 %ln22J to i64*
  store i64* %ln22K, i64** %Hp_Var
  %ln22L = load i64*, i64** %Hp_Var
  %ln22M = ptrtoint i64* %ln22L to i64
  %ln22N = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln22O = bitcast i64* %ln22N to i64*
  %ln22P = load i64, i64* %ln22O, !tbaa !5
  %ln22Q = icmp ugt i64 %ln22M, %ln22P
  %ln22R = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln22Q, i1 0 )
  br i1 %ln22R, label %c1UZ, label %c1UY
c1UY:
  %ln22T = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln22S = load i64*, i64** %Hp_Var
  %ln22U = getelementptr inbounds i64, i64* %ln22S, i32 -1
  store i64 %ln22T, i64* %ln22U, !tbaa !3
  %ln22V = load i64*, i64** %Hp_Var
  %ln22W = getelementptr inbounds i64, i64* %ln22V, i32 0
  store i64 1, i64* %ln22W, !tbaa !3
  %ln22Y = load i64*, i64** %Hp_Var
  %ln22Z = ptrtoint i64* %ln22Y to i64
  %ln230 = add i64 %ln22Z, -7
  store i64 %ln230, i64* %lc1UV
  %ln231 = load i64, i64* %lc1UV
  store i64 %ln231, i64* %R1_Var
  %ln232 = load i64*, i64** %Sp_Var
  %ln233 = getelementptr inbounds i64, i64* %ln232, i32 2
  %ln234 = ptrtoint i64* %ln233 to i64
  %ln235 = inttoptr i64 %ln234 to i64*
  store i64* %ln235, i64** %Sp_Var
  %ln236 = load i64*, i64** %Sp_Var
  %ln237 = getelementptr inbounds i64, i64* %ln236, i32 0
  %ln238 = bitcast i64* %ln237 to i64*
  %ln239 = load i64, i64* %ln238, !tbaa !2
  %ln23a = inttoptr i64 %ln239 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln23b = load i64*, i64** %Sp_Var
  %ln23c = load i64*, i64** %Hp_Var
  %ln23d = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln23a( i64* %Base_Arg, i64* %ln23b, i64* %ln23c, i64 %ln23d, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c1UZ:
  %ln23e = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln23e, !tbaa !5
  %ln23f = load i64, i64* %ls1TD
  store i64 %ln23f, i64* %R1_Var
  %ln23g = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln23h = load i64*, i64** %Sp_Var
  %ln23i = load i64*, i64** %Hp_Var
  %ln23j = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln23g( i64* %Base_Arg, i64* %ln23h, i64* %ln23i, i64 %ln23j, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%s1TL_closure_struct = type <{i64, i64, i64, i64}>
@s1TL_closure$def = internal global %s1TL_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TL_info$def to i64), i64 0, i64 0, i64 0}>
@s1TL_closure = internal alias i8, bitcast (%s1TL_closure_struct* @s1TL_closure$def to i8*)
@s1TL_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TL_info$def to i8*)
define internal ghccc void @s1TL_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%rge_closure_struct* @rge_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @s1TL_info$def to i64)) to i32),i32 0)}>
{
n23w:
  %ls1TL = alloca i64, i32 1
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
  %lc23n = alloca i64, i32 1
  %lc23q = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c23r
c23r:
  %ln23x = load i64, i64* %R1_Var
  store i64 %ln23x, i64* %ls1TL
  %ln23y = load i64*, i64** %Sp_Var
  %ln23z = getelementptr inbounds i64, i64* %ln23y, i32 1
  %ln23A = ptrtoint i64* %ln23z to i64
  %ln23B = sub i64 %ln23A, 24
  %ln23C = icmp ult i64 %ln23B, %SpLim_Arg
  %ln23D = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln23C, i1 0 )
  br i1 %ln23D, label %c23s, label %c23t
c23t:
  %ln23E = load i64*, i64** %Hp_Var
  %ln23F = getelementptr inbounds i64, i64* %ln23E, i32 2
  %ln23G = ptrtoint i64* %ln23F to i64
  %ln23H = inttoptr i64 %ln23G to i64*
  store i64* %ln23H, i64** %Hp_Var
  %ln23I = load i64*, i64** %Hp_Var
  %ln23J = ptrtoint i64* %ln23I to i64
  %ln23K = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln23L = bitcast i64* %ln23K to i64*
  %ln23M = load i64, i64* %ln23L, !tbaa !5
  %ln23N = icmp ugt i64 %ln23J, %ln23M
  %ln23O = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln23N, i1 0 )
  br i1 %ln23O, label %c23v, label %c23u
c23u:
  %ln23P = ptrtoint i64* %Base_Arg to i64
  %ln23Q = inttoptr i64 %ln23P to i8*
  %ln23R = load i64, i64* %ls1TL
  %ln23S = inttoptr i64 %ln23R to i8*
  %ln23T = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln23U = call ccc i8* (i8*, i8*) %ln23T( i8* %ln23Q, i8* %ln23S ) nounwind
  %ln23V = ptrtoint i8* %ln23U to i64
  store i64 %ln23V, i64* %lc23n
  %ln23W = load i64, i64* %lc23n
  %ln23X = icmp eq i64 %ln23W, 0
  br i1 %ln23X, label %c23p, label %c23o
c23o:
  %ln23Z = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln23Y = load i64*, i64** %Sp_Var
  %ln240 = getelementptr inbounds i64, i64* %ln23Y, i32 -2
  store i64 %ln23Z, i64* %ln240, !tbaa !2
  %ln242 = load i64, i64* %lc23n
  %ln241 = load i64*, i64** %Sp_Var
  %ln243 = getelementptr inbounds i64, i64* %ln241, i32 -1
  store i64 %ln242, i64* %ln243, !tbaa !2
  %ln245 = ptrtoint i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64
  %ln244 = load i64*, i64** %Hp_Var
  %ln246 = getelementptr inbounds i64, i64* %ln244, i32 -1
  store i64 %ln245, i64* %ln246, !tbaa !3
  %ln247 = load i64*, i64** %Hp_Var
  %ln248 = getelementptr inbounds i64, i64* %ln247, i32 0
  store i64 5, i64* %ln248, !tbaa !3
  %ln24a = load i64*, i64** %Hp_Var
  %ln24b = ptrtoint i64* %ln24a to i64
  %ln24c = add i64 %ln24b, -7
  store i64 %ln24c, i64* %lc23q
  %ln24d = load i64, i64* %lc23q
  store i64 %ln24d, i64* %R2_Var
  %ln24e = load i64*, i64** %Sp_Var
  %ln24f = getelementptr inbounds i64, i64* %ln24e, i32 -2
  %ln24g = ptrtoint i64* %ln24f to i64
  %ln24h = inttoptr i64 %ln24g to i64*
  store i64* %ln24h, i64** %Sp_Var
  %ln24i = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @rge_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln24j = load i64*, i64** %Sp_Var
  %ln24k = load i64*, i64** %Hp_Var
  %ln24l = load i64, i64* %R1_Var
  %ln24m = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln24i( i64* %Base_Arg, i64* %ln24j, i64* %ln24k, i64 %ln24l, i64 %ln24m, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c23p:
  %ln24n = load i64, i64* %ls1TL
  %ln24o = inttoptr i64 %ln24n to i64*
  %ln24p = load i64, i64* %ln24o, !tbaa !1
  %ln24q = inttoptr i64 %ln24p to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln24r = load i64*, i64** %Sp_Var
  %ln24s = load i64*, i64** %Hp_Var
  %ln24t = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln24q( i64* %Base_Arg, i64* %ln24r, i64* %ln24s, i64 %ln24t, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c23v:
  %ln24u = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %ln24u, !tbaa !5
  br label %c23s
c23s:
  %ln24v = load i64, i64* %ls1TL
  store i64 %ln24v, i64* %R1_Var
  %ln24w = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln24x = bitcast i64* %ln24w to i64*
  %ln24y = load i64, i64* %ln24x, !tbaa !5
  %ln24z = inttoptr i64 %ln24y to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln24A = load i64*, i64** %Sp_Var
  %ln24B = load i64*, i64** %Hp_Var
  %ln24C = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln24z( i64* %Base_Arg, i64* %ln24A, i64* %ln24B, i64 %ln24C, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u24M_srt_struct = type <{i64, i64, i64, i64, i64}>
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@_u24M_srt$def = internal global %_u24M_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_SystemziIO_print_closure to i64), i64 ptrtoint (i8* @base_GHCziShow_zdfShowInteger_closure to i64), i64 ptrtoint (%s1TL_closure_struct* @s1TL_closure$def to i64), i64 0}>
@_u24M_srt = internal alias i8, bitcast (%_u24M_srt_struct* @_u24M_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u24M_srt_struct* @_u24M_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
n24N:
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
  %lc24G = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c24J
c24J:
  %ln24O = load i64, i64* %R1_Var
  store i64 %ln24O, i64* %lr1
  %ln24P = load i64*, i64** %Sp_Var
  %ln24Q = getelementptr inbounds i64, i64* %ln24P, i32 1
  %ln24R = ptrtoint i64* %ln24Q to i64
  %ln24S = sub i64 %ln24R, 24
  %ln24T = icmp ult i64 %ln24S, %SpLim_Arg
  %ln24U = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln24T, i1 0 )
  br i1 %ln24U, label %c24K, label %c24L
c24L:
  %ln24V = ptrtoint i64* %Base_Arg to i64
  %ln24W = inttoptr i64 %ln24V to i8*
  %ln24X = load i64, i64* %lr1
  %ln24Y = inttoptr i64 %ln24X to i8*
  %ln24Z = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln250 = call ccc i8* (i8*, i8*) %ln24Z( i8* %ln24W, i8* %ln24Y ) nounwind
  %ln251 = ptrtoint i8* %ln250 to i64
  store i64 %ln251, i64* %lc24G
  %ln252 = load i64, i64* %lc24G
  %ln253 = icmp eq i64 %ln252, 0
  br i1 %ln253, label %c24I, label %c24H
c24H:
  %ln255 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln254 = load i64*, i64** %Sp_Var
  %ln256 = getelementptr inbounds i64, i64* %ln254, i32 -2
  store i64 %ln255, i64* %ln256, !tbaa !2
  %ln258 = load i64, i64* %lc24G
  %ln257 = load i64*, i64** %Sp_Var
  %ln259 = getelementptr inbounds i64, i64* %ln257, i32 -1
  store i64 %ln258, i64* %ln259, !tbaa !2
  %ln25a = ptrtoint %s1TL_closure_struct* @s1TL_closure$def to i64
  store i64 %ln25a, i64* %R3_Var
  %ln25b = ptrtoint i8* @base_GHCziShow_zdfShowInteger_closure to i64
  store i64 %ln25b, i64* %R2_Var
  %ln25c = ptrtoint i8* @base_SystemziIO_print_closure to i64
  store i64 %ln25c, i64* %R1_Var
  %ln25d = load i64*, i64** %Sp_Var
  %ln25e = getelementptr inbounds i64, i64* %ln25d, i32 -2
  %ln25f = ptrtoint i64* %ln25e to i64
  %ln25g = inttoptr i64 %ln25f to i64*
  store i64* %ln25g, i64** %Sp_Var
  %ln25h = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln25i = load i64*, i64** %Sp_Var
  %ln25j = load i64, i64* %R1_Var
  %ln25k = load i64, i64* %R2_Var
  %ln25l = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln25h( i64* %Base_Arg, i64* %ln25i, i64* %Hp_Arg, i64 %ln25j, i64 %ln25k, i64 %ln25l, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c24I:
  %ln25m = load i64, i64* %lr1
  %ln25n = inttoptr i64 %ln25m to i64*
  %ln25o = load i64, i64* %ln25n, !tbaa !1
  %ln25p = inttoptr i64 %ln25o to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln25q = load i64*, i64** %Sp_Var
  %ln25r = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln25p( i64* %Base_Arg, i64* %ln25q, i64* %Hp_Arg, i64 %ln25r, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c24K:
  %ln25s = load i64, i64* %lr1
  store i64 %ln25s, i64* %R1_Var
  %ln25t = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln25u = bitcast i64* %ln25t to i64*
  %ln25v = load i64, i64* %ln25u, !tbaa !5
  %ln25w = inttoptr i64 %ln25v to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln25x = load i64*, i64** %Sp_Var
  %ln25y = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln25w( i64* %Base_Arg, i64* %ln25x, i64* %Hp_Arg, i64 %ln25y, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u25I_srt_struct = type <{i64, i64, i64, i64}>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@_u25I_srt$def = internal global %_u25I_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64), i64 0}>
@_u25I_srt = internal alias i8, bitcast (%_u25I_srt_struct* @_u25I_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u25I_srt_struct* @_u25I_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
n25J:
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
  %lc25C = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c25F
c25F:
  %ln25K = load i64, i64* %R1_Var
  store i64 %ln25K, i64* %l01D
  %ln25L = load i64*, i64** %Sp_Var
  %ln25M = getelementptr inbounds i64, i64* %ln25L, i32 1
  %ln25N = ptrtoint i64* %ln25M to i64
  %ln25O = sub i64 %ln25N, 24
  %ln25P = icmp ult i64 %ln25O, %SpLim_Arg
  %ln25Q = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln25P, i1 0 )
  br i1 %ln25Q, label %c25G, label %c25H
c25H:
  %ln25R = ptrtoint i64* %Base_Arg to i64
  %ln25S = inttoptr i64 %ln25R to i8*
  %ln25T = load i64, i64* %l01D
  %ln25U = inttoptr i64 %ln25T to i8*
  %ln25V = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln25W = call ccc i8* (i8*, i8*) %ln25V( i8* %ln25S, i8* %ln25U ) nounwind
  %ln25X = ptrtoint i8* %ln25W to i64
  store i64 %ln25X, i64* %lc25C
  %ln25Y = load i64, i64* %lc25C
  %ln25Z = icmp eq i64 %ln25Y, 0
  br i1 %ln25Z, label %c25E, label %c25D
c25D:
  %ln261 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln260 = load i64*, i64** %Sp_Var
  %ln262 = getelementptr inbounds i64, i64* %ln260, i32 -2
  store i64 %ln261, i64* %ln262, !tbaa !2
  %ln264 = load i64, i64* %lc25C
  %ln263 = load i64*, i64** %Sp_Var
  %ln265 = getelementptr inbounds i64, i64* %ln263, i32 -1
  store i64 %ln264, i64* %ln265, !tbaa !2
  %ln266 = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %ln266, i64* %R2_Var
  %ln267 = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %ln267, i64* %R1_Var
  %ln268 = load i64*, i64** %Sp_Var
  %ln269 = getelementptr inbounds i64, i64* %ln268, i32 -2
  %ln26a = ptrtoint i64* %ln269 to i64
  %ln26b = inttoptr i64 %ln26a to i64*
  store i64* %ln26b, i64** %Sp_Var
  %ln26c = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln26d = load i64*, i64** %Sp_Var
  %ln26e = load i64, i64* %R1_Var
  %ln26f = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln26c( i64* %Base_Arg, i64* %ln26d, i64* %Hp_Arg, i64 %ln26e, i64 %ln26f, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c25E:
  %ln26g = load i64, i64* %l01D
  %ln26h = inttoptr i64 %ln26g to i64*
  %ln26i = load i64, i64* %ln26h, !tbaa !1
  %ln26j = inttoptr i64 %ln26i to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln26k = load i64*, i64** %Sp_Var
  %ln26l = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln26j( i64* %Base_Arg, i64* %ln26k, i64* %Hp_Arg, i64 %ln26l, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c25G:
  %ln26m = load i64, i64* %l01D
  store i64 %ln26m, i64* %R1_Var
  %ln26n = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln26o = bitcast i64* %ln26n to i64*
  %ln26p = load i64, i64* %ln26o, !tbaa !5
  %ln26q = inttoptr i64 %ln26p to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln26r = load i64*, i64** %Sp_Var
  %ln26s = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln26q( i64* %Base_Arg, i64* %ln26r, i64* %Hp_Arg, i64 %ln26s, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@base_GHCziNum_zdfNumInteger_closure = external global i8
@integerzmwiredzmin_GHCziIntegerziType_zdfEqInteger_closure = external global i8
@stg_upd_frame_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_Szh_con_info = external global i8
@stg_ap_pp_info = external global i8
@base_GHCziNum_zm_info = external global i8
@ghczmprim_GHCziClasses_zeze_info = external global i8
@stg_gc_unpt_r1 = external global i8
@base_GHCziNum_zp_info = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@stg_SRT_3_info = external global i8
@base_SystemziIO_print_closure = external global i8
@base_GHCziShow_zdfShowInteger_closure = external global i8
@stg_ap_pp_fast = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@llvm.used = appending constant [11 x i8*] [i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%_u25I_srt_struct* @_u25I_srt$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%_u24M_srt_struct* @_u24M_srt$def to i8*), i8* bitcast (%s1TL_closure_struct* @s1TL_closure$def to i8*), i8* bitcast (%rge_closure_struct* @rge_closure$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%r1Ts_closure_struct* @r1Ts_closure$def to i8*), i8* bitcast (%r1Tr_bytes_struct* @r1Tr_bytes$def to i8*), i8* bitcast (%r1Tq_closure_struct* @r1Tq_closure$def to i8*), i8* bitcast (%r1Sv_bytes_struct* @r1Sv_bytes$def to i8*)], section "llvm.metadata"
