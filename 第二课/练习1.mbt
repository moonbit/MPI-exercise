fn 异或(b1: Bool, b2: Bool) -> Bool {
  let b1 = b1
  let b2 = b2

  // 请在此完成练习
  abort("请将abort开头的代码行替换为你对b1与b2进行异或运算的表达式，用或、与、非实现")
}

// -----请忽略以下内容-----
fn init {
  fn check(b1: Bool, b2: Bool) {
    let result = 异或(b1, b2)
    let expected = b1 != b2
    checkResultWithMessage(result, expected, fn (b1, b2) { "对\(b1)与\(b2)的异或操作结果应为\(expected)，实为\(result)" })
  }
  check(true, true)
  check(true, false)
  check(false, true)
  check(false, false)
  println("恭喜你，完成了练习。")
}