target triple = "aarch64-unknown-linux-android24"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
@NAN = external constant double
@NEG_INF = external constant double
@INF = external constant double
@F64_EPS = external constant double
@F64_MIN = external constant double
@F64_MAX = external constant double
@I32_MIN = external constant i32
@I32_MAX = external constant i32
@SEED = external global i32
@LN10 = external constant double
@LN2 = external constant double
@SQRT2 = external constant double
@PHI = external constant double
@E = external constant double
@TAU = external constant double
@PI = external constant double
define void @_screen_string_test_0(ptr %x) {
entry:
  call i32 (ptr, ...) @printf(ptr getelementptr ([4 x i8], [4 x i8]* @.fmt_string_test_0, i32 0, i32 0),
    ptr %x)
  call i32 @fflush(ptr null)
  ret void
}
@.fmt_string_test_0 = private constant [4 x i8] c"%s\0A\00"
declare ptr @_str_dup(ptr)
define void @_screen_byte_test_0(i8 %x) {
entry:
  %extended = sext i8 %x to i32
  call i32 (ptr, ...) @printf(ptr getelementptr ([4 x i8], [4 x i8]* @.fmt_byte_test_0, i32 0, i32 0),
    i32 %extended)
  call i32 @fflush(ptr null)
  ret void
}
@.fmt_byte_test_0 = private constant [4 x i8] c"%d\0A\00"
define void @_screen_long_test_0(i64 %x) {
entry:
  call i32 (ptr, ...) @printf(ptr getelementptr ([6 x i8], [6 x i8]* @.fmt_long_test_0, i32 0, i32 0),
    i64 %x)
  call i32 @fflush(ptr null)
  ret void
}
@.fmt_long_test_0 = private constant [6 x i8] c"%lld\0A\00"
define void @_screen_double_test_0(double %x) {
entry:
  call i32 (ptr, ...) @printf(ptr getelementptr ([5 x i8], [5 x i8]* @.fmt_double_test_0, i32 0, i32 0),
    double %x)
  call i32 @fflush(ptr null)
  ret void
}
@.fmt_double_test_0 = private constant [5 x i8] c"%lf\0A\00"
define void @_screen_int_test_0(i32 %x) {
entry:
  call i32 (ptr, ...) @printf(ptr getelementptr ([4 x i8], [4 x i8]* @.fmt_int_test_0, i32 0, i32 0),
    i32 %x)
  call i32 @fflush(ptr null)
  ret void
}
@.fmt_int_test_0 = private constant [4 x i8] c"%d\0A\00"
define void @_screen_bool(i1 %b) {
entry:
  br i1 %b, label %true, label %false
true:
  call i32 (ptr, ...) @printf(ptr getelementptr ([6 x i8], [6 x i8]* @.fmt_bool_t, i32 0, i32 0))
  call i32 @fflush(ptr null)
  br label %end
false:
  call i32 (ptr, ...) @printf(ptr getelementptr ([7 x i8], [7 x i8]* @.fmt_bool_f, i32 0, i32 0))
  call i32 @fflush(ptr null)
  br label %end
end:
  ret void
}
@.fmt_bool_f = private constant [7 x i8] c"false\0A\00"
@.fmt_bool_t = private constant [6 x i8] c"true\0A\00"
declare i32 @fflush(ptr)
declare i32 @printf(ptr, ...)
declare i32 @_time_millis()
%HttpServer = type opaque
%HttpRequest = type opaque
%HttpResponse = type opaque
%Json = type opaque
%JsonArray = type opaque
%JsonObject = type opaque
%Ptr = type { ptr }
%Map = type opaque
declare void @_zen_init_Heap(ptr)
declare void @Heap_pushInt(ptr, i32)
declare i32 @Heap_popInt(ptr)
declare i32 @Heap_peekInt(ptr)
declare i32 @Heap_sizeInt(ptr)
declare i1 @Heap_isEmptyInt(ptr)
declare void @Heap_pushBool(ptr, i1)
declare i1 @Heap_popBool(ptr)
declare i1 @Heap_peekBool(ptr)
declare i32 @Heap_sizeBool(ptr)
declare i1 @Heap_isEmptyBool(ptr)
declare void @Heap_pushDouble(ptr, double)
declare double @Heap_popDouble(ptr)
declare double @Heap_peekDouble(ptr)
declare i32 @Heap_sizeDouble(ptr)
declare i1 @Heap_isEmptyDouble(ptr)
declare void @Heap_pushLong(ptr, i64)
declare i64 @Heap_popLong(ptr)
declare i64 @Heap_peekLong(ptr)
declare i32 @Heap_sizeLong(ptr)
declare i1 @Heap_isEmptyLong(ptr)
declare void @Heap_pushByte(ptr, i8)
declare i8 @Heap_popByte(ptr)
declare i8 @Heap_peekByte(ptr)
declare i32 @Heap_sizeByte(ptr)
declare i1 @Heap_isEmptyByte(ptr)
declare void @Heap_pushString(ptr, ptr)
declare ptr @Heap_popString(ptr)
declare ptr @Heap_peekString(ptr)
declare i32 @Heap_sizeString(ptr)
declare i1 @Heap_isEmptyString(ptr)
%Heap = type { ptr, ptr, ptr, ptr, ptr, ptr }
@t_test_0 = global %Heap zeroinitializer
@.str_test_0 = private unnamed_addr constant [6 x i8] c"zebra\00"
@.str_test_1 = private unnamed_addr constant [6 x i8] c"apple\00"
@.str_test_2 = private unnamed_addr constant [7 x i8] c"orange\00"
@.str_test_3 = private unnamed_addr constant [7 x i8] c"banana\00"

