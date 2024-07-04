// 在这里，我们定义一个小小的表达式，希望能给练习2一些灵感
// 我们定义一个简单的表达式，包含整数以及整数求和
enum Exp {
  IntExp(Int)
  SumExp(Exp, Exp)
}

// 我们在这里定义一些结构，表示我们当前计算完成的后续计算
enum Continuation {
  Sum1K(Exp, Continuation) // 完成左侧表达式计算的后续内容，即计算右侧表达式，及完成当前加法后的后续计算
  Sum2K(Int, Continuation) // 完成右侧表达式计算的后续内容，即计算两数之和，及完成当前加法后的后续计算
  EndK // 完成全部计算内容的后续计算，即为空
}

// 提示：接下来的两个函数应当互相调用

// 我们给定一个值，及后续计算，求出运行结果
fn apply_continuation(value : Int, continuation : Continuation) -> Int {
  // 请尝试实现完成全部运算的函数
  0
}

// 我们给定一个表达式，及对表达式求值的后续计算，求出运行结果
fn cps_parse(exp : Exp, continuation : Continuation) -> Int {
  // 请尝试实现完成全部运算的函数
  0
}

// 我们通过以下方式使用上述函数
fn compute(exp : Exp) -> Int {
  cps_parse(exp, EndK) // 在完成表达式计算后，无后续计算
}

// -----请忽略以下内容-----
test "第六课练习3" {
  @test.eq(compute(IntExp(1)), 1)!
  @test.eq(compute(IntExp(1000)), 1000)!
  @test.eq(compute(SumExp(IntExp(0), IntExp(0))), 0)!
  @test.eq(compute(SumExp(IntExp(1), IntExp(1999))), 2000)!
  @test.eq(compute(SumExp(IntExp(1), SumExp(IntExp(1), IntExp(1)))), 3)!
  @test.eq(
    compute(SumExp(SumExp(IntExp(1), IntExp(1)), SumExp(IntExp(1), IntExp(1)))),
    4,
  )!
  @test.eq(
    compute(SumExp(IntExp(1), SumExp(IntExp(1), SumExp(IntExp(1), IntExp(1))))),
    4,
  )!
}
