fn 异或(b1 : Bool, b2 : Bool) -> Bool {
  let b1 = b1
  let b2 = b2

  // 请在此完成练习
  // 请将abort开头的代码行替换为你对b1与b2进行异或运算的表达式，用或、与、非实现
  true
}

// -----请忽略以下内容-----
test "第二课练习1" {
  @test.is_false(异或(true, true))!
  @test.is_true(异或(true, false))!
  @test.is_true(异或(false, true))!
  @test.is_false(异或(false, false))!
}