define void @_assignSeed () {
  entry:

  %t0 = call i32 @_time_millis()
  store i32 %t0, ptr @SEED
  ret void
}
    
define i32 @main(i32 %argc, ptr %argv) { 
entry:
call void @_assignSeed()

call void @_zen_init_Heap(ptr @t_test_0)
%t6 = call i1 @Heap_isEmptyInt(ptr @t_test_0)
call void @_screen_bool(i1 %t6)
%t7 = call i32 @Heap_sizeInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t7)
call void @Heap_pushInt(ptr @t_test_0, i32 50)
call void @Heap_pushInt(ptr @t_test_0, i32 20)
call void @Heap_pushInt(ptr @t_test_0, i32 40)
call void @Heap_pushInt(ptr @t_test_0, i32 10)
call void @Heap_pushInt(ptr @t_test_0, i32 30)
%t8 = call i32 @Heap_peekInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t8)
%t9 = call i32 @Heap_sizeInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t9)
%t10 = call i32 @Heap_popInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t10)
%t11 = call i32 @Heap_popInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t11)
%t12 = call i32 @Heap_popInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t12)
%t13 = call i32 @Heap_popInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t13)
%t14 = call i32 @Heap_popInt(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t14)
%t15 = call i1 @Heap_isEmptyInt(ptr @t_test_0)
call void @_screen_bool(i1 %t15)
call void @Heap_pushBool(ptr @t_test_0, i1 1)
call void @Heap_pushBool(ptr @t_test_0, i1 0)
call void @Heap_pushBool(ptr @t_test_0, i1 1)
%t16 = call i1 @Heap_peekBool(ptr @t_test_0)
call void @_screen_bool(i1 %t16)
%t17 = call i32 @Heap_sizeBool(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t17)
%t18 = call i1 @Heap_popBool(ptr @t_test_0)
call void @_screen_bool(i1 %t18)
%t19 = call i1 @Heap_popBool(ptr @t_test_0)
call void @_screen_bool(i1 %t19)
%t20 = call i1 @Heap_popBool(ptr @t_test_0)
call void @_screen_bool(i1 %t20)
%t21 = call i1 @Heap_isEmptyBool(ptr @t_test_0)
call void @_screen_bool(i1 %t21)
call void @Heap_pushDouble(ptr @t_test_0, double 5.5)
call void @Heap_pushDouble(ptr @t_test_0, double 2.2)
call void @Heap_pushDouble(ptr @t_test_0, double 8.8)
call void @Heap_pushDouble(ptr @t_test_0, double 1.1)
%t22 = call double @Heap_peekDouble(ptr @t_test_0)
call void @_screen_double_test_0(double %t22)
%t23 = call i32 @Heap_sizeDouble(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t23)
%t24 = call double @Heap_popDouble(ptr @t_test_0)
call void @_screen_double_test_0(double %t24)
%t25 = call double @Heap_popDouble(ptr @t_test_0)
call void @_screen_double_test_0(double %t25)
%t26 = call double @Heap_popDouble(ptr @t_test_0)
call void @_screen_double_test_0(double %t26)
%t27 = call double @Heap_popDouble(ptr @t_test_0)
call void @_screen_double_test_0(double %t27)
%t28 = call i1 @Heap_isEmptyDouble(ptr @t_test_0)
call void @_screen_bool(i1 %t28)
call void @Heap_pushLong(ptr @t_test_0, i64 500)
call void @Heap_pushLong(ptr @t_test_0, i64 100)
call void @Heap_pushLong(ptr @t_test_0, i64 300)
call void @Heap_pushLong(ptr @t_test_0, i64 200)
%t29 = call i64 @Heap_peekLong(ptr @t_test_0)
call void @_screen_long_test_0(i64 %t29)
%t30 = call i32 @Heap_sizeLong(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t30)
%t31 = call i64 @Heap_popLong(ptr @t_test_0)
call void @_screen_long_test_0(i64 %t31)
%t32 = call i64 @Heap_popLong(ptr @t_test_0)
call void @_screen_long_test_0(i64 %t32)
%t33 = call i64 @Heap_popLong(ptr @t_test_0)
call void @_screen_long_test_0(i64 %t33)
%t34 = call i64 @Heap_popLong(ptr @t_test_0)
call void @_screen_long_test_0(i64 %t34)
%t35 = call i1 @Heap_isEmptyLong(ptr @t_test_0)
call void @_screen_bool(i1 %t35)
call void @Heap_pushByte(ptr @t_test_0, i8 50)
call void @Heap_pushByte(ptr @t_test_0, i8 10)
call void @Heap_pushByte(ptr @t_test_0, i8 30)
call void @Heap_pushByte(ptr @t_test_0, i8 20)
%t36 = call i8 @Heap_peekByte(ptr @t_test_0)
call void @_screen_byte_test_0(i8 %t36)
%t37 = call i32 @Heap_sizeByte(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t37)
%t38 = call i8 @Heap_popByte(ptr @t_test_0)
call void @_screen_byte_test_0(i8 %t38)
%t39 = call i8 @Heap_popByte(ptr @t_test_0)
call void @_screen_byte_test_0(i8 %t39)
%t40 = call i8 @Heap_popByte(ptr @t_test_0)
call void @_screen_byte_test_0(i8 %t40)
%t41 = call i8 @Heap_popByte(ptr @t_test_0)
call void @_screen_byte_test_0(i8 %t41)
%t42 = call i1 @Heap_isEmptyByte(ptr @t_test_0)
call void @_screen_bool(i1 %t42)
%t43 = getelementptr inbounds [6 x i8], ptr @.str_test_0, i64 0, i64 0
%t44 = call ptr @_str_dup(ptr %t43)
call void @Heap_pushString(ptr @t_test_0, ptr %t44)
%t45 = getelementptr inbounds [6 x i8], ptr @.str_test_1, i64 0, i64 0
%t46 = call ptr @_str_dup(ptr %t45)
call void @Heap_pushString(ptr @t_test_0, ptr %t46)
%t47 = getelementptr inbounds [7 x i8], ptr @.str_test_2, i64 0, i64 0
%t48 = call ptr @_str_dup(ptr %t47)
call void @Heap_pushString(ptr @t_test_0, ptr %t48)
%t49 = getelementptr inbounds [7 x i8], ptr @.str_test_3, i64 0, i64 0
%t50 = call ptr @_str_dup(ptr %t49)
call void @Heap_pushString(ptr @t_test_0, ptr %t50)
%t51 = call ptr @Heap_peekString(ptr @t_test_0)
call void @_screen_string_test_0(ptr %t51)
%t52 = call i32 @Heap_sizeString(ptr @t_test_0)
call void @_screen_int_test_0(i32 %t52)
%t53 = call ptr @Heap_popString(ptr @t_test_0)
call void @_screen_string_test_0(ptr %t53)
%t54 = call ptr @Heap_popString(ptr @t_test_0)
call void @_screen_string_test_0(ptr %t54)
%t55 = call ptr @Heap_popString(ptr @t_test_0)
call void @_screen_string_test_0(ptr %t55)
%t56 = call ptr @Heap_popString(ptr @t_test_0)
call void @_screen_string_test_0(ptr %t56)
%t57 = call i1 @Heap_isEmptyString(ptr @t_test_0)
call void @_screen_bool(i1 %t57)
ret i32 0 
}
