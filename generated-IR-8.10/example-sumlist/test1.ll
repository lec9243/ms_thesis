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

%r2Db_closure_struct = type <{i64, i64}>
@r2Db_closure$def = internal global %r2Db_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 1}>
@r2Db_closure = internal alias i8, bitcast (%r2Db_closure_struct* @r2Db_closure$def to i8*)
%r2Dc_closure_struct = type <{i64, i64}>
@r2Dc_closure$def = internal global %r2Dc_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 0}>
@r2Dc_closure = internal alias i8, bitcast (%r2Dc_closure_struct* @r2Dc_closure$def to i8*)
%r2Dd_closure_struct = type <{i64, i64}>
@r2Dd_closure$def = internal global %r2Dd_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 2}>
@r2Dd_closure = internal alias i8, bitcast (%r2Dd_closure_struct* @r2Dd_closure$def to i8*)
%Main_mainzux_closure_struct = type <{i64, i64}>
@Main_mainzux_closure$def = internal global %Main_mainzux_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 8}>
@Main_mainzux_closure = alias i8, bitcast (%Main_mainzux_closure_struct* @Main_mainzux_closure$def to i8*)
%r2De_closure_struct = type <{i64, i64, i64, i64, i64, i64}>
%Main_mainzufib_closure_struct = type <{i64, i64}>
@r2De_closure$def = internal global %r2De_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2De_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @Main_mainzufib_closure to i64), i64 0}>
@r2De_closure = internal alias i8, bitcast (%r2De_closure_struct* @r2De_closure$def to i8*)
@Main_mainzufib_closure$def = internal global %Main_mainzufib_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i64), i64 0}>
@Main_mainzufib_closure = alias i8, bitcast (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i8*)
@r2De_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2De_info$def to i8*)
define internal ghccc void @r2De_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 4, i32 14, i32 0}>
{
n2Fb:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dl = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Eg
c2Eg:
  %ln2Fc = load i64*, i64** %Sp_Var
  %ln2Fd = getelementptr inbounds i64, i64* %ln2Fc, i32 -2
  %ln2Fe = ptrtoint i64* %ln2Fd to i64
  %ln2Ff = icmp ult i64 %ln2Fe, %SpLim_Arg
  %ln2Fh = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Ff, i1 0 )
  br i1 %ln2Fh, label %c2Eh, label %c2Ei
c2Ei:
  %ln2Fj = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eb_info$def to i64
  %ln2Fi = load i64*, i64** %Sp_Var
  %ln2Fk = getelementptr inbounds i64, i64* %ln2Fi, i32 -2
  store i64 %ln2Fj, i64* %ln2Fk, !tbaa !2
  %ln2Fl = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2Fm = add i64 %ln2Fl, 1
  store i64 %ln2Fm, i64* %R3_Var
  %ln2Fn = load i64, i64* %R2_Var
  store i64 %ln2Fn, i64* %ls2Dl
  %ln2Fo = load i64, i64* %R2_Var
  store i64 %ln2Fo, i64* %R2_Var
  %ln2Fq = load i64, i64* %ls2Dl
  %ln2Fp = load i64*, i64** %Sp_Var
  %ln2Fr = getelementptr inbounds i64, i64* %ln2Fp, i32 -1
  store i64 %ln2Fq, i64* %ln2Fr, !tbaa !2
  %ln2Fs = load i64*, i64** %Sp_Var
  %ln2Ft = getelementptr inbounds i64, i64* %ln2Fs, i32 -2
  %ln2Fu = ptrtoint i64* %ln2Ft to i64
  %ln2Fv = inttoptr i64 %ln2Fu to i64*
  store i64* %ln2Fv, i64** %Sp_Var
  %ln2Fw = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Fx = load i64*, i64** %Sp_Var
  %ln2Fy = load i64, i64* %R1_Var
  %ln2Fz = load i64, i64* %R2_Var
  %ln2FA = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Fw( i64* %Base_Arg, i64* %ln2Fx, i64* %Hp_Arg, i64 %ln2Fy, i64 %ln2Fz, i64 %ln2FA, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Eh:
  %ln2FB = load i64, i64* %R2_Var
  store i64 %ln2FB, i64* %R2_Var
  %ln2FC = ptrtoint %r2De_closure_struct* @r2De_closure$def to i64
  store i64 %ln2FC, i64* %R1_Var
  %ln2FD = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2FE = bitcast i64* %ln2FD to i64*
  %ln2FF = load i64, i64* %ln2FE, !tbaa !5
  %ln2FG = inttoptr i64 %ln2FF to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2FH = load i64*, i64** %Sp_Var
  %ln2FI = load i64, i64* %R1_Var
  %ln2FJ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2FG( i64* %Base_Arg, i64* %ln2FH, i64* %Hp_Arg, i64 %ln2FI, i64 %ln2FJ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@c2Eb_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eb_info$def to i8*)
define internal ghccc void @c2Eb_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eb_info$def to i64)) to i32),i32 0)}>
{
n2FK:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Eb
c2Eb:
  %ln2FL = load i64, i64* %R1_Var
  switch i64 %ln2FL, label %c2Ee [i64 1, label %c2Ef]
c2Ee:
  %ln2FN = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i64
  %ln2FM = load i64*, i64** %Sp_Var
  %ln2FO = getelementptr inbounds i64, i64* %ln2FM, i32 0
  store i64 %ln2FN, i64* %ln2FO, !tbaa !2
  %ln2FP = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2FQ = add i64 %ln2FP, 1
  store i64 %ln2FQ, i64* %R3_Var
  %ln2FR = load i64*, i64** %Sp_Var
  %ln2FS = getelementptr inbounds i64, i64* %ln2FR, i32 1
  %ln2FT = bitcast i64* %ln2FS to i64*
  %ln2FU = load i64, i64* %ln2FT, !tbaa !2
  store i64 %ln2FU, i64* %R2_Var
  %ln2FV = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2FW = load i64*, i64** %Sp_Var
  %ln2FX = load i64, i64* %R1_Var
  %ln2FY = load i64, i64* %R2_Var
  %ln2FZ = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2FV( i64* %Base_Arg, i64* %ln2FW, i64* %Hp_Arg, i64 %ln2FX, i64 %ln2FY, i64 %ln2FZ, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ef:
  %ln2G0 = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2G1 = add i64 %ln2G0, 1
  store i64 %ln2G1, i64* %R1_Var
  %ln2G2 = load i64*, i64** %Sp_Var
  %ln2G3 = getelementptr inbounds i64, i64* %ln2G2, i32 2
  %ln2G4 = ptrtoint i64* %ln2G3 to i64
  %ln2G5 = inttoptr i64 %ln2G4 to i64*
  store i64* %ln2G5, i64** %Sp_Var
  %ln2G6 = load i64*, i64** %Sp_Var
  %ln2G7 = getelementptr inbounds i64, i64* %ln2G6, i32 0
  %ln2G8 = bitcast i64* %ln2G7 to i64*
  %ln2G9 = load i64, i64* %ln2G8, !tbaa !2
  %ln2Ga = inttoptr i64 %ln2G9 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Gb = load i64*, i64** %Sp_Var
  %ln2Gc = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ga( i64* %Base_Arg, i64* %ln2Gb, i64* %Hp_Arg, i64 %ln2Gc, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2El_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i8*)
define internal ghccc void @c2El_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i64)) to i32),i32 0)}>
{
n2Gd:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2El
c2El:
  %ln2Ge = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ep_info$def to i64
  %ln2Gf = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Ge, i64* %ln2Gf, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Gg = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Gh = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Gg( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Gh, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ep_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ep_info$def to i8*)
define internal ghccc void @c2Ep_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ep_info$def to i64)) to i32),i32 0)}>
{
n2Gi:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Ep
c2Ep:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2Gj = load i64*, i64** %Sp_Var
  %ln2Gk = getelementptr inbounds i64, i64* %ln2Gj, i32 1
  %ln2Gl = bitcast i64* %ln2Gk to i64*
  %ln2Gm = load i64, i64* %ln2Gl, !tbaa !2
  store i64 %ln2Gm, i64* %R2_Var
  %ln2Gn = load i64*, i64** %Sp_Var
  %ln2Go = getelementptr inbounds i64, i64* %ln2Gn, i32 2
  %ln2Gp = ptrtoint i64* %ln2Go to i64
  %ln2Gq = inttoptr i64 %ln2Gp to i64*
  store i64* %ln2Gq, i64** %Sp_Var
  %ln2Gr = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Gs = load i64*, i64** %Sp_Var
  %ln2Gt = load i64, i64* %R2_Var
  %ln2Gu = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Gr( i64* %Base_Arg, i64* %ln2Gs, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Gt, i64 %ln2Gu, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_mainzufib_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i8*)
define ghccc void @Main_mainzufib_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i64)) to i32),i32 0)}>
{
n2Gv:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dp = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2EI
c2EI:
  %ln2Gw = load i64*, i64** %Sp_Var
  %ln2Gx = getelementptr inbounds i64, i64* %ln2Gw, i32 -2
  %ln2Gy = ptrtoint i64* %ln2Gx to i64
  %ln2Gz = icmp ult i64 %ln2Gy, %SpLim_Arg
  %ln2GA = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Gz, i1 0 )
  br i1 %ln2GA, label %c2EJ, label %c2EK
