; ModuleID = '/data/data/com.termux/files/home/heap/build/test.ll'
source_filename = "/data/data/com.termux/files/home/heap/build/test.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-android24"

%Heap = type { ptr, ptr, ptr, ptr, ptr, ptr }

@SEED = external local_unnamed_addr global i32
@.fmt_byte_test_0 = private constant [4 x i8] c"%d\0A\00"
@.fmt_long_test_0 = private constant [6 x i8] c"%lld\0A\00"
@.fmt_double_test_0 = private constant [5 x i8] c"%lf\0A\00"
@.fmt_int_test_0 = private constant [4 x i8] c"%d\0A\00"
@t_test_0 = global %Heap zeroinitializer
@.str_test_0 = private unnamed_addr constant [6 x i8] c"zebra\00"
@.str_test_1 = private unnamed_addr constant [6 x i8] c"apple\00"
@.str_test_2 = private unnamed_addr constant [7 x i8] c"orange\00"
@.str_test_3 = private unnamed_addr constant [7 x i8] c"banana\00"
@str = private unnamed_addr constant [6 x i8] c"false\00", align 4
@str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 4

; Function Attrs: nofree nounwind
define void @_screen_string_test_0(ptr readonly captures(none) %x) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %x)
  %0 = tail call i32 @fflush(ptr null)
  ret void
}

declare ptr @_str_dup(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
define void @_screen_byte_test_0(i8 %x) local_unnamed_addr #0 {
entry:
  %extended = sext i8 %x to i32
  %0 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended)
  %1 = tail call i32 @fflush(ptr null)
  ret void
}

; Function Attrs: nofree nounwind
define void @_screen_long_test_0(i64 %x) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %x)
  %1 = tail call i32 @fflush(ptr null)
  ret void
}

; Function Attrs: nofree nounwind
define void @_screen_double_test_0(double %x) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %x)
  %1 = tail call i32 @fflush(ptr null)
  ret void
}

; Function Attrs: nofree nounwind
define void @_screen_int_test_0(i32 %x) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %x)
  %1 = tail call i32 @fflush(ptr null)
  ret void
}

; Function Attrs: nofree nounwind
define void @_screen_bool(i1 %b) local_unnamed_addr #0 {
entry:
  %str.1.str = select i1 %b, ptr @str.1, ptr @str
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %0 = tail call i32 @fflush(ptr null)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #0

declare i32 @_time_millis() local_unnamed_addr

declare void @_zen_init_Heap(ptr) local_unnamed_addr

declare void @Heap_pushInt(ptr, i32) local_unnamed_addr

declare i32 @Heap_popInt(ptr) local_unnamed_addr

declare i32 @Heap_peekInt(ptr) local_unnamed_addr

