// 请实现一个尾递归的奇偶性判断函数
// 输入均为自然数
fn 是偶数(value: Int) -> Bool {
  abort("请实现偶数判断函数并使用奇数判断函数")
}
fn 是奇数(value: Int) -> Bool {
  abort("请实现奇数判断函数并使用偶数判断函数")
}

fn init {
  println("===第八课练习1===")
  checkResult(是偶数(2147483647), false)
  checkResult(是偶数(0), true)
  checkResult(是奇数(1001), true)
  checkResult(是奇数(114514), false)
  println("===第八课练习1===")
}