c2EK:
  %ln2GC = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ED_info$def to i64
  %ln2GB = load i64*, i64** %Sp_Var
  %ln2GD = getelementptr inbounds i64, i64* %ln2GB, i32 -2
  store i64 %ln2GC, i64* %ln2GD, !tbaa !2
  %ln2GE = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2GF = add i64 %ln2GE, 1
  store i64 %ln2GF, i64* %R3_Var
  %ln2GG = load i64, i64* %R2_Var
  store i64 %ln2GG, i64* %ls2Dp
  %ln2GH = load i64, i64* %R2_Var
  store i64 %ln2GH, i64* %R2_Var
  %ln2GJ = load i64, i64* %ls2Dp
  %ln2GI = load i64*, i64** %Sp_Var
  %ln2GK = getelementptr inbounds i64, i64* %ln2GI, i32 -1
  store i64 %ln2GJ, i64* %ln2GK, !tbaa !2
  %ln2GL = load i64*, i64** %Sp_Var
  %ln2GM = getelementptr inbounds i64, i64* %ln2GL, i32 -2
  %ln2GN = ptrtoint i64* %ln2GM to i64
  %ln2GO = inttoptr i64 %ln2GN to i64*
  store i64* %ln2GO, i64** %Sp_Var
  %ln2GP = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2GQ = load i64*, i64** %Sp_Var
  %ln2GR = load i64, i64* %R1_Var
  %ln2GS = load i64, i64* %R2_Var
  %ln2GT = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2GP( i64* %Base_Arg, i64* %ln2GQ, i64* %Hp_Arg, i64 %ln2GR, i64 %ln2GS, i64 %ln2GT, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2EJ:
  %ln2GU = load i64, i64* %R2_Var
  store i64 %ln2GU, i64* %R2_Var
  %ln2GV = ptrtoint %Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i64
  store i64 %ln2GV, i64* %R1_Var
  %ln2GW = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2GX = bitcast i64* %ln2GW to i64*
  %ln2GY = load i64, i64* %ln2GX, !tbaa !5
  %ln2GZ = inttoptr i64 %ln2GY to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2H0 = load i64*, i64** %Sp_Var
  %ln2H1 = load i64, i64* %R1_Var
  %ln2H2 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2GZ( i64* %Base_Arg, i64* %ln2H0, i64* %Hp_Arg, i64 %ln2H1, i64 %ln2H2, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2ED_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ED_info$def to i8*)
define internal ghccc void @c2ED_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ED_info$def to i64)) to i32),i32 0)}>
{
n2H3:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2ED
c2ED:
  %ln2H4 = load i64, i64* %R1_Var
  switch i64 %ln2H4, label %c2EG [i64 1, label %c2EH]
c2EG:
  %ln2H6 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i64
  %ln2H5 = load i64*, i64** %Sp_Var
  %ln2H7 = getelementptr inbounds i64, i64* %ln2H5, i32 0
  store i64 %ln2H6, i64* %ln2H7, !tbaa !2
  %ln2H8 = ptrtoint %r2Dd_closure_struct* @r2Dd_closure$def to i64
  %ln2H9 = add i64 %ln2H8, 1
  store i64 %ln2H9, i64* %R3_Var
  %ln2Ha = load i64*, i64** %Sp_Var
  %ln2Hb = getelementptr inbounds i64, i64* %ln2Ha, i32 1
  %ln2Hc = bitcast i64* %ln2Hb to i64*
  %ln2Hd = load i64, i64* %ln2Hc, !tbaa !2
  store i64 %ln2Hd, i64* %R2_Var
  %ln2He = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Hf = load i64*, i64** %Sp_Var
  %ln2Hg = load i64, i64* %R1_Var
  %ln2Hh = load i64, i64* %R2_Var
  %ln2Hi = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2He( i64* %Base_Arg, i64* %ln2Hf, i64* %Hp_Arg, i64 %ln2Hg, i64 %ln2Hh, i64 %ln2Hi, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2EH:
  %ln2Hj = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2Hk = add i64 %ln2Hj, 1
  store i64 %ln2Hk, i64* %R1_Var
  %ln2Hl = load i64*, i64** %Sp_Var
  %ln2Hm = getelementptr inbounds i64, i64* %ln2Hl, i32 2
  %ln2Hn = ptrtoint i64* %ln2Hm to i64
  %ln2Ho = inttoptr i64 %ln2Hn to i64*
  store i64* %ln2Ho, i64** %Sp_Var
  %ln2Hp = load i64*, i64** %Sp_Var
  %ln2Hq = getelementptr inbounds i64, i64* %ln2Hp, i32 0
  %ln2Hr = bitcast i64* %ln2Hq to i64*
  %ln2Hs = load i64, i64* %ln2Hr, !tbaa !2
  %ln2Ht = inttoptr i64 %ln2Hs to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Hu = load i64*, i64** %Sp_Var
  %ln2Hv = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ht( i64* %Base_Arg, i64* %ln2Hu, i64* %Hp_Arg, i64 %ln2Hv, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EN_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i8*)
define internal ghccc void @c2EN_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i64)) to i32),i32 0)}>
{
n2Hw:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2EN
c2EN:
  %ln2Hx = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i64
  %ln2Hy = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Hx, i64* %ln2Hy, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Hz = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2De_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HA = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Hz( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HA, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2ER_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i8*)
define internal ghccc void @c2ER_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i64)) to i32),i32 0)}>
{
n2HB:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2ER
c2ER:
  %ln2HC = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i64
  %ln2HD = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2HC, i64* %ln2HD, !tbaa !2
  %ln2HE = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2HF = add i64 %ln2HE, 1
  store i64 %ln2HF, i64* %R3_Var
  %ln2HG = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2HH = bitcast i64* %ln2HG to i64*
  %ln2HI = load i64, i64* %ln2HH, !tbaa !2
  store i64 %ln2HI, i64* %R2_Var
  %ln2HJ = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2HJ, !tbaa !2
  %ln2HK = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HL = load i64, i64* %R2_Var
  %ln2HM = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2HK( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HL, i64 %ln2HM, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EV_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i8*)
define internal ghccc void @c2EV_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2De_closure_struct* @r2De_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i64)) to i32),i32 0)}>
{
n2HN:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2EV
c2EV:
  %ln2HO = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EZ_info$def to i64
  %ln2HP = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2HO, i64* %ln2HP, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2HQ = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2De_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HR = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2HQ( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HR, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EZ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EZ_info$def to i8*)
define internal ghccc void @c2EZ_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EZ_info$def to i64)) to i32),i32 0)}>
{
n2HS:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2EZ
c2EZ:
  %ln2HT = load i64*, i64** %Sp_Var
  %ln2HU = getelementptr inbounds i64, i64* %ln2HT, i32 1
  %ln2HV = bitcast i64* %ln2HU to i64*
  %ln2HW = load i64, i64* %ln2HV, !tbaa !2
  store i64 %ln2HW, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2HX = load i64*, i64** %Sp_Var
  %ln2HY = getelementptr inbounds i64, i64* %ln2HX, i32 2
  %ln2HZ = ptrtoint i64* %ln2HY to i64
  %ln2I0 = inttoptr i64 %ln2HZ to i64*
  store i64* %ln2I0, i64** %Sp_Var
  %ln2I1 = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2I2 = load i64*, i64** %Sp_Var
  %ln2I3 = load i64, i64* %R2_Var
  %ln2I4 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2I1( i64* %Base_Arg, i64* %ln2I2, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2I3, i64 %ln2I4, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2Ip_srt_struct = type <{i64, i64, i64, i64}>
%Main_main2_closure_struct = type <{i64, i64, i64, i64}>
@_u2Ip_srt$def = internal global %_u2Ip_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i64), i64 0}>
@_u2Ip_srt = internal alias i8, bitcast (%_u2Ip_srt_struct* @_u2Ip_srt$def to i8*)
@Main_main2_closure$def = internal global %Main_main2_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main2_closure = alias i8, bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*)
@Main_main2_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i8*)
define ghccc void @Main_main2_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Ip_srt_struct* @_u2Ip_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64)) to i32),i32 0)}>
{
n2Iq:
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
  %lc2I8 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Id
c2Id:
  %ln2Ir = load i64*, i64** %Sp_Var
  %ln2Is = getelementptr inbounds i64, i64* %ln2Ir, i32 -3
  %ln2It = ptrtoint i64* %ln2Is to i64
  %ln2Iu = icmp ult i64 %ln2It, %SpLim_Arg
  %ln2Iv = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Iu, i1 0 )
  br i1 %ln2Iv, label %c2Ij, label %c2Ik
c2Ik:
  %ln2Iw = ptrtoint i64* %Base_Arg to i64
  %ln2Ix = inttoptr i64 %ln2Iw to i8*
  %ln2Iy = load i64, i64* %R1_Var
  %ln2Iz = inttoptr i64 %ln2Iy to i8*
  %ln2IA = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2IB = call ccc i8* (i8*, i8*) %ln2IA( i8* %ln2Ix, i8* %ln2Iz ) nounwind
  %ln2IC = ptrtoint i8* %ln2IB to i64
  store i64 %ln2IC, i64* %lc2I8
  %ln2ID = load i64, i64* %lc2I8
  %ln2IE = icmp eq i64 %ln2ID, 0
  br i1 %ln2IE, label %c2Ia, label %c2I9
c2I9:
  %ln2IG = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2IF = load i64*, i64** %Sp_Var
  %ln2IH = getelementptr inbounds i64, i64* %ln2IF, i32 -2
  store i64 %ln2IG, i64* %ln2IH, !tbaa !2
  %ln2IJ = load i64, i64* %lc2I8
  %ln2II = load i64*, i64** %Sp_Var
  %ln2IK = getelementptr inbounds i64, i64* %ln2II, i32 -1
  store i64 %ln2IJ, i64* %ln2IK, !tbaa !2
  %ln2IM = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ib_info$def to i64
  %ln2IL = load i64*, i64** %Sp_Var
  %ln2IN = getelementptr inbounds i64, i64* %ln2IL, i32 -3
  store i64 %ln2IM, i64* %ln2IN, !tbaa !2
  %ln2IO = ptrtoint %Main_mainzux_closure_struct* @Main_mainzux_closure$def to i64
  %ln2IP = add i64 %ln2IO, 1
  store i64 %ln2IP, i64* %R2_Var
  %ln2IQ = load i64*, i64** %Sp_Var
  %ln2IR = getelementptr inbounds i64, i64* %ln2IQ, i32 -3
  %ln2IS = ptrtoint i64* %ln2IR to i64
  %ln2IT = inttoptr i64 %ln2IS to i64*
  store i64* %ln2IT, i64** %Sp_Var
  %ln2IU = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2IV = load i64*, i64** %Sp_Var
  %ln2IW = load i64, i64* %R1_Var
  %ln2IX = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2IU( i64* %Base_Arg, i64* %ln2IV, i64* %Hp_Arg, i64 %ln2IW, i64 %ln2IX, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ia:
  %ln2IZ = load i64, i64* %R1_Var
  %ln2J0 = inttoptr i64 %ln2IZ to i64*
  %ln2J1 = load i64, i64* %ln2J0, !tbaa !4
  %ln2J2 = inttoptr i64 %ln2J1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2J3 = load i64*, i64** %Sp_Var
  %ln2J4 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2J2( i64* %Base_Arg, i64* %ln2J3, i64* %Hp_Arg, i64 %ln2J4, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ij:
  %ln2J5 = load i64, i64* %R1_Var
  store i64 %ln2J5, i64* %R1_Var
  %ln2J6 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2J7 = bitcast i64* %ln2J6 to i64*
  %ln2J8 = load i64, i64* %ln2J7, !tbaa !5
  %ln2J9 = inttoptr i64 %ln2J8 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ja = load i64*, i64** %Sp_Var
  %ln2Jb = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2J9( i64* %Base_Arg, i64* %ln2Ja, i64* %Hp_Arg, i64 %ln2Jb, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ib_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ib_info$def to i8*)
define internal ghccc void @c2Ib_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ib_info$def to i64)) to i32),i32 0)}>
{
n2Jc:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Ib
c2Ib:
  %ln2Jd = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ig_info$def to i64
  %ln2Je = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Jd, i64* %ln2Je, !tbaa !2
  %ln2Jf = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2Jg = add i64 %ln2Jf, 1
  store i64 %ln2Jg, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2Jh = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ji = load i64, i64* %R2_Var
  %ln2Jj = load i64, i64* %R3_Var
  %ln2Jk = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Jh( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Ji, i64 %ln2Jj, i64 %ln2Jk, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ig_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ig_info$def to i8*)
define internal ghccc void @c2Ig_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2Jl:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2Ig
c2Ig:
  %ln2Jm = load i64*, i64** %Hp_Var
  %ln2Jn = getelementptr inbounds i64, i64* %ln2Jm, i32 3
  %ln2Jo = ptrtoint i64* %ln2Jn to i64
  %ln2Jp = inttoptr i64 %ln2Jo to i64*
  store i64* %ln2Jp, i64** %Hp_Var
  %ln2Jq = load i64*, i64** %Hp_Var
  %ln2Jr = ptrtoint i64* %ln2Jq to i64
  %ln2Js = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2Jt = bitcast i64* %ln2Js to i64*
  %ln2Ju = load i64, i64* %ln2Jt, !tbaa !5
  %ln2Jv = icmp ugt i64 %ln2Jr, %ln2Ju
  %ln2Jw = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Jv, i1 0 )
  br i1 %ln2Jw, label %c2Io, label %c2In
