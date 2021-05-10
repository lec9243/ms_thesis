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

%r2D7_closure_struct = type <{i64, i64}>
@r2D7_closure$def = internal global %r2D7_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 1}>
@r2D7_closure = internal alias i8, bitcast (%r2D7_closure_struct* @r2D7_closure$def to i8*)
%r2D8_closure_struct = type <{i64, i64}>
@r2D8_closure$def = internal global %r2D8_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 0}>
@r2D8_closure = internal alias i8, bitcast (%r2D8_closure_struct* @r2D8_closure$def to i8*)
%r2D9_closure_struct = type <{i64, i64}>
@r2D9_closure$def = internal global %r2D9_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 2}>
@r2D9_closure = internal alias i8, bitcast (%r2D9_closure_struct* @r2D9_closure$def to i8*)
%Main_mainzux_closure_struct = type <{i64, i64}>
@Main_mainzux_closure$def = internal global %Main_mainzux_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 4}>
@Main_mainzux_closure = alias i8, bitcast (%Main_mainzux_closure_struct* @Main_mainzux_closure$def to i8*)
%r2Da_closure_struct = type <{i64, i64, i64, i64, i64, i64}>
%Main_mainzufib_closure_struct = type <{i64, i64}>
@r2Da_closure$def = internal global %r2Da_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Da_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @Main_mainzufib_closure to i64), i64 0}>
@r2Da_closure = internal alias i8, bitcast (%r2Da_closure_struct* @r2Da_closure$def to i8*)
@Main_mainzufib_closure$def = internal global %Main_mainzufib_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i64), i64 0}>
@Main_mainzufib_closure = alias i8, bitcast (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i8*)
@r2Da_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Da_info$def to i8*)
define internal ghccc void @r2Da_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 4, i32 14, i32 0}>
{
n2F7:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dh = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Ec
c2Ec:
  %ln2F8 = load i64*, i64** %Sp_Var
  %ln2F9 = getelementptr inbounds i64, i64* %ln2F8, i32 -2
  %ln2Fa = ptrtoint i64* %ln2F9 to i64
  %ln2Fb = icmp ult i64 %ln2Fa, %SpLim_Arg
  %ln2Fd = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Fb, i1 0 )
  br i1 %ln2Fd, label %c2Ed, label %c2Ee
c2Ee:
  %ln2Ff = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2E7_info$def to i64
  %ln2Fe = load i64*, i64** %Sp_Var
  %ln2Fg = getelementptr inbounds i64, i64* %ln2Fe, i32 -2
  store i64 %ln2Ff, i64* %ln2Fg, !tbaa !2
  %ln2Fh = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2Fi = add i64 %ln2Fh, 1
  store i64 %ln2Fi, i64* %R3_Var
  %ln2Fj = load i64, i64* %R2_Var
  store i64 %ln2Fj, i64* %ls2Dh
  %ln2Fk = load i64, i64* %R2_Var
  store i64 %ln2Fk, i64* %R2_Var
  %ln2Fm = load i64, i64* %ls2Dh
  %ln2Fl = load i64*, i64** %Sp_Var
  %ln2Fn = getelementptr inbounds i64, i64* %ln2Fl, i32 -1
  store i64 %ln2Fm, i64* %ln2Fn, !tbaa !2
  %ln2Fo = load i64*, i64** %Sp_Var
  %ln2Fp = getelementptr inbounds i64, i64* %ln2Fo, i32 -2
  %ln2Fq = ptrtoint i64* %ln2Fp to i64
  %ln2Fr = inttoptr i64 %ln2Fq to i64*
  store i64* %ln2Fr, i64** %Sp_Var
  %ln2Fs = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ft = load i64*, i64** %Sp_Var
  %ln2Fu = load i64, i64* %R1_Var
  %ln2Fv = load i64, i64* %R2_Var
  %ln2Fw = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Fs( i64* %Base_Arg, i64* %ln2Ft, i64* %Hp_Arg, i64 %ln2Fu, i64 %ln2Fv, i64 %ln2Fw, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ed:
  %ln2Fx = load i64, i64* %R2_Var
  store i64 %ln2Fx, i64* %R2_Var
  %ln2Fy = ptrtoint %r2Da_closure_struct* @r2Da_closure$def to i64
  store i64 %ln2Fy, i64* %R1_Var
  %ln2Fz = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2FA = bitcast i64* %ln2Fz to i64*
  %ln2FB = load i64, i64* %ln2FA, !tbaa !5
  %ln2FC = inttoptr i64 %ln2FB to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2FD = load i64*, i64** %Sp_Var
  %ln2FE = load i64, i64* %R1_Var
  %ln2FF = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2FC( i64* %Base_Arg, i64* %ln2FD, i64* %Hp_Arg, i64 %ln2FE, i64 %ln2FF, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
declare ccc i1 @llvm.expect.i1(i1, i1)
@c2E7_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2E7_info$def to i8*)
define internal ghccc void @c2E7_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2E7_info$def to i64)) to i32),i32 0)}>
{
n2FG:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2E7
c2E7:
  %ln2FH = load i64, i64* %R1_Var
  switch i64 %ln2FH, label %c2Ea [i64 1, label %c2Eb]
c2Ea:
  %ln2FJ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eh_info$def to i64
  %ln2FI = load i64*, i64** %Sp_Var
  %ln2FK = getelementptr inbounds i64, i64* %ln2FI, i32 0
  store i64 %ln2FJ, i64* %ln2FK, !tbaa !2
  %ln2FL = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2FM = add i64 %ln2FL, 1
  store i64 %ln2FM, i64* %R3_Var
  %ln2FN = load i64*, i64** %Sp_Var
  %ln2FO = getelementptr inbounds i64, i64* %ln2FN, i32 1
  %ln2FP = bitcast i64* %ln2FO to i64*
  %ln2FQ = load i64, i64* %ln2FP, !tbaa !2
  store i64 %ln2FQ, i64* %R2_Var
  %ln2FR = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2FS = load i64*, i64** %Sp_Var
  %ln2FT = load i64, i64* %R1_Var
  %ln2FU = load i64, i64* %R2_Var
  %ln2FV = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2FR( i64* %Base_Arg, i64* %ln2FS, i64* %Hp_Arg, i64 %ln2FT, i64 %ln2FU, i64 %ln2FV, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Eb:
  %ln2FW = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2FX = add i64 %ln2FW, 1
  store i64 %ln2FX, i64* %R1_Var
  %ln2FY = load i64*, i64** %Sp_Var
  %ln2FZ = getelementptr inbounds i64, i64* %ln2FY, i32 2
  %ln2G0 = ptrtoint i64* %ln2FZ to i64
  %ln2G1 = inttoptr i64 %ln2G0 to i64*
  store i64* %ln2G1, i64** %Sp_Var
  %ln2G2 = load i64*, i64** %Sp_Var
  %ln2G3 = getelementptr inbounds i64, i64* %ln2G2, i32 0
  %ln2G4 = bitcast i64* %ln2G3 to i64*
  %ln2G5 = load i64, i64* %ln2G4, !tbaa !2
  %ln2G6 = inttoptr i64 %ln2G5 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2G7 = load i64*, i64** %Sp_Var
  %ln2G8 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2G6( i64* %Base_Arg, i64* %ln2G7, i64* %Hp_Arg, i64 %ln2G8, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Eh_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eh_info$def to i8*)
define internal ghccc void @c2Eh_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Eh_info$def to i64)) to i32),i32 0)}>
{
n2G9:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Eh
c2Eh:
  %ln2Ga = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i64
  %ln2Gb = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Ga, i64* %ln2Gb, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Gc = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Gd = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Gc( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Gd, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2El_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i8*)
define internal ghccc void @c2El_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2El_info$def to i64)) to i32),i32 0)}>
{
n2Ge:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2El
c2El:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2Gf = load i64*, i64** %Sp_Var
  %ln2Gg = getelementptr inbounds i64, i64* %ln2Gf, i32 1
  %ln2Gh = bitcast i64* %ln2Gg to i64*
  %ln2Gi = load i64, i64* %ln2Gh, !tbaa !2
  store i64 %ln2Gi, i64* %R2_Var
  %ln2Gj = load i64*, i64** %Sp_Var
  %ln2Gk = getelementptr inbounds i64, i64* %ln2Gj, i32 2
  %ln2Gl = ptrtoint i64* %ln2Gk to i64
  %ln2Gm = inttoptr i64 %ln2Gl to i64*
  store i64* %ln2Gm, i64** %Sp_Var
  %ln2Gn = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Go = load i64*, i64** %Sp_Var
  %ln2Gp = load i64, i64* %R2_Var
  %ln2Gq = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Gn( i64* %Base_Arg, i64* %ln2Go, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Gp, i64 %ln2Gq, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_mainzufib_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i8*)
define ghccc void @Main_mainzufib_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to i64)) to i32),i32 0)}>
{
n2Gr:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dl = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2EE
c2EE:
  %ln2Gs = load i64*, i64** %Sp_Var
  %ln2Gt = getelementptr inbounds i64, i64* %ln2Gs, i32 -2
  %ln2Gu = ptrtoint i64* %ln2Gt to i64
  %ln2Gv = icmp ult i64 %ln2Gu, %SpLim_Arg
  %ln2Gw = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Gv, i1 0 )
  br i1 %ln2Gw, label %c2EF, label %c2EG
