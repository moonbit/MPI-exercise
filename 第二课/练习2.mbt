fn 平均数(i1: Int, i2: Int) -> Int {
  let i1 = i1
  let i2 = i2

  // 请在此完成练习
  abort("请将abort开头的代码行替换为你对i1与i2进行平均数计算的表达式，小心溢出")
}

// -----请忽略以下内容-----

fn checkResult(i1: Int, i2: Int, expected: Int) {
  let result = 平均数(i1, i2)
  if result == expected { () } else { abort("对\(i1)与\(i2)的平均数操作结果应为\(expected)，实为\(result)") }
}

fn init {
  checkResult(0, 0, 0)
  checkResult(2, 2, 2)
  checkResult(4, 6, 5)
  checkResult(2, 2147483646, 1073741824)
  checkResult(2147483646, 2147483646, 2147483646)
  println("恭喜你，完成了练习。")
}