c2In:
  %ln2Jy = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2Jx = load i64*, i64** %Hp_Var
  %ln2Jz = getelementptr inbounds i64, i64* %ln2Jx, i32 -2
  store i64 %ln2Jy, i64* %ln2Jz, !tbaa !3
  %ln2JB = load i64, i64* %R1_Var
  %ln2JA = load i64*, i64** %Hp_Var
  %ln2JC = getelementptr inbounds i64, i64* %ln2JA, i32 -1
  store i64 %ln2JB, i64* %ln2JC, !tbaa !3
  %ln2JE = load i64, i64* %R2_Var
  %ln2JD = load i64*, i64** %Hp_Var
  %ln2JF = getelementptr inbounds i64, i64* %ln2JD, i32 0
  store i64 %ln2JE, i64* %ln2JF, !tbaa !3
  %ln2JH = load i64*, i64** %Hp_Var
  %ln2JI = ptrtoint i64* %ln2JH to i64
  %ln2JJ = add i64 %ln2JI, -14
  store i64 %ln2JJ, i64* %R1_Var
  %ln2JK = load i64*, i64** %Sp_Var
  %ln2JL = getelementptr inbounds i64, i64* %ln2JK, i32 1
  %ln2JM = ptrtoint i64* %ln2JL to i64
  %ln2JN = inttoptr i64 %ln2JM to i64*
  store i64* %ln2JN, i64** %Sp_Var
  %ln2JO = load i64*, i64** %Sp_Var
  %ln2JP = getelementptr inbounds i64, i64* %ln2JO, i32 0
  %ln2JQ = bitcast i64* %ln2JP to i64*
  %ln2JR = load i64, i64* %ln2JQ, !tbaa !2
  %ln2JS = inttoptr i64 %ln2JR to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2JT = load i64*, i64** %Sp_Var
  %ln2JU = load i64*, i64** %Hp_Var
  %ln2JV = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2JS( i64* %Base_Arg, i64* %ln2JT, i64* %ln2JU, i64 %ln2JV, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Io:
  %ln2JW = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2JW, !tbaa !5
  %ln2JX = load i64, i64* %R2_Var
  store i64 %ln2JX, i64* %R2_Var
  %ln2JY = load i64, i64* %R1_Var
  store i64 %ln2JY, i64* %R1_Var
  %ln2JZ = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2K0 = load i64*, i64** %Sp_Var
  %ln2K1 = load i64*, i64** %Hp_Var
  %ln2K2 = load i64, i64* %R1_Var
  %ln2K3 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2JZ( i64* %Base_Arg, i64* %ln2K0, i64* %ln2K1, i64 %ln2K2, i64 %ln2K3, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2L1_srt_struct = type <{i64, i64, i64, i64}>
%Main_mainzufac_closure_struct = type <{i64, i64, i64, i64}>
@_u2L1_srt$def = internal global %_u2L1_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 0}>
@_u2L1_srt = internal alias i8, bitcast (%_u2L1_srt_struct* @_u2L1_srt$def to i8*)
@Main_mainzufac_closure$def = internal global %Main_mainzufac_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @_u2L1_srt to i64), i64 0}>
@Main_mainzufac_closure = alias i8, bitcast (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i8*)
@Main_mainzufac_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to i8*)
define ghccc void @Main_mainzufac_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 2, i32 14, i32 0}>
{
n2L2:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dz = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Kd
c2Kd:
  %ln2L3 = load i64*, i64** %Sp_Var
  %ln2L4 = getelementptr inbounds i64, i64* %ln2L3, i32 -3
  %ln2L5 = ptrtoint i64* %ln2L4 to i64
  %ln2L6 = icmp ult i64 %ln2L5, %SpLim_Arg
  %ln2L7 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2L6, i1 0 )
  br i1 %ln2L7, label %c2Ke, label %c2Kf