c2EG:
  %ln2Gy = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ez_info$def to i64
  %ln2Gx = load i64*, i64** %Sp_Var
  %ln2Gz = getelementptr inbounds i64, i64* %ln2Gx, i32 -2
  store i64 %ln2Gy, i64* %ln2Gz, !tbaa !2
  %ln2GA = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2GB = add i64 %ln2GA, 1
  store i64 %ln2GB, i64* %R3_Var
  %ln2GC = load i64, i64* %R2_Var
  store i64 %ln2GC, i64* %ls2Dl
  %ln2GD = load i64, i64* %R2_Var
  store i64 %ln2GD, i64* %R2_Var
  %ln2GF = load i64, i64* %ls2Dl
  %ln2GE = load i64*, i64** %Sp_Var
  %ln2GG = getelementptr inbounds i64, i64* %ln2GE, i32 -1
  store i64 %ln2GF, i64* %ln2GG, !tbaa !2
  %ln2GH = load i64*, i64** %Sp_Var
  %ln2GI = getelementptr inbounds i64, i64* %ln2GH, i32 -2
  %ln2GJ = ptrtoint i64* %ln2GI to i64
  %ln2GK = inttoptr i64 %ln2GJ to i64*
  store i64* %ln2GK, i64** %Sp_Var
  %ln2GL = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2GM = load i64*, i64** %Sp_Var
  %ln2GN = load i64, i64* %R1_Var
  %ln2GO = load i64, i64* %R2_Var
  %ln2GP = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2GL( i64* %Base_Arg, i64* %ln2GM, i64* %Hp_Arg, i64 %ln2GN, i64 %ln2GO, i64 %ln2GP, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2EF:
  %ln2GQ = load i64, i64* %R2_Var
  store i64 %ln2GQ, i64* %R2_Var
  %ln2GR = ptrtoint %Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i64
  store i64 %ln2GR, i64* %R1_Var
  %ln2GS = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2GT = bitcast i64* %ln2GS to i64*
  %ln2GU = load i64, i64* %ln2GT, !tbaa !5
  %ln2GV = inttoptr i64 %ln2GU to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2GW = load i64*, i64** %Sp_Var
  %ln2GX = load i64, i64* %R1_Var
  %ln2GY = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2GV( i64* %Base_Arg, i64* %ln2GW, i64* %Hp_Arg, i64 %ln2GX, i64 %ln2GY, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ez_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ez_info$def to i8*)
define internal ghccc void @c2Ez_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ez_info$def to i64)) to i32),i32 0)}>
{
n2GZ:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Ez
c2Ez:
  %ln2H0 = load i64, i64* %R1_Var
  switch i64 %ln2H0, label %c2EC [i64 1, label %c2ED]
c2EC:
  %ln2H2 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EJ_info$def to i64
  %ln2H1 = load i64*, i64** %Sp_Var
  %ln2H3 = getelementptr inbounds i64, i64* %ln2H1, i32 0
  store i64 %ln2H2, i64* %ln2H3, !tbaa !2
  %ln2H4 = ptrtoint %r2D9_closure_struct* @r2D9_closure$def to i64
  %ln2H5 = add i64 %ln2H4, 1
  store i64 %ln2H5, i64* %R3_Var
  %ln2H6 = load i64*, i64** %Sp_Var
  %ln2H7 = getelementptr inbounds i64, i64* %ln2H6, i32 1
  %ln2H8 = bitcast i64* %ln2H7 to i64*
  %ln2H9 = load i64, i64* %ln2H8, !tbaa !2
  store i64 %ln2H9, i64* %R2_Var
  %ln2Ha = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Hb = load i64*, i64** %Sp_Var
  %ln2Hc = load i64, i64* %R1_Var
  %ln2Hd = load i64, i64* %R2_Var
  %ln2He = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ha( i64* %Base_Arg, i64* %ln2Hb, i64* %Hp_Arg, i64 %ln2Hc, i64 %ln2Hd, i64 %ln2He, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2ED:
  %ln2Hf = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2Hg = add i64 %ln2Hf, 1
  store i64 %ln2Hg, i64* %R1_Var
  %ln2Hh = load i64*, i64** %Sp_Var
  %ln2Hi = getelementptr inbounds i64, i64* %ln2Hh, i32 2
  %ln2Hj = ptrtoint i64* %ln2Hi to i64
  %ln2Hk = inttoptr i64 %ln2Hj to i64*
  store i64* %ln2Hk, i64** %Sp_Var
  %ln2Hl = load i64*, i64** %Sp_Var
  %ln2Hm = getelementptr inbounds i64, i64* %ln2Hl, i32 0
  %ln2Hn = bitcast i64* %ln2Hm to i64*
  %ln2Ho = load i64, i64* %ln2Hn, !tbaa !2
  %ln2Hp = inttoptr i64 %ln2Ho to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Hq = load i64*, i64** %Sp_Var
  %ln2Hr = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Hp( i64* %Base_Arg, i64* %ln2Hq, i64* %Hp_Arg, i64 %ln2Hr, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EJ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EJ_info$def to i8*)
define internal ghccc void @c2EJ_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EJ_info$def to i64)) to i32),i32 0)}>
{
n2Hs:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2EJ
c2EJ:
  %ln2Ht = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i64
  %ln2Hu = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Ht, i64* %ln2Hu, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Hv = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Da_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Hw = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Hv( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Hw, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EN_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i8*)
define internal ghccc void @c2EN_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EN_info$def to i64)) to i32),i32 0)}>
{
n2Hx:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2EN
c2EN:
  %ln2Hy = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i64
  %ln2Hz = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Hy, i64* %ln2Hz, !tbaa !2
  %ln2HA = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2HB = add i64 %ln2HA, 1
  store i64 %ln2HB, i64* %R3_Var
  %ln2HC = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2HD = bitcast i64* %ln2HC to i64*
  %ln2HE = load i64, i64* %ln2HD, !tbaa !2
  store i64 %ln2HE, i64* %R2_Var
  %ln2HF = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2HF, !tbaa !2
  %ln2HG = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HH = load i64, i64* %R2_Var
  %ln2HI = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2HG( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HH, i64 %ln2HI, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2ER_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i8*)
define internal ghccc void @c2ER_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Da_closure_struct* @r2Da_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ER_info$def to i64)) to i32),i32 0)}>
{
n2HJ:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2ER
c2ER:
  %ln2HK = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i64
  %ln2HL = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2HK, i64* %ln2HL, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2HM = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Da_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HN = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2HM( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HN, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2EV_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i8*)
define internal ghccc void @c2EV_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2EV_info$def to i64)) to i32),i32 0)}>
{
n2HO:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2EV
c2EV:
  %ln2HP = load i64*, i64** %Sp_Var
  %ln2HQ = getelementptr inbounds i64, i64* %ln2HP, i32 1
  %ln2HR = bitcast i64* %ln2HQ to i64*
  %ln2HS = load i64, i64* %ln2HR, !tbaa !2
  store i64 %ln2HS, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2HT = load i64*, i64** %Sp_Var
  %ln2HU = getelementptr inbounds i64, i64* %ln2HT, i32 2
  %ln2HV = ptrtoint i64* %ln2HU to i64
  %ln2HW = inttoptr i64 %ln2HV to i64*
  store i64* %ln2HW, i64** %Sp_Var
  %ln2HX = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2HY = load i64*, i64** %Sp_Var
  %ln2HZ = load i64, i64* %R2_Var
  %ln2I0 = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2HX( i64* %Base_Arg, i64* %ln2HY, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2HZ, i64 %ln2I0, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main3_closure_struct = type <{i64, i64}>
@Main_main3_closure$def = internal global %Main_main3_closure_struct<{i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_Szh_con_info to i64), i64 8}>
@Main_main3_closure = alias i8, bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*)
%_u2Il_srt_struct = type <{i64, i64, i64, i64}>
%Main_main2_closure_struct = type <{i64, i64, i64, i64}>
@_u2Il_srt$def = internal global %_u2Il_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i64), i64 0}>
@_u2Il_srt = internal alias i8, bitcast (%_u2Il_srt_struct* @_u2Il_srt$def to i8*)
@Main_main2_closure$def = internal global %Main_main2_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main2_closure = alias i8, bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*)
@Main_main2_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i8*)
define ghccc void @Main_main2_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Il_srt_struct* @_u2Il_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main2_info$def to i64)) to i32),i32 0)}>
{
n2Im:
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
  %lc2I4 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2I9
c2I9:
  %ln2In = load i64*, i64** %Sp_Var
  %ln2Io = getelementptr inbounds i64, i64* %ln2In, i32 -3
  %ln2Ip = ptrtoint i64* %ln2Io to i64
  %ln2Iq = icmp ult i64 %ln2Ip, %SpLim_Arg
  %ln2Ir = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Iq, i1 0 )
  br i1 %ln2Ir, label %c2If, label %c2Ig
c2Ig:
  %ln2Is = ptrtoint i64* %Base_Arg to i64
  %ln2It = inttoptr i64 %ln2Is to i8*
  %ln2Iu = load i64, i64* %R1_Var
  %ln2Iv = inttoptr i64 %ln2Iu to i8*
  %ln2Iw = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2Ix = call ccc i8* (i8*, i8*) %ln2Iw( i8* %ln2It, i8* %ln2Iv ) nounwind
  %ln2Iy = ptrtoint i8* %ln2Ix to i64
  store i64 %ln2Iy, i64* %lc2I4
  %ln2Iz = load i64, i64* %lc2I4
  %ln2IA = icmp eq i64 %ln2Iz, 0
  br i1 %ln2IA, label %c2I6, label %c2I5
c2I5:
  %ln2IC = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2IB = load i64*, i64** %Sp_Var
  %ln2ID = getelementptr inbounds i64, i64* %ln2IB, i32 -2
  store i64 %ln2IC, i64* %ln2ID, !tbaa !2
  %ln2IF = load i64, i64* %lc2I4
  %ln2IE = load i64*, i64** %Sp_Var
  %ln2IG = getelementptr inbounds i64, i64* %ln2IE, i32 -1
  store i64 %ln2IF, i64* %ln2IG, !tbaa !2
  %ln2II = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2I7_info$def to i64
  %ln2IH = load i64*, i64** %Sp_Var
  %ln2IJ = getelementptr inbounds i64, i64* %ln2IH, i32 -3
  store i64 %ln2II, i64* %ln2IJ, !tbaa !2
  %ln2IK = ptrtoint %Main_main3_closure_struct* @Main_main3_closure$def to i64
  %ln2IL = add i64 %ln2IK, 1
  store i64 %ln2IL, i64* %R2_Var
  %ln2IM = load i64*, i64** %Sp_Var
  %ln2IN = getelementptr inbounds i64, i64* %ln2IM, i32 -3
  %ln2IO = ptrtoint i64* %ln2IN to i64
  %ln2IP = inttoptr i64 %ln2IO to i64*
  store i64* %ln2IP, i64** %Sp_Var
  %ln2IQ = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2IR = load i64*, i64** %Sp_Var
  %ln2IS = load i64, i64* %R1_Var
  %ln2IT = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2IQ( i64* %Base_Arg, i64* %ln2IR, i64* %Hp_Arg, i64 %ln2IS, i64 %ln2IT, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2I6:
  %ln2IV = load i64, i64* %R1_Var
  %ln2IW = inttoptr i64 %ln2IV to i64*
  %ln2IX = load i64, i64* %ln2IW, !tbaa !4
  %ln2IY = inttoptr i64 %ln2IX to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2IZ = load i64*, i64** %Sp_Var
  %ln2J0 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2IY( i64* %Base_Arg, i64* %ln2IZ, i64* %Hp_Arg, i64 %ln2J0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2If:
  %ln2J1 = load i64, i64* %R1_Var
  store i64 %ln2J1, i64* %R1_Var
  %ln2J2 = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2J3 = bitcast i64* %ln2J2 to i64*
  %ln2J4 = load i64, i64* %ln2J3, !tbaa !5
  %ln2J5 = inttoptr i64 %ln2J4 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2J6 = load i64*, i64** %Sp_Var
  %ln2J7 = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2J5( i64* %Base_Arg, i64* %ln2J6, i64* %Hp_Arg, i64 %ln2J7, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2I7_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2I7_info$def to i8*)
define internal ghccc void @c2I7_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2I7_info$def to i64)) to i32),i32 0)}>
{
n2J8:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2I7
c2I7:
  %ln2J9 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ic_info$def to i64
  %ln2Ja = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2J9, i64* %ln2Ja, !tbaa !2
  %ln2Jb = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2Jc = add i64 %ln2Jb, 1
  store i64 %ln2Jc, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2Jd = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Je = load i64, i64* %R2_Var
  %ln2Jf = load i64, i64* %R3_Var
  %ln2Jg = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Jd( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Je, i64 %ln2Jf, i64 %ln2Jg, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ic_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ic_info$def to i8*)
define internal ghccc void @c2Ic_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2Jh:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2Ic
c2Ic:
  %ln2Ji = load i64*, i64** %Hp_Var
  %ln2Jj = getelementptr inbounds i64, i64* %ln2Ji, i32 3
  %ln2Jk = ptrtoint i64* %ln2Jj to i64
  %ln2Jl = inttoptr i64 %ln2Jk to i64*
  store i64* %ln2Jl, i64** %Hp_Var
  %ln2Jm = load i64*, i64** %Hp_Var
  %ln2Jn = ptrtoint i64* %ln2Jm to i64
  %ln2Jo = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2Jp = bitcast i64* %ln2Jo to i64*
  %ln2Jq = load i64, i64* %ln2Jp, !tbaa !5
  %ln2Jr = icmp ugt i64 %ln2Jn, %ln2Jq
  %ln2Js = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2Jr, i1 0 )
  br i1 %ln2Js, label %c2Ik, label %c2Ij