declare i32 @Heap_sizeInt(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyInt(ptr) local_unnamed_addr

declare void @Heap_pushBool(ptr, i1) local_unnamed_addr

declare i1 @Heap_popBool(ptr) local_unnamed_addr

declare i1 @Heap_peekBool(ptr) local_unnamed_addr

declare i32 @Heap_sizeBool(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyBool(ptr) local_unnamed_addr

declare void @Heap_pushDouble(ptr, double) local_unnamed_addr

declare double @Heap_popDouble(ptr) local_unnamed_addr

declare double @Heap_peekDouble(ptr) local_unnamed_addr

declare i32 @Heap_sizeDouble(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyDouble(ptr) local_unnamed_addr

declare void @Heap_pushLong(ptr, i64) local_unnamed_addr

declare i64 @Heap_popLong(ptr) local_unnamed_addr

declare i64 @Heap_peekLong(ptr) local_unnamed_addr

declare i32 @Heap_sizeLong(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyLong(ptr) local_unnamed_addr

declare void @Heap_pushByte(ptr, i8) local_unnamed_addr

declare i8 @Heap_popByte(ptr) local_unnamed_addr

declare i8 @Heap_peekByte(ptr) local_unnamed_addr

declare i32 @Heap_sizeByte(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyByte(ptr) local_unnamed_addr

declare void @Heap_pushString(ptr, ptr) local_unnamed_addr

declare ptr @Heap_popString(ptr) local_unnamed_addr

declare ptr @Heap_peekString(ptr) local_unnamed_addr

declare i32 @Heap_sizeString(ptr) local_unnamed_addr

declare i1 @Heap_isEmptyString(ptr) local_unnamed_addr

define void @_assignSeed() local_unnamed_addr {
entry:
  %t0 = tail call i32 @_time_millis()
  store i32 %t0, ptr @SEED, align 4
  ret void
}

define noundef i32 @main(i32 %argc, ptr readnone captures(none) %argv) local_unnamed_addr {
entry:
  %t0.i = tail call i32 @_time_millis()
  store i32 %t0.i, ptr @SEED, align 4
  tail call void @_zen_init_Heap(ptr nonnull @t_test_0)
  %t6 = tail call i1 @Heap_isEmptyInt(ptr nonnull @t_test_0)
  %str.1.str.i = select i1 %t6, ptr @str.1, ptr @str
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i)
  %0 = tail call i32 @fflush(ptr null)
  %t7 = tail call i32 @Heap_sizeInt(ptr nonnull @t_test_0)
  %1 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t7)
  %2 = tail call i32 @fflush(ptr null)
  tail call void @Heap_pushInt(ptr nonnull @t_test_0, i32 50)
  tail call void @Heap_pushInt(ptr nonnull @t_test_0, i32 20)
  tail call void @Heap_pushInt(ptr nonnull @t_test_0, i32 40)
  tail call void @Heap_pushInt(ptr nonnull @t_test_0, i32 10)
  tail call void @Heap_pushInt(ptr nonnull @t_test_0, i32 30)
  %t8 = tail call i32 @Heap_peekInt(ptr nonnull @t_test_0)
  %3 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t8)
  %4 = tail call i32 @fflush(ptr null)
  %t9 = tail call i32 @Heap_sizeInt(ptr nonnull @t_test_0)
  %5 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t9)
  %6 = tail call i32 @fflush(ptr null)
  %t10 = tail call i32 @Heap_popInt(ptr nonnull @t_test_0)
  %7 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t10)
  %8 = tail call i32 @fflush(ptr null)
  %t11 = tail call i32 @Heap_popInt(ptr nonnull @t_test_0)
  %9 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t11)
  %10 = tail call i32 @fflush(ptr null)
  %t12 = tail call i32 @Heap_popInt(ptr nonnull @t_test_0)
  %11 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t12)
  %12 = tail call i32 @fflush(ptr null)
  %t13 = tail call i32 @Heap_popInt(ptr nonnull @t_test_0)
  %13 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t13)
  %14 = tail call i32 @fflush(ptr null)
  %t14 = tail call i32 @Heap_popInt(ptr nonnull @t_test_0)
  %15 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t14)
  %16 = tail call i32 @fflush(ptr null)
  %t15 = tail call i1 @Heap_isEmptyInt(ptr nonnull @t_test_0)
  %str.1.str.i1 = select i1 %t15, ptr @str.1, ptr @str
  %puts.i2 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i1)
  %17 = tail call i32 @fflush(ptr null)
  tail call void @Heap_pushBool(ptr nonnull @t_test_0, i1 true)
  tail call void @Heap_pushBool(ptr nonnull @t_test_0, i1 false)
  tail call void @Heap_pushBool(ptr nonnull @t_test_0, i1 true)
  %t16 = tail call i1 @Heap_peekBool(ptr nonnull @t_test_0)
  %str.1.str.i3 = select i1 %t16, ptr @str.1, ptr @str
  %puts.i4 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i3)
  %18 = tail call i32 @fflush(ptr null)
  %t17 = tail call i32 @Heap_sizeBool(ptr nonnull @t_test_0)
  %19 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t17)
  %20 = tail call i32 @fflush(ptr null)
  %t18 = tail call i1 @Heap_popBool(ptr nonnull @t_test_0)
  %str.1.str.i5 = select i1 %t18, ptr @str.1, ptr @str
  %puts.i6 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i5)
  %21 = tail call i32 @fflush(ptr null)
  %t19 = tail call i1 @Heap_popBool(ptr nonnull @t_test_0)
  %str.1.str.i7 = select i1 %t19, ptr @str.1, ptr @str
  %puts.i8 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i7)
  %22 = tail call i32 @fflush(ptr null)
  %t20 = tail call i1 @Heap_popBool(ptr nonnull @t_test_0)
  %str.1.str.i9 = select i1 %t20, ptr @str.1, ptr @str
  %puts.i10 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i9)
  %23 = tail call i32 @fflush(ptr null)
  %t21 = tail call i1 @Heap_isEmptyBool(ptr nonnull @t_test_0)
  %str.1.str.i11 = select i1 %t21, ptr @str.1, ptr @str
  %puts.i12 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i11)
  %24 = tail call i32 @fflush(ptr null)
  tail call void @Heap_pushDouble(ptr nonnull @t_test_0, double 5.500000e+00)
  tail call void @Heap_pushDouble(ptr nonnull @t_test_0, double 2.200000e+00)
  tail call void @Heap_pushDouble(ptr nonnull @t_test_0, double 8.800000e+00)
  tail call void @Heap_pushDouble(ptr nonnull @t_test_0, double 1.100000e+00)
  %t22 = tail call double @Heap_peekDouble(ptr nonnull @t_test_0)
  %25 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %t22)
  %26 = tail call i32 @fflush(ptr null)
  %t23 = tail call i32 @Heap_sizeDouble(ptr nonnull @t_test_0)
  %27 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t23)
  %28 = tail call i32 @fflush(ptr null)
  %t24 = tail call double @Heap_popDouble(ptr nonnull @t_test_0)
  %29 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %t24)
  %30 = tail call i32 @fflush(ptr null)
  %t25 = tail call double @Heap_popDouble(ptr nonnull @t_test_0)
  %31 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %t25)
  %32 = tail call i32 @fflush(ptr null)
  %t26 = tail call double @Heap_popDouble(ptr nonnull @t_test_0)
  %33 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %t26)
  %34 = tail call i32 @fflush(ptr null)
  %t27 = tail call double @Heap_popDouble(ptr nonnull @t_test_0)
  %35 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_double_test_0, double %t27)
  %36 = tail call i32 @fflush(ptr null)
  %t28 = tail call i1 @Heap_isEmptyDouble(ptr nonnull @t_test_0)
  %str.1.str.i13 = select i1 %t28, ptr @str.1, ptr @str
  %puts.i14 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i13)
  %37 = tail call i32 @fflush(ptr null)
  tail call void @Heap_pushLong(ptr nonnull @t_test_0, i64 500)
  tail call void @Heap_pushLong(ptr nonnull @t_test_0, i64 100)
  tail call void @Heap_pushLong(ptr nonnull @t_test_0, i64 300)
  tail call void @Heap_pushLong(ptr nonnull @t_test_0, i64 200)
  %t29 = tail call i64 @Heap_peekLong(ptr nonnull @t_test_0)
  %38 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %t29)
  %39 = tail call i32 @fflush(ptr null)
  %t30 = tail call i32 @Heap_sizeLong(ptr nonnull @t_test_0)
  %40 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t30)
  %41 = tail call i32 @fflush(ptr null)
  %t31 = tail call i64 @Heap_popLong(ptr nonnull @t_test_0)
  %42 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %t31)
  %43 = tail call i32 @fflush(ptr null)
  %t32 = tail call i64 @Heap_popLong(ptr nonnull @t_test_0)
  %44 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %t32)
  %45 = tail call i32 @fflush(ptr null)
  %t33 = tail call i64 @Heap_popLong(ptr nonnull @t_test_0)
  %46 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %t33)
  %47 = tail call i32 @fflush(ptr null)
  %t34 = tail call i64 @Heap_popLong(ptr nonnull @t_test_0)
  %48 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_long_test_0, i64 %t34)
  %49 = tail call i32 @fflush(ptr null)
  %t35 = tail call i1 @Heap_isEmptyLong(ptr nonnull @t_test_0)
  %str.1.str.i15 = select i1 %t35, ptr @str.1, ptr @str
  %puts.i16 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i15)
  %50 = tail call i32 @fflush(ptr null)
  tail call void @Heap_pushByte(ptr nonnull @t_test_0, i8 50)
  tail call void @Heap_pushByte(ptr nonnull @t_test_0, i8 10)
  tail call void @Heap_pushByte(ptr nonnull @t_test_0, i8 30)
  tail call void @Heap_pushByte(ptr nonnull @t_test_0, i8 20)
  %t36 = tail call i8 @Heap_peekByte(ptr nonnull @t_test_0)
  %extended.i = sext i8 %t36 to i32
  %51 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended.i)
  %52 = tail call i32 @fflush(ptr null)
  %t37 = tail call i32 @Heap_sizeByte(ptr nonnull @t_test_0)
  %53 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t37)
  %54 = tail call i32 @fflush(ptr null)
  %t38 = tail call i8 @Heap_popByte(ptr nonnull @t_test_0)
  %extended.i17 = sext i8 %t38 to i32
  %55 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended.i17)
  %56 = tail call i32 @fflush(ptr null)
  %t39 = tail call i8 @Heap_popByte(ptr nonnull @t_test_0)
  %extended.i18 = sext i8 %t39 to i32
  %57 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended.i18)
  %58 = tail call i32 @fflush(ptr null)
  %t40 = tail call i8 @Heap_popByte(ptr nonnull @t_test_0)
  %extended.i19 = sext i8 %t40 to i32
  %59 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended.i19)
  %60 = tail call i32 @fflush(ptr null)
  %t41 = tail call i8 @Heap_popByte(ptr nonnull @t_test_0)
  %extended.i20 = sext i8 %t41 to i32
  %61 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_byte_test_0, i32 %extended.i20)
  %62 = tail call i32 @fflush(ptr null)
  %t42 = tail call i1 @Heap_isEmptyByte(ptr nonnull @t_test_0)
  %str.1.str.i21 = select i1 %t42, ptr @str.1, ptr @str
  %puts.i22 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i21)
  %63 = tail call i32 @fflush(ptr null)
  %t44 = tail call ptr @_str_dup(ptr nonnull @.str_test_0)
  tail call void @Heap_pushString(ptr nonnull @t_test_0, ptr %t44)
  %t46 = tail call ptr @_str_dup(ptr nonnull @.str_test_1)
  tail call void @Heap_pushString(ptr nonnull @t_test_0, ptr %t46)
  %t48 = tail call ptr @_str_dup(ptr nonnull @.str_test_2)
  tail call void @Heap_pushString(ptr nonnull @t_test_0, ptr %t48)
  %t50 = tail call ptr @_str_dup(ptr nonnull @.str_test_3)
  tail call void @Heap_pushString(ptr nonnull @t_test_0, ptr %t50)
  %t51 = tail call ptr @Heap_peekString(ptr nonnull @t_test_0)
  %puts.i23 = tail call i32 @puts(ptr nonnull readonly dereferenceable(1) %t51)
  %64 = tail call i32 @fflush(ptr null)
  %t52 = tail call i32 @Heap_sizeString(ptr nonnull @t_test_0)
  %65 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) @.fmt_int_test_0, i32 %t52)
  %66 = tail call i32 @fflush(ptr null)
  %t53 = tail call ptr @Heap_popString(ptr nonnull @t_test_0)
  %puts.i24 = tail call i32 @puts(ptr nonnull readonly dereferenceable(1) %t53)
  %67 = tail call i32 @fflush(ptr null)
  %t54 = tail call ptr @Heap_popString(ptr nonnull @t_test_0)
  %puts.i25 = tail call i32 @puts(ptr nonnull readonly dereferenceable(1) %t54)
  %68 = tail call i32 @fflush(ptr null)
  %t55 = tail call ptr @Heap_popString(ptr nonnull @t_test_0)
  %puts.i26 = tail call i32 @puts(ptr nonnull readonly dereferenceable(1) %t55)
  %69 = tail call i32 @fflush(ptr null)
  %t56 = tail call ptr @Heap_popString(ptr nonnull @t_test_0)
  %puts.i27 = tail call i32 @puts(ptr nonnull readonly dereferenceable(1) %t56)
  %70 = tail call i32 @fflush(ptr null)
  %t57 = tail call i1 @Heap_isEmptyString(ptr nonnull @t_test_0)
  %str.1.str.i28 = select i1 %t57, ptr @str.1, ptr @str
  %puts.i29 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.i28)
  %71 = tail call i32 @fflush(ptr null)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #0

attributes #0 = { nofree nounwind }