c2Kf:
  %ln2L9 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K8_info$def to i64
  %ln2L8 = load i64*, i64** %Sp_Var
  %ln2La = getelementptr inbounds i64, i64* %ln2L8, i32 -2
  store i64 %ln2L9, i64* %ln2La, !tbaa !2
  %ln2Lb = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2Lc = add i64 %ln2Lb, 1
  store i64 %ln2Lc, i64* %R3_Var
  %ln2Ld = load i64, i64* %R2_Var
  store i64 %ln2Ld, i64* %ls2Dz
  %ln2Le = load i64, i64* %R2_Var
  store i64 %ln2Le, i64* %R2_Var
  %ln2Lg = load i64, i64* %ls2Dz
  %ln2Lf = load i64*, i64** %Sp_Var
  %ln2Lh = getelementptr inbounds i64, i64* %ln2Lf, i32 -1
  store i64 %ln2Lg, i64* %ln2Lh, !tbaa !2
  %ln2Li = load i64*, i64** %Sp_Var
  %ln2Lj = getelementptr inbounds i64, i64* %ln2Li, i32 -2
  %ln2Lk = ptrtoint i64* %ln2Lj to i64
  %ln2Ll = inttoptr i64 %ln2Lk to i64*
  store i64* %ln2Ll, i64** %Sp_Var
  %ln2Lm = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ln = load i64*, i64** %Sp_Var
  %ln2Lo = load i64, i64* %R1_Var
  %ln2Lp = load i64, i64* %R2_Var
  %ln2Lq = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Lm( i64* %Base_Arg, i64* %ln2Ln, i64* %Hp_Arg, i64 %ln2Lo, i64 %ln2Lp, i64 %ln2Lq, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ke:
  %ln2Lr = load i64, i64* %R2_Var
  store i64 %ln2Lr, i64* %R2_Var
  %ln2Ls = ptrtoint %Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64
  store i64 %ln2Ls, i64* %R1_Var
  %ln2Lt = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2Lu = bitcast i64* %ln2Lt to i64*
  %ln2Lv = load i64, i64* %ln2Lu, !tbaa !5
  %ln2Lw = inttoptr i64 %ln2Lv to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Lx = load i64*, i64** %Sp_Var
  %ln2Ly = load i64, i64* %R1_Var
  %ln2Lz = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Lw( i64* %Base_Arg, i64* %ln2Lx, i64* %Hp_Arg, i64 %ln2Ly, i64 %ln2Lz, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2K8_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K8_info$def to i8*)
define internal ghccc void @c2K8_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K8_info$def to i64)) to i32),i32 0)}>
{
n2LA:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2K8
c2K8:
  %ln2LB = load i64, i64* %R1_Var
  switch i64 %ln2LB, label %c2Kb [i64 1, label %c2Kc]
c2Kb:
  %ln2LD = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ki_info$def to i64
  %ln2LC = load i64*, i64** %Sp_Var
  %ln2LE = getelementptr inbounds i64, i64* %ln2LC, i32 0
  store i64 %ln2LD, i64* %ln2LE, !tbaa !2
  %ln2LF = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2LG = add i64 %ln2LF, 1
  store i64 %ln2LG, i64* %R3_Var
  %ln2LH = load i64*, i64** %Sp_Var
  %ln2LI = getelementptr inbounds i64, i64* %ln2LH, i32 1
  %ln2LJ = bitcast i64* %ln2LI to i64*
  %ln2LK = load i64, i64* %ln2LJ, !tbaa !2
  store i64 %ln2LK, i64* %R2_Var
  %ln2LL = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2LM = load i64*, i64** %Sp_Var
  %ln2LN = load i64, i64* %R1_Var
  %ln2LO = load i64, i64* %R2_Var
  %ln2LP = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2LL( i64* %Base_Arg, i64* %ln2LM, i64* %Hp_Arg, i64 %ln2LN, i64 %ln2LO, i64 %ln2LP, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Kc:
  %ln2LQ = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2LR = add i64 %ln2LQ, 1
  store i64 %ln2LR, i64* %R1_Var
  %ln2LS = load i64*, i64** %Sp_Var
  %ln2LT = getelementptr inbounds i64, i64* %ln2LS, i32 2
  %ln2LU = ptrtoint i64* %ln2LT to i64
  %ln2LV = inttoptr i64 %ln2LU to i64*
  store i64* %ln2LV, i64** %Sp_Var
  %ln2LW = load i64*, i64** %Sp_Var
  %ln2LX = getelementptr inbounds i64, i64* %ln2LW, i32 0
  %ln2LY = bitcast i64* %ln2LX to i64*
  %ln2LZ = load i64, i64* %ln2LY, !tbaa !2
  %ln2M0 = inttoptr i64 %ln2LZ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2M1 = load i64*, i64** %Sp_Var
  %ln2M2 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2M0( i64* %Base_Arg, i64* %ln2M1, i64* %Hp_Arg, i64 %ln2M2, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ki_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ki_info$def to i8*)
define internal ghccc void @c2Ki_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ki_info$def to i64)) to i32),i32 0)}>
{
n2M3:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Ki
c2Ki:
  %ln2M5 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kn_info$def to i64
  %ln2M4 = load i64*, i64** %Sp_Var
  %ln2M6 = getelementptr inbounds i64, i64* %ln2M4, i32 -1
  store i64 %ln2M5, i64* %ln2M6, !tbaa !2
  %ln2M7 = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2M8 = add i64 %ln2M7, 1
  store i64 %ln2M8, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2M9 = load i64*, i64** %Sp_Var
  %ln2Ma = getelementptr inbounds i64, i64* %ln2M9, i32 0
  store i64 %R1_Arg, i64* %ln2Ma, !tbaa !2
  %ln2Mb = load i64*, i64** %Sp_Var
  %ln2Mc = getelementptr inbounds i64, i64* %ln2Mb, i32 -1
  %ln2Md = ptrtoint i64* %ln2Mc to i64
  %ln2Me = inttoptr i64 %ln2Md to i64*
  store i64* %ln2Me, i64** %Sp_Var
  %ln2Mf = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Mg = load i64*, i64** %Sp_Var
  %ln2Mh = load i64, i64* %R2_Var
  %ln2Mi = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Mf( i64* %Base_Arg, i64* %ln2Mg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Mh, i64 %ln2Mi, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Kn_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kn_info$def to i8*)
define internal ghccc void @c2Kn_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kn_info$def to i64)) to i32),i32 0)}>
{
n2Mj:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Kn
c2Kn:
  switch i64 %R1_Arg, label %c2KL [i64 1, label %c2KX]
c2KL:
  %ln2Ml = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i64
  %ln2Mk = load i64*, i64** %Sp_Var
  %ln2Mm = getelementptr inbounds i64, i64* %ln2Mk, i32 0
  store i64 %ln2Ml, i64* %ln2Mm, !tbaa !2
  %ln2Mn = ptrtoint %r2Dd_closure_struct* @r2Dd_closure$def to i64
  %ln2Mo = add i64 %ln2Mn, 1
  store i64 %ln2Mo, i64* %R3_Var
  %ln2Mp = load i64*, i64** %Sp_Var
  %ln2Mq = getelementptr inbounds i64, i64* %ln2Mp, i32 1
  %ln2Mr = bitcast i64* %ln2Mq to i64*
  %ln2Ms = load i64, i64* %ln2Mr, !tbaa !2
  store i64 %ln2Ms, i64* %R2_Var
  %ln2Mt = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Mu = load i64*, i64** %Sp_Var
  %ln2Mv = load i64, i64* %R2_Var
  %ln2Mw = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Mt( i64* %Base_Arg, i64* %ln2Mu, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Mv, i64 %ln2Mw, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2KX:
  %ln2Mx = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2My = add i64 %ln2Mx, 1
  store i64 %ln2My, i64* %R3_Var
  %ln2Mz = load i64*, i64** %Sp_Var
  %ln2MA = getelementptr inbounds i64, i64* %ln2Mz, i32 2
  %ln2MB = bitcast i64* %ln2MA to i64*
  %ln2MC = load i64, i64* %ln2MB, !tbaa !2
  store i64 %ln2MC, i64* %R2_Var
  %ln2MD = load i64*, i64** %Sp_Var
  %ln2ME = getelementptr inbounds i64, i64* %ln2MD, i32 3
  %ln2MF = ptrtoint i64* %ln2ME to i64
  %ln2MG = inttoptr i64 %ln2MF to i64*
  store i64* %ln2MG, i64** %Sp_Var
  %ln2MH = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2MI = load i64*, i64** %Sp_Var
  %ln2MJ = load i64, i64* %R2_Var
  %ln2MK = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MH( i64* %Base_Arg, i64* %ln2MI, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2MJ, i64 %ln2MK, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ks_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i8*)
define internal ghccc void @c2Ks_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i64)) to i32),i32 0)}>
{
n2ML:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Ks
c2Ks:
  %ln2MM = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i64
  %ln2MN = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2MM, i64* %ln2MN, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2MO = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2MP = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MO( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2MP, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Kw_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i8*)
define internal ghccc void @c2Kw_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i64)) to i32),i32 0)}>
{
n2MQ:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Kw
c2Kw:
  %ln2MR = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i64
  %ln2MS = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2MR, i64* %ln2MS, !tbaa !2
  %ln2MT = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2MU = add i64 %ln2MT, 1
  store i64 %ln2MU, i64* %R3_Var
  %ln2MV = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2MW = bitcast i64* %ln2MV to i64*
  %ln2MX = load i64, i64* %ln2MW, !tbaa !2
  store i64 %ln2MX, i64* %R2_Var
  %ln2MY = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2MY, !tbaa !2
  %ln2MZ = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2N0 = load i64, i64* %R2_Var
  %ln2N1 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MZ( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2N0, i64 %ln2N1, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2KA_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i8*)
define internal ghccc void @c2KA_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i64)) to i32),i32 0)}>
{
n2N2:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2KA
c2KA:
  %ln2N3 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i64
  %ln2N4 = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2N3, i64* %ln2N4, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2N5 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2N6 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2N5( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2N6, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2KE_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i8*)
define internal ghccc void @c2KE_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2L1_srt_struct* @_u2L1_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i64)) to i32),i32 0)}>
{
n2N7:
  %ls2DG = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2KE
c2KE:
  %ln2N8 = load i64*, i64** %Sp_Var
  %ln2N9 = getelementptr inbounds i64, i64* %ln2N8, i32 1
  %ln2Na = bitcast i64* %ln2N9 to i64*
  %ln2Nb = load i64, i64* %ln2Na, !tbaa !2
  store i64 %ln2Nb, i64* %ls2DG
  %ln2Nd = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KI_info$def to i64
  %ln2Nc = load i64*, i64** %Sp_Var
  %ln2Ne = getelementptr inbounds i64, i64* %ln2Nc, i32 1
  store i64 %ln2Nd, i64* %ln2Ne, !tbaa !2
  %ln2Nf = load i64, i64* %ls2DG
  store i64 %ln2Nf, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Ng = load i64*, i64** %Sp_Var
  %ln2Nh = getelementptr inbounds i64, i64* %ln2Ng, i32 1
  %ln2Ni = ptrtoint i64* %ln2Nh to i64
  %ln2Nj = inttoptr i64 %ln2Ni to i64*
  store i64* %ln2Nj, i64** %Sp_Var
  %ln2Nk = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Nl = load i64*, i64** %Sp_Var
  %ln2Nm = load i64, i64* %R2_Var
  %ln2Nn = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Nk( i64* %Base_Arg, i64* %ln2Nl, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Nm, i64 %ln2Nn, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2KI_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KI_info$def to i8*)
define internal ghccc void @c2KI_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KI_info$def to i64)) to i32),i32 0)}>
{
n2No:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2KI
c2KI:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2Np = load i64*, i64** %Sp_Var
  %ln2Nq = getelementptr inbounds i64, i64* %ln2Np, i32 1
  %ln2Nr = bitcast i64* %ln2Nq to i64*
  %ln2Ns = load i64, i64* %ln2Nr, !tbaa !2
  store i64 %ln2Ns, i64* %R2_Var
  %ln2Nt = load i64*, i64** %Sp_Var
  %ln2Nu = getelementptr inbounds i64, i64* %ln2Nt, i32 2
  %ln2Nv = ptrtoint i64* %ln2Nu to i64
  %ln2Nw = inttoptr i64 %ln2Nv to i64*
  store i64* %ln2Nw, i64** %Sp_Var
  %ln2Nx = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ny = load i64*, i64** %Sp_Var
  %ln2Nz = load i64, i64* %R2_Var
  %ln2NA = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Nx( i64* %Base_Arg, i64* %ln2Ny, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Nz, i64 %ln2NA, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2NV_srt_struct = type <{i64, i64, i64, i64}>
%Main_main3_closure_struct = type <{i64, i64, i64, i64}>
@_u2NV_srt$def = internal global %_u2NV_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64), i64 0}>
@_u2NV_srt = internal alias i8, bitcast (%_u2NV_srt_struct* @_u2NV_srt$def to i8*)
@Main_main3_closure$def = internal global %Main_main3_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main3_closure = alias i8, bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*)
@Main_main3_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i8*)
define ghccc void @Main_main3_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2NV_srt_struct* @_u2NV_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main3_info$def to i64)) to i32),i32 0)}>
{
n2NW:
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
  %lc2NE = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2NJ
c2NJ:
  %ln2NX = load i64*, i64** %Sp_Var
  %ln2NY = getelementptr inbounds i64, i64* %ln2NX, i32 -3
  %ln2NZ = ptrtoint i64* %ln2NY to i64
  %ln2O0 = icmp ult i64 %ln2NZ, %SpLim_Arg
  %ln2O1 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2O0, i1 0 )
  br i1 %ln2O1, label %c2NP, label %c2NQ
c2NQ:
  %ln2O2 = ptrtoint i64* %Base_Arg to i64
  %ln2O3 = inttoptr i64 %ln2O2 to i8*
  %ln2O4 = load i64, i64* %R1_Var
  %ln2O5 = inttoptr i64 %ln2O4 to i8*
  %ln2O6 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2O7 = call ccc i8* (i8*, i8*) %ln2O6( i8* %ln2O3, i8* %ln2O5 ) nounwind
  %ln2O8 = ptrtoint i8* %ln2O7 to i64
  store i64 %ln2O8, i64* %lc2NE
  %ln2O9 = load i64, i64* %lc2NE
  %ln2Oa = icmp eq i64 %ln2O9, 0
  br i1 %ln2Oa, label %c2NG, label %c2NF