c2Ij:
  %ln2Ju = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2Jt = load i64*, i64** %Hp_Var
  %ln2Jv = getelementptr inbounds i64, i64* %ln2Jt, i32 -2
  store i64 %ln2Ju, i64* %ln2Jv, !tbaa !3
  %ln2Jx = load i64, i64* %R1_Var
  %ln2Jw = load i64*, i64** %Hp_Var
  %ln2Jy = getelementptr inbounds i64, i64* %ln2Jw, i32 -1
  store i64 %ln2Jx, i64* %ln2Jy, !tbaa !3
  %ln2JA = load i64, i64* %R2_Var
  %ln2Jz = load i64*, i64** %Hp_Var
  %ln2JB = getelementptr inbounds i64, i64* %ln2Jz, i32 0
  store i64 %ln2JA, i64* %ln2JB, !tbaa !3
  %ln2JD = load i64*, i64** %Hp_Var
  %ln2JE = ptrtoint i64* %ln2JD to i64
  %ln2JF = add i64 %ln2JE, -14
  store i64 %ln2JF, i64* %R1_Var
  %ln2JG = load i64*, i64** %Sp_Var
  %ln2JH = getelementptr inbounds i64, i64* %ln2JG, i32 1
  %ln2JI = ptrtoint i64* %ln2JH to i64
  %ln2JJ = inttoptr i64 %ln2JI to i64*
  store i64* %ln2JJ, i64** %Sp_Var
  %ln2JK = load i64*, i64** %Sp_Var
  %ln2JL = getelementptr inbounds i64, i64* %ln2JK, i32 0
  %ln2JM = bitcast i64* %ln2JL to i64*
  %ln2JN = load i64, i64* %ln2JM, !tbaa !2
  %ln2JO = inttoptr i64 %ln2JN to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2JP = load i64*, i64** %Sp_Var
  %ln2JQ = load i64*, i64** %Hp_Var
  %ln2JR = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2JO( i64* %Base_Arg, i64* %ln2JP, i64* %ln2JQ, i64 %ln2JR, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ik:
  %ln2JS = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2JS, !tbaa !5
  %ln2JT = load i64, i64* %R2_Var
  store i64 %ln2JT, i64* %R2_Var
  %ln2JU = load i64, i64* %R1_Var
  store i64 %ln2JU, i64* %R1_Var
  %ln2JV = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2JW = load i64*, i64** %Sp_Var
  %ln2JX = load i64*, i64** %Hp_Var
  %ln2JY = load i64, i64* %R1_Var
  %ln2JZ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2JV( i64* %Base_Arg, i64* %ln2JW, i64* %ln2JX, i64 %ln2JY, i64 %ln2JZ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2KX_srt_struct = type <{i64, i64, i64, i64}>
%Main_mainzufac_closure_struct = type <{i64, i64, i64, i64}>
@_u2KX_srt$def = internal global %_u2KX_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 0}>
@_u2KX_srt = internal alias i8, bitcast (%_u2KX_srt_struct* @_u2KX_srt$def to i8*)
@Main_mainzufac_closure$def = internal global %Main_mainzufac_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @_u2KX_srt to i64), i64 0}>
@Main_mainzufac_closure = alias i8, bitcast (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i8*)
@Main_mainzufac_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to i8*)
define ghccc void @Main_mainzufac_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 2, i32 14, i32 0}>
{
n2KY:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2Dv = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2K9
c2K9:
  %ln2KZ = load i64*, i64** %Sp_Var
  %ln2L0 = getelementptr inbounds i64, i64* %ln2KZ, i32 -3
  %ln2L1 = ptrtoint i64* %ln2L0 to i64
  %ln2L2 = icmp ult i64 %ln2L1, %SpLim_Arg
  %ln2L3 = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2L2, i1 0 )
  br i1 %ln2L3, label %c2Ka, label %c2Kb
