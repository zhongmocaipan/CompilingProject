; ModuleID = 'factorial_module'
source_filename = "factorial_module"

@.format_str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; 阶乘函数 factorial
define i32 @factorial(i32 %n) {
entry:
    ; 判断 n 是否小于等于1
    %cmp = icmp sle i32 %n, 1
    br i1 %cmp, label %return_one, label %recursive_case

return_one: ; n <= 1 的情况，返回 1
    ret i32 1

recursive_case: ; 递归计算 n * factorial(n - 1)
    ; 计算 n - 1
    %n_minus_1 = sub i32 %n, 1

    ; 递归调用 factorial(n - 1)
    %recursive_result = call i32 @factorial(i32 %n_minus_1)

    ; 计算 n * factorial(n - 1)
    %result = mul i32 %n, %recursive_result

    ; 返回结果
    ret i32 %result
}

; main 函数，调用 factorial(5) 并输出结果
define i32 @main() {
entry:
    ; 调用 factorial(5)
    %result = call i32 @factorial(i32 5)

    ; 调用 printf 函数输出结果
    %fmt = getelementptr [4 x i8], [4 x i8]* @.format_str, i32 0, i32 0
    call i32 (i8*, ...) @printf(i8* %fmt, i32 %result)

    ; 返回 0
    ret i32 0
}

; 外部声明 printf 函数
declare i32 @printf(i8*, ...)