c2NF:
  %ln2Oc = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2Ob = load i64*, i64** %Sp_Var
  %ln2Od = getelementptr inbounds i64, i64* %ln2Ob, i32 -2
  store i64 %ln2Oc, i64* %ln2Od, !tbaa !2
  %ln2Of = load i64, i64* %lc2NE
  %ln2Oe = load i64*, i64** %Sp_Var
  %ln2Og = getelementptr inbounds i64, i64* %ln2Oe, i32 -1
  store i64 %ln2Of, i64* %ln2Og, !tbaa !2
  %ln2Oi = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NH_info$def to i64
  %ln2Oh = load i64*, i64** %Sp_Var
  %ln2Oj = getelementptr inbounds i64, i64* %ln2Oh, i32 -3
  store i64 %ln2Oi, i64* %ln2Oj, !tbaa !2
  %ln2Ok = ptrtoint %Main_mainzux_closure_struct* @Main_mainzux_closure$def to i64
  %ln2Ol = add i64 %ln2Ok, 1
  store i64 %ln2Ol, i64* %R2_Var
  %ln2Om = load i64*, i64** %Sp_Var
  %ln2On = getelementptr inbounds i64, i64* %ln2Om, i32 -3
  %ln2Oo = ptrtoint i64* %ln2On to i64
  %ln2Op = inttoptr i64 %ln2Oo to i64*
  store i64* %ln2Op, i64** %Sp_Var
  %ln2Oq = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Or = load i64*, i64** %Sp_Var
  %ln2Os = load i64, i64* %R1_Var
  %ln2Ot = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Oq( i64* %Base_Arg, i64* %ln2Or, i64* %Hp_Arg, i64 %ln2Os, i64 %ln2Ot, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NG:
  %ln2Ov = load i64, i64* %R1_Var
  %ln2Ow = inttoptr i64 %ln2Ov to i64*
  %ln2Ox = load i64, i64* %ln2Ow, !tbaa !4
  %ln2Oy = inttoptr i64 %ln2Ox to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Oz = load i64*, i64** %Sp_Var
  %ln2OA = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Oy( i64* %Base_Arg, i64* %ln2Oz, i64* %Hp_Arg, i64 %ln2OA, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NP:
  %ln2OB = load i64, i64* %R1_Var
  store i64 %ln2OB, i64* %R1_Var
  %ln2OC = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2OD = bitcast i64* %ln2OC to i64*
  %ln2OE = load i64, i64* %ln2OD, !tbaa !5
  %ln2OF = inttoptr i64 %ln2OE to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2OG = load i64*, i64** %Sp_Var
  %ln2OH = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2OF( i64* %Base_Arg, i64* %ln2OG, i64* %Hp_Arg, i64 %ln2OH, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2NH_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NH_info$def to i8*)
define internal ghccc void @c2NH_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NH_info$def to i64)) to i32),i32 0)}>
{
n2OI:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2NH
c2NH:
  %ln2OJ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NM_info$def to i64
  %ln2OK = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2OJ, i64* %ln2OK, !tbaa !2
  %ln2OL = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2OM = add i64 %ln2OL, 1
  store i64 %ln2OM, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2ON = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2OO = load i64, i64* %R2_Var
  %ln2OP = load i64, i64* %R3_Var
  %ln2OQ = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2ON( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2OO, i64 %ln2OP, i64 %ln2OQ, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2NM_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NM_info$def to i8*)
define internal ghccc void @c2NM_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2OR:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2NM
c2NM:
  %ln2OS = load i64*, i64** %Hp_Var
  %ln2OT = getelementptr inbounds i64, i64* %ln2OS, i32 3
  %ln2OU = ptrtoint i64* %ln2OT to i64
  %ln2OV = inttoptr i64 %ln2OU to i64*
  store i64* %ln2OV, i64** %Hp_Var
  %ln2OW = load i64*, i64** %Hp_Var
  %ln2OX = ptrtoint i64* %ln2OW to i64
  %ln2OY = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2OZ = bitcast i64* %ln2OY to i64*
  %ln2P0 = load i64, i64* %ln2OZ, !tbaa !5
  %ln2P1 = icmp ugt i64 %ln2OX, %ln2P0
  %ln2P2 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2P1, i1 0 )
  br i1 %ln2P2, label %c2NU, label %c2NT
c2NT:
  %ln2P4 = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2P3 = load i64*, i64** %Hp_Var
  %ln2P5 = getelementptr inbounds i64, i64* %ln2P3, i32 -2
  store i64 %ln2P4, i64* %ln2P5, !tbaa !3
  %ln2P7 = load i64, i64* %R1_Var
  %ln2P6 = load i64*, i64** %Hp_Var
  %ln2P8 = getelementptr inbounds i64, i64* %ln2P6, i32 -1
  store i64 %ln2P7, i64* %ln2P8, !tbaa !3
  %ln2Pa = load i64, i64* %R2_Var
  %ln2P9 = load i64*, i64** %Hp_Var
  %ln2Pb = getelementptr inbounds i64, i64* %ln2P9, i32 0
  store i64 %ln2Pa, i64* %ln2Pb, !tbaa !3
  %ln2Pd = load i64*, i64** %Hp_Var
  %ln2Pe = ptrtoint i64* %ln2Pd to i64
  %ln2Pf = add i64 %ln2Pe, -14
  store i64 %ln2Pf, i64* %R1_Var
  %ln2Pg = load i64*, i64** %Sp_Var
  %ln2Ph = getelementptr inbounds i64, i64* %ln2Pg, i32 1
  %ln2Pi = ptrtoint i64* %ln2Ph to i64
  %ln2Pj = inttoptr i64 %ln2Pi to i64*
  store i64* %ln2Pj, i64** %Sp_Var
  %ln2Pk = load i64*, i64** %Sp_Var
  %ln2Pl = getelementptr inbounds i64, i64* %ln2Pk, i32 0
  %ln2Pm = bitcast i64* %ln2Pl to i64*
  %ln2Pn = load i64, i64* %ln2Pm, !tbaa !2
  %ln2Po = inttoptr i64 %ln2Pn to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Pp = load i64*, i64** %Sp_Var
  %ln2Pq = load i64*, i64** %Hp_Var
  %ln2Pr = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Po( i64* %Base_Arg, i64* %ln2Pp, i64* %ln2Pq, i64 %ln2Pr, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NU:
  %ln2Ps = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2Ps, !tbaa !5
  %ln2Pt = load i64, i64* %R2_Var
  store i64 %ln2Pt, i64* %R2_Var
  %ln2Pu = load i64, i64* %R1_Var
  store i64 %ln2Pu, i64* %R1_Var
  %ln2Pv = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Pw = load i64*, i64** %Sp_Var
  %ln2Px = load i64*, i64** %Hp_Var
  %ln2Py = load i64, i64* %R1_Var
  %ln2Pz = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Pv( i64* %Base_Arg, i64* %ln2Pw, i64* %ln2Px, i64 %ln2Py, i64 %ln2Pz, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%r2Df_closure_struct = type <{i64, i64, i64, i64, i64, i64}>
%Main_mainzufib1_closure_struct = type <{i64, i64}>
@r2Df_closure$def = internal global %r2Df_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Df_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @Main_mainzufib1_closure to i64), i64 0}>
@r2Df_closure = internal alias i8, bitcast (%r2Df_closure_struct* @r2Df_closure$def to i8*)
@Main_mainzufib1_closure$def = internal global %Main_mainzufib1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i64), i64 0}>
@Main_mainzufib1_closure = alias i8, bitcast (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i8*)
@r2Df_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Df_info$def to i8*)
define internal ghccc void @r2Df_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 4, i32 14, i32 0}>
{
n2QE:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2DM = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2PJ
c2PJ:
  %ln2QF = load i64*, i64** %Sp_Var
  %ln2QG = getelementptr inbounds i64, i64* %ln2QF, i32 -2
  %ln2QH = ptrtoint i64* %ln2QG to i64
  %ln2QI = icmp ult i64 %ln2QH, %SpLim_Arg
  %ln2QJ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2QI, i1 0 )
  br i1 %ln2QJ, label %c2PK, label %c2PL
c2PL:
  %ln2QL = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PE_info$def to i64
  %ln2QK = load i64*, i64** %Sp_Var
  %ln2QM = getelementptr inbounds i64, i64* %ln2QK, i32 -2
  store i64 %ln2QL, i64* %ln2QM, !tbaa !2
  %ln2QN = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2QO = add i64 %ln2QN, 1
  store i64 %ln2QO, i64* %R3_Var
  %ln2QP = load i64, i64* %R2_Var
  store i64 %ln2QP, i64* %ls2DM
  %ln2QQ = load i64, i64* %R2_Var
  store i64 %ln2QQ, i64* %R2_Var
  %ln2QS = load i64, i64* %ls2DM
  %ln2QR = load i64*, i64** %Sp_Var
  %ln2QT = getelementptr inbounds i64, i64* %ln2QR, i32 -1
  store i64 %ln2QS, i64* %ln2QT, !tbaa !2
  %ln2QU = load i64*, i64** %Sp_Var
  %ln2QV = getelementptr inbounds i64, i64* %ln2QU, i32 -2
  %ln2QW = ptrtoint i64* %ln2QV to i64
  %ln2QX = inttoptr i64 %ln2QW to i64*
  store i64* %ln2QX, i64** %Sp_Var
  %ln2QY = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2QZ = load i64*, i64** %Sp_Var
  %ln2R0 = load i64, i64* %R1_Var
  %ln2R1 = load i64, i64* %R2_Var
  %ln2R2 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2QY( i64* %Base_Arg, i64* %ln2QZ, i64* %Hp_Arg, i64 %ln2R0, i64 %ln2R1, i64 %ln2R2, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2PK:
  %ln2R3 = load i64, i64* %R2_Var
  store i64 %ln2R3, i64* %R2_Var
  %ln2R4 = ptrtoint %r2Df_closure_struct* @r2Df_closure$def to i64
  store i64 %ln2R4, i64* %R1_Var
  %ln2R5 = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2R6 = bitcast i64* %ln2R5 to i64*
  %ln2R7 = load i64, i64* %ln2R6, !tbaa !5
  %ln2R8 = inttoptr i64 %ln2R7 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2R9 = load i64*, i64** %Sp_Var
  %ln2Ra = load i64, i64* %R1_Var
  %ln2Rb = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2R8( i64* %Base_Arg, i64* %ln2R9, i64* %Hp_Arg, i64 %ln2Ra, i64 %ln2Rb, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PE_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PE_info$def to i8*)
define internal ghccc void @c2PE_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PE_info$def to i64)) to i32),i32 0)}>
{
n2Rc:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2PE
c2PE:
  %ln2Rd = load i64, i64* %R1_Var
  switch i64 %ln2Rd, label %c2PH [i64 1, label %c2PI]
c2PH:
  %ln2Rf = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i64
  %ln2Re = load i64*, i64** %Sp_Var
  %ln2Rg = getelementptr inbounds i64, i64* %ln2Re, i32 0
  store i64 %ln2Rf, i64* %ln2Rg, !tbaa !2
  %ln2Rh = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2Ri = add i64 %ln2Rh, 1
  store i64 %ln2Ri, i64* %R3_Var
  %ln2Rj = load i64*, i64** %Sp_Var
  %ln2Rk = getelementptr inbounds i64, i64* %ln2Rj, i32 1
  %ln2Rl = bitcast i64* %ln2Rk to i64*
  %ln2Rm = load i64, i64* %ln2Rl, !tbaa !2
  store i64 %ln2Rm, i64* %R2_Var
  %ln2Rn = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ro = load i64*, i64** %Sp_Var
  %ln2Rp = load i64, i64* %R1_Var
  %ln2Rq = load i64, i64* %R2_Var
  %ln2Rr = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Rn( i64* %Base_Arg, i64* %ln2Ro, i64* %Hp_Arg, i64 %ln2Rp, i64 %ln2Rq, i64 %ln2Rr, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2PI:
  %ln2Rs = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2Rt = add i64 %ln2Rs, 1
  store i64 %ln2Rt, i64* %R1_Var
  %ln2Ru = load i64*, i64** %Sp_Var
  %ln2Rv = getelementptr inbounds i64, i64* %ln2Ru, i32 2
  %ln2Rw = ptrtoint i64* %ln2Rv to i64
  %ln2Rx = inttoptr i64 %ln2Rw to i64*
  store i64* %ln2Rx, i64** %Sp_Var
  %ln2Ry = load i64*, i64** %Sp_Var
  %ln2Rz = getelementptr inbounds i64, i64* %ln2Ry, i32 0
  %ln2RA = bitcast i64* %ln2Rz to i64*
  %ln2RB = load i64, i64* %ln2RA, !tbaa !2
  %ln2RC = inttoptr i64 %ln2RB to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2RD = load i64*, i64** %Sp_Var
  %ln2RE = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2RC( i64* %Base_Arg, i64* %ln2RD, i64* %Hp_Arg, i64 %ln2RE, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PO_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i8*)
define internal ghccc void @c2PO_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i64)) to i32),i32 0)}>
{
n2RF:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2PO
c2PO:
  %ln2RG = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PS_info$def to i64
  %ln2RH = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2RG, i64* %ln2RH, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2RI = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2RJ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2RI( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2RJ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PS_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PS_info$def to i8*)
define internal ghccc void @c2PS_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PS_info$def to i64)) to i32),i32 0)}>
{
n2RK:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2PS
c2PS:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2RL = load i64*, i64** %Sp_Var
  %ln2RM = getelementptr inbounds i64, i64* %ln2RL, i32 1
  %ln2RN = bitcast i64* %ln2RM to i64*
  %ln2RO = load i64, i64* %ln2RN, !tbaa !2
  store i64 %ln2RO, i64* %R2_Var
  %ln2RP = load i64*, i64** %Sp_Var
  %ln2RQ = getelementptr inbounds i64, i64* %ln2RP, i32 2
  %ln2RR = ptrtoint i64* %ln2RQ to i64
  %ln2RS = inttoptr i64 %ln2RR to i64*
  store i64* %ln2RS, i64** %Sp_Var
  %ln2RT = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2RU = load i64*, i64** %Sp_Var
  %ln2RV = load i64, i64* %R2_Var
  %ln2RW = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2RT( i64* %Base_Arg, i64* %ln2RU, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2RV, i64 %ln2RW, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_mainzufib1_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i8*)
define ghccc void @Main_mainzufib1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i64)) to i32),i32 0)}>
{
n2RX:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2DQ = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Qb
c2Qb:
  %ln2RY = load i64*, i64** %Sp_Var
  %ln2RZ = getelementptr inbounds i64, i64* %ln2RY, i32 -2
  %ln2S0 = ptrtoint i64* %ln2RZ to i64
  %ln2S1 = icmp ult i64 %ln2S0, %SpLim_Arg
  %ln2S2 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2S1, i1 0 )
  br i1 %ln2S2, label %c2Qc, label %c2Qd