c2Kb:
  %ln2L5 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K4_info$def to i64
  %ln2L4 = load i64*, i64** %Sp_Var
  %ln2L6 = getelementptr inbounds i64, i64* %ln2L4, i32 -2
  store i64 %ln2L5, i64* %ln2L6, !tbaa !2
  %ln2L7 = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2L8 = add i64 %ln2L7, 1
  store i64 %ln2L8, i64* %R3_Var
  %ln2L9 = load i64, i64* %R2_Var
  store i64 %ln2L9, i64* %ls2Dv
  %ln2La = load i64, i64* %R2_Var
  store i64 %ln2La, i64* %R2_Var
  %ln2Lc = load i64, i64* %ls2Dv
  %ln2Lb = load i64*, i64** %Sp_Var
  %ln2Ld = getelementptr inbounds i64, i64* %ln2Lb, i32 -1
  store i64 %ln2Lc, i64* %ln2Ld, !tbaa !2
  %ln2Le = load i64*, i64** %Sp_Var
  %ln2Lf = getelementptr inbounds i64, i64* %ln2Le, i32 -2
  %ln2Lg = ptrtoint i64* %ln2Lf to i64
  %ln2Lh = inttoptr i64 %ln2Lg to i64*
  store i64* %ln2Lh, i64** %Sp_Var
  %ln2Li = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Lj = load i64*, i64** %Sp_Var
  %ln2Lk = load i64, i64* %R1_Var
  %ln2Ll = load i64, i64* %R2_Var
  %ln2Lm = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Li( i64* %Base_Arg, i64* %ln2Lj, i64* %Hp_Arg, i64 %ln2Lk, i64 %ln2Ll, i64 %ln2Lm, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ka:
  %ln2Ln = load i64, i64* %R2_Var
  store i64 %ln2Ln, i64* %R2_Var
  %ln2Lo = ptrtoint %Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64
  store i64 %ln2Lo, i64* %R1_Var
  %ln2Lp = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2Lq = bitcast i64* %ln2Lp to i64*
  %ln2Lr = load i64, i64* %ln2Lq, !tbaa !5
  %ln2Ls = inttoptr i64 %ln2Lr to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Lt = load i64*, i64** %Sp_Var
  %ln2Lu = load i64, i64* %R1_Var
  %ln2Lv = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ls( i64* %Base_Arg, i64* %ln2Lt, i64* %Hp_Arg, i64 %ln2Lu, i64 %ln2Lv, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2K4_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K4_info$def to i8*)
define internal ghccc void @c2K4_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2K4_info$def to i64)) to i32),i32 0)}>
{
n2Lw:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2K4
c2K4:
  %ln2Lx = load i64, i64* %R1_Var
  switch i64 %ln2Lx, label %c2K7 [i64 1, label %c2K8]
c2K7:
  %ln2Lz = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ke_info$def to i64
  %ln2Ly = load i64*, i64** %Sp_Var
  %ln2LA = getelementptr inbounds i64, i64* %ln2Ly, i32 0
  store i64 %ln2Lz, i64* %ln2LA, !tbaa !2
  %ln2LB = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2LC = add i64 %ln2LB, 1
  store i64 %ln2LC, i64* %R3_Var
  %ln2LD = load i64*, i64** %Sp_Var
  %ln2LE = getelementptr inbounds i64, i64* %ln2LD, i32 1
  %ln2LF = bitcast i64* %ln2LE to i64*
  %ln2LG = load i64, i64* %ln2LF, !tbaa !2
  store i64 %ln2LG, i64* %R2_Var
  %ln2LH = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2LI = load i64*, i64** %Sp_Var
  %ln2LJ = load i64, i64* %R1_Var
  %ln2LK = load i64, i64* %R2_Var
  %ln2LL = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2LH( i64* %Base_Arg, i64* %ln2LI, i64* %Hp_Arg, i64 %ln2LJ, i64 %ln2LK, i64 %ln2LL, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2K8:
  %ln2LM = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2LN = add i64 %ln2LM, 1
  store i64 %ln2LN, i64* %R1_Var
  %ln2LO = load i64*, i64** %Sp_Var
  %ln2LP = getelementptr inbounds i64, i64* %ln2LO, i32 2
  %ln2LQ = ptrtoint i64* %ln2LP to i64
  %ln2LR = inttoptr i64 %ln2LQ to i64*
  store i64* %ln2LR, i64** %Sp_Var
  %ln2LS = load i64*, i64** %Sp_Var
  %ln2LT = getelementptr inbounds i64, i64* %ln2LS, i32 0
  %ln2LU = bitcast i64* %ln2LT to i64*
  %ln2LV = load i64, i64* %ln2LU, !tbaa !2
  %ln2LW = inttoptr i64 %ln2LV to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2LX = load i64*, i64** %Sp_Var
  %ln2LY = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2LW( i64* %Base_Arg, i64* %ln2LX, i64* %Hp_Arg, i64 %ln2LY, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ke_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ke_info$def to i8*)
define internal ghccc void @c2Ke_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ke_info$def to i64)) to i32),i32 0)}>
{
n2LZ:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Ke
c2Ke:
  %ln2M1 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kj_info$def to i64
  %ln2M0 = load i64*, i64** %Sp_Var
  %ln2M2 = getelementptr inbounds i64, i64* %ln2M0, i32 -1
  store i64 %ln2M1, i64* %ln2M2, !tbaa !2
  %ln2M3 = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2M4 = add i64 %ln2M3, 1
  store i64 %ln2M4, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2M5 = load i64*, i64** %Sp_Var
  %ln2M6 = getelementptr inbounds i64, i64* %ln2M5, i32 0
  store i64 %R1_Arg, i64* %ln2M6, !tbaa !2
  %ln2M7 = load i64*, i64** %Sp_Var
  %ln2M8 = getelementptr inbounds i64, i64* %ln2M7, i32 -1
  %ln2M9 = ptrtoint i64* %ln2M8 to i64
  %ln2Ma = inttoptr i64 %ln2M9 to i64*
  store i64* %ln2Ma, i64** %Sp_Var
  %ln2Mb = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Mc = load i64*, i64** %Sp_Var
  %ln2Md = load i64, i64* %R2_Var
  %ln2Me = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Mb( i64* %Base_Arg, i64* %ln2Mc, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Md, i64 %ln2Me, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Kj_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kj_info$def to i8*)
define internal ghccc void @c2Kj_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kj_info$def to i64)) to i32),i32 0)}>
{
n2Mf:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Kj
c2Kj:
  switch i64 %R1_Arg, label %c2KH [i64 1, label %c2KT]
c2KH:
  %ln2Mh = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ko_info$def to i64
  %ln2Mg = load i64*, i64** %Sp_Var
  %ln2Mi = getelementptr inbounds i64, i64* %ln2Mg, i32 0
  store i64 %ln2Mh, i64* %ln2Mi, !tbaa !2
  %ln2Mj = ptrtoint %r2D9_closure_struct* @r2D9_closure$def to i64
  %ln2Mk = add i64 %ln2Mj, 1
  store i64 %ln2Mk, i64* %R3_Var
  %ln2Ml = load i64*, i64** %Sp_Var
  %ln2Mm = getelementptr inbounds i64, i64* %ln2Ml, i32 1
  %ln2Mn = bitcast i64* %ln2Mm to i64*
  %ln2Mo = load i64, i64* %ln2Mn, !tbaa !2
  store i64 %ln2Mo, i64* %R2_Var
  %ln2Mp = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Mq = load i64*, i64** %Sp_Var
  %ln2Mr = load i64, i64* %R2_Var
  %ln2Ms = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Mp( i64* %Base_Arg, i64* %ln2Mq, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Mr, i64 %ln2Ms, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2KT:
  %ln2Mt = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2Mu = add i64 %ln2Mt, 1
  store i64 %ln2Mu, i64* %R3_Var
  %ln2Mv = load i64*, i64** %Sp_Var
  %ln2Mw = getelementptr inbounds i64, i64* %ln2Mv, i32 2
  %ln2Mx = bitcast i64* %ln2Mw to i64*
  %ln2My = load i64, i64* %ln2Mx, !tbaa !2
  store i64 %ln2My, i64* %R2_Var
  %ln2Mz = load i64*, i64** %Sp_Var
  %ln2MA = getelementptr inbounds i64, i64* %ln2Mz, i32 3
  %ln2MB = ptrtoint i64* %ln2MA to i64
  %ln2MC = inttoptr i64 %ln2MB to i64*
  store i64* %ln2MC, i64** %Sp_Var
  %ln2MD = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2ME = load i64*, i64** %Sp_Var
  %ln2MF = load i64, i64* %R2_Var
  %ln2MG = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MD( i64* %Base_Arg, i64* %ln2ME, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2MF, i64 %ln2MG, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ko_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ko_info$def to i8*)
define internal ghccc void @c2Ko_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ko_info$def to i64)) to i32),i32 0)}>
{
n2MH:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Ko
c2Ko:
  %ln2MI = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i64
  %ln2MJ = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2MI, i64* %ln2MJ, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2MK = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2ML = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MK( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2ML, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Ks_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i8*)
define internal ghccc void @c2Ks_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Ks_info$def to i64)) to i32),i32 0)}>
{
n2MM:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Ks
c2Ks:
  %ln2MN = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i64
  %ln2MO = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2MN, i64* %ln2MO, !tbaa !2
  %ln2MP = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2MQ = add i64 %ln2MP, 1
  store i64 %ln2MQ, i64* %R3_Var
  %ln2MR = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2MS = bitcast i64* %ln2MR to i64*
  %ln2MT = load i64, i64* %ln2MS, !tbaa !2
  store i64 %ln2MT, i64* %R2_Var
  %ln2MU = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2MU, !tbaa !2
  %ln2MV = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2MW = load i64, i64* %R2_Var
  %ln2MX = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2MV( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2MW, i64 %ln2MX, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Kw_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i8*)
define internal ghccc void @c2Kw_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Kw_info$def to i64)) to i32),i32 0)}>
{
n2MY:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Kw
c2Kw:
  %ln2MZ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i64
  %ln2N0 = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2MZ, i64* %ln2N0, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2N1 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2N2 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2N1( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2N2, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2KA_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i8*)
define internal ghccc void @c2KA_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 2, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2KX_srt_struct* @_u2KX_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KA_info$def to i64)) to i32),i32 0)}>
{
n2N3:
  %ls2DC = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2KA
c2KA:
  %ln2N4 = load i64*, i64** %Sp_Var
  %ln2N5 = getelementptr inbounds i64, i64* %ln2N4, i32 1
  %ln2N6 = bitcast i64* %ln2N5 to i64*
  %ln2N7 = load i64, i64* %ln2N6, !tbaa !2
  store i64 %ln2N7, i64* %ls2DC
  %ln2N9 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i64
  %ln2N8 = load i64*, i64** %Sp_Var
  %ln2Na = getelementptr inbounds i64, i64* %ln2N8, i32 1
  store i64 %ln2N9, i64* %ln2Na, !tbaa !2
  %ln2Nb = load i64, i64* %ls2DC
  store i64 %ln2Nb, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Nc = load i64*, i64** %Sp_Var
  %ln2Nd = getelementptr inbounds i64, i64* %ln2Nc, i32 1
  %ln2Ne = ptrtoint i64* %ln2Nd to i64
  %ln2Nf = inttoptr i64 %ln2Ne to i64*
  store i64* %ln2Nf, i64** %Sp_Var
  %ln2Ng = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Nh = load i64*, i64** %Sp_Var
  %ln2Ni = load i64, i64* %R2_Var
  %ln2Nj = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ng( i64* %Base_Arg, i64* %ln2Nh, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Ni, i64 %ln2Nj, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2KE_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i8*)
define internal ghccc void @c2KE_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2KE_info$def to i64)) to i32),i32 0)}>
{
n2Nk:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2KE
c2KE:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2Nl = load i64*, i64** %Sp_Var
  %ln2Nm = getelementptr inbounds i64, i64* %ln2Nl, i32 1
  %ln2Nn = bitcast i64* %ln2Nm to i64*
  %ln2No = load i64, i64* %ln2Nn, !tbaa !2
  store i64 %ln2No, i64* %R2_Var
  %ln2Np = load i64*, i64** %Sp_Var
  %ln2Nq = getelementptr inbounds i64, i64* %ln2Np, i32 2
  %ln2Nr = ptrtoint i64* %ln2Nq to i64
  %ln2Ns = inttoptr i64 %ln2Nr to i64*
  store i64* %ln2Ns, i64** %Sp_Var
  %ln2Nt = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Nu = load i64*, i64** %Sp_Var
  %ln2Nv = load i64, i64* %R2_Var
  %ln2Nw = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Nt( i64* %Base_Arg, i64* %ln2Nu, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Nv, i64 %ln2Nw, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2NR_srt_struct = type <{i64, i64, i64, i64}>
%Main_main4_closure_struct = type <{i64, i64, i64, i64}>
@_u2NR_srt$def = internal global %_u2NR_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i64), i64 0}>
@_u2NR_srt = internal alias i8, bitcast (%_u2NR_srt_struct* @_u2NR_srt$def to i8*)
@Main_main4_closure$def = internal global %Main_main4_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main4_closure = alias i8, bitcast (%Main_main4_closure_struct* @Main_main4_closure$def to i8*)
@Main_main4_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i8*)
define ghccc void @Main_main4_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2NR_srt_struct* @_u2NR_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main4_info$def to i64)) to i32),i32 0)}>
{
n2NS:
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
  %lc2NA = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2NF
c2NF:
  %ln2NT = load i64*, i64** %Sp_Var
  %ln2NU = getelementptr inbounds i64, i64* %ln2NT, i32 -3
  %ln2NV = ptrtoint i64* %ln2NU to i64
  %ln2NW = icmp ult i64 %ln2NV, %SpLim_Arg
  %ln2NX = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2NW, i1 0 )
  br i1 %ln2NX, label %c2NL, label %c2NM
c2NM:
  %ln2NY = ptrtoint i64* %Base_Arg to i64
  %ln2NZ = inttoptr i64 %ln2NY to i8*
  %ln2O0 = load i64, i64* %R1_Var
  %ln2O1 = inttoptr i64 %ln2O0 to i8*
  %ln2O2 = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2O3 = call ccc i8* (i8*, i8*) %ln2O2( i8* %ln2NZ, i8* %ln2O1 ) nounwind
  %ln2O4 = ptrtoint i8* %ln2O3 to i64
  store i64 %ln2O4, i64* %lc2NA
  %ln2O5 = load i64, i64* %lc2NA
  %ln2O6 = icmp eq i64 %ln2O5, 0
  br i1 %ln2O6, label %c2NC, label %c2NB
