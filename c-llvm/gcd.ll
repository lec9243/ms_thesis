; ModuleID = 'gcd.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Enter two positive integers: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"G.C.D of %d and %d is %d.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32* %n1, i32* %n2)
  %0 = load i32, i32* %n1, align 4
  %1 = load i32, i32* %n2, align 4
  %2 = load i32, i32* %n1, align 4
  %3 = load i32, i32* %n2, align 4
  %call2 = call i32 @hcf(i32 %2, i32 %3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %0, i32 %1, i32 %call2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hcf(i32 %n1, i32 %n2) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  %0 = load i32, i32* %n2.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n2.addr, align 4
  %2 = load i32, i32* %n1.addr, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %rem = srem i32 %2, %3
  %call = call i32 @hcf(i32 %1, i32 %rem)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %n1.addr, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