c2Qd:
  %ln2S4 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q6_info$def to i64
  %ln2S3 = load i64*, i64** %Sp_Var
  %ln2S5 = getelementptr inbounds i64, i64* %ln2S3, i32 -2
  store i64 %ln2S4, i64* %ln2S5, !tbaa !2
  %ln2S6 = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2S7 = add i64 %ln2S6, 1
  store i64 %ln2S7, i64* %R3_Var
  %ln2S8 = load i64, i64* %R2_Var
  store i64 %ln2S8, i64* %ls2DQ
  %ln2S9 = load i64, i64* %R2_Var
  store i64 %ln2S9, i64* %R2_Var
  %ln2Sb = load i64, i64* %ls2DQ
  %ln2Sa = load i64*, i64** %Sp_Var
  %ln2Sc = getelementptr inbounds i64, i64* %ln2Sa, i32 -1
  store i64 %ln2Sb, i64* %ln2Sc, !tbaa !2
  %ln2Sd = load i64*, i64** %Sp_Var
  %ln2Se = getelementptr inbounds i64, i64* %ln2Sd, i32 -2
  %ln2Sf = ptrtoint i64* %ln2Se to i64
  %ln2Sg = inttoptr i64 %ln2Sf to i64*
  store i64* %ln2Sg, i64** %Sp_Var
  %ln2Sh = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Si = load i64*, i64** %Sp_Var
  %ln2Sj = load i64, i64* %R1_Var
  %ln2Sk = load i64, i64* %R2_Var
  %ln2Sl = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Sh( i64* %Base_Arg, i64* %ln2Si, i64* %Hp_Arg, i64 %ln2Sj, i64 %ln2Sk, i64 %ln2Sl, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Qc:
  %ln2Sm = load i64, i64* %R2_Var
  store i64 %ln2Sm, i64* %R2_Var
  %ln2Sn = ptrtoint %Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i64
  store i64 %ln2Sn, i64* %R1_Var
  %ln2So = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2Sp = bitcast i64* %ln2So to i64*
  %ln2Sq = load i64, i64* %ln2Sp, !tbaa !5
  %ln2Sr = inttoptr i64 %ln2Sq to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ss = load i64*, i64** %Sp_Var
  %ln2St = load i64, i64* %R1_Var
  %ln2Su = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Sr( i64* %Base_Arg, i64* %ln2Ss, i64* %Hp_Arg, i64 %ln2St, i64 %ln2Su, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Q6_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q6_info$def to i8*)
define internal ghccc void @c2Q6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q6_info$def to i64)) to i32),i32 0)}>
{
n2Sv:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Q6
c2Q6:
  %ln2Sw = load i64, i64* %R1_Var
  switch i64 %ln2Sw, label %c2Q9 [i64 1, label %c2Qa]
c2Q9:
  %ln2Sy = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i64
  %ln2Sx = load i64*, i64** %Sp_Var
  %ln2Sz = getelementptr inbounds i64, i64* %ln2Sx, i32 0
  store i64 %ln2Sy, i64* %ln2Sz, !tbaa !2
  %ln2SA = ptrtoint %r2Dd_closure_struct* @r2Dd_closure$def to i64
  %ln2SB = add i64 %ln2SA, 1
  store i64 %ln2SB, i64* %R3_Var
  %ln2SC = load i64*, i64** %Sp_Var
  %ln2SD = getelementptr inbounds i64, i64* %ln2SC, i32 1
  %ln2SE = bitcast i64* %ln2SD to i64*
  %ln2SF = load i64, i64* %ln2SE, !tbaa !2
  store i64 %ln2SF, i64* %R2_Var
  %ln2SG = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2SH = load i64*, i64** %Sp_Var
  %ln2SI = load i64, i64* %R1_Var
  %ln2SJ = load i64, i64* %R2_Var
  %ln2SK = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2SG( i64* %Base_Arg, i64* %ln2SH, i64* %Hp_Arg, i64 %ln2SI, i64 %ln2SJ, i64 %ln2SK, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Qa:
  %ln2SL = ptrtoint %r2Dc_closure_struct* @r2Dc_closure$def to i64
  %ln2SM = add i64 %ln2SL, 1
  store i64 %ln2SM, i64* %R1_Var
  %ln2SN = load i64*, i64** %Sp_Var
  %ln2SO = getelementptr inbounds i64, i64* %ln2SN, i32 2
  %ln2SP = ptrtoint i64* %ln2SO to i64
  %ln2SQ = inttoptr i64 %ln2SP to i64*
  store i64* %ln2SQ, i64** %Sp_Var
  %ln2SR = load i64*, i64** %Sp_Var
  %ln2SS = getelementptr inbounds i64, i64* %ln2SR, i32 0
  %ln2ST = bitcast i64* %ln2SS to i64*
  %ln2SU = load i64, i64* %ln2ST, !tbaa !2
  %ln2SV = inttoptr i64 %ln2SU to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2SW = load i64*, i64** %Sp_Var
  %ln2SX = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2SV( i64* %Base_Arg, i64* %ln2SW, i64* %Hp_Arg, i64 %ln2SX, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qg_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i8*)
define internal ghccc void @c2Qg_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i64)) to i32),i32 0)}>
{
n2SY:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qg
c2Qg:
  %ln2SZ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i64
  %ln2T0 = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2SZ, i64* %ln2T0, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2T1 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Df_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2T2 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2T1( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2T2, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qk_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i8*)
define internal ghccc void @c2Qk_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i64)) to i32),i32 0)}>
{
n2T3:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qk
c2Qk:
  %ln2T4 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i64
  %ln2T5 = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2T4, i64* %ln2T5, !tbaa !2
  %ln2T6 = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  %ln2T7 = add i64 %ln2T6, 1
  store i64 %ln2T7, i64* %R3_Var
  %ln2T8 = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2T9 = bitcast i64* %ln2T8 to i64*
  %ln2Ta = load i64, i64* %ln2T9, !tbaa !2
  store i64 %ln2Ta, i64* %R2_Var
  %ln2Tb = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2Tb, !tbaa !2
  %ln2Tc = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Td = load i64, i64* %R2_Var
  %ln2Te = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Tc( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Td, i64 %ln2Te, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qo_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i8*)
define internal ghccc void @c2Qo_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Df_closure_struct* @r2Df_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i64)) to i32),i32 0)}>
{
n2Tf:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qo
c2Qo:
  %ln2Tg = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qs_info$def to i64
  %ln2Th = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Tg, i64* %ln2Th, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Ti = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Df_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Tj = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ti( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Tj, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qs_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qs_info$def to i8*)
define internal ghccc void @c2Qs_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qs_info$def to i64)) to i32),i32 0)}>
{
n2Tk:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Qs
c2Qs:
  %ln2Tl = load i64*, i64** %Sp_Var
  %ln2Tm = getelementptr inbounds i64, i64* %ln2Tl, i32 1
  %ln2Tn = bitcast i64* %ln2Tm to i64*
  %ln2To = load i64, i64* %ln2Tn, !tbaa !2
  store i64 %ln2To, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Tp = load i64*, i64** %Sp_Var
  %ln2Tq = getelementptr inbounds i64, i64* %ln2Tp, i32 2
  %ln2Tr = ptrtoint i64* %ln2Tq to i64
  %ln2Ts = inttoptr i64 %ln2Tr to i64*
  store i64* %ln2Ts, i64** %Sp_Var
  %ln2Tt = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Tu = load i64*, i64** %Sp_Var
  %ln2Tv = load i64, i64* %R2_Var
  %ln2Tw = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Tt( i64* %Base_Arg, i64* %ln2Tu, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Tv, i64 %ln2Tw, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main5_closure_struct = type <{i64, i64}>
@Main_main5_closure$def = internal global %Main_main5_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 4}>
@Main_main5_closure = alias i8, bitcast (%Main_main5_closure_struct* @Main_main5_closure$def to i8*)
%_u2TR_srt_struct = type <{i64, i64, i64, i64}>
%Main_main4_closure_struct = type <{i64, i64, i64, i64}>
@_u2TR_srt$def = internal global %_u2TR_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i64), i64 0}>
@_u2TR_srt = internal alias i8, bitcast (%_u2TR_srt_struct* @_u2TR_srt$def to i8*)
@Main_main4_closure$def = internal global %Main_main4_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main4_closure = alias i8, bitcast (%Main_main4_closure_struct* @Main_main4_closure$def to i8*)
@Main_main4_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i8*)
define ghccc void @Main_main4_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2TR_srt_struct* @_u2TR_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i64)) to i32),i32 0)}>
{
n2TS:
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
  %lc2TA = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2TF
c2TF:
  %ln2TT = load i64*, i64** %Sp_Var
  %ln2TU = getelementptr inbounds i64, i64* %ln2TT, i32 -3
  %ln2TV = ptrtoint i64* %ln2TU to i64
  %ln2TW = icmp ult i64 %ln2TV, %SpLim_Arg
  %ln2TX = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2TW, i1 0 )
  br i1 %ln2TX, label %c2TL, label %c2TM