c2NB:
  %ln2O8 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2O7 = load i64*, i64** %Sp_Var
  %ln2O9 = getelementptr inbounds i64, i64* %ln2O7, i32 -2
  store i64 %ln2O8, i64* %ln2O9, !tbaa !2
  %ln2Ob = load i64, i64* %lc2NA
  %ln2Oa = load i64*, i64** %Sp_Var
  %ln2Oc = getelementptr inbounds i64, i64* %ln2Oa, i32 -1
  store i64 %ln2Ob, i64* %ln2Oc, !tbaa !2
  %ln2Oe = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ND_info$def to i64
  %ln2Od = load i64*, i64** %Sp_Var
  %ln2Of = getelementptr inbounds i64, i64* %ln2Od, i32 -3
  store i64 %ln2Oe, i64* %ln2Of, !tbaa !2
  %ln2Og = ptrtoint %Main_mainzux_closure_struct* @Main_mainzux_closure$def to i64
  %ln2Oh = add i64 %ln2Og, 1
  store i64 %ln2Oh, i64* %R2_Var
  %ln2Oi = load i64*, i64** %Sp_Var
  %ln2Oj = getelementptr inbounds i64, i64* %ln2Oi, i32 -3
  %ln2Ok = ptrtoint i64* %ln2Oj to i64
  %ln2Ol = inttoptr i64 %ln2Ok to i64*
  store i64* %ln2Ol, i64** %Sp_Var
  %ln2Om = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufac_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2On = load i64*, i64** %Sp_Var
  %ln2Oo = load i64, i64* %R1_Var
  %ln2Op = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Om( i64* %Base_Arg, i64* %ln2On, i64* %Hp_Arg, i64 %ln2Oo, i64 %ln2Op, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NC:
  %ln2Or = load i64, i64* %R1_Var
  %ln2Os = inttoptr i64 %ln2Or to i64*
  %ln2Ot = load i64, i64* %ln2Os, !tbaa !4
  %ln2Ou = inttoptr i64 %ln2Ot to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ov = load i64*, i64** %Sp_Var
  %ln2Ow = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ou( i64* %Base_Arg, i64* %ln2Ov, i64* %Hp_Arg, i64 %ln2Ow, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NL:
  %ln2Ox = load i64, i64* %R1_Var
  store i64 %ln2Ox, i64* %R1_Var
  %ln2Oy = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2Oz = bitcast i64* %ln2Oy to i64*
  %ln2OA = load i64, i64* %ln2Oz, !tbaa !5
  %ln2OB = inttoptr i64 %ln2OA to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2OC = load i64*, i64** %Sp_Var
  %ln2OD = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2OB( i64* %Base_Arg, i64* %ln2OC, i64* %Hp_Arg, i64 %ln2OD, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2ND_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ND_info$def to i8*)
define internal ghccc void @c2ND_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2ND_info$def to i64)) to i32),i32 0)}>
{
n2OE:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2ND
c2ND:
  %ln2OF = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NI_info$def to i64
  %ln2OG = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2OF, i64* %ln2OG, !tbaa !2
  %ln2OH = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2OI = add i64 %ln2OH, 1
  store i64 %ln2OI, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2OJ = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2OK = load i64, i64* %R2_Var
  %ln2OL = load i64, i64* %R3_Var
  %ln2OM = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2OJ( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2OK, i64 %ln2OL, i64 %ln2OM, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2NI_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2NI_info$def to i8*)
define internal ghccc void @c2NI_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2ON:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2NI
c2NI:
  %ln2OO = load i64*, i64** %Hp_Var
  %ln2OP = getelementptr inbounds i64, i64* %ln2OO, i32 3
  %ln2OQ = ptrtoint i64* %ln2OP to i64
  %ln2OR = inttoptr i64 %ln2OQ to i64*
  store i64* %ln2OR, i64** %Hp_Var
  %ln2OS = load i64*, i64** %Hp_Var
  %ln2OT = ptrtoint i64* %ln2OS to i64
  %ln2OU = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2OV = bitcast i64* %ln2OU to i64*
  %ln2OW = load i64, i64* %ln2OV, !tbaa !5
  %ln2OX = icmp ugt i64 %ln2OT, %ln2OW
  %ln2OY = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2OX, i1 0 )
  br i1 %ln2OY, label %c2NQ, label %c2NP
c2NP:
  %ln2P0 = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2OZ = load i64*, i64** %Hp_Var
  %ln2P1 = getelementptr inbounds i64, i64* %ln2OZ, i32 -2
  store i64 %ln2P0, i64* %ln2P1, !tbaa !3
  %ln2P3 = load i64, i64* %R1_Var
  %ln2P2 = load i64*, i64** %Hp_Var
  %ln2P4 = getelementptr inbounds i64, i64* %ln2P2, i32 -1
  store i64 %ln2P3, i64* %ln2P4, !tbaa !3
  %ln2P6 = load i64, i64* %R2_Var
  %ln2P5 = load i64*, i64** %Hp_Var
  %ln2P7 = getelementptr inbounds i64, i64* %ln2P5, i32 0
  store i64 %ln2P6, i64* %ln2P7, !tbaa !3
  %ln2P9 = load i64*, i64** %Hp_Var
  %ln2Pa = ptrtoint i64* %ln2P9 to i64
  %ln2Pb = add i64 %ln2Pa, -14
  store i64 %ln2Pb, i64* %R1_Var
  %ln2Pc = load i64*, i64** %Sp_Var
  %ln2Pd = getelementptr inbounds i64, i64* %ln2Pc, i32 1
  %ln2Pe = ptrtoint i64* %ln2Pd to i64
  %ln2Pf = inttoptr i64 %ln2Pe to i64*
  store i64* %ln2Pf, i64** %Sp_Var
  %ln2Pg = load i64*, i64** %Sp_Var
  %ln2Ph = getelementptr inbounds i64, i64* %ln2Pg, i32 0
  %ln2Pi = bitcast i64* %ln2Ph to i64*
  %ln2Pj = load i64, i64* %ln2Pi, !tbaa !2
  %ln2Pk = inttoptr i64 %ln2Pj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Pl = load i64*, i64** %Sp_Var
  %ln2Pm = load i64*, i64** %Hp_Var
  %ln2Pn = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Pk( i64* %Base_Arg, i64* %ln2Pl, i64* %ln2Pm, i64 %ln2Pn, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2NQ:
  %ln2Po = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2Po, !tbaa !5
  %ln2Pp = load i64, i64* %R2_Var
  store i64 %ln2Pp, i64* %R2_Var
  %ln2Pq = load i64, i64* %R1_Var
  store i64 %ln2Pq, i64* %R1_Var
  %ln2Pr = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ps = load i64*, i64** %Sp_Var
  %ln2Pt = load i64*, i64** %Hp_Var
  %ln2Pu = load i64, i64* %R1_Var
  %ln2Pv = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Pr( i64* %Base_Arg, i64* %ln2Ps, i64* %ln2Pt, i64 %ln2Pu, i64 %ln2Pv, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%r2Db_closure_struct = type <{i64, i64, i64, i64, i64, i64}>
%Main_mainzufib1_closure_struct = type <{i64, i64}>
@r2Db_closure$def = internal global %r2Db_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Db_info$def to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64), i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_closure to i64), i64 ptrtoint (i8* @Main_mainzufib1_closure to i64), i64 0}>
@r2Db_closure = internal alias i8, bitcast (%r2Db_closure_struct* @r2Db_closure$def to i8*)
@Main_mainzufib1_closure$def = internal global %Main_mainzufib1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i64), i64 0}>
@Main_mainzufib1_closure = alias i8, bitcast (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i8*)
@r2Db_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Db_info$def to i8*)
define internal ghccc void @r2Db_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 4, i32 14, i32 0}>
{
n2QA:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2DI = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2PF
c2PF:
  %ln2QB = load i64*, i64** %Sp_Var
  %ln2QC = getelementptr inbounds i64, i64* %ln2QB, i32 -2
  %ln2QD = ptrtoint i64* %ln2QC to i64
  %ln2QE = icmp ult i64 %ln2QD, %SpLim_Arg
  %ln2QF = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2QE, i1 0 )
  br i1 %ln2QF, label %c2PG, label %c2PH
c2PH:
  %ln2QH = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PA_info$def to i64
  %ln2QG = load i64*, i64** %Sp_Var
  %ln2QI = getelementptr inbounds i64, i64* %ln2QG, i32 -2
  store i64 %ln2QH, i64* %ln2QI, !tbaa !2
  %ln2QJ = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2QK = add i64 %ln2QJ, 1
  store i64 %ln2QK, i64* %R3_Var
  %ln2QL = load i64, i64* %R2_Var
  store i64 %ln2QL, i64* %ls2DI
  %ln2QM = load i64, i64* %R2_Var
  store i64 %ln2QM, i64* %R2_Var
  %ln2QO = load i64, i64* %ls2DI
  %ln2QN = load i64*, i64** %Sp_Var
  %ln2QP = getelementptr inbounds i64, i64* %ln2QN, i32 -1
  store i64 %ln2QO, i64* %ln2QP, !tbaa !2
  %ln2QQ = load i64*, i64** %Sp_Var
  %ln2QR = getelementptr inbounds i64, i64* %ln2QQ, i32 -2
  %ln2QS = ptrtoint i64* %ln2QR to i64
  %ln2QT = inttoptr i64 %ln2QS to i64*
  store i64* %ln2QT, i64** %Sp_Var
  %ln2QU = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2QV = load i64*, i64** %Sp_Var
  %ln2QW = load i64, i64* %R1_Var
  %ln2QX = load i64, i64* %R2_Var
  %ln2QY = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2QU( i64* %Base_Arg, i64* %ln2QV, i64* %Hp_Arg, i64 %ln2QW, i64 %ln2QX, i64 %ln2QY, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2PG:
  %ln2QZ = load i64, i64* %R2_Var
  store i64 %ln2QZ, i64* %R2_Var
  %ln2R0 = ptrtoint %r2Db_closure_struct* @r2Db_closure$def to i64
  store i64 %ln2R0, i64* %R1_Var
  %ln2R1 = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2R2 = bitcast i64* %ln2R1 to i64*
  %ln2R3 = load i64, i64* %ln2R2, !tbaa !5
  %ln2R4 = inttoptr i64 %ln2R3 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2R5 = load i64*, i64** %Sp_Var
  %ln2R6 = load i64, i64* %R1_Var
  %ln2R7 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2R4( i64* %Base_Arg, i64* %ln2R5, i64* %Hp_Arg, i64 %ln2R6, i64 %ln2R7, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PA_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PA_info$def to i8*)
define internal ghccc void @c2PA_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PA_info$def to i64)) to i32),i32 0)}>
{
n2R8:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2PA
c2PA:
  %ln2R9 = load i64, i64* %R1_Var
  switch i64 %ln2R9, label %c2PD [i64 1, label %c2PE]
c2PD:
  %ln2Rb = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PK_info$def to i64
  %ln2Ra = load i64*, i64** %Sp_Var
  %ln2Rc = getelementptr inbounds i64, i64* %ln2Ra, i32 0
  store i64 %ln2Rb, i64* %ln2Rc, !tbaa !2
  %ln2Rd = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2Re = add i64 %ln2Rd, 1
  store i64 %ln2Re, i64* %R3_Var
  %ln2Rf = load i64*, i64** %Sp_Var
  %ln2Rg = getelementptr inbounds i64, i64* %ln2Rf, i32 1
  %ln2Rh = bitcast i64* %ln2Rg to i64*
  %ln2Ri = load i64, i64* %ln2Rh, !tbaa !2
  store i64 %ln2Ri, i64* %R2_Var
  %ln2Rj = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Rk = load i64*, i64** %Sp_Var
  %ln2Rl = load i64, i64* %R1_Var
  %ln2Rm = load i64, i64* %R2_Var
  %ln2Rn = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Rj( i64* %Base_Arg, i64* %ln2Rk, i64* %Hp_Arg, i64 %ln2Rl, i64 %ln2Rm, i64 %ln2Rn, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2PE:
  %ln2Ro = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2Rp = add i64 %ln2Ro, 1
  store i64 %ln2Rp, i64* %R1_Var
  %ln2Rq = load i64*, i64** %Sp_Var
  %ln2Rr = getelementptr inbounds i64, i64* %ln2Rq, i32 2
  %ln2Rs = ptrtoint i64* %ln2Rr to i64
  %ln2Rt = inttoptr i64 %ln2Rs to i64*
  store i64* %ln2Rt, i64** %Sp_Var
  %ln2Ru = load i64*, i64** %Sp_Var
  %ln2Rv = getelementptr inbounds i64, i64* %ln2Ru, i32 0
  %ln2Rw = bitcast i64* %ln2Rv to i64*
  %ln2Rx = load i64, i64* %ln2Rw, !tbaa !2
  %ln2Ry = inttoptr i64 %ln2Rx to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Rz = load i64*, i64** %Sp_Var
  %ln2RA = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ry( i64* %Base_Arg, i64* %ln2Rz, i64* %Hp_Arg, i64 %ln2RA, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PK_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PK_info$def to i8*)
define internal ghccc void @c2PK_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PK_info$def to i64)) to i32),i32 0)}>
{
n2RB:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2PK
c2PK:
  %ln2RC = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i64
  %ln2RD = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2RC, i64* %ln2RD, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2RE = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2RF = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2RE( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2RF, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2PO_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i8*)
define internal ghccc void @c2PO_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2PO_info$def to i64)) to i32),i32 0)}>
{
n2RG:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2PO
c2PO:
  store i64 %R1_Arg, i64* %R3_Var
  %ln2RH = load i64*, i64** %Sp_Var
  %ln2RI = getelementptr inbounds i64, i64* %ln2RH, i32 1
  %ln2RJ = bitcast i64* %ln2RI to i64*
  %ln2RK = load i64, i64* %ln2RJ, !tbaa !2
  store i64 %ln2RK, i64* %R2_Var
  %ln2RL = load i64*, i64** %Sp_Var
  %ln2RM = getelementptr inbounds i64, i64* %ln2RL, i32 2
  %ln2RN = ptrtoint i64* %ln2RM to i64
  %ln2RO = inttoptr i64 %ln2RN to i64*
  store i64* %ln2RO, i64** %Sp_Var
  %ln2RP = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_timesInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2RQ = load i64*, i64** %Sp_Var
  %ln2RR = load i64, i64* %R2_Var
  %ln2RS = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2RP( i64* %Base_Arg, i64* %ln2RQ, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2RR, i64 %ln2RS, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@Main_mainzufib1_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i8*)
define ghccc void @Main_mainzufib1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967301, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to i64)) to i32),i32 0)}>
{
n2RT:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %ls2DM = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2Q7
c2Q7:
  %ln2RU = load i64*, i64** %Sp_Var
  %ln2RV = getelementptr inbounds i64, i64* %ln2RU, i32 -2
  %ln2RW = ptrtoint i64* %ln2RV to i64
  %ln2RX = icmp ult i64 %ln2RW, %SpLim_Arg
  %ln2RY = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2RX, i1 0 )
  br i1 %ln2RY, label %c2Q8, label %c2Q9
