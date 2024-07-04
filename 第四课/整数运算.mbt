enum ComputeResult {
  Success(Int)
  Overflow
  DivideByZero
} derive(Eq, Debug)

// 请基于上述数据类型，定义整数的四则运算

fn plus_int(a : Int, b : Int) -> ComputeResult {
  // 请定义整数加法
  Success(0)
}

fn minus_int(a : Int, b : Int) -> ComputeResult {
  // 请定义减法
  Success(0)
}

fn multiply_int(a : Int, b : Int) -> ComputeResult {
  // 请定义乘法
  Success(0)
}

fn divide_int(a : Int, b : Int) -> ComputeResult {
  // 请定义除法
  Success(0)
}

// 我们发现，这样定义的四则运算并不方便嵌套，因此我们另外定义一套基于运算结果再次运算的函数
// 如果已经出现错误，则保留错误；否则，继续进行运算

fn plus(self : ComputeResult, b : Int) -> ComputeResult {
  // 请定义基于计算结果的加法
  Success(0)
}

fn minus(self : ComputeResult, b : Int) -> ComputeResult {
  // 请定义基于计算结果的减法
  Success(0)
}

fn multiply(self : ComputeResult, b : Int) -> ComputeResult {
  // 请定义基于计算结果的乘法
  Success(0)
}

fn divide(self : ComputeResult, b : Int) -> ComputeResult {
  // 请定义基于计算结果的除法
  Success(0)
}

// -----请忽略以下内容-----

test "第四课练习2" {
  @test.eq(plus_int(1, 2), Success(3))!
  @test.eq(minus_int(0, 1), Success(-1))!
  @test.eq(plus_int(2_147_483_647, 1), Overflow)!
  @test.eq(minus_int(-2_147_483_648, 100000), Overflow)!
  @test.eq(divide_int(100, 0), DivideByZero)!
  @test.eq(ComputeResult::Overflow.plus(1), Overflow)!
  @test.eq(ComputeResult::DivideByZero.minus(100), DivideByZero)!
}