c2TM:
  %ln2TY = ptrtoint i64* %Base_Arg to i64
  %ln2TZ = inttoptr i64 %ln2TY to i8*
  %ln2U0 = load i64, i64* %R1_Var
  %ln2U1 = inttoptr i64 %ln2U0 to i8*
  %ln2U2 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2U3 = call ccc i8* (i8*, i8*) %ln2U2( i8* %ln2TZ, i8* %ln2U1 ) nounwind
  %ln2U4 = ptrtoint i8* %ln2U3 to i64
  store i64 %ln2U4, i64* %lc2TA
  %ln2U5 = load i64, i64* %lc2TA
  %ln2U6 = icmp eq i64 %ln2U5, 0
  br i1 %ln2U6, label %c2TC, label %c2TB
c2TB:
  %ln2U8 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2U7 = load i64*, i64** %Sp_Var
  %ln2U9 = getelementptr inbounds i64, i64* %ln2U7, i32 -2
  store i64 %ln2U8, i64* %ln2U9, !tbaa !2
  %ln2Ub = load i64, i64* %lc2TA
  %ln2Ua = load i64*, i64** %Sp_Var
  %ln2Uc = getelementptr inbounds i64, i64* %ln2Ua, i32 -1
  store i64 %ln2Ub, i64* %ln2Uc, !tbaa !2
  %ln2Ue = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TD_info$def to i64
  %ln2Ud = load i64*, i64** %Sp_Var
  %ln2Uf = getelementptr inbounds i64, i64* %ln2Ud, i32 -3
  store i64 %ln2Ue, i64* %ln2Uf, !tbaa !2
  %ln2Ug = ptrtoint %Main_main5_closure_struct* @Main_main5_closure$def to i64
  %ln2Uh = add i64 %ln2Ug, 1
  store i64 %ln2Uh, i64* %R2_Var
  %ln2Ui = load i64*, i64** %Sp_Var
  %ln2Uj = getelementptr inbounds i64, i64* %ln2Ui, i32 -3
  %ln2Uk = ptrtoint i64* %ln2Uj to i64
  %ln2Ul = inttoptr i64 %ln2Uk to i64*
  store i64* %ln2Ul, i64** %Sp_Var
  %ln2Um = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Un = load i64*, i64** %Sp_Var
  %ln2Uo = load i64, i64* %R1_Var
  %ln2Up = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Um( i64* %Base_Arg, i64* %ln2Un, i64* %Hp_Arg, i64 %ln2Uo, i64 %ln2Up, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2TC:
  %ln2Ur = load i64, i64* %R1_Var
  %ln2Us = inttoptr i64 %ln2Ur to i64*
  %ln2Ut = load i64, i64* %ln2Us, !tbaa !4
  %ln2Uu = inttoptr i64 %ln2Ut to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Uv = load i64*, i64** %Sp_Var
  %ln2Uw = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Uu( i64* %Base_Arg, i64* %ln2Uv, i64* %Hp_Arg, i64 %ln2Uw, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2TL:
  %ln2Ux = load i64, i64* %R1_Var
  store i64 %ln2Ux, i64* %R1_Var
  %ln2Uy = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2Uz = bitcast i64* %ln2Uy to i64*
  %ln2UA = load i64, i64* %ln2Uz, !tbaa !5
  %ln2UB = inttoptr i64 %ln2UA to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2UC = load i64*, i64** %Sp_Var
  %ln2UD = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2UB( i64* %Base_Arg, i64* %ln2UC, i64* %Hp_Arg, i64 %ln2UD, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2TD_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TD_info$def to i8*)
define internal ghccc void @c2TD_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TD_info$def to i64)) to i32),i32 0)}>
{
n2UE:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2TD
c2TD:
  %ln2UF = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TI_info$def to i64
  %ln2UG = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2UF, i64* %ln2UG, !tbaa !2
  %ln2UH = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2UI = add i64 %ln2UH, 1
  store i64 %ln2UI, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2UJ = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2UK = load i64, i64* %R2_Var
  %ln2UL = load i64, i64* %R3_Var
  %ln2UM = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2UJ( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2UK, i64 %ln2UL, i64 %ln2UM, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2TI_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TI_info$def to i8*)
define internal ghccc void @c2TI_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2UN:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2TI
c2TI:
  %ln2UO = load i64*, i64** %Hp_Var
  %ln2UP = getelementptr inbounds i64, i64* %ln2UO, i32 3
  %ln2UQ = ptrtoint i64* %ln2UP to i64
  %ln2UR = inttoptr i64 %ln2UQ to i64*
  store i64* %ln2UR, i64** %Hp_Var
  %ln2US = load i64*, i64** %Hp_Var
  %ln2UT = ptrtoint i64* %ln2US to i64
  %ln2UU = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2UV = bitcast i64* %ln2UU to i64*
  %ln2UW = load i64, i64* %ln2UV, !tbaa !5
  %ln2UX = icmp ugt i64 %ln2UT, %ln2UW
  %ln2UY = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2UX, i1 0 )
  br i1 %ln2UY, label %c2TQ, label %c2TP
c2TP:
  %ln2V0 = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2UZ = load i64*, i64** %Hp_Var
  %ln2V1 = getelementptr inbounds i64, i64* %ln2UZ, i32 -2
  store i64 %ln2V0, i64* %ln2V1, !tbaa !3
  %ln2V3 = load i64, i64* %R1_Var
  %ln2V2 = load i64*, i64** %Hp_Var
  %ln2V4 = getelementptr inbounds i64, i64* %ln2V2, i32 -1
  store i64 %ln2V3, i64* %ln2V4, !tbaa !3
  %ln2V6 = load i64, i64* %R2_Var
  %ln2V5 = load i64*, i64** %Hp_Var
  %ln2V7 = getelementptr inbounds i64, i64* %ln2V5, i32 0
  store i64 %ln2V6, i64* %ln2V7, !tbaa !3
  %ln2V9 = load i64*, i64** %Hp_Var
  %ln2Va = ptrtoint i64* %ln2V9 to i64
  %ln2Vb = add i64 %ln2Va, -14
  store i64 %ln2Vb, i64* %R1_Var
  %ln2Vc = load i64*, i64** %Sp_Var
  %ln2Vd = getelementptr inbounds i64, i64* %ln2Vc, i32 1
  %ln2Ve = ptrtoint i64* %ln2Vd to i64
  %ln2Vf = inttoptr i64 %ln2Ve to i64*
  store i64* %ln2Vf, i64** %Sp_Var
  %ln2Vg = load i64*, i64** %Sp_Var
  %ln2Vh = getelementptr inbounds i64, i64* %ln2Vg, i32 0
  %ln2Vi = bitcast i64* %ln2Vh to i64*
  %ln2Vj = load i64, i64* %ln2Vi, !tbaa !2
  %ln2Vk = inttoptr i64 %ln2Vj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Vl = load i64*, i64** %Sp_Var
  %ln2Vm = load i64*, i64** %Hp_Var
  %ln2Vn = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Vk( i64* %Base_Arg, i64* %ln2Vl, i64* %ln2Vm, i64 %ln2Vn, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2TQ:
  %ln2Vo = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2Vo, !tbaa !5
  %ln2Vp = load i64, i64* %R2_Var
  store i64 %ln2Vp, i64* %R2_Var
  %ln2Vq = load i64, i64* %R1_Var
  store i64 %ln2Vq, i64* %R1_Var
  %ln2Vr = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Vs = load i64*, i64** %Sp_Var
  %ln2Vt = load i64*, i64** %Hp_Var
  %ln2Vu = load i64, i64* %R1_Var
  %ln2Vv = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Vr( i64* %Base_Arg, i64* %ln2Vs, i64* %ln2Vt, i64 %ln2Vu, i64 %ln2Vv, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2VJ_srt_struct = type <{i64, i64, i64, i64, i64}>
%_u2VK_srt_struct = type <{i64, i64, i64, i64}>
%Main_main1_closure_struct = type <{i64, i64, i64, i64}>
@_u2VJ_srt$def = internal global %_u2VJ_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziFD_stdout_closure to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziText_hPutStrzq_closure to i64), i64 ptrtoint (%Main_main2_closure_struct* @Main_main2_closure$def to i64), i64 0}>
@_u2VJ_srt = internal alias i8, bitcast (%_u2VJ_srt_struct* @_u2VJ_srt$def to i8*)
@_u2VK_srt$def = internal global %_u2VK_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (%Main_main3_closure_struct* @Main_main3_closure$def to i64), i64 ptrtoint (i8* @_u2VJ_srt to i64), i64 0}>
@_u2VK_srt = internal alias i8, bitcast (%_u2VK_srt_struct* @_u2VK_srt$def to i8*)
@Main_main1_closure$def = internal global %Main_main1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i64), i64 ptrtoint (%Main_main4_closure_struct* @Main_main4_closure$def to i64), i64 ptrtoint (i8* @_u2VK_srt to i64), i64 0}>
@Main_main1_closure = alias i8, bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*)
@Main_main1_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i8*)
define ghccc void @Main_main1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 2, i32 14, i32 0}>
{
n2VL:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2VE
c2VE:
  %ln2VM = load i64*, i64** %Sp_Var
  %ln2VN = getelementptr inbounds i64, i64* %ln2VM, i32 -1
  %ln2VO = ptrtoint i64* %ln2VN to i64
  %ln2VP = icmp ult i64 %ln2VO, %SpLim_Arg
  %ln2VQ = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2VP, i1 0 )
  br i1 %ln2VQ, label %c2VF, label %c2VG