c2Q9:
  %ln2S0 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q2_info$def to i64
  %ln2RZ = load i64*, i64** %Sp_Var
  %ln2S1 = getelementptr inbounds i64, i64* %ln2RZ, i32 -2
  store i64 %ln2S0, i64* %ln2S1, !tbaa !2
  %ln2S2 = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2S3 = add i64 %ln2S2, 1
  store i64 %ln2S3, i64* %R3_Var
  %ln2S4 = load i64, i64* %R2_Var
  store i64 %ln2S4, i64* %ls2DM
  %ln2S5 = load i64, i64* %R2_Var
  store i64 %ln2S5, i64* %R2_Var
  %ln2S7 = load i64, i64* %ls2DM
  %ln2S6 = load i64*, i64** %Sp_Var
  %ln2S8 = getelementptr inbounds i64, i64* %ln2S6, i32 -1
  store i64 %ln2S7, i64* %ln2S8, !tbaa !2
  %ln2S9 = load i64*, i64** %Sp_Var
  %ln2Sa = getelementptr inbounds i64, i64* %ln2S9, i32 -2
  %ln2Sb = ptrtoint i64* %ln2Sa to i64
  %ln2Sc = inttoptr i64 %ln2Sb to i64*
  store i64* %ln2Sc, i64** %Sp_Var
  %ln2Sd = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_eqIntegerzh_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Se = load i64*, i64** %Sp_Var
  %ln2Sf = load i64, i64* %R1_Var
  %ln2Sg = load i64, i64* %R2_Var
  %ln2Sh = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Sd( i64* %Base_Arg, i64* %ln2Se, i64* %Hp_Arg, i64 %ln2Sf, i64 %ln2Sg, i64 %ln2Sh, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Q8:
  %ln2Si = load i64, i64* %R2_Var
  store i64 %ln2Si, i64* %R2_Var
  %ln2Sj = ptrtoint %Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i64
  store i64 %ln2Sj, i64* %R1_Var
  %ln2Sk = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2Sl = bitcast i64* %ln2Sk to i64*
  %ln2Sm = load i64, i64* %ln2Sl, !tbaa !5
  %ln2Sn = inttoptr i64 %ln2Sm to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2So = load i64*, i64** %Sp_Var
  %ln2Sp = load i64, i64* %R1_Var
  %ln2Sq = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Sn( i64* %Base_Arg, i64* %ln2So, i64* %Hp_Arg, i64 %ln2Sp, i64 %ln2Sq, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Q2_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q2_info$def to i8*)
define internal ghccc void @c2Q2_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Q2_info$def to i64)) to i32),i32 0)}>
{
n2Sr:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Q2
c2Q2:
  %ln2Ss = load i64, i64* %R1_Var
  switch i64 %ln2Ss, label %c2Q5 [i64 1, label %c2Q6]
c2Q5:
  %ln2Su = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qc_info$def to i64
  %ln2St = load i64*, i64** %Sp_Var
  %ln2Sv = getelementptr inbounds i64, i64* %ln2St, i32 0
  store i64 %ln2Su, i64* %ln2Sv, !tbaa !2
  %ln2Sw = ptrtoint %r2D9_closure_struct* @r2D9_closure$def to i64
  %ln2Sx = add i64 %ln2Sw, 1
  store i64 %ln2Sx, i64* %R3_Var
  %ln2Sy = load i64*, i64** %Sp_Var
  %ln2Sz = getelementptr inbounds i64, i64* %ln2Sy, i32 1
  %ln2SA = bitcast i64* %ln2Sz to i64*
  %ln2SB = load i64, i64* %ln2SA, !tbaa !2
  store i64 %ln2SB, i64* %R2_Var
  %ln2SC = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2SD = load i64*, i64** %Sp_Var
  %ln2SE = load i64, i64* %R1_Var
  %ln2SF = load i64, i64* %R2_Var
  %ln2SG = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2SC( i64* %Base_Arg, i64* %ln2SD, i64* %Hp_Arg, i64 %ln2SE, i64 %ln2SF, i64 %ln2SG, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Q6:
  %ln2SH = ptrtoint %r2D8_closure_struct* @r2D8_closure$def to i64
  %ln2SI = add i64 %ln2SH, 1
  store i64 %ln2SI, i64* %R1_Var
  %ln2SJ = load i64*, i64** %Sp_Var
  %ln2SK = getelementptr inbounds i64, i64* %ln2SJ, i32 2
  %ln2SL = ptrtoint i64* %ln2SK to i64
  %ln2SM = inttoptr i64 %ln2SL to i64*
  store i64* %ln2SM, i64** %Sp_Var
  %ln2SN = load i64*, i64** %Sp_Var
  %ln2SO = getelementptr inbounds i64, i64* %ln2SN, i32 0
  %ln2SP = bitcast i64* %ln2SO to i64*
  %ln2SQ = load i64, i64* %ln2SP, !tbaa !2
  %ln2SR = inttoptr i64 %ln2SQ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2SS = load i64*, i64** %Sp_Var
  %ln2ST = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2SR( i64* %Base_Arg, i64* %ln2SS, i64* %Hp_Arg, i64 %ln2ST, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qc_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qc_info$def to i8*)
define internal ghccc void @c2Qc_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qc_info$def to i64)) to i32),i32 0)}>
{
n2SU:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qc
c2Qc:
  %ln2SV = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i64
  %ln2SW = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2SV, i64* %ln2SW, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2SX = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Db_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2SY = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2SX( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2SY, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qg_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i8*)
define internal ghccc void @c2Qg_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qg_info$def to i64)) to i32),i32 0)}>
{
n2SZ:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qg
c2Qg:
  %ln2T0 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i64
  %ln2T1 = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2T0, i64* %ln2T1, !tbaa !2
  %ln2T2 = ptrtoint %r2D7_closure_struct* @r2D7_closure$def to i64
  %ln2T3 = add i64 %ln2T2, 1
  store i64 %ln2T3, i64* %R3_Var
  %ln2T4 = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  %ln2T5 = bitcast i64* %ln2T4 to i64*
  %ln2T6 = load i64, i64* %ln2T5, !tbaa !2
  store i64 %ln2T6, i64* %R2_Var
  %ln2T7 = getelementptr inbounds i64, i64* %Sp_Arg, i32 1
  store i64 %R1_Arg, i64* %ln2T7, !tbaa !2
  %ln2T8 = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_minusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2T9 = load i64, i64* %R2_Var
  %ln2Ta = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2T8( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2T9, i64 %ln2Ta, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qk_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i8*)
define internal ghccc void @c2Qk_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%r2Db_closure_struct* @r2Db_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qk_info$def to i64)) to i32),i32 0)}>
{
n2Tb:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Qk
c2Qk:
  %ln2Tc = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i64
  %ln2Td = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Tc, i64* %ln2Td, !tbaa !2
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Te = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @r2Db_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Tf = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Te( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Tf, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Qo_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i8*)
define internal ghccc void @c2Qo_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 1, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Qo_info$def to i64)) to i32),i32 0)}>
{
n2Tg:
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Qo
c2Qo:
  %ln2Th = load i64*, i64** %Sp_Var
  %ln2Ti = getelementptr inbounds i64, i64* %ln2Th, i32 1
  %ln2Tj = bitcast i64* %ln2Ti to i64*
  %ln2Tk = load i64, i64* %ln2Tj, !tbaa !2
  store i64 %ln2Tk, i64* %R3_Var
  store i64 %R1_Arg, i64* %R2_Var
  %ln2Tl = load i64*, i64** %Sp_Var
  %ln2Tm = getelementptr inbounds i64, i64* %ln2Tl, i32 2
  %ln2Tn = ptrtoint i64* %ln2Tm to i64
  %ln2To = inttoptr i64 %ln2Tn to i64*
  store i64* %ln2To, i64** %Sp_Var
  %ln2Tp = bitcast i8* @integerzmwiredzmin_GHCziIntegerziType_plusInteger_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Tq = load i64*, i64** %Sp_Var
  %ln2Tr = load i64, i64* %R2_Var
  %ln2Ts = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Tp( i64* %Base_Arg, i64* %ln2Tq, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Tr, i64 %ln2Ts, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2TN_srt_struct = type <{i64, i64, i64, i64}>
%Main_main5_closure_struct = type <{i64, i64, i64, i64}>
@_u2TN_srt$def = internal global %_u2TN_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64), i64 ptrtoint (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i64), i64 0}>
@_u2TN_srt = internal alias i8, bitcast (%_u2TN_srt_struct* @_u2TN_srt$def to i8*)
@Main_main5_closure$def = internal global %Main_main5_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main5_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main5_closure = alias i8, bitcast (%Main_main5_closure_struct* @Main_main5_closure$def to i8*)
@Main_main5_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main5_info$def to i8*)
define ghccc void @Main_main5_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2TN_srt_struct* @_u2TN_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main5_info$def to i64)) to i32),i32 0)}>
{
n2TO:
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
  %lc2Tw = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  br label %c2TB
c2TB:
  %ln2TP = load i64*, i64** %Sp_Var
  %ln2TQ = getelementptr inbounds i64, i64* %ln2TP, i32 -3
  %ln2TR = ptrtoint i64* %ln2TQ to i64
  %ln2TS = icmp ult i64 %ln2TR, %SpLim_Arg
  %ln2TT = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2TS, i1 0 )
  br i1 %ln2TT, label %c2TH, label %c2TI
