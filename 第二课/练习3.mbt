fn 比较小数(f1 : Double, f2 : Double) -> Bool {
  let f1 = f1
  let f2 = f2

  // 请在此完成练习
  // 请将abort开头的代码行替换为你对f1与f2进行比较的表达式，精确到小数点后1位
  false
}

// -----请忽略以下内容-----

test "第二课练习3" {
  @test.is_true(比较小数(0.1 + 0.2, 0.3))!
  @test.is_true(比较小数(0.1 + 0.1, 0.2))!
  @test.is_false(比较小数(0.1, 0.2))!
}