c2VG:
  %ln2VS = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VA_info$def to i64
  %ln2VR = load i64*, i64** %Sp_Var
  %ln2VT = getelementptr inbounds i64, i64* %ln2VR, i32 -1
  store i64 %ln2VS, i64* %ln2VT, !tbaa !2
  %ln2VU = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2VV = add i64 %ln2VU, 2
  store i64 %ln2VV, i64* %R4_Var
  %ln2VW = ptrtoint %Main_main4_closure_struct* @Main_main4_closure$def to i64
  store i64 %ln2VW, i64* %R3_Var
  %ln2VX = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2VX, i64* %R2_Var
  %ln2VY = load i64*, i64** %Sp_Var
  %ln2VZ = getelementptr inbounds i64, i64* %ln2VY, i32 -1
  %ln2W0 = ptrtoint i64* %ln2VZ to i64
  %ln2W1 = inttoptr i64 %ln2W0 to i64*
  store i64* %ln2W1, i64** %Sp_Var
  %ln2W2 = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2W3 = load i64*, i64** %Sp_Var
  %ln2W4 = load i64, i64* %R1_Var
  %ln2W5 = load i64, i64* %R2_Var
  %ln2W6 = load i64, i64* %R3_Var
  %ln2W7 = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2W2( i64* %Base_Arg, i64* %ln2W3, i64* %Hp_Arg, i64 %ln2W4, i64 %ln2W5, i64 %ln2W6, i64 %ln2W7, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2VF:
  %ln2W8 = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  store i64 %ln2W8, i64* %R1_Var
  %ln2W9 = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2Wa = bitcast i64* %ln2W9 to i64*
  %ln2Wb = load i64, i64* %ln2Wa, !tbaa !5
  %ln2Wc = inttoptr i64 %ln2Wb to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Wd = load i64*, i64** %Sp_Var
  %ln2We = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Wc( i64* %Base_Arg, i64* %ln2Wd, i64* %Hp_Arg, i64 %ln2We, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2VA_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VA_info$def to i8*)
define internal ghccc void @c2VA_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2VK_srt_struct* @_u2VK_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VA_info$def to i64)) to i32),i32 0)}>
{
n2Wf:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2VA
c2VA:
  %ln2Wg = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VC_info$def to i64
  %ln2Wh = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Wg, i64* %ln2Wh, !tbaa !2
  %ln2Wi = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2Wj = add i64 %ln2Wi, 2
  store i64 %ln2Wj, i64* %R4_Var
  %ln2Wk = ptrtoint %Main_main3_closure_struct* @Main_main3_closure$def to i64
  store i64 %ln2Wk, i64* %R3_Var
  %ln2Wl = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2Wl, i64* %R2_Var
  %ln2Wm = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Wn = load i64, i64* %R2_Var
  %ln2Wo = load i64, i64* %R3_Var
  %ln2Wp = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Wm( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Wn, i64 %ln2Wo, i64 %ln2Wp, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2VC_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VC_info$def to i8*)
define internal ghccc void @c2VC_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2VJ_srt_struct* @_u2VJ_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2VC_info$def to i64)) to i32),i32 0)}>
{
n2Wq:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2VC
c2VC:
  %ln2Wr = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2Ws = add i64 %ln2Wr, 2
  store i64 %ln2Ws, i64* %R4_Var
  %ln2Wt = ptrtoint %Main_main2_closure_struct* @Main_main2_closure$def to i64
  store i64 %ln2Wt, i64* %R3_Var
  %ln2Wu = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2Wu, i64* %R2_Var
  %ln2Wv = load i64*, i64** %Sp_Var
  %ln2Ww = getelementptr inbounds i64, i64* %ln2Wv, i32 1
  %ln2Wx = ptrtoint i64* %ln2Ww to i64
  %ln2Wy = inttoptr i64 %ln2Wx to i64*
  store i64* %ln2Wy, i64** %Sp_Var
  %ln2Wz = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2WA = load i64*, i64** %Sp_Var
  %ln2WB = load i64, i64* %R2_Var
  %ln2WC = load i64, i64* %R3_Var
  %ln2WD = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Wz( i64* %Base_Arg, i64* %ln2WA, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2WB, i64 %ln2WC, i64 %ln2WD, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main1_closure_struct* @Main_main1_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
n2WL:
  br label %c2WI
c2WI:
  %ln2WM = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2WM( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main6_closure_struct = type <{i64, i64, i64, i64}>
@Main_main6_closure$def = internal global %Main_main6_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO1_closure to i64), i64 ptrtoint (%Main_main1_closure_struct* @Main_main1_closure$def to i64), i64 0}>
@Main_main6_closure = alias i8, bitcast (%Main_main6_closure_struct* @Main_main6_closure$def to i8*)
@Main_main6_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to i8*)
define ghccc void @Main_main6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 2, i32 14, i32 0}>
{
n2WU:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2WR
c2WR:
  %ln2WV = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  %ln2WW = add i64 %ln2WV, 1
  store i64 %ln2WW, i64* %R2_Var
  %ln2WX = bitcast i8* @base_GHCziTopHandler_runMainIO1_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2WY = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2WX( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2WY, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main6_closure_struct* @Main_main6_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
n2X6:
  br label %c2X3
c2X3:
  %ln2X7 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2X7( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_zdtrModule4_bytes_struct = type <{[5 x i8]}>
@Main_zdtrModule4_bytes$def = internal constant %Main_zdtrModule4_bytes_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>, align 1
@Main_zdtrModule4_bytes = alias i8, bitcast (%Main_zdtrModule4_bytes_struct* @Main_zdtrModule4_bytes$def to i8*)
%Main_zdtrModule3_closure_struct = type <{i64, i64}>
@Main_zdtrModule3_closure$def = internal global %Main_zdtrModule3_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%Main_zdtrModule4_bytes_struct* @Main_zdtrModule4_bytes$def to i64)}>
@Main_zdtrModule3_closure = alias i8, bitcast (%Main_zdtrModule3_closure_struct* @Main_zdtrModule3_closure$def to i8*)
%Main_zdtrModule2_bytes_struct = type <{[5 x i8]}>
@Main_zdtrModule2_bytes$def = internal constant %Main_zdtrModule2_bytes_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>, align 1
@Main_zdtrModule2_bytes = alias i8, bitcast (%Main_zdtrModule2_bytes_struct* @Main_zdtrModule2_bytes$def to i8*)
%Main_zdtrModule1_closure_struct = type <{i64, i64}>
@Main_zdtrModule1_closure$def = internal global %Main_zdtrModule1_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%Main_zdtrModule2_bytes_struct* @Main_zdtrModule2_bytes$def to i64)}>
@Main_zdtrModule1_closure = alias i8, bitcast (%Main_zdtrModule1_closure_struct* @Main_zdtrModule1_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%Main_zdtrModule3_closure_struct* @Main_zdtrModule3_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%Main_zdtrModule1_closure_struct* @Main_zdtrModule1_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8, bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
@integerzmwiredzmin_GHCziIntegerziType_Szh_con_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure = external global i8
@integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure = external global i8
@integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure = external global i8
@integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_minusInteger_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_timesInteger_info = external global i8
@integerzmwiredzmin_GHCziIntegerziType_plusInteger_info = external global i8
@stg_SRT_2_info = external global i8
@base_GHCziShow_zdwzdcshowsPrec4_closure = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@ghczmprim_GHCziTypes_ZMZN_closure = external global i8
@base_GHCziShow_zdwzdcshowsPrec4_info = external global i8
@ghczmprim_GHCziTypes_ZC_con_info = external global i8
@stg_gc_pp = external global i8
@stg_SRT_3_info = external global i8
@base_GHCziIOziHandleziFD_stdout_closure = external global i8
@base_GHCziIOziHandleziText_hPutStrzq_closure = external global i8
@ghczmprim_GHCziTypes_True_closure = external global i8
@base_GHCziIOziHandleziText_hPutStrzq_info = external global i8
@base_GHCziTopHandler_runMainIO1_closure = external global i8
@base_GHCziTopHandler_runMainIO1_info = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [28 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%Main_zdtrModule1_closure_struct* @Main_zdtrModule1_closure$def to i8*), i8* bitcast (%Main_zdtrModule2_bytes_struct* @Main_zdtrModule2_bytes$def to i8*), i8* bitcast (%Main_zdtrModule3_closure_struct* @Main_zdtrModule3_closure$def to i8*), i8* bitcast (%Main_zdtrModule4_bytes_struct* @Main_zdtrModule4_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main6_closure_struct* @Main_main6_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*), i8* bitcast (%_u2VK_srt_struct* @_u2VK_srt$def to i8*), i8* bitcast (%_u2VJ_srt_struct* @_u2VJ_srt$def to i8*), i8* bitcast (%Main_main4_closure_struct* @Main_main4_closure$def to i8*), i8* bitcast (%_u2TR_srt_struct* @_u2TR_srt$def to i8*), i8* bitcast (%Main_main5_closure_struct* @Main_main5_closure$def to i8*), i8* bitcast (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i8*), i8* bitcast (%r2Df_closure_struct* @r2Df_closure$def to i8*), i8* bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*), i8* bitcast (%_u2NV_srt_struct* @_u2NV_srt$def to i8*), i8* bitcast (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i8*), i8* bitcast (%_u2L1_srt_struct* @_u2L1_srt$def to i8*), i8* bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*), i8* bitcast (%_u2Ip_srt_struct* @_u2Ip_srt$def to i8*), i8* bitcast (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i8*), i8* bitcast (%r2De_closure_struct* @r2De_closure$def to i8*), i8* bitcast (%Main_mainzux_closure_struct* @Main_mainzux_closure$def to i8*), i8* bitcast (%r2Dd_closure_struct* @r2Dd_closure$def to i8*), i8* bitcast (%r2Dc_closure_struct* @r2Dc_closure$def to i8*), i8* bitcast (%r2Db_closure_struct* @r2Db_closure$def to i8*)], section "llvm.metadata"