c2TI:
  %ln2TU = ptrtoint i64* %Base_Arg to i64
  %ln2TV = inttoptr i64 %ln2TU to i8*
  %ln2TW = load i64, i64* %R1_Var
  %ln2TX = inttoptr i64 %ln2TW to i8*
  %ln2TY = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %ln2TZ = call ccc i8* (i8*, i8*) %ln2TY( i8* %ln2TV, i8* %ln2TX ) nounwind
  %ln2U0 = ptrtoint i8* %ln2TZ to i64
  store i64 %ln2U0, i64* %lc2Tw
  %ln2U1 = load i64, i64* %lc2Tw
  %ln2U2 = icmp eq i64 %ln2U1, 0
  br i1 %ln2U2, label %c2Ty, label %c2Tx
c2Tx:
  %ln2U4 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln2U3 = load i64*, i64** %Sp_Var
  %ln2U5 = getelementptr inbounds i64, i64* %ln2U3, i32 -2
  store i64 %ln2U4, i64* %ln2U5, !tbaa !2
  %ln2U7 = load i64, i64* %lc2Tw
  %ln2U6 = load i64*, i64** %Sp_Var
  %ln2U8 = getelementptr inbounds i64, i64* %ln2U6, i32 -1
  store i64 %ln2U7, i64* %ln2U8, !tbaa !2
  %ln2Ua = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Tz_info$def to i64
  %ln2U9 = load i64*, i64** %Sp_Var
  %ln2Ub = getelementptr inbounds i64, i64* %ln2U9, i32 -3
  store i64 %ln2Ua, i64* %ln2Ub, !tbaa !2
  %ln2Uc = ptrtoint %Main_mainzux_closure_struct* @Main_mainzux_closure$def to i64
  %ln2Ud = add i64 %ln2Uc, 1
  store i64 %ln2Ud, i64* %R2_Var
  %ln2Ue = load i64*, i64** %Sp_Var
  %ln2Uf = getelementptr inbounds i64, i64* %ln2Ue, i32 -3
  %ln2Ug = ptrtoint i64* %ln2Uf to i64
  %ln2Uh = inttoptr i64 %ln2Ug to i64*
  store i64* %ln2Uh, i64** %Sp_Var
  %ln2Ui = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_mainzufib1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Uj = load i64*, i64** %Sp_Var
  %ln2Uk = load i64, i64* %R1_Var
  %ln2Ul = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ui( i64* %Base_Arg, i64* %ln2Uj, i64* %Hp_Arg, i64 %ln2Uk, i64 %ln2Ul, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2Ty:
  %ln2Un = load i64, i64* %R1_Var
  %ln2Uo = inttoptr i64 %ln2Un to i64*
  %ln2Up = load i64, i64* %ln2Uo, !tbaa !4
  %ln2Uq = inttoptr i64 %ln2Up to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ur = load i64*, i64** %Sp_Var
  %ln2Us = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Uq( i64* %Base_Arg, i64* %ln2Ur, i64* %Hp_Arg, i64 %ln2Us, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2TH:
  %ln2Ut = load i64, i64* %R1_Var
  store i64 %ln2Ut, i64* %R1_Var
  %ln2Uu = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %ln2Uv = bitcast i64* %ln2Uu to i64*
  %ln2Uw = load i64, i64* %ln2Uv, !tbaa !5
  %ln2Ux = inttoptr i64 %ln2Uw to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Uy = load i64*, i64** %Sp_Var
  %ln2Uz = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Ux( i64* %Base_Arg, i64* %ln2Uy, i64* %Hp_Arg, i64 %ln2Uz, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Tz_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Tz_info$def to i8*)
define internal ghccc void @c2Tz_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8* @base_GHCziShow_zdwzdcshowsPrec4_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Tz_info$def to i64)) to i32),i32 0)}>
{
n2UA:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Tz
c2Tz:
  %ln2UB = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TE_info$def to i64
  %ln2UC = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2UB, i64* %ln2UC, !tbaa !2
  %ln2UD = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2UE = add i64 %ln2UD, 1
  store i64 %ln2UE, i64* %R4_Var
  store i64 %R1_Arg, i64* %R3_Var
  store i64 0, i64* %R2_Var
  %ln2UF = bitcast i8* @base_GHCziShow_zdwzdcshowsPrec4_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2UG = load i64, i64* %R2_Var
  %ln2UH = load i64, i64* %R3_Var
  %ln2UI = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2UF( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2UG, i64 %ln2UH, i64 %ln2UI, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2TE_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2TE_info$def to i8*)
define internal ghccc void @c2TE_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 0}>
{
n2UJ:
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  br label %c2TE
c2TE:
  %ln2UK = load i64*, i64** %Hp_Var
  %ln2UL = getelementptr inbounds i64, i64* %ln2UK, i32 3
  %ln2UM = ptrtoint i64* %ln2UL to i64
  %ln2UN = inttoptr i64 %ln2UM to i64*
  store i64* %ln2UN, i64** %Hp_Var
  %ln2UO = load i64*, i64** %Hp_Var
  %ln2UP = ptrtoint i64* %ln2UO to i64
  %ln2UQ = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %ln2UR = bitcast i64* %ln2UQ to i64*
  %ln2US = load i64, i64* %ln2UR, !tbaa !5
  %ln2UT = icmp ugt i64 %ln2UP, %ln2US
  %ln2UU = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2UT, i1 0 )
  br i1 %ln2UU, label %c2TM, label %c2TL
