let value1: Int = 1 + (2 * 3)
let value1的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value2: Int = 1 / 2
let value2的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value3: Int64 = 2147483647L + 2147483647L
let value3的值: Int64 = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value4: Int = 2147483647 + 1
let value4的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn init {
  checkResult(value1, value1的值)
  checkResult(value2, value2的值)
  checkResult(value3, value3的值)
  checkResult(value4, value4的值)
  println("恭喜你，完成了练习。")
}