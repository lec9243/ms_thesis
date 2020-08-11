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
%sM8_closure_struct = type <{i64, i64, i64, i64}>
%cMw_str_struct = type <{[12 x i8]}>
%cMJ_str_struct = type <{[5 x i8]}>
@sM8_closure$def = internal global %sM8_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM8_info$def to i64), i64 0, i64 0, i64 0}>
@sM8_closure = internal alias i8* bitcast (%sM8_closure_struct* @sM8_closure$def to i8*)
@cMw_str$def = internal constant %cMw_str_struct<{[12 x i8] [i8 44, i8 32, i8 121, i8 111, i8 117, i8 32, i8 114, i8 111, i8 99, i8 107, i8 33, i8 0]}>
@cMw_str = internal alias i8* bitcast (%cMw_str_struct* @cMw_str$def to i8*)
@cMJ_str$def = internal constant %cMJ_str_struct<{[5 x i8] [i8 72, i8 101, i8 121, i8 32, i8 0]}>
@cMJ_str = internal alias i8* bitcast (%cMJ_str_struct* @cMJ_str$def to i8*)
@sM4_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM4_info$def to i8*)
define internal ghccc void @sM4_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM4_info$def to i64)),i64 0), i64 0, i64 4294967312}>
{
cMx:
  %lsM4 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnN3 = load i64, i64* %R1_Var
  store i64 %lnN3, i64* %lsM4
  %lnN4 = load i64*, i64** %Sp_Var
  %lnN5 = getelementptr inbounds i64, i64* %lnN4, i32 1
  %lnN6 = ptrtoint i64* %lnN5 to i64
  %lnN7 = sub i64 %lnN6, 24
  %lnN8 = icmp ult i64 %lnN7, %SpLim_Arg
  br i1 %lnN8, label %cMy, label %cMz
cMz:
  %lnNa = ptrtoint i8* @stg_upd_frame_info to i64
  %lnN9 = load i64*, i64** %Sp_Var
  %lnNb = getelementptr inbounds i64, i64* %lnN9, i32 -2
  store i64 %lnNa, i64* %lnNb, !tbaa !1
  %lnNd = load i64, i64* %lsM4
  %lnNc = load i64*, i64** %Sp_Var
  %lnNe = getelementptr inbounds i64, i64* %lnNc, i32 -1
  store i64 %lnNd, i64* %lnNe, !tbaa !1
  %lnNf = ptrtoint %cMw_str_struct* @cMw_str$def to i64
  store i64 %lnNf, i64* %R2_Var
  %lnNg = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnNg, i64* %R1_Var
  %lnNh = load i64*, i64** %Sp_Var
  %lnNi = getelementptr inbounds i64, i64* %lnNh, i32 -2
  %lnNj = ptrtoint i64* %lnNi to i64
  %lnNk = inttoptr i64 %lnNj to i64*
  store i64* %lnNk, i64** %Sp_Var
  %lnNl = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNm = load i64*, i64** %Sp_Var
  %lnNn = load i64, i64* %R1_Var
  %lnNo = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNl( i64* %Base_Arg, i64* %lnNm, i64* %Hp_Arg, i64 %lnNn, i64 %lnNo, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMy:
  %lnNp = load i64, i64* %lsM4
  store i64 %lnNp, i64* %R1_Var
  %lnNq = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnNr = bitcast i64* %lnNq to i64*
  %lnNs = load i64, i64* %lnNr, !tbaa !4
  %lnNt = inttoptr i64 %lnNs to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnNu = load i64*, i64** %Sp_Var
  %lnNv = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnNt( i64* %Base_Arg, i64* %lnNu, i64* %Hp_Arg, i64 %lnNv, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM5_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM5_info$def to i8*)
define internal ghccc void @sM5_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM5_info$def to i64)),i64 0), i64 1, i64 12884901905}>
{
cMA:
  %lsM5 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lsM2 = alloca i64, i32 1
  %lcMs = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnNw = load i64, i64* %R1_Var
  store i64 %lnNw, i64* %lsM5
  %lnNx = load i64*, i64** %Sp_Var
  %lnNy = getelementptr inbounds i64, i64* %lnNx, i32 1
  %lnNz = ptrtoint i64* %lnNy to i64
  %lnNA = sub i64 %lnNz, 24
  %lnNB = icmp ult i64 %lnNA, %SpLim_Arg
  br i1 %lnNB, label %cMB, label %cMC
cMC:
  %lnNC = load i64*, i64** %Hp_Var
  %lnND = getelementptr inbounds i64, i64* %lnNC, i32 2
  %lnNE = ptrtoint i64* %lnND to i64
  %lnNF = inttoptr i64 %lnNE to i64*
  store i64* %lnNF, i64** %Hp_Var
  %lnNG = load i64*, i64** %Hp_Var
  %lnNH = ptrtoint i64* %lnNG to i64
  %lnNI = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnNJ = bitcast i64* %lnNI to i64*
  %lnNK = load i64, i64* %lnNJ, !tbaa !4
  %lnNL = icmp ugt i64 %lnNH, %lnNK
  br i1 %lnNL, label %cME, label %cMD
cMD:
  %lnNN = ptrtoint i8* @stg_upd_frame_info to i64
  %lnNM = load i64*, i64** %Sp_Var
  %lnNO = getelementptr inbounds i64, i64* %lnNM, i32 -2
  store i64 %lnNN, i64* %lnNO, !tbaa !1
  %lnNQ = load i64, i64* %lsM5
  %lnNP = load i64*, i64** %Sp_Var
  %lnNR = getelementptr inbounds i64, i64* %lnNP, i32 -1
  store i64 %lnNQ, i64* %lnNR, !tbaa !1
  %lnNS = load i64, i64* %lsM5
  %lnNT = add i64 %lnNS, 16
  %lnNU = inttoptr i64 %lnNT to i64*
  %lnNV = load i64, i64* %lnNU, !tbaa !5
  store i64 %lnNV, i64* %lsM2
  %lnNX = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM4_info$def to i64
  %lnNW = load i64*, i64** %Hp_Var
  %lnNY = getelementptr inbounds i64, i64* %lnNW, i32 -1
  store i64 %lnNX, i64* %lnNY, !tbaa !2
  %lnNZ = load i64*, i64** %Hp_Var
  %lnO0 = getelementptr inbounds i64, i64* %lnNZ, i32 -1
  %lnO1 = ptrtoint i64* %lnO0 to i64
  store i64 %lnO1, i64* %lcMs
  %lnO2 = load i64, i64* %lcMs
  store i64 %lnO2, i64* %R3_Var
  %lnO3 = load i64, i64* %lsM2
  store i64 %lnO3, i64* %R2_Var
  %lnO4 = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnO4, i64* %R1_Var
  %lnO5 = load i64*, i64** %Sp_Var
  %lnO6 = getelementptr inbounds i64, i64* %lnO5, i32 -2
  %lnO7 = ptrtoint i64* %lnO6 to i64
  %lnO8 = inttoptr i64 %lnO7 to i64*
  store i64* %lnO8, i64** %Sp_Var
  %lnO9 = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOa = load i64*, i64** %Sp_Var
  %lnOb = load i64*, i64** %Hp_Var
  %lnOc = load i64, i64* %R1_Var
  %lnOd = load i64, i64* %R2_Var
  %lnOe = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnO9( i64* %Base_Arg, i64* %lnOa, i64* %lnOb, i64 %lnOc, i64 %lnOd, i64 %lnOe, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cME:
  %lnOf = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnOf, !tbaa !4
  br label %cMB
cMB:
  %lnOg = load i64, i64* %lsM5
  store i64 %lnOg, i64* %R1_Var
  %lnOh = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnOi = bitcast i64* %lnOh to i64*
  %lnOj = load i64, i64* %lnOi, !tbaa !4
  %lnOk = inttoptr i64 %lnOj to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOl = load i64*, i64** %Sp_Var
  %lnOm = load i64*, i64** %Hp_Var
  %lnOn = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOk( i64* %Base_Arg, i64* %lnOl, i64* %lnOm, i64 %lnOn, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM3_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM3_info$def to i8*)
define internal ghccc void @sM3_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM3_info$def to i64)),i64 0), i64 0, i64 4294967312}>
{
cMK:
  %lsM3 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnOo = load i64, i64* %R1_Var
  store i64 %lnOo, i64* %lsM3
  %lnOp = load i64*, i64** %Sp_Var
  %lnOq = getelementptr inbounds i64, i64* %lnOp, i32 1
  %lnOr = ptrtoint i64* %lnOq to i64
  %lnOs = sub i64 %lnOr, 24
  %lnOt = icmp ult i64 %lnOs, %SpLim_Arg
  br i1 %lnOt, label %cML, label %cMM
cMM:
  %lnOv = ptrtoint i8* @stg_upd_frame_info to i64
  %lnOu = load i64*, i64** %Sp_Var
  %lnOw = getelementptr inbounds i64, i64* %lnOu, i32 -2
  store i64 %lnOv, i64* %lnOw, !tbaa !1
  %lnOy = load i64, i64* %lsM3
  %lnOx = load i64*, i64** %Sp_Var
  %lnOz = getelementptr inbounds i64, i64* %lnOx, i32 -1
  store i64 %lnOy, i64* %lnOz, !tbaa !1
  %lnOA = ptrtoint %cMJ_str_struct* @cMJ_str$def to i64
  store i64 %lnOA, i64* %R2_Var
  %lnOB = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnOB, i64* %R1_Var
  %lnOC = load i64*, i64** %Sp_Var
  %lnOD = getelementptr inbounds i64, i64* %lnOC, i32 -2
  %lnOE = ptrtoint i64* %lnOD to i64
  %lnOF = inttoptr i64 %lnOE to i64*
  store i64* %lnOF, i64** %Sp_Var
  %lnOG = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOH = load i64*, i64** %Sp_Var
  %lnOI = load i64, i64* %R1_Var
  %lnOJ = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOG( i64* %Base_Arg, i64* %lnOH, i64* %Hp_Arg, i64 %lnOI, i64 %lnOJ, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cML:
  %lnOK = load i64, i64* %lsM3
  store i64 %lnOK, i64* %R1_Var
  %lnOL = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnOM = bitcast i64* %lnOL to i64*
  %lnON = load i64, i64* %lnOM, !tbaa !4
  %lnOO = inttoptr i64 %lnON to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnOP = load i64*, i64** %Sp_Var
  %lnOQ = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnOO( i64* %Base_Arg, i64* %lnOP, i64* %Hp_Arg, i64 %lnOQ, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM6_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i8*)
define internal ghccc void @sM6_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i64)),i64 0), i64 1, i64 12884901905}>
{
cMN:
  %lsM6 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lsM2 = alloca i64, i32 1
  %lcMo = alloca i64, i32 1
  %lcMF = alloca i64, i32 1
  %R3_Var = alloca i64, i32 1
  store i64 undef, i64* %R3_Var
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnOR = load i64, i64* %R1_Var
  store i64 %lnOR, i64* %lsM6
  %lnOS = load i64*, i64** %Sp_Var
  %lnOT = getelementptr inbounds i64, i64* %lnOS, i32 1
  %lnOU = ptrtoint i64* %lnOT to i64
  %lnOV = sub i64 %lnOU, 24
  %lnOW = icmp ult i64 %lnOV, %SpLim_Arg
  br i1 %lnOW, label %cMO, label %cMP
cMP:
  %lnOX = load i64*, i64** %Hp_Var
  %lnOY = getelementptr inbounds i64, i64* %lnOX, i32 5
  %lnOZ = ptrtoint i64* %lnOY to i64
  %lnP0 = inttoptr i64 %lnOZ to i64*
  store i64* %lnP0, i64** %Hp_Var
  %lnP1 = load i64*, i64** %Hp_Var
  %lnP2 = ptrtoint i64* %lnP1 to i64
  %lnP3 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnP4 = bitcast i64* %lnP3 to i64*
  %lnP5 = load i64, i64* %lnP4, !tbaa !4
  %lnP6 = icmp ugt i64 %lnP2, %lnP5
  br i1 %lnP6, label %cMR, label %cMQ
cMQ:
  %lnP8 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnP7 = load i64*, i64** %Sp_Var
  %lnP9 = getelementptr inbounds i64, i64* %lnP7, i32 -2
  store i64 %lnP8, i64* %lnP9, !tbaa !1
  %lnPb = load i64, i64* %lsM6
  %lnPa = load i64*, i64** %Sp_Var
  %lnPc = getelementptr inbounds i64, i64* %lnPa, i32 -1
  store i64 %lnPb, i64* %lnPc, !tbaa !1
  %lnPd = load i64, i64* %lsM6
  %lnPe = add i64 %lnPd, 16
  %lnPf = inttoptr i64 %lnPe to i64*
  %lnPg = load i64, i64* %lnPf, !tbaa !5
  store i64 %lnPg, i64* %lsM2
  %lnPi = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM5_info$def to i64
  %lnPh = load i64*, i64** %Hp_Var
  %lnPj = getelementptr inbounds i64, i64* %lnPh, i32 -4
  store i64 %lnPi, i64* %lnPj, !tbaa !2
  %lnPl = load i64, i64* %lsM2
  %lnPk = load i64*, i64** %Hp_Var
  %lnPm = getelementptr inbounds i64, i64* %lnPk, i32 -2
  store i64 %lnPl, i64* %lnPm, !tbaa !2
  %lnPn = load i64*, i64** %Hp_Var
  %lnPo = getelementptr inbounds i64, i64* %lnPn, i32 -4
  %lnPp = ptrtoint i64* %lnPo to i64
  store i64 %lnPp, i64* %lcMo
  %lnPr = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM3_info$def to i64
  %lnPq = load i64*, i64** %Hp_Var
  %lnPs = getelementptr inbounds i64, i64* %lnPq, i32 -1
  store i64 %lnPr, i64* %lnPs, !tbaa !2
  %lnPt = load i64*, i64** %Hp_Var
  %lnPu = getelementptr inbounds i64, i64* %lnPt, i32 -1
  %lnPv = ptrtoint i64* %lnPu to i64
  store i64 %lnPv, i64* %lcMF
  %lnPw = load i64, i64* %lcMo
  store i64 %lnPw, i64* %R3_Var
  %lnPx = load i64, i64* %lcMF
  store i64 %lnPx, i64* %R2_Var
  %lnPy = ptrtoint i8* @base_GHCziBase_zpzp_closure to i64
  store i64 %lnPy, i64* %R1_Var
  %lnPz = load i64*, i64** %Sp_Var
  %lnPA = getelementptr inbounds i64, i64* %lnPz, i32 -2
  %lnPB = ptrtoint i64* %lnPA to i64
  %lnPC = inttoptr i64 %lnPB to i64*
  store i64* %lnPC, i64** %Sp_Var
  %lnPD = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnPE = load i64*, i64** %Sp_Var
  %lnPF = load i64*, i64** %Hp_Var
  %lnPG = load i64, i64* %R1_Var
  %lnPH = load i64, i64* %R2_Var
  %lnPI = load i64, i64* %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnPD( i64* %Base_Arg, i64* %lnPE, i64* %lnPF, i64 %lnPG, i64 %lnPH, i64 %lnPI, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMR:
  %lnPJ = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 40, i64* %lnPJ, !tbaa !4
  br label %cMO
cMO:
  %lnPK = load i64, i64* %lsM6
  store i64 %lnPK, i64* %R1_Var
  %lnPL = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnPM = bitcast i64* %lnPL to i64*
  %lnPN = load i64, i64* %lnPM, !tbaa !4
  %lnPO = inttoptr i64 %lnPN to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnPP = load i64*, i64** %Sp_Var
  %lnPQ = load i64*, i64** %Hp_Var
  %lnPR = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnPO( i64* %Base_Arg, i64* %lnPP, i64* %lnPQ, i64 %lnPR, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM7_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM7_info$def to i8*)
define internal ghccc void @sM7_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM7_info$def to i64)),i64 0), i64 4294967301, i64 4294967296, i64 30064771083}>
{
cMS:
  %lsM2 = alloca i64, i32 1
  %lsM7 = alloca i64, i32 1
  %Hp_Var = alloca i64*, i32 1
  store i64* %Hp_Arg, i64** %Hp_Var
  %lcMk = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 %R2_Arg, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lnPS = load i64, i64* %R2_Var
  store i64 %lnPS, i64* %lsM2
  %lnPT = load i64, i64* %R1_Var
  store i64 %lnPT, i64* %lsM7
  br label %cMU
cMU:
  %lnPU = load i64*, i64** %Hp_Var
  %lnPV = getelementptr inbounds i64, i64* %lnPU, i32 3
  %lnPW = ptrtoint i64* %lnPV to i64
  %lnPX = inttoptr i64 %lnPW to i64*
  store i64* %lnPX, i64** %Hp_Var
  %lnPY = load i64*, i64** %Hp_Var
  %lnPZ = ptrtoint i64* %lnPY to i64
  %lnQ0 = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnQ1 = bitcast i64* %lnQ0 to i64*
  %lnQ2 = load i64, i64* %lnQ1, !tbaa !4
  %lnQ3 = icmp ugt i64 %lnPZ, %lnQ2
  br i1 %lnQ3, label %cMW, label %cMV
cMV:
  %lnQ5 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM6_info$def to i64
  %lnQ4 = load i64*, i64** %Hp_Var
  %lnQ6 = getelementptr inbounds i64, i64* %lnQ4, i32 -2
  store i64 %lnQ5, i64* %lnQ6, !tbaa !2
  %lnQ8 = load i64, i64* %lsM2
  %lnQ7 = load i64*, i64** %Hp_Var
  %lnQ9 = getelementptr inbounds i64, i64* %lnQ7, i32 0
  store i64 %lnQ8, i64* %lnQ9, !tbaa !2
  %lnQa = load i64*, i64** %Hp_Var
  %lnQb = getelementptr inbounds i64, i64* %lnQa, i32 -2
  %lnQc = ptrtoint i64* %lnQb to i64
  store i64 %lnQc, i64* %lcMk
  %lnQd = load i64, i64* %lcMk
  store i64 %lnQd, i64* %R2_Var
  %lnQe = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnQe, i64* %R1_Var
  %lnQf = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQg = load i64*, i64** %Hp_Var
  %lnQh = load i64, i64* %R1_Var
  %lnQi = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQf( i64* %Base_Arg, i64* %Sp_Arg, i64* %lnQg, i64 %lnQh, i64 %lnQi, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMW:
  %lnQj = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 24, i64* %lnQj, !tbaa !4
  br label %cMT
cMT:
  %lnQk = load i64, i64* %lsM2
  store i64 %lnQk, i64* %R2_Var
  %lnQl = load i64, i64* %lsM7
  store i64 %lnQl, i64* %R1_Var
  %lnQm = getelementptr inbounds i64, i64* %Base_Arg, i32 -1
  %lnQn = bitcast i64* %lnQm to i64*
  %lnQo = load i64, i64* %lnQn, !tbaa !4
  %lnQp = inttoptr i64 %lnQo to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnQq = load i64*, i64** %Hp_Var
  %lnQr = load i64, i64* %R1_Var
  %lnQs = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnQp( i64* %Base_Arg, i64* %Sp_Arg, i64* %lnQq, i64 %lnQr, i64 %lnQs, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM8_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM8_info$def to i8*)
define internal ghccc void @sM8_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM8_info$def to i64)),i64 0), i64 0, i64 133143986198}>
{
cMX:
  %lsM8 = alloca i64, i32 1
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
  %lcMc = alloca i64, i32 1
  %lcMf = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lnQt = load i64, i64* %R1_Var
  store i64 %lnQt, i64* %lsM8
  %lnQu = load i64*, i64** %Sp_Var
  %lnQv = getelementptr inbounds i64, i64* %lnQu, i32 1
  %lnQw = ptrtoint i64* %lnQv to i64
  %lnQx = sub i64 %lnQw, 48
  %lnQy = icmp ult i64 %lnQx, %SpLim_Arg
  br i1 %lnQy, label %cMY, label %cMZ
cMZ:
  %lnQz = load i64*, i64** %Hp_Var
  %lnQA = getelementptr inbounds i64, i64* %lnQz, i32 2
  %lnQB = ptrtoint i64* %lnQA to i64
  %lnQC = inttoptr i64 %lnQB to i64*
  store i64* %lnQC, i64** %Hp_Var
  %lnQD = load i64*, i64** %Hp_Var
  %lnQE = ptrtoint i64* %lnQD to i64
  %lnQF = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnQG = bitcast i64* %lnQF to i64*
  %lnQH = load i64, i64* %lnQG, !tbaa !4
  %lnQI = icmp ugt i64 %lnQE, %lnQH
  br i1 %lnQI, label %cN1, label %cN0
cN0:
  %lnQJ = ptrtoint i64* %Base_Arg to i64
  %lnQK = inttoptr i64 %lnQJ to i8*
  %lnQL = load i64, i64* %lsM8
  %lnQM = inttoptr i64 %lnQL to i8*
  %lnQN = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnQO = call ccc i8* (i8*, i8*) %lnQN( i8* %lnQK, i8* %lnQM ) nounwind
  %lnQP = ptrtoint i8* %lnQO to i64
  store i64 %lnQP, i64* %lcMc
  %lnQQ = load i64, i64* %lcMc
  %lnQR = icmp eq i64 %lnQQ, 0
  br i1 %lnQR, label %cMe, label %cMd
cMd:
  %lnQT = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnQS = load i64*, i64** %Sp_Var
  %lnQU = getelementptr inbounds i64, i64* %lnQS, i32 -2
  store i64 %lnQT, i64* %lnQU, !tbaa !1
  %lnQW = load i64, i64* %lcMc
  %lnQV = load i64*, i64** %Sp_Var
  %lnQX = getelementptr inbounds i64, i64* %lnQV, i32 -1
  store i64 %lnQW, i64* %lnQX, !tbaa !1
  %lnQZ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM7_info$def to i64
  %lnQY = load i64*, i64** %Hp_Var
  %lnR0 = getelementptr inbounds i64, i64* %lnQY, i32 -1
  store i64 %lnQZ, i64* %lnR0, !tbaa !2
  %lnR2 = load i64*, i64** %Hp_Var
  %lnR3 = ptrtoint i64* %lnR2 to i64
  %lnR4 = add i64 %lnR3, -7
  store i64 %lnR4, i64* %lcMf
  %lnR5 = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnR5, i64* %R2_Var
  %lnR7 = ptrtoint i8* @stg_ap_pp_info to i64
  %lnR6 = load i64*, i64** %Sp_Var
  %lnR8 = getelementptr inbounds i64, i64* %lnR6, i32 -5
  store i64 %lnR7, i64* %lnR8, !tbaa !1
  %lnRa = ptrtoint i8* @base_SystemziIO_getLine_closure to i64
  %lnR9 = load i64*, i64** %Sp_Var
  %lnRb = getelementptr inbounds i64, i64* %lnR9, i32 -4
  store i64 %lnRa, i64* %lnRb, !tbaa !1
  %lnRd = load i64, i64* %lcMf
  %lnRc = load i64*, i64** %Sp_Var
  %lnRe = getelementptr inbounds i64, i64* %lnRc, i32 -3
  store i64 %lnRd, i64* %lnRe, !tbaa !1
  %lnRf = load i64*, i64** %Sp_Var
  %lnRg = getelementptr inbounds i64, i64* %lnRf, i32 -5
  %lnRh = ptrtoint i64* %lnRg to i64
  %lnRi = inttoptr i64 %lnRh to i64*
  store i64* %lnRi, i64** %Sp_Var
  %lnRj = bitcast i8* @base_GHCziBase_zgzgze_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRk = load i64*, i64** %Sp_Var
  %lnRl = load i64*, i64** %Hp_Var
  %lnRm = load i64, i64* %R1_Var
  %lnRn = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRj( i64* %Base_Arg, i64* %lnRk, i64* %lnRl, i64 %lnRm, i64 %lnRn, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cMe:
  %lnRo = load i64, i64* %lsM8
  %lnRp = inttoptr i64 %lnRo to i64*
  %lnRq = load i64, i64* %lnRp, !tbaa !5
  %lnRr = inttoptr i64 %lnRq to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRs = load i64*, i64** %Sp_Var
  %lnRt = load i64*, i64** %Hp_Var
  %lnRu = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRr( i64* %Base_Arg, i64* %lnRs, i64* %lnRt, i64 %lnRu, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cN1:
  %lnRv = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnRv, !tbaa !4
  br label %cMY
cMY:
  %lnRw = load i64, i64* %lsM8
  store i64 %lnRw, i64* %R1_Var
  %lnRx = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnRy = bitcast i64* %lnRx to i64*
  %lnRz = load i64, i64* %lnRy, !tbaa !4
  %lnRA = inttoptr i64 %lnRz to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnRB = load i64*, i64** %Sp_Var
  %lnRC = load i64*, i64** %Hp_Var
  %lnRD = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnRA( i64* %Base_Arg, i64* %lnRB, i64* %lnRC, i64 %lnRD, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%sM1_closure_struct = type <{i64, i64, i64, i64}>
%cRP_str_struct = type <{[25 x i8]}>
@sM1_closure$def = internal global %sM1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM1_info$def to i64), i64 0, i64 0, i64 0}>
@sM1_closure = internal alias i8* bitcast (%sM1_closure_struct* @sM1_closure$def to i8*)
@cRP_str$def = internal constant %cRP_str_struct<{[25 x i8] [i8 72, i8 101, i8 108, i8 108, i8 111, i8 44, i8 32, i8 119, i8 104, i8 97, i8 116, i8 39, i8 115, i8 32, i8 121, i8 111, i8 117, i8 114, i8 32, i8 110, i8 97, i8 109, i8 101, i8 63, i8 0]}>
@cRP_str = internal alias i8* bitcast (%cRP_str_struct* @cRP_str$def to i8*)
@sM0_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM0_info$def to i8*)
define internal ghccc void @sM0_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM0_info$def to i64)),i64 0), i64 0, i64 4294967312}>
{
cRQ:
  %lsM0 = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnRY = load i64, i64* %R1_Var
  store i64 %lnRY, i64* %lsM0
  %lnRZ = load i64*, i64** %Sp_Var
  %lnS0 = getelementptr inbounds i64, i64* %lnRZ, i32 1
  %lnS1 = ptrtoint i64* %lnS0 to i64
  %lnS2 = sub i64 %lnS1, 24
  %lnS3 = icmp ult i64 %lnS2, %SpLim_Arg
  br i1 %lnS3, label %cRR, label %cRS
cRS:
  %lnS5 = ptrtoint i8* @stg_upd_frame_info to i64
  %lnS4 = load i64*, i64** %Sp_Var
  %lnS6 = getelementptr inbounds i64, i64* %lnS4, i32 -2
  store i64 %lnS5, i64* %lnS6, !tbaa !1
  %lnS8 = load i64, i64* %lsM0
  %lnS7 = load i64*, i64** %Sp_Var
  %lnS9 = getelementptr inbounds i64, i64* %lnS7, i32 -1
  store i64 %lnS8, i64* %lnS9, !tbaa !1
  %lnSa = ptrtoint %cRP_str_struct* @cRP_str$def to i64
  store i64 %lnSa, i64* %R2_Var
  %lnSb = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64 %lnSb, i64* %R1_Var
  %lnSc = load i64*, i64** %Sp_Var
  %lnSd = getelementptr inbounds i64, i64* %lnSc, i32 -2
  %lnSe = ptrtoint i64* %lnSd to i64
  %lnSf = inttoptr i64 %lnSe to i64*
  store i64* %lnSf, i64** %Sp_Var
  %lnSg = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSh = load i64*, i64** %Sp_Var
  %lnSi = load i64, i64* %R1_Var
  %lnSj = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSg( i64* %Base_Arg, i64* %lnSh, i64* %Hp_Arg, i64 %lnSi, i64 %lnSj, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cRR:
  %lnSk = load i64, i64* %lsM0
  store i64 %lnSk, i64* %R1_Var
  %lnSl = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnSm = bitcast i64* %lnSl to i64*
  %lnSn = load i64, i64* %lnSm, !tbaa !4
  %lnSo = inttoptr i64 %lnSn to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnSp = load i64*, i64** %Sp_Var
  %lnSq = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnSo( i64* %Base_Arg, i64* %lnSp, i64* %Hp_Arg, i64 %lnSq, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
@sM1_info = internal alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM1_info$def to i8*)
define internal ghccc void @sM1_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM1_info$def to i64)),i64 0), i64 0, i64 21474836502}>
{
cRT:
  %lsM1 = alloca i64, i32 1
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
  %lcRI = alloca i64, i32 1
  %lcRL = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnSr = load i64, i64* %R1_Var
  store i64 %lnSr, i64* %lsM1
  %lnSs = load i64*, i64** %Sp_Var
  %lnSt = getelementptr inbounds i64, i64* %lnSs, i32 1
  %lnSu = ptrtoint i64* %lnSt to i64
  %lnSv = sub i64 %lnSu, 24
  %lnSw = icmp ult i64 %lnSv, %SpLim_Arg
  br i1 %lnSw, label %cRU, label %cRV
cRV:
  %lnSx = load i64*, i64** %Hp_Var
  %lnSy = getelementptr inbounds i64, i64* %lnSx, i32 2
  %lnSz = ptrtoint i64* %lnSy to i64
  %lnSA = inttoptr i64 %lnSz to i64*
  store i64* %lnSA, i64** %Hp_Var
  %lnSB = load i64*, i64** %Hp_Var
  %lnSC = ptrtoint i64* %lnSB to i64
  %lnSD = getelementptr inbounds i64, i64* %Base_Arg, i32 107
  %lnSE = bitcast i64* %lnSD to i64*
  %lnSF = load i64, i64* %lnSE, !tbaa !4
  %lnSG = icmp ugt i64 %lnSC, %lnSF
  br i1 %lnSG, label %cRX, label %cRW
cRW:
  %lnSH = ptrtoint i64* %Base_Arg to i64
  %lnSI = inttoptr i64 %lnSH to i8*
  %lnSJ = load i64, i64* %lsM1
  %lnSK = inttoptr i64 %lnSJ to i8*
  %lnSL = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnSM = call ccc i8* (i8*, i8*) %lnSL( i8* %lnSI, i8* %lnSK ) nounwind
  %lnSN = ptrtoint i8* %lnSM to i64
  store i64 %lnSN, i64* %lcRI
  %lnSO = load i64, i64* %lcRI
  %lnSP = icmp eq i64 %lnSO, 0
  br i1 %lnSP, label %cRK, label %cRJ
cRJ:
  %lnSR = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnSQ = load i64*, i64** %Sp_Var
  %lnSS = getelementptr inbounds i64, i64* %lnSQ, i32 -2
  store i64 %lnSR, i64* %lnSS, !tbaa !1
  %lnSU = load i64, i64* %lcRI
  %lnST = load i64*, i64** %Sp_Var
  %lnSV = getelementptr inbounds i64, i64* %lnST, i32 -1
  store i64 %lnSU, i64* %lnSV, !tbaa !1
  %lnSX = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @sM0_info$def to i64
  %lnSW = load i64*, i64** %Hp_Var
  %lnSY = getelementptr inbounds i64, i64* %lnSW, i32 -1
  store i64 %lnSX, i64* %lnSY, !tbaa !2
  %lnSZ = load i64*, i64** %Hp_Var
  %lnT0 = getelementptr inbounds i64, i64* %lnSZ, i32 -1
  %lnT1 = ptrtoint i64* %lnT0 to i64
  store i64 %lnT1, i64* %lcRL
  %lnT2 = load i64, i64* %lcRL
  store i64 %lnT2, i64* %R2_Var
  %lnT3 = ptrtoint i8* @base_SystemziIO_putStrLn_closure to i64
  store i64 %lnT3, i64* %R1_Var
  %lnT4 = load i64*, i64** %Sp_Var
  %lnT5 = getelementptr inbounds i64, i64* %lnT4, i32 -2
  %lnT6 = ptrtoint i64* %lnT5 to i64
  %lnT7 = inttoptr i64 %lnT6 to i64*
  store i64* %lnT7, i64** %Sp_Var
  %lnT8 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnT9 = load i64*, i64** %Sp_Var
  %lnTa = load i64*, i64** %Hp_Var
  %lnTb = load i64, i64* %R1_Var
  %lnTc = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnT8( i64* %Base_Arg, i64* %lnT9, i64* %lnTa, i64 %lnTb, i64 %lnTc, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cRK:
  %lnTd = load i64, i64* %lsM1
  %lnTe = inttoptr i64 %lnTd to i64*
  %lnTf = load i64, i64* %lnTe, !tbaa !5
  %lnTg = inttoptr i64 %lnTf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTh = load i64*, i64** %Sp_Var
  %lnTi = load i64*, i64** %Hp_Var
  %lnTj = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTg( i64* %Base_Arg, i64* %lnTh, i64* %lnTi, i64 %lnTj, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cRX:
  %lnTk = getelementptr inbounds i64, i64* %Base_Arg, i32 113
  store i64 16, i64* %lnTk, !tbaa !4
  br label %cRU
cRU:
  %lnTl = load i64, i64* %lsM1
  store i64 %lnTl, i64* %R1_Var
  %lnTm = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnTn = bitcast i64* %lnTm to i64*
  %lnTo = load i64, i64* %lnTn, !tbaa !4
  %lnTp = inttoptr i64 %lnTo to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnTq = load i64*, i64** %Sp_Var
  %lnTr = load i64*, i64** %Hp_Var
  %lnTs = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnTp( i64* %Base_Arg, i64* %lnTq, i64* %lnTr, i64 %lnTs, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%Main_main_closure_struct = type <{i64, i64, i64, i64}>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64), i64 0, i64 0, i64 0}>
@Main_main_closure = alias i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*)
@Main_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i8*)
define ghccc void @Main_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @Main_main_info$def to i64)),i64 32), i64 0, i64 30064771094}>
{
cTA:
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
  %lcTx = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %lnTD = load i64, i64* %R1_Var
  store i64 %lnTD, i64* %lrn5
  %lnTE = load i64*, i64** %Sp_Var
  %lnTF = getelementptr inbounds i64, i64* %lnTE, i32 1
  %lnTG = ptrtoint i64* %lnTF to i64
  %lnTH = sub i64 %lnTG, 48
  %lnTI = icmp ult i64 %lnTH, %SpLim_Arg
  br i1 %lnTI, label %cTB, label %cTC
cTC:
  %lnTJ = ptrtoint i64* %Base_Arg to i64
  %lnTK = inttoptr i64 %lnTJ to i8*
  %lnTL = load i64, i64* %lrn5
  %lnTM = inttoptr i64 %lnTL to i8*
  %lnTN = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnTO = call ccc i8* (i8*, i8*) %lnTN( i8* %lnTK, i8* %lnTM ) nounwind
  %lnTP = ptrtoint i8* %lnTO to i64
  store i64 %lnTP, i64* %lcTx
  %lnTQ = load i64, i64* %lcTx
  %lnTR = icmp eq i64 %lnTQ, 0
  br i1 %lnTR, label %cTz, label %cTy
cTy:
  %lnTT = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnTS = load i64*, i64** %Sp_Var
  %lnTU = getelementptr inbounds i64, i64* %lnTS, i32 -2
  store i64 %lnTT, i64* %lnTU, !tbaa !1
  %lnTW = load i64, i64* %lcTx
  %lnTV = load i64*, i64** %Sp_Var
  %lnTX = getelementptr inbounds i64, i64* %lnTV, i32 -1
  store i64 %lnTW, i64* %lnTX, !tbaa !1
  %lnTY = ptrtoint i8* @base_GHCziBase_zdfMonadIO_closure to i64
  store i64 %lnTY, i64* %R2_Var
  %lnU0 = ptrtoint i8* @stg_ap_pp_info to i64
  %lnTZ = load i64*, i64** %Sp_Var
  %lnU1 = getelementptr inbounds i64, i64* %lnTZ, i32 -5
  store i64 %lnU0, i64* %lnU1, !tbaa !1
  %lnU3 = ptrtoint %sM1_closure_struct* @sM1_closure$def to i64
  %lnU2 = load i64*, i64** %Sp_Var
  %lnU4 = getelementptr inbounds i64, i64* %lnU2, i32 -4
  store i64 %lnU3, i64* %lnU4, !tbaa !1
  %lnU6 = ptrtoint %sM8_closure_struct* @sM8_closure$def to i64
  %lnU5 = load i64*, i64** %Sp_Var
  %lnU7 = getelementptr inbounds i64, i64* %lnU5, i32 -3
  store i64 %lnU6, i64* %lnU7, !tbaa !1
  %lnU8 = load i64*, i64** %Sp_Var
  %lnU9 = getelementptr inbounds i64, i64* %lnU8, i32 -5
  %lnUa = ptrtoint i64* %lnU9 to i64
  %lnUb = inttoptr i64 %lnUa to i64*
  store i64* %lnUb, i64** %Sp_Var
  %lnUc = bitcast i8* @base_GHCziBase_zgzg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUd = load i64*, i64** %Sp_Var
  %lnUe = load i64, i64* %R1_Var
  %lnUf = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUc( i64* %Base_Arg, i64* %lnUd, i64* %Hp_Arg, i64 %lnUe, i64 %lnUf, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cTz:
  %lnUg = load i64, i64* %lrn5
  %lnUh = inttoptr i64 %lnUg to i64*
  %lnUi = load i64, i64* %lnUh, !tbaa !5
  %lnUj = inttoptr i64 %lnUi to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUk = load i64*, i64** %Sp_Var
  %lnUl = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUj( i64* %Base_Arg, i64* %lnUk, i64* %Hp_Arg, i64 %lnUl, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cTB:
  %lnUm = load i64, i64* %lrn5
  store i64 %lnUm, i64* %R1_Var
  %lnUn = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnUo = bitcast i64* %lnUn to i64*
  %lnUp = load i64, i64* %lnUo, !tbaa !4
  %lnUq = inttoptr i64 %lnUp to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnUr = load i64*, i64** %Sp_Var
  %lnUs = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnUq( i64* %Base_Arg, i64* %lnUr, i64* %Hp_Arg, i64 %lnUs, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64}>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64), i64 0, i64 0, i64 0}>
@ZCMain_main_closure = alias i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*)
@ZCMain_main_info = alias i8* bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i8*)
define ghccc void @ZCMain_main_info$def(i64* noalias nocapture %Base_Arg, i64* noalias nocapture %Sp_Arg, i64* noalias nocapture %Hp_Arg, i64 %R1_Arg, i64 %R2_Arg, i64 %R3_Arg, i64 %R4_Arg, i64 %R5_Arg, i64 %R6_Arg, i64 %SpLim_Arg) align 8 nounwind prefix <{i64, i64, i64}><{i64 add (i64 sub (i64 ptrtoint (i8* @SN2_srt to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)* @ZCMain_main_info$def to i64)),i64 56), i64 0, i64 12884901910}>
{
cUA:
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
  %lcUx = alloca i64, i32 1
  %R2_Var = alloca i64, i32 1
  store i64 undef, i64* %R2_Var
  %R1_Var = alloca i64, i32 1
  store i64 %R1_Arg, i64* %R1_Var
  %Sp_Var = alloca i64*, i32 1
  store i64* %Sp_Arg, i64** %Sp_Var
  %lnUD = load i64, i64* %R1_Var
  store i64 %lnUD, i64* %l01D
  %lnUE = load i64*, i64** %Sp_Var
  %lnUF = getelementptr inbounds i64, i64* %lnUE, i32 1
  %lnUG = ptrtoint i64* %lnUF to i64
  %lnUH = sub i64 %lnUG, 24
  %lnUI = icmp ult i64 %lnUH, %SpLim_Arg
  br i1 %lnUI, label %cUB, label %cUC
cUC:
  %lnUJ = ptrtoint i64* %Base_Arg to i64
  %lnUK = inttoptr i64 %lnUJ to i8*
  %lnUL = load i64, i64* %l01D
  %lnUM = inttoptr i64 %lnUL to i8*
  %lnUN = bitcast i8* @newCAF to i8* (i8*, i8*)*
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
  %lnUO = call ccc i8* (i8*, i8*) %lnUN( i8* %lnUK, i8* %lnUM ) nounwind
  %lnUP = ptrtoint i8* %lnUO to i64
  store i64 %lnUP, i64* %lcUx
  %lnUQ = load i64, i64* %lcUx
  %lnUR = icmp eq i64 %lnUQ, 0
  br i1 %lnUR, label %cUz, label %cUy
cUy:
  %lnUT = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %lnUS = load i64*, i64** %Sp_Var
  %lnUU = getelementptr inbounds i64, i64* %lnUS, i32 -2
  store i64 %lnUT, i64* %lnUU, !tbaa !1
  %lnUW = load i64, i64* %lcUx
  %lnUV = load i64*, i64** %Sp_Var
  %lnUX = getelementptr inbounds i64, i64* %lnUV, i32 -1
  store i64 %lnUW, i64* %lnUX, !tbaa !1
  %lnUY = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64 %lnUY, i64* %R2_Var
  %lnUZ = ptrtoint i8* @base_GHCziTopHandler_runMainIO_closure to i64
  store i64 %lnUZ, i64* %R1_Var
  %lnV0 = load i64*, i64** %Sp_Var
  %lnV1 = getelementptr inbounds i64, i64* %lnV0, i32 -2
  %lnV2 = ptrtoint i64* %lnV1 to i64
  %lnV3 = inttoptr i64 %lnV2 to i64*
  store i64* %lnV3, i64** %Sp_Var
  %lnV4 = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnV5 = load i64*, i64** %Sp_Var
  %lnV6 = load i64, i64* %R1_Var
  %lnV7 = load i64, i64* %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnV4( i64* %Base_Arg, i64* %lnV5, i64* %Hp_Arg, i64 %lnV6, i64 %lnV7, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cUz:
  %lnV8 = load i64, i64* %l01D
  %lnV9 = inttoptr i64 %lnV8 to i64*
  %lnVa = load i64, i64* %lnV9, !tbaa !5
  %lnVb = inttoptr i64 %lnVa to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVc = load i64*, i64** %Sp_Var
  %lnVd = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVb( i64* %Base_Arg, i64* %lnVc, i64* %Hp_Arg, i64 %lnVd, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
cUB:
  %lnVe = load i64, i64* %l01D
  store i64 %lnVe, i64* %R1_Var
  %lnVf = getelementptr inbounds i64, i64* %Base_Arg, i32 -2
  %lnVg = bitcast i64* %lnVf to i64*
  %lnVh = load i64, i64* %lnVg, !tbaa !4
  %lnVi = inttoptr i64 %lnVh to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64)*
  %lnVj = load i64*, i64** %Sp_Var
  %lnVk = load i64, i64* %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64) %lnVi( i64* %Base_Arg, i64* %lnVj, i64* %Hp_Arg, i64 %lnVk, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 %SpLim_Arg ) nounwind
  ret void
}
%cVm_str_struct = type <{[5 x i8]}>
%rCg_closure_struct = type <{i64, i64}>
@cVm_str$def = internal constant %cVm_str_struct<{[5 x i8] [i8 109, i8 97, i8 105, i8 110, i8 0]}>
@cVm_str = internal alias i8* bitcast (%cVm_str_struct* @cVm_str$def to i8*)
@rCg_closure$def = internal global %rCg_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @cVm_str to i64)}>
@rCg_closure = internal alias i8* bitcast (%rCg_closure_struct* @rCg_closure$def to i8*)
%cVo_str_struct = type <{[5 x i8]}>
%rCv_closure_struct = type <{i64, i64}>
@cVo_str$def = internal constant %cVo_str_struct<{[5 x i8] [i8 77, i8 97, i8 105, i8 110, i8 0]}>
@cVo_str = internal alias i8* bitcast (%cVo_str_struct* @cVo_str$def to i8*)
@rCv_closure$def = internal global %rCv_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_TrNameS_static_info to i64), i64 ptrtoint (i8* @cVo_str to i64)}>
@rCv_closure = internal alias i8* bitcast (%rCv_closure_struct* @rCv_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64}>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziTypes_Module_static_info to i64), i64 add (i64 ptrtoint (%rCg_closure_struct* @rCg_closure$def to i64),i64 1), i64 add (i64 ptrtoint (%rCv_closure_struct* @rCv_closure$def to i64),i64 1), i64 3}>
@Main_zdtrModule_closure = alias i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*)
%SN2_srt_struct = type <{i64, i64, i64, i64, i64, i64, i64, i64, i64}>
@SN2_srt$def = internal constant %SN2_srt_struct<{i64 ptrtoint (i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8* @base_GHCziBase_zpzp_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_putStrLn_closure to i64), i64 ptrtoint (i8* @base_SystemziIO_getLine_closure to i64), i64 ptrtoint (i8* @base_GHCziBase_zdfMonadIO_closure to i64), i64 ptrtoint (%sM1_closure_struct* @sM1_closure$def to i64), i64 ptrtoint (%sM8_closure_struct* @sM8_closure$def to i64), i64 ptrtoint (i8* @base_GHCziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct* @Main_main_closure$def to i64)}>
@SN2_srt = internal alias i8* bitcast (%SN2_srt_struct* @SN2_srt$def to i8*)
@stg_upd_frame_info = external global i8
@ghczmprim_GHCziCString_unpackCStringzh_closure = external global i8
@stg_ap_n_fast = external global i8
@base_GHCziBase_zpzp_closure = external global i8
@stg_ap_pp_fast = external global i8
@base_SystemziIO_putStrLn_closure = external global i8
@stg_ap_p_fast = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@base_GHCziBase_zdfMonadIO_closure = external global i8
@stg_ap_pp_info = external global i8
@base_SystemziIO_getLine_closure = external global i8
@base_GHCziBase_zgzgze_info = external global i8
@base_GHCziBase_zgzg_info = external global i8
@base_GHCziTopHandler_runMainIO_closure = external global i8
@ghczmprim_GHCziTypes_TrNameS_static_info = external global i8
@ghczmprim_GHCziTypes_Module_static_info = external global i8
@llvm.used = appending constant [14 x i8*] [i8* bitcast (%SN2_srt_struct* @SN2_srt$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct* @Main_zdtrModule_closure$def to i8*), i8* bitcast (%rCv_closure_struct* @rCv_closure$def to i8*), i8* bitcast (%cVo_str_struct* @cVo_str$def to i8*), i8* bitcast (%rCg_closure_struct* @rCg_closure$def to i8*), i8* bitcast (%cVm_str_struct* @cVm_str$def to i8*), i8* bitcast (%ZCMain_main_closure_struct* @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main_closure_struct* @Main_main_closure$def to i8*), i8* bitcast (%cRP_str_struct* @cRP_str$def to i8*), i8* bitcast (%sM1_closure_struct* @sM1_closure$def to i8*), i8* bitcast (%cMJ_str_struct* @cMJ_str$def to i8*), i8* bitcast (%cMw_str_struct* @cMw_str$def to i8*), i8* bitcast (%sM8_closure_struct* @sM8_closure$def to i8*), i8* bitcast (%__stginit_Main_struct* @__stginit_Main$def to i8*)], section "llvm.metadata"
