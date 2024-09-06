; 计算阶乘的LLVM IR代码
define i32 @factorial(i32 %n) {
entry:
  %n_ptr = alloca i32        ; 为参数n分配栈空间
  store i32 %n, i32* %n_ptr  ; 将传入的参数n存储到栈上
  
  %result = alloca i32
  %i = alloca i32
  store i32 1, i32* %result
  store i32 2, i32* %i
  
  br label %loop

loop:
  %i_val = load i32, i32* %i
  %n_val = load i32, i32* %n_ptr  ; 从栈上加载n的值
  %cond = icmp sle i32 %i_val, %n_val
  br i1 %cond, label %body, label %end

body:
  %result_val = load i32, i32* %result
  %new_result = mul i32 %result_val, %i_val
  store i32 %new_result, i32* %result
  %i_next = add i32 %i_val, 1
  store i32 %i_next, i32* %i
  br label %loop

end:
  %final_result = load i32, i32* %result
  ret i32 %final_result
}

define i32 @main() {
entry:
  %n = alloca i32
  store i32 5, i32* %n  ; 计算5的阶乘
  %n_val = load i32, i32* %n
  %result = call i32 @factorial(i32 %n_val)
  ret i32 %result
}
