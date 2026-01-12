; ModuleID = 'E:/Tai_lieu/DATN/vitis/hw/hw/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: noinline
define void @apatb_BlackBoxJam_ir(%"struct.ap_uint<64>"* noalias nocapture nonnull readonly "maxi" %in, %"struct.ap_uint<64>"* noalias nocapture nonnull "maxi" %out, i1 zeroext %doInit, i32 %targetLayer, i32 %targetMem, i32 %targetInd, i32 %targetThresh, %"struct.ap_uint<64>"* nocapture readonly %val, i32 %numReps) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 4096)
  %in_copy = bitcast i8* %malloccall to [512 x i64]*
  %out_copy = alloca [16 x i64], align 512
  %0 = bitcast %"struct.ap_uint<64>"* %in to [512 x %"struct.ap_uint<64>"]*
  %1 = bitcast %"struct.ap_uint<64>"* %out to [16 x %"struct.ap_uint<64>"]*
  call fastcc void @copy_in([512 x %"struct.ap_uint<64>"]* nonnull %0, [512 x i64]* %in_copy, [16 x %"struct.ap_uint<64>"]* nonnull %1, [16 x i64]* nonnull align 512 %out_copy)
  call void @apatb_BlackBoxJam_hw([512 x i64]* %in_copy, [16 x i64]* %out_copy, i1 %doInit, i32 %targetLayer, i32 %targetMem, i32 %targetInd, i32 %targetThresh, %"struct.ap_uint<64>"* %val, i32 %numReps)
  call void @copy_back([512 x %"struct.ap_uint<64>"]* %0, [512 x i64]* %in_copy, [16 x %"struct.ap_uint<64>"]* %1, [16 x i64]* %out_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([512 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="0", [512 x i64]* noalias nocapture "unpacked"="1.0", [16 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="2", [16 x i64]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_uint<64>.231"([512 x i64]* %1, [512 x %"struct.ap_uint<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<64>"([16 x i64]* align 512 %3, [16 x %"struct.ap_uint<64>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_uint<64>"([512 x %"struct.ap_uint<64>"]* noalias "unpacked"="0" %dst, [512 x i64]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_uint<64>"([512 x %"struct.ap_uint<64>"]* nonnull %dst, [512 x i64]* %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a512struct.ap_uint<64>"([512 x %"struct.ap_uint<64>"]* "unpacked"="0" %dst, [512 x i64]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x i64], [512 x i64]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [512 x %"struct.ap_uint<64>"], [512 x %"struct.ap_uint<64>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<64>"([16 x i64]* noalias nocapture align 512 "unpacked"="0.0" %dst, [16 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_uint<64>"([16 x i64]* %dst, [16 x %"struct.ap_uint<64>"]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_uint<64>"([16 x i64]* nocapture "unpacked"="0.0" %dst, [16 x %"struct.ap_uint<64>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_uint<64>"], [16 x %"struct.ap_uint<64>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x i64], [16 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([512 x %"struct.ap_uint<64>"]* noalias "unpacked"="0", [512 x i64]* noalias nocapture readonly "unpacked"="1.0", [16 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [16 x i64]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_uint<64>"([512 x %"struct.ap_uint<64>"]* %0, [512 x i64]* %1)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<64>.221"([16 x %"struct.ap_uint<64>"]* %2, [16 x i64]* align 512 %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<64>.221"([16 x %"struct.ap_uint<64>"]* noalias "unpacked"="0" %dst, [16 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_uint<64>.224"([16 x %"struct.ap_uint<64>"]* nonnull %dst, [16 x i64]* %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_uint<64>.224"([16 x %"struct.ap_uint<64>"]* "unpacked"="0" %dst, [16 x i64]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x i64], [16 x i64]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_uint<64>"], [16 x %"struct.ap_uint<64>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_uint<64>.231"([512 x i64]* noalias nocapture "unpacked"="0.0" %dst, [512 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_uint<64>.234"([512 x i64]* %dst, [512 x %"struct.ap_uint<64>"]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a512struct.ap_uint<64>.234"([512 x i64]* nocapture "unpacked"="0.0" %dst, [512 x %"struct.ap_uint<64>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x %"struct.ap_uint<64>"], [512 x %"struct.ap_uint<64>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [512 x i64], [512 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_BlackBoxJam_hw([512 x i64]*, [16 x i64]*, i1, i32, i32, i32, i32, %"struct.ap_uint<64>"*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([512 x %"struct.ap_uint<64>"]* noalias "unpacked"="0", [512 x i64]* noalias nocapture readonly "unpacked"="1.0", [16 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [16 x i64]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<64>.221"([16 x %"struct.ap_uint<64>"]* %2, [16 x i64]* align 512 %3)
  ret void
}

define void @BlackBoxJam_hw_stub_wrapper([512 x i64]*, [16 x i64]*, i1, i32, i32, i32, i32, %"struct.ap_uint<64>"*, i32) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %9 = bitcast i8* %malloccall to [512 x %"struct.ap_uint<64>"]*
  %10 = alloca [16 x %"struct.ap_uint<64>"]
  call void @copy_out([512 x %"struct.ap_uint<64>"]* %9, [512 x i64]* %0, [16 x %"struct.ap_uint<64>"]* %10, [16 x i64]* %1)
  %11 = bitcast [512 x %"struct.ap_uint<64>"]* %9 to %"struct.ap_uint<64>"*
  %12 = bitcast [16 x %"struct.ap_uint<64>"]* %10 to %"struct.ap_uint<64>"*
  call void @BlackBoxJam_hw_stub(%"struct.ap_uint<64>"* %11, %"struct.ap_uint<64>"* %12, i1 %2, i32 %3, i32 %4, i32 %5, i32 %6, %"struct.ap_uint<64>"* %7, i32 %8)
  call void @copy_in([512 x %"struct.ap_uint<64>"]* %9, [512 x i64]* %0, [16 x %"struct.ap_uint<64>"]* %10, [16 x i64]* %1)
  ret void
}

declare void @BlackBoxJam_hw_stub(%"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, i1, i32, i32, i32, i32, %"struct.ap_uint<64>"*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
