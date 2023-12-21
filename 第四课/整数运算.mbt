enum ComputeResult {
    Success(Int)
    Overflow
    DivideByZero
}

// 请基于上述数据类型，定义整数的四则运算

fn plus(self: Int, b: Int) -> ComputeResult {
  abort("请定义整数加法")
}

fn minus(self: Int, b: Int) -> ComputeResult {
  abort("请定义减法")
}

fn multiply(self: Int, b: Int) -> ComputeResult {
  abort("请定义乘法")
}

fn divide(self: Int, b: Int) -> ComputeResult {
  abort("请定义除法")
}

// 我们发现，这样定义的四则运算并不方便嵌套，因此我们另外定义一套基于运算结果再次运算的函数
// 如果已经出现错误，则保留错误；否则，继续进行运算

fn plus(self: ComputeResult, b: Int) -> ComputeResult {
  abort("请定义基于计算结果的加法")
}

fn minus(self: ComputeResult, b: Int) -> ComputeResult {
  abort("请定义基于计算结果的减法")
}

fn multiply(self: ComputeResult, b: Int) -> ComputeResult {
  abort("请定义基于计算结果的乘法")
} 

fn divide(self: ComputeResult, b: Int) -> ComputeResult {
  abort("请定义基于计算结果的除法")
}

// -----请忽略以下内容-----

fn to_string(self: ComputeResult) -> String {
  match self {
    Success(i) => "Success\(i)"
    Overflow => "Overflow"
    DivideByZero => "DivideByZero"
  }
}

fn op_equal(self: ComputeResult, other: ComputeResult) -> Bool {
  match (self, other) {
    (Success(i), Success(j)) => i == j
    (Overflow, Overflow) => true
    (DivideByZero, DivideByZero) => true
    _ => false
  }
}

fn init {
  checkResult((1).plus(2), Success(3))
  checkResult((0).minus(1), Success(-1))
  checkResult((2_147_483_647).plus(1), Overflow)
  checkResult((-2_147_483_648).minus(100000), Overflow)
  checkResult((100).divide(0), DivideByZero)
  checkResult(ComputeResult::Overflow.plus(1), Overflow)
  checkResult(ComputeResult::DivideByZero.minus(100), DivideByZero)
  println("恭喜你，完成了练习。")
}