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
declare i32 @strcmp(ptr, ptr)
declare void @_zen_list_remove(ptr, i32)
declare ptr @_zen_list_get(ptr, i32)
declare void @_zen_list_push(ptr, ptr)
%ZenList = type { ptr, i32, i32, i64 }
declare void @_zen_list_set_meta(ptr, i32, i32)
declare ptr @_zen_list_new(i64)
%HttpServer = type opaque
%HttpRequest = type opaque
%HttpResponse = type opaque
%Json = type opaque
%JsonArray = type opaque
%JsonObject = type opaque
%Ptr = type { ptr }
%Map = type opaque
%Heap = type { ptr, ptr, ptr, ptr, ptr, ptr }
define void @_zen_init_Heap(ptr %this) {
%t0 = call ptr @_zen_list_new(i64 4)
call void @_zen_list_set_meta(ptr %t0, i32 1, i32 1)
%t1 = getelementptr %Heap, ptr %this, i32 0, i32 0
store ptr %t0, ptr %t1
%t2 = call ptr @_zen_list_new(i64 1)
call void @_zen_list_set_meta(ptr %t2, i32 1, i32 2)
%t3 = getelementptr %Heap, ptr %this, i32 0, i32 1
store ptr %t2, ptr %t3
%t4 = call ptr @_zen_list_new(i64 8)
call void @_zen_list_set_meta(ptr %t4, i32 1, i32 3)
%t5 = getelementptr %Heap, ptr %this, i32 0, i32 2
store ptr %t4, ptr %t5
%t6 = call ptr @_zen_list_new(i64 8)
call void @_zen_list_set_meta(ptr %t6, i32 1, i32 7)
%t7 = getelementptr %Heap, ptr %this, i32 0, i32 3
store ptr %t6, ptr %t7
%t8 = call ptr @_zen_list_new(i64 1)
call void @_zen_list_set_meta(ptr %t8, i32 1, i32 8)
%t9 = getelementptr %Heap, ptr %this, i32 0, i32 4
store ptr %t8, ptr %t9
%t10 = call ptr @_zen_list_new(i64 8)
call void @_zen_list_set_meta(ptr %t10, i32 1, i32 4)
%t11 = getelementptr %Heap, ptr %this, i32 0, i32 5
store ptr %t10, ptr %t11
ret void
}
define void @Heap_pushInt (ptr %this, i32 %t0) {
entry:
%t4 = alloca i32
%t5 = alloca i32
%t13 = alloca i32
%t30 = alloca i32
%v.addr = alloca i32
store i32 %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t2 = load ptr, ptr %t1
%t3 = load i32, ptr %v.addr
store i32 %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond0
whileCond0:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody1, label %whileEnd2
whileBody1:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load i32, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load i32, ptr %t27
%t29 = icmp sle i32 %t22, %t28
br i1 %t29, label %if4, label %end3
if4:
br label %whileEnd2
end3:
%t31 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t32 = load i32, ptr %t13
%t34 = load ptr, ptr %t31
%t35 = call ptr @_zen_list_get(ptr %t34, i32 %t32)
%t36 = load i32, ptr %t35
store i32 %t36, ptr %t30
%t37 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t38 = load ptr, ptr %t37
%t39 = load i32, ptr %t13
%t40 = call ptr @_zen_list_get(ptr %t38, i32 %t39)
%t41 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t42 = load i32, ptr %t5
%t44 = load ptr, ptr %t41
%t45 = call ptr @_zen_list_get(ptr %t44, i32 %t42)
%t46 = load i32, ptr %t45
store i32 %t46, ptr %t40
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t48 = load ptr, ptr %t47
%t49 = load i32, ptr %t5
%t50 = call ptr @_zen_list_get(ptr %t48, i32 %t49)
%t51 = load i32, ptr %t30
store i32 %t51, ptr %t50
%t52 = load i32, ptr %t13
store i32 %t52, ptr %t5
br label %whileCond0
whileEnd2:
ret void
}
define i32 @Heap_popInt (ptr %this) {
entry:
%t0 = alloca i32
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t87 = alloca i32

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load i32, ptr %t4
store i32 %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if6, label %end5
if6:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load i32, ptr %t0
ret i32 %t16
end5:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load i32, ptr %t24
store i32 %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond7
whileCond7:
br i1 1, label %whileBody8, label %whileEnd9
whileBody8:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs11, label %skip12
rhs11:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load i32, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load i32, ptr %t57
%t59 = icmp slt i32 %t52, %t58
br label %end13
skip12:
br label %end13
end13:
%t40 = phi i1 [ false, %skip12 ], [ %t59, %rhs11 ]
br i1 %t40, label %if14, label %end10
if14:
%t60 = load i32, ptr %t30
store i32 %t60, ptr %t38
br label %end10
end10:
%t63 = load i32, ptr %t34
%t64 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t65 = load ptr, ptr %t64
%t66 = getelementptr inbounds %ZenList, ptr %t65, i32 0, i32 1
%t67 = load i32, ptr %t66
%t69 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t70 = load i32, ptr %t34
%t75 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t76 = load i32, ptr %t38
%t68 = icmp slt i32 %t63, %t67
br i1 %t68, label %rhs16, label %skip17
rhs16:
%t72 = load ptr, ptr %t69
%t73 = call ptr @_zen_list_get(ptr %t72, i32 %t70)
%t74 = load i32, ptr %t73
%t78 = load ptr, ptr %t75
%t79 = call ptr @_zen_list_get(ptr %t78, i32 %t76)
%t80 = load i32, ptr %t79
%t81 = icmp slt i32 %t74, %t80
br label %end18
skip17:
br label %end18
end18:
%t62 = phi i1 [ false, %skip17 ], [ %t81, %rhs16 ]
br i1 %t62, label %if19, label %end15
if19:
%t82 = load i32, ptr %t34
store i32 %t82, ptr %t38
br label %end15
end15:
%t84 = load i32, ptr %t38
%t85 = load i32, ptr %t29
%t86 = icmp eq i32 %t84, %t85
br i1 %t86, label %if21, label %end20
if21:
br label %whileEnd9
end20:
%t88 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t89 = load i32, ptr %t29
%t91 = load ptr, ptr %t88
%t92 = call ptr @_zen_list_get(ptr %t91, i32 %t89)
%t93 = load i32, ptr %t92
store i32 %t93, ptr %t87
%t94 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t95 = load ptr, ptr %t94
%t96 = load i32, ptr %t29
%t97 = call ptr @_zen_list_get(ptr %t95, i32 %t96)
%t98 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t99 = load i32, ptr %t38
%t101 = load ptr, ptr %t98
%t102 = call ptr @_zen_list_get(ptr %t101, i32 %t99)
%t103 = load i32, ptr %t102
store i32 %t103, ptr %t97
%t104 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t105 = load ptr, ptr %t104
%t106 = load i32, ptr %t38
%t107 = call ptr @_zen_list_get(ptr %t105, i32 %t106)
%t108 = load i32, ptr %t87
store i32 %t108, ptr %t107
%t109 = load i32, ptr %t38
store i32 %t109, ptr %t29
br label %whileCond7
whileEnd9:
%t111 = load i32, ptr %t0
ret i32 %t111
}
define i32 @Heap_peekInt (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load i32, ptr %t3
ret i32 %t4
}
define i32 @Heap_sizeInt (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyInt (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 0
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
define void @Heap_pushBool (ptr %this, i1 %t0) {
entry:
%t4 = alloca i1
%t5 = alloca i32
%t13 = alloca i32
%t32 = alloca i1
%v.addr = alloca i1
store i1 %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t2 = load ptr, ptr %t1
%t3 = load i1, ptr %v.addr
store i1 %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond22
whileCond22:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody23, label %whileEnd24
whileBody23:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load i1, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load i1, ptr %t27
%t29 = zext i1 %t22 to i32
%t30 = zext i1 %t28 to i32
%t31 = icmp sle i32 %t29, %t30
br i1 %t31, label %if26, label %end25
if26:
br label %whileEnd24
end25:
%t33 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t34 = load i32, ptr %t13
%t36 = load ptr, ptr %t33
%t37 = call ptr @_zen_list_get(ptr %t36, i32 %t34)
%t38 = load i1, ptr %t37
store i1 %t38, ptr %t32
%t39 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t40 = load ptr, ptr %t39
%t41 = load i32, ptr %t13
%t42 = call ptr @_zen_list_get(ptr %t40, i32 %t41)
%t43 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t44 = load i32, ptr %t5
%t46 = load ptr, ptr %t43
%t47 = call ptr @_zen_list_get(ptr %t46, i32 %t44)
%t48 = load i1, ptr %t47
store i1 %t48, ptr %t42
%t49 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t50 = load ptr, ptr %t49
%t51 = load i32, ptr %t5
%t52 = call ptr @_zen_list_get(ptr %t50, i32 %t51)
%t53 = load i1, ptr %t32
store i1 %t53, ptr %t52
%t54 = load i32, ptr %t13
store i32 %t54, ptr %t5
br label %whileCond22
whileEnd24:
ret void
}
define i1 @Heap_popBool (ptr %this) {
entry:
%t0 = alloca i1
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t91 = alloca i1

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load i1, ptr %t4
store i1 %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if28, label %end27
if28:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load i1, ptr %t0
ret i1 %t16
end27:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load i1, ptr %t24
store i1 %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond29
whileCond29:
br i1 1, label %whileBody30, label %whileEnd31
whileBody30:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs33, label %skip34
rhs33:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load i1, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load i1, ptr %t57
%t59 = zext i1 %t52 to i32
%t60 = zext i1 %t58 to i32
%t61 = icmp slt i32 %t59, %t60
br label %end35
skip34:
br label %end35
end35:
%t40 = phi i1 [ false, %skip34 ], [ %t61, %rhs33 ]
br i1 %t40, label %if36, label %end32
if36:
%t62 = load i32, ptr %t30
store i32 %t62, ptr %t38
br label %end32
end32:
%t65 = load i32, ptr %t34
%t66 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t67 = load ptr, ptr %t66
%t68 = getelementptr inbounds %ZenList, ptr %t67, i32 0, i32 1
%t69 = load i32, ptr %t68
%t71 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t72 = load i32, ptr %t34
%t77 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t78 = load i32, ptr %t38
%t70 = icmp slt i32 %t65, %t69
br i1 %t70, label %rhs38, label %skip39
rhs38:
%t74 = load ptr, ptr %t71
%t75 = call ptr @_zen_list_get(ptr %t74, i32 %t72)
%t76 = load i1, ptr %t75
%t80 = load ptr, ptr %t77
%t81 = call ptr @_zen_list_get(ptr %t80, i32 %t78)
%t82 = load i1, ptr %t81
%t83 = zext i1 %t76 to i32
%t84 = zext i1 %t82 to i32
%t85 = icmp slt i32 %t83, %t84
br label %end40
skip39:
br label %end40
end40:
%t64 = phi i1 [ false, %skip39 ], [ %t85, %rhs38 ]
br i1 %t64, label %if41, label %end37
if41:
%t86 = load i32, ptr %t34
store i32 %t86, ptr %t38
br label %end37
end37:
%t88 = load i32, ptr %t38
%t89 = load i32, ptr %t29
%t90 = icmp eq i32 %t88, %t89
br i1 %t90, label %if43, label %end42
if43:
br label %whileEnd31
end42:
%t92 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t93 = load i32, ptr %t29
%t95 = load ptr, ptr %t92
%t96 = call ptr @_zen_list_get(ptr %t95, i32 %t93)
%t97 = load i1, ptr %t96
store i1 %t97, ptr %t91
%t98 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t99 = load ptr, ptr %t98
%t100 = load i32, ptr %t29
%t101 = call ptr @_zen_list_get(ptr %t99, i32 %t100)
%t102 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t103 = load i32, ptr %t38
%t105 = load ptr, ptr %t102
%t106 = call ptr @_zen_list_get(ptr %t105, i32 %t103)
%t107 = load i1, ptr %t106
store i1 %t107, ptr %t101
%t108 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t109 = load ptr, ptr %t108
%t110 = load i32, ptr %t38
%t111 = call ptr @_zen_list_get(ptr %t109, i32 %t110)
%t112 = load i1, ptr %t91
store i1 %t112, ptr %t111
%t113 = load i32, ptr %t38
store i32 %t113, ptr %t29
br label %whileCond29
whileEnd31:
%t115 = load i1, ptr %t0
ret i1 %t115
}
define i1 @Heap_peekBool (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load i1, ptr %t3
ret i1 %t4
}
define i32 @Heap_sizeBool (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyBool (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 1
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
define void @Heap_pushDouble (ptr %this, double %t0) {
entry:
%t4 = alloca double
%t5 = alloca i32
%t13 = alloca i32
%t30 = alloca double
%v.addr = alloca double
store double %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t2 = load ptr, ptr %t1
%t3 = load double, ptr %v.addr
store double %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond44
whileCond44:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody45, label %whileEnd46
whileBody45:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load double, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load double, ptr %t27
%t29 = fcmp ole double %t22, %t28
br i1 %t29, label %if48, label %end47
if48:
br label %whileEnd46
end47:
%t31 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t32 = load i32, ptr %t13
%t34 = load ptr, ptr %t31
%t35 = call ptr @_zen_list_get(ptr %t34, i32 %t32)
%t36 = load double, ptr %t35
store double %t36, ptr %t30
%t37 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t38 = load ptr, ptr %t37
%t39 = load i32, ptr %t13
%t40 = call ptr @_zen_list_get(ptr %t38, i32 %t39)
%t41 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t42 = load i32, ptr %t5
%t44 = load ptr, ptr %t41
%t45 = call ptr @_zen_list_get(ptr %t44, i32 %t42)
%t46 = load double, ptr %t45
store double %t46, ptr %t40
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t48 = load ptr, ptr %t47
%t49 = load i32, ptr %t5
%t50 = call ptr @_zen_list_get(ptr %t48, i32 %t49)
%t51 = load double, ptr %t30
store double %t51, ptr %t50
%t52 = load i32, ptr %t13
store i32 %t52, ptr %t5
br label %whileCond44
whileEnd46:
ret void
}
define double @Heap_popDouble (ptr %this) {
entry:
%t0 = alloca double
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t87 = alloca double

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load double, ptr %t4
store double %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if50, label %end49
if50:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load double, ptr %t0
ret double %t16
end49:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load double, ptr %t24
store double %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond51
whileCond51:
br i1 1, label %whileBody52, label %whileEnd53
whileBody52:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs55, label %skip56
rhs55:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load double, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load double, ptr %t57
%t59 = fcmp olt double %t52, %t58
br label %end57
skip56:
br label %end57
end57:
%t40 = phi i1 [ false, %skip56 ], [ %t59, %rhs55 ]
br i1 %t40, label %if58, label %end54
if58:
%t60 = load i32, ptr %t30
store i32 %t60, ptr %t38
br label %end54
end54:
%t63 = load i32, ptr %t34
%t64 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t65 = load ptr, ptr %t64
%t66 = getelementptr inbounds %ZenList, ptr %t65, i32 0, i32 1
%t67 = load i32, ptr %t66
%t69 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t70 = load i32, ptr %t34
%t75 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t76 = load i32, ptr %t38
%t68 = icmp slt i32 %t63, %t67
br i1 %t68, label %rhs60, label %skip61
rhs60:
%t72 = load ptr, ptr %t69
%t73 = call ptr @_zen_list_get(ptr %t72, i32 %t70)
%t74 = load double, ptr %t73
%t78 = load ptr, ptr %t75
%t79 = call ptr @_zen_list_get(ptr %t78, i32 %t76)
%t80 = load double, ptr %t79
%t81 = fcmp olt double %t74, %t80
br label %end62
skip61:
br label %end62
end62:
%t62 = phi i1 [ false, %skip61 ], [ %t81, %rhs60 ]
br i1 %t62, label %if63, label %end59
if63:
%t82 = load i32, ptr %t34
store i32 %t82, ptr %t38
br label %end59
end59:
%t84 = load i32, ptr %t38
%t85 = load i32, ptr %t29
%t86 = icmp eq i32 %t84, %t85
br i1 %t86, label %if65, label %end64
if65:
br label %whileEnd53
end64:
%t88 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t89 = load i32, ptr %t29
%t91 = load ptr, ptr %t88
%t92 = call ptr @_zen_list_get(ptr %t91, i32 %t89)
%t93 = load double, ptr %t92
store double %t93, ptr %t87
%t94 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t95 = load ptr, ptr %t94
%t96 = load i32, ptr %t29
%t97 = call ptr @_zen_list_get(ptr %t95, i32 %t96)
%t98 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t99 = load i32, ptr %t38
%t101 = load ptr, ptr %t98
%t102 = call ptr @_zen_list_get(ptr %t101, i32 %t99)
%t103 = load double, ptr %t102
store double %t103, ptr %t97
%t104 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t105 = load ptr, ptr %t104
%t106 = load i32, ptr %t38
%t107 = call ptr @_zen_list_get(ptr %t105, i32 %t106)
%t108 = load double, ptr %t87
store double %t108, ptr %t107
%t109 = load i32, ptr %t38
store i32 %t109, ptr %t29
br label %whileCond51
whileEnd53:
%t111 = load double, ptr %t0
ret double %t111
}
define double @Heap_peekDouble (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load double, ptr %t3
ret double %t4
}
define i32 @Heap_sizeDouble (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyDouble (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 2
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
define void @Heap_pushLong (ptr %this, i64 %t0) {
entry:
%t4 = alloca i64
%t5 = alloca i32
%t13 = alloca i32
%t30 = alloca i64
%v.addr = alloca i64
store i64 %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t2 = load ptr, ptr %t1
%t3 = load i64, ptr %v.addr
store i64 %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond66
whileCond66:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody67, label %whileEnd68
whileBody67:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load i64, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load i64, ptr %t27
%t29 = icmp sle i64 %t22, %t28
br i1 %t29, label %if70, label %end69
if70:
br label %whileEnd68
end69:
%t31 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t32 = load i32, ptr %t13
%t34 = load ptr, ptr %t31
%t35 = call ptr @_zen_list_get(ptr %t34, i32 %t32)
%t36 = load i64, ptr %t35
store i64 %t36, ptr %t30
%t37 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t38 = load ptr, ptr %t37
%t39 = load i32, ptr %t13
%t40 = call ptr @_zen_list_get(ptr %t38, i32 %t39)
%t41 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t42 = load i32, ptr %t5
%t44 = load ptr, ptr %t41
%t45 = call ptr @_zen_list_get(ptr %t44, i32 %t42)
%t46 = load i64, ptr %t45
store i64 %t46, ptr %t40
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t48 = load ptr, ptr %t47
%t49 = load i32, ptr %t5
%t50 = call ptr @_zen_list_get(ptr %t48, i32 %t49)
%t51 = load i64, ptr %t30
store i64 %t51, ptr %t50
%t52 = load i32, ptr %t13
store i32 %t52, ptr %t5
br label %whileCond66
whileEnd68:
ret void
}
define i64 @Heap_popLong (ptr %this) {
entry:
%t0 = alloca i64
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t87 = alloca i64

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load i64, ptr %t4
store i64 %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if72, label %end71
if72:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load i64, ptr %t0
ret i64 %t16
end71:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load i64, ptr %t24
store i64 %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond73
whileCond73:
br i1 1, label %whileBody74, label %whileEnd75
whileBody74:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs77, label %skip78
rhs77:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load i64, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load i64, ptr %t57
%t59 = icmp slt i64 %t52, %t58
br label %end79
skip78:
br label %end79
end79:
%t40 = phi i1 [ false, %skip78 ], [ %t59, %rhs77 ]
br i1 %t40, label %if80, label %end76
if80:
%t60 = load i32, ptr %t30
store i32 %t60, ptr %t38
br label %end76
end76:
%t63 = load i32, ptr %t34
%t64 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t65 = load ptr, ptr %t64
%t66 = getelementptr inbounds %ZenList, ptr %t65, i32 0, i32 1
%t67 = load i32, ptr %t66
%t69 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t70 = load i32, ptr %t34
%t75 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t76 = load i32, ptr %t38
%t68 = icmp slt i32 %t63, %t67
br i1 %t68, label %rhs82, label %skip83
rhs82:
%t72 = load ptr, ptr %t69
%t73 = call ptr @_zen_list_get(ptr %t72, i32 %t70)
%t74 = load i64, ptr %t73
%t78 = load ptr, ptr %t75
%t79 = call ptr @_zen_list_get(ptr %t78, i32 %t76)
%t80 = load i64, ptr %t79
%t81 = icmp slt i64 %t74, %t80
br label %end84
skip83:
br label %end84
end84:
%t62 = phi i1 [ false, %skip83 ], [ %t81, %rhs82 ]
br i1 %t62, label %if85, label %end81
if85:
%t82 = load i32, ptr %t34
store i32 %t82, ptr %t38
br label %end81
end81:
%t84 = load i32, ptr %t38
%t85 = load i32, ptr %t29
%t86 = icmp eq i32 %t84, %t85
br i1 %t86, label %if87, label %end86
if87:
br label %whileEnd75
end86:
%t88 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t89 = load i32, ptr %t29
%t91 = load ptr, ptr %t88
%t92 = call ptr @_zen_list_get(ptr %t91, i32 %t89)
%t93 = load i64, ptr %t92
store i64 %t93, ptr %t87
%t94 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t95 = load ptr, ptr %t94
%t96 = load i32, ptr %t29
%t97 = call ptr @_zen_list_get(ptr %t95, i32 %t96)
%t98 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t99 = load i32, ptr %t38
%t101 = load ptr, ptr %t98
%t102 = call ptr @_zen_list_get(ptr %t101, i32 %t99)
%t103 = load i64, ptr %t102
store i64 %t103, ptr %t97
%t104 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t105 = load ptr, ptr %t104
%t106 = load i32, ptr %t38
%t107 = call ptr @_zen_list_get(ptr %t105, i32 %t106)
%t108 = load i64, ptr %t87
store i64 %t108, ptr %t107
%t109 = load i32, ptr %t38
store i32 %t109, ptr %t29
br label %whileCond73
whileEnd75:
%t111 = load i64, ptr %t0
ret i64 %t111
}
define i64 @Heap_peekLong (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load i64, ptr %t3
ret i64 %t4
}
define i32 @Heap_sizeLong (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyLong (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 3
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
define void @Heap_pushByte (ptr %this, i8 %t0) {
entry:
%t4 = alloca i8
%t5 = alloca i32
%t13 = alloca i32
%t32 = alloca i8
%v.addr = alloca i8
store i8 %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t2 = load ptr, ptr %t1
%t3 = load i8, ptr %v.addr
store i8 %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond88
whileCond88:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody89, label %whileEnd90
whileBody89:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load i8, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load i8, ptr %t27
%t30 = sext i8 %t22 to i32
%t31 = sext i8 %t28 to i32
%t29 = icmp sle i32 %t30, %t31
br i1 %t29, label %if92, label %end91
if92:
br label %whileEnd90
end91:
%t33 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t34 = load i32, ptr %t13
%t36 = load ptr, ptr %t33
%t37 = call ptr @_zen_list_get(ptr %t36, i32 %t34)
%t38 = load i8, ptr %t37
store i8 %t38, ptr %t32
%t39 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t40 = load ptr, ptr %t39
%t41 = load i32, ptr %t13
%t42 = call ptr @_zen_list_get(ptr %t40, i32 %t41)
%t43 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t44 = load i32, ptr %t5
%t46 = load ptr, ptr %t43
%t47 = call ptr @_zen_list_get(ptr %t46, i32 %t44)
%t48 = load i8, ptr %t47
store i8 %t48, ptr %t42
%t49 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t50 = load ptr, ptr %t49
%t51 = load i32, ptr %t5
%t52 = call ptr @_zen_list_get(ptr %t50, i32 %t51)
%t53 = load i8, ptr %t32
store i8 %t53, ptr %t52
%t54 = load i32, ptr %t13
store i32 %t54, ptr %t5
br label %whileCond88
whileEnd90:
ret void
}
define i8 @Heap_popByte (ptr %this) {
entry:
%t0 = alloca i8
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t91 = alloca i8

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load i8, ptr %t4
store i8 %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if94, label %end93
if94:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load i8, ptr %t0
ret i8 %t16
end93:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load i8, ptr %t24
store i8 %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond95
whileCond95:
br i1 1, label %whileBody96, label %whileEnd97
whileBody96:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs99, label %skip100
rhs99:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load i8, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load i8, ptr %t57
%t60 = sext i8 %t52 to i32
%t61 = sext i8 %t58 to i32
%t59 = icmp slt i32 %t60, %t61
br label %end101
skip100:
br label %end101
end101:
%t40 = phi i1 [ false, %skip100 ], [ %t59, %rhs99 ]
br i1 %t40, label %if102, label %end98
if102:
%t62 = load i32, ptr %t30
store i32 %t62, ptr %t38
br label %end98
end98:
%t65 = load i32, ptr %t34
%t66 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t67 = load ptr, ptr %t66
%t68 = getelementptr inbounds %ZenList, ptr %t67, i32 0, i32 1
%t69 = load i32, ptr %t68
%t71 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t72 = load i32, ptr %t34
%t77 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t78 = load i32, ptr %t38
%t70 = icmp slt i32 %t65, %t69
br i1 %t70, label %rhs104, label %skip105
rhs104:
%t74 = load ptr, ptr %t71
%t75 = call ptr @_zen_list_get(ptr %t74, i32 %t72)
%t76 = load i8, ptr %t75
%t80 = load ptr, ptr %t77
%t81 = call ptr @_zen_list_get(ptr %t80, i32 %t78)
%t82 = load i8, ptr %t81
%t84 = sext i8 %t76 to i32
%t85 = sext i8 %t82 to i32
%t83 = icmp slt i32 %t84, %t85
br label %end106
skip105:
br label %end106
end106:
%t64 = phi i1 [ false, %skip105 ], [ %t83, %rhs104 ]
br i1 %t64, label %if107, label %end103
if107:
%t86 = load i32, ptr %t34
store i32 %t86, ptr %t38
br label %end103
end103:
%t88 = load i32, ptr %t38
%t89 = load i32, ptr %t29
%t90 = icmp eq i32 %t88, %t89
br i1 %t90, label %if109, label %end108
if109:
br label %whileEnd97
end108:
%t92 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t93 = load i32, ptr %t29
%t95 = load ptr, ptr %t92
%t96 = call ptr @_zen_list_get(ptr %t95, i32 %t93)
%t97 = load i8, ptr %t96
store i8 %t97, ptr %t91
%t98 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t99 = load ptr, ptr %t98
%t100 = load i32, ptr %t29
%t101 = call ptr @_zen_list_get(ptr %t99, i32 %t100)
%t102 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t103 = load i32, ptr %t38
%t105 = load ptr, ptr %t102
%t106 = call ptr @_zen_list_get(ptr %t105, i32 %t103)
%t107 = load i8, ptr %t106
store i8 %t107, ptr %t101
%t108 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t109 = load ptr, ptr %t108
%t110 = load i32, ptr %t38
%t111 = call ptr @_zen_list_get(ptr %t109, i32 %t110)
%t112 = load i8, ptr %t91
store i8 %t112, ptr %t111
%t113 = load i32, ptr %t38
store i32 %t113, ptr %t29
br label %whileCond95
whileEnd97:
%t115 = load i8, ptr %t0
ret i8 %t115
}
define i8 @Heap_peekByte (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load i8, ptr %t3
ret i8 %t4
}
define i32 @Heap_sizeByte (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyByte (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 4
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
define void @Heap_pushString (ptr %this, ptr %t0) {
entry:
%t4 = alloca ptr
%t5 = alloca i32
%t13 = alloca i32
%t31 = alloca ptr
%v.addr = alloca ptr
store ptr %t0, ptr %v.addr
%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t2 = load ptr, ptr %t1
%t3 = load ptr, ptr %v.addr
store ptr %t3, ptr %t4
call void @_zen_list_push(ptr %t2, ptr %t4)
%t6 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t7 = load ptr, ptr %t6
%t8 = getelementptr inbounds %ZenList, ptr %t7, i32 0, i32 1
%t9 = load i32, ptr %t8
%t10 = sub i32 %t9, 1
store i32 %t10, ptr %t5
br label %whileCond110
whileCond110:
%t11 = load i32, ptr %t5
%t12 = icmp sgt i32 %t11, 0
br i1 %t12, label %whileBody111, label %whileEnd112
whileBody111:
%t14 = load i32, ptr %t5
%t15 = sub i32 %t14, 1
%t16 = sdiv i32 %t15, 2
store i32 %t16, ptr %t13
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t18 = load i32, ptr %t13
%t23 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t24 = load i32, ptr %t5
%t20 = load ptr, ptr %t17
%t21 = call ptr @_zen_list_get(ptr %t20, i32 %t18)
%t22 = load ptr, ptr %t21
%t26 = load ptr, ptr %t23
%t27 = call ptr @_zen_list_get(ptr %t26, i32 %t24)
%t28 = load ptr, ptr %t27
%t29 = call i32 @strcmp(ptr %t22, ptr %t28)
%t30 = icmp sle i32 %t29, 0
br i1 %t30, label %if114, label %end113
if114:
br label %whileEnd112
end113:
%t32 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t33 = load i32, ptr %t13
%t35 = load ptr, ptr %t32
%t36 = call ptr @_zen_list_get(ptr %t35, i32 %t33)
%t37 = load ptr, ptr %t36
store ptr %t37, ptr %t31
%t38 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t39 = load ptr, ptr %t38
%t40 = load i32, ptr %t13
%t41 = call ptr @_zen_list_get(ptr %t39, i32 %t40)
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t43 = load i32, ptr %t5
%t45 = load ptr, ptr %t42
%t46 = call ptr @_zen_list_get(ptr %t45, i32 %t43)
%t47 = load ptr, ptr %t46
store ptr %t47, ptr %t41
%t48 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t49 = load ptr, ptr %t48
%t50 = load i32, ptr %t5
%t51 = call ptr @_zen_list_get(ptr %t49, i32 %t50)
%t52 = load ptr, ptr %t31
store ptr %t52, ptr %t51
%t53 = load i32, ptr %t13
store i32 %t53, ptr %t5
br label %whileCond110
whileEnd112:
ret void
}
define ptr @Heap_popString (ptr %this) {
entry:
%t0 = alloca ptr
%t6 = alloca i32
%t29 = alloca i32
%t30 = alloca i32
%t34 = alloca i32
%t38 = alloca i32
%t89 = alloca ptr

%t1 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t3 = load ptr, ptr %t1
%t4 = call ptr @_zen_list_get(ptr %t3, i32 0)
%t5 = load ptr, ptr %t4
store ptr %t5, ptr %t0
%t7 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t8 = load ptr, ptr %t7
%t9 = getelementptr inbounds %ZenList, ptr %t8, i32 0, i32 1
%t10 = load i32, ptr %t9
%t11 = sub i32 %t10, 1
store i32 %t11, ptr %t6
%t12 = load i32, ptr %t6
%t13 = icmp eq i32 %t12, 0
br i1 %t13, label %if116, label %end115
if116:
%t14 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t15 = load ptr, ptr %t14
call void @_zen_list_remove(ptr %t15, i32 0)
%t16 = load ptr, ptr %t0
ret ptr %t16
end115:
%t17 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t18 = load ptr, ptr %t17
%t19 = call ptr @_zen_list_get(ptr %t18, i32 0)
%t20 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t21 = load i32, ptr %t6
%t23 = load ptr, ptr %t20
%t24 = call ptr @_zen_list_get(ptr %t23, i32 %t21)
%t25 = load ptr, ptr %t24
store ptr %t25, ptr %t19
%t26 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t27 = load ptr, ptr %t26
%t28 = load i32, ptr %t6
call void @_zen_list_remove(ptr %t27, i32 %t28)
store i32 0, ptr %t29
br label %whileCond117
whileCond117:
br i1 1, label %whileBody118, label %whileEnd119
whileBody118:
%t31 = load i32, ptr %t29
%t32 = mul i32 %t31, 2
%t33 = add i32 %t32, 1
store i32 %t33, ptr %t30
%t35 = load i32, ptr %t29
%t36 = mul i32 %t35, 2
%t37 = add i32 %t36, 2
store i32 %t37, ptr %t34
%t39 = load i32, ptr %t29
store i32 %t39, ptr %t38
%t41 = load i32, ptr %t30
%t42 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t43 = load ptr, ptr %t42
%t44 = getelementptr inbounds %ZenList, ptr %t43, i32 0, i32 1
%t45 = load i32, ptr %t44
%t47 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t48 = load i32, ptr %t30
%t53 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t54 = load i32, ptr %t38
%t46 = icmp slt i32 %t41, %t45
br i1 %t46, label %rhs121, label %skip122
rhs121:
%t50 = load ptr, ptr %t47
%t51 = call ptr @_zen_list_get(ptr %t50, i32 %t48)
%t52 = load ptr, ptr %t51
%t56 = load ptr, ptr %t53
%t57 = call ptr @_zen_list_get(ptr %t56, i32 %t54)
%t58 = load ptr, ptr %t57
%t59 = call i32 @strcmp(ptr %t52, ptr %t58)
%t60 = icmp slt i32 %t59, 0
br label %end123
skip122:
br label %end123
end123:
%t40 = phi i1 [ false, %skip122 ], [ %t60, %rhs121 ]
br i1 %t40, label %if124, label %end120
if124:
%t61 = load i32, ptr %t30
store i32 %t61, ptr %t38
br label %end120
end120:
%t64 = load i32, ptr %t34
%t65 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t66 = load ptr, ptr %t65
%t67 = getelementptr inbounds %ZenList, ptr %t66, i32 0, i32 1
%t68 = load i32, ptr %t67
%t70 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t71 = load i32, ptr %t34
%t76 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t77 = load i32, ptr %t38
%t69 = icmp slt i32 %t64, %t68
br i1 %t69, label %rhs126, label %skip127
rhs126:
%t73 = load ptr, ptr %t70
%t74 = call ptr @_zen_list_get(ptr %t73, i32 %t71)
%t75 = load ptr, ptr %t74
%t79 = load ptr, ptr %t76
%t80 = call ptr @_zen_list_get(ptr %t79, i32 %t77)
%t81 = load ptr, ptr %t80
%t82 = call i32 @strcmp(ptr %t75, ptr %t81)
%t83 = icmp slt i32 %t82, 0
br label %end128
skip127:
br label %end128
end128:
%t63 = phi i1 [ false, %skip127 ], [ %t83, %rhs126 ]
br i1 %t63, label %if129, label %end125
if129:
%t84 = load i32, ptr %t34
store i32 %t84, ptr %t38
br label %end125
end125:
%t86 = load i32, ptr %t38
%t87 = load i32, ptr %t29
%t88 = icmp eq i32 %t86, %t87
br i1 %t88, label %if131, label %end130
if131:
br label %whileEnd119
end130:
%t90 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t91 = load i32, ptr %t29
%t93 = load ptr, ptr %t90
%t94 = call ptr @_zen_list_get(ptr %t93, i32 %t91)
%t95 = load ptr, ptr %t94
store ptr %t95, ptr %t89
%t96 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t97 = load ptr, ptr %t96
%t98 = load i32, ptr %t29
%t99 = call ptr @_zen_list_get(ptr %t97, i32 %t98)
%t100 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t101 = load i32, ptr %t38
%t103 = load ptr, ptr %t100
%t104 = call ptr @_zen_list_get(ptr %t103, i32 %t101)
%t105 = load ptr, ptr %t104
store ptr %t105, ptr %t99
%t106 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t107 = load ptr, ptr %t106
%t108 = load i32, ptr %t38
%t109 = call ptr @_zen_list_get(ptr %t107, i32 %t108)
%t110 = load ptr, ptr %t89
store ptr %t110, ptr %t109
%t111 = load i32, ptr %t38
store i32 %t111, ptr %t29
br label %whileCond117
whileEnd119:
%t113 = load ptr, ptr %t0
ret ptr %t113
}
define ptr @Heap_peekString (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t2 = load ptr, ptr %t0
%t3 = call ptr @_zen_list_get(ptr %t2, i32 0)
%t4 = load ptr, ptr %t3
ret ptr %t4
}
define i32 @Heap_sizeString (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
ret i32 %t3
}
define i1 @Heap_isEmptyString (ptr %this) {
entry:


%t0 = getelementptr %Heap, %Heap* %this, i32 0, i32 5
%t1 = load ptr, ptr %t0
%t2 = getelementptr inbounds %ZenList, ptr %t1, i32 0, i32 1
%t3 = load i32, ptr %t2
%t4 = icmp eq i32 %t3, 0
ret i1 %t4
}
