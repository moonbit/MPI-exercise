fn 比较小数(f1: Double, f2: Double) -> Bool {
  let f1 = f1
  let f2 = f2

  // 请在此完成练习
  abort("请将abort开头的代码行替换为你对f1与f2进行比较的表达式，精确到小数点后1位")
}

// -----请忽略以下内容-----

fn init {
  fn check(f1: Double, f2: Double, expected: Bool) {
    let result = 比较小数(f1, f2)
    checkResultWithMessage(result, expected, fn (f1, f2) {
      let str1 = f1.to_string()
      let str2 = f2.to_string()
      "对\(str1)与\(str2)相等这一事实的判断应为\(expected)，实为\(result)"
    })
  }
  check(0.1 + 0.2, 0.3, true)
  check(0.1 + 0.1, 0.2, true)
  check(0.1, 0.2, false)
  println("恭喜你，完成了练习。")
}