c2TL:
  %ln2UW = ptrtoint i8* @ghczmprim_GHCziTypes_ZC_con_info to i64
  %ln2UV = load i64*, i64** %Hp_Var
  %ln2UX = getelementptr inbounds i64, i64* %ln2UV, i32 -2
  store i64 %ln2UW, i64* %ln2UX, !tbaa !3
  %ln2UZ = load i64, i64* %R1_Var
  %ln2UY = load i64*, i64** %Hp_Var
  %ln2V0 = getelementptr inbounds i64, i64* %ln2UY, i32 -1
  store i64 %ln2UZ, i64* %ln2V0, !tbaa !3
  %ln2V2 = load i64, i64* %R2_Var
  %ln2V1 = load i64*, i64** %Hp_Var
  %ln2V3 = getelementptr inbounds i64, i64* %ln2V1, i32 0
  store i64 %ln2V2, i64* %ln2V3, !tbaa !3
  %ln2V5 = load i64*, i64** %Hp_Var
  %ln2V6 = ptrtoint i64* %ln2V5 to i64
  %ln2V7 = add i64 %ln2V6, -14
  store i64 %ln2V7, i64* %R1_Var
  %ln2V8 = load i64*, i64** %Sp_Var
  %ln2V9 = getelementptr inbounds i64, i64* %ln2V8, i32 1
  %ln2Va = ptrtoint i64* %ln2V9 to i64
  %ln2Vb = inttoptr i64 %ln2Va to i64*
  store i64* %ln2Vb, i64** %Sp_Var
  %ln2Vc = load i64*, i64** %Sp_Var
  %ln2Vd = getelementptr inbounds i64, i64* %ln2Vc, i32 0
  %ln2Ve = bitcast i64* %ln2Vd to i64*
  %ln2Vf = load i64, i64* %ln2Ve, !tbaa !2
  %ln2Vg = inttoptr i64 %ln2Vf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Vh = load i64*, i64** %Sp_Var
  %ln2Vi = load i64*, i64** %Hp_Var
  %ln2Vj = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Vg( i64* %Base_Arg, i64* %ln2Vh, i64* %ln2Vi, i64 %ln2Vj, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2TM:
  %ln2Vk = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %ln2Vk, !tbaa !5
  %ln2Vl = load i64, i64* %R2_Var
  store i64 %ln2Vl, i64* %R2_Var
  %ln2Vm = load i64, i64* %R1_Var
  store i64 %ln2Vm, i64* %R1_Var
  %ln2Vn = bitcast i8* @stg_gc_pp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Vo = load i64*, i64** %Sp_Var
  %ln2Vp = load i64*, i64** %Hp_Var
  %ln2Vq = load i64, i64* %R1_Var
  %ln2Vr = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Vn( i64* %Base_Arg, i64* %ln2Vo, i64* %ln2Vp, i64 %ln2Vq, i64 %ln2Vr, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%_u2VF_srt_struct = type <{i64, i64, i64, i64, i64}>
%_u2VG_srt_struct = type <{i64, i64, i64, i64}>
%Main_main1_closure_struct = type <{i64, i64, i64, i64}>
@_u2VF_srt$def = internal global %_u2VF_srt_struct<{i64 ptrtoint (i8* @stg_SRT_3_info to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziText_hPutStrzq_closure to i64), i64 ptrtoint (i8* @base_GHCziIOziHandleziFD_stdout_closure to i64), i64 ptrtoint (%Main_main2_closure_struct* @Main_main2_closure$def to i64), i64 0}>
@_u2VF_srt = internal alias i8, bitcast (%_u2VF_srt_struct* @_u2VF_srt$def to i8*)
@_u2VG_srt$def = internal global %_u2VG_srt_struct<{i64 ptrtoint (i8* @stg_SRT_2_info to i64), i64 ptrtoint (%Main_main4_closure_struct* @Main_main4_closure$def to i64), i64 ptrtoint (i8* @_u2VF_srt to i64), i64 0}>
@_u2VG_srt = internal alias i8, bitcast (%_u2VG_srt_struct* @_u2VG_srt$def to i8*)
@Main_main1_closure$def = internal global %Main_main1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i64), i64 ptrtoint (%Main_main5_closure_struct* @Main_main5_closure$def to i64), i64 ptrtoint (i8* @_u2VG_srt to i64), i64 0}>
@Main_main1_closure = alias i8, bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*)
@Main_main1_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to i8*)
define ghccc void @Main_main1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 2, i32 14, i32 0}>
{
n2VH:
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
  br label %c2VA
c2VA:
  %ln2VI = load i64*, i64** %Sp_Var
  %ln2VJ = getelementptr inbounds i64, i64* %ln2VI, i32 -1
  %ln2VK = ptrtoint i64* %ln2VJ to i64
  %ln2VL = icmp ult i64 %ln2VK, %SpLim_Arg
  %ln2VM = call ccc i1 (i1, i1) @llvm.expect.i1( i1 %ln2VL, i1 0 )
  br i1 %ln2VM, label %c2VB, label %c2VC
c2VC:
  %ln2VO = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vw_info$def to i64
  %ln2VN = load i64*, i64** %Sp_Var
  %ln2VP = getelementptr inbounds i64, i64* %ln2VN, i32 -1
  store i64 %ln2VO, i64* %ln2VP, !tbaa !2
  %ln2VQ = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2VR = add i64 %ln2VQ, 2
  store i64 %ln2VR, i64* %R4_Var
  %ln2VS = ptrtoint %Main_main5_closure_struct* @Main_main5_closure$def to i64
  store i64 %ln2VS, i64* %R3_Var
  %ln2VT = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2VT, i64* %R2_Var
  %ln2VU = load i64*, i64** %Sp_Var
  %ln2VV = getelementptr inbounds i64, i64* %ln2VU, i32 -1
  %ln2VW = ptrtoint i64* %ln2VV to i64
  %ln2VX = inttoptr i64 %ln2VW to i64*
  store i64* %ln2VX, i64** %Sp_Var
  %ln2VY = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2VZ = load i64*, i64** %Sp_Var
  %ln2W0 = load i64, i64* %R1_Var
  %ln2W1 = load i64, i64* %R2_Var
  %ln2W2 = load i64, i64* %R3_Var
  %ln2W3 = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2VY( i64* %Base_Arg, i64* %ln2VZ, i64* %Hp_Arg, i64 %ln2W0, i64 %ln2W1, i64 %ln2W2, i64 %ln2W3, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
c2VB:
  %ln2W4 = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  store i64 %ln2W4, i64* %R1_Var
  %ln2W5 = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %ln2W6 = bitcast i64* %ln2W5 to i64*
  %ln2W7 = load i64, i64* %ln2W6, !tbaa !5
  %ln2W8 = inttoptr i64 %ln2W7 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2W9 = load i64*, i64** %Sp_Var
  %ln2Wa = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2W8( i64* %Base_Arg, i64* %ln2W9, i64* %Hp_Arg, i64 %ln2Wa, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Vw_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vw_info$def to i8*)
define internal ghccc void @c2Vw_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2VG_srt_struct* @_u2VG_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vw_info$def to i64)) to i32),i32 0)}>
{
n2Wb:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2Vw
c2Vw:
  %ln2Wc = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vy_info$def to i64
  %ln2Wd = getelementptr inbounds i64, i64* %Sp_Arg, i32 0
  store i64 %ln2Wc, i64* %ln2Wd, !tbaa !2
  %ln2We = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2Wf = add i64 %ln2We, 2
  store i64 %ln2Wf, i64* %R4_Var
  %ln2Wg = ptrtoint %Main_main4_closure_struct* @Main_main4_closure$def to i64
  store i64 %ln2Wg, i64* %R3_Var
  %ln2Wh = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2Wh, i64* %R2_Var
  %ln2Wi = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Wj = load i64, i64* %R2_Var
  %ln2Wk = load i64, i64* %R3_Var
  %ln2Wl = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Wi( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Wj, i64 %ln2Wk, i64 %ln2Wl, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@c2Vy_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vy_info$def to i8*)
define internal ghccc void @c2Vy_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i32, i32}><{i64 0, i32 30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2VF_srt_struct* @_u2VF_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @c2Vy_info$def to i64)) to i32),i32 0)}>
{
n2Wm:
  %R4_Var = alloca i64, i32 1
  store i64 undef, i64* %R4_Var
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  br label %c2Vy
c2Vy:
  %ln2Wn = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2Wo = add i64 %ln2Wn, 2
  store i64 %ln2Wo, i64* %R4_Var
  %ln2Wp = ptrtoint %Main_main2_closure_struct* @Main_main2_closure$def to i64
  store i64 %ln2Wp, i64* %R3_Var
  %ln2Wq = ptrtoint i8* @base_GHCziIOziHandleziFD_stdout_closure to i64
  store i64 %ln2Wq, i64* %R2_Var
  %ln2Wr = load i64*, i64** %Sp_Var
  %ln2Ws = getelementptr inbounds i64, i64* %ln2Wr, i32 1
  %ln2Wt = ptrtoint i64* %ln2Ws to i64
  %ln2Wu = inttoptr i64 %ln2Wt to i64*
  store i64* %ln2Wu, i64** %Sp_Var
  %ln2Wv = bitcast i8* @base_GHCziIOziHandleziText_hPutStrzq_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2Ww = load i64*, i64** %Sp_Var
  %ln2Wx = load i64, i64* %R2_Var
  %ln2Wy = load i64, i64* %R3_Var
  %ln2Wz = load i64, i64* %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2Wv( i64* %Base_Arg, i64* %ln2Ww, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2Wx, i64 %ln2Wy, i64 %ln2Wz, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0}>
@Main_main_closure = alias i8, bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main1_closure_struct* @Main_main1_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)) to i32),i32 0)}>
{
n2WH:
  br label %c2WE
c2WE:
  %ln2WI = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2WI( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main6_closure_struct = type <{i64, i64, i64, i64}>
@Main_main6_closure$def = internal global %Main_main6_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to i64), i64 ptrtoint (%Main_main1_closure_struct* @Main_main1_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO1_closure to i64), i64 0}>
@Main_main6_closure = alias i8, bitcast (%Main_main6_closure_struct* @Main_main6_closure$def to i8*)
@Main_main6_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to i8*)
define ghccc void @Main_main6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 2, i32 14, i32 0}>
{
n2WQ:
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  br label %c2WN
c2WN:
  %ln2WR = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  %ln2WS = add i64 %ln2WR, 1
  store i64 %ln2WS, i64* %R2_Var
  %ln2WT = bitcast i8* @base_GHCziTopHandler_runMainIO1_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %ln2WU = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2WT( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 %ln2WU, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0}>
@ZCMain_main_closure = alias i8, bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i32, i32}><{i64 4294967299, i64 0, i32 14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main6_closure_struct* @Main_main6_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)) to i32),i32 0)}>
{
n2X2:
  br label %c2WZ
c2WZ:
  %ln2X3 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main6_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %ln2X3( i64* %Base_Arg, i64* %Sp_Arg, i64* %Hp_Arg, i64 %R1_Arg, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
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
@base_GHCziIOziHandleziText_hPutStrzq_closure = external global i8
@base_GHCziIOziHandleziFD_stdout_closure = external global i8
@ghczmprim_GHCziTypes_True_closure = external global i8
@base_GHCziIOziHandleziText_hPutStrzq_info = external global i8
@base_GHCziTopHandler_runMainIO1_closure = external global i8
@base_GHCziTopHandler_runMainIO1_info = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@llvm.used = appending constant [28 x i8*] [i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%Main_zdtrModule1_closure_struct* @Main_zdtrModule1_closure$def to i8*), i8* bitcast (%Main_zdtrModule2_bytes_struct* @Main_zdtrModule2_bytes$def to i8*), i8* bitcast (%Main_zdtrModule3_closure_struct* @Main_zdtrModule3_closure$def to i8*), i8* bitcast (%Main_zdtrModule4_bytes_struct* @Main_zdtrModule4_bytes$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main6_closure_struct* @Main_main6_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%Main_main1_closure_struct* @Main_main1_closure$def to i8*), i8* bitcast (%_u2VG_srt_struct* @_u2VG_srt$def to i8*), i8* bitcast (%_u2VF_srt_struct* @_u2VF_srt$def to i8*), i8* bitcast (%Main_main5_closure_struct* @Main_main5_closure$def to i8*), i8* bitcast (%_u2TN_srt_struct* @_u2TN_srt$def to i8*), i8* bitcast (%Main_mainzufib1_closure_struct* @Main_mainzufib1_closure$def to i8*), i8* bitcast (%r2Db_closure_struct* @r2Db_closure$def to i8*), i8* bitcast (%Main_main4_closure_struct* @Main_main4_closure$def to i8*), i8* bitcast (%_u2NR_srt_struct* @_u2NR_srt$def to i8*), i8* bitcast (%Main_mainzufac_closure_struct* @Main_mainzufac_closure$def to i8*), i8* bitcast (%_u2KX_srt_struct* @_u2KX_srt$def to i8*), i8* bitcast (%Main_main2_closure_struct* @Main_main2_closure$def to i8*), i8* bitcast (%_u2Il_srt_struct* @_u2Il_srt$def to i8*), i8* bitcast (%Main_main3_closure_struct* @Main_main3_closure$def to i8*), i8* bitcast (%Main_mainzufib_closure_struct* @Main_mainzufib_closure$def to i8*), i8* bitcast (%r2Da_closure_struct* @r2Da_closure$def to i8*), i8* bitcast (%Main_mainzux_closure_struct* @Main_mainzux_closure$def to i8*), i8* bitcast (%r2D9_closure_struct* @r2D9_closure$def to i8*), i8* bitcast (%r2D8_closure_struct* @r2D8_closure$def to i8*), i8* bitcast (%r2D7_closure_struct* @r2D7_closure$def to i8*)], section "llvm.metadata"
