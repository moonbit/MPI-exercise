fn 异或(b1: Bool, b2: Bool) -> Bool {
  let b1 = b1
  let b2 = b2

  // 请在此完成练习
  abort("请将abort开头的代码行替换为你对b1与b2进行异或运算的表达式，用或、与、非实现")
}

fn checkResult(b1: Bool, b2: Bool) {
  result := 异或(b1, b2)
  expected := b1 != b2
  if result == expected {} else { abort("对\(b1)与\(b2)的异或操作结果应为\(expected)，实为\(result)") }
}

fn init {
  checkResult(true, true)
  checkResult(true, false)
  checkResult(false, true)
  checkResult(false, false)
  println("恭喜你，完成了练习。")
}