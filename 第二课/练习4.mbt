let ex4_value1: Int = 1 + (2 * 3)
let ex4_value1的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex4_value2: Int = 1 / 2
let ex4_value2的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex4_value3: Int64 = 2147483647L + 2147483647L
let ex4_value3的值: Int64 = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex4_value4: Int = 2147483647 + 1
let ex4_value4的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex4_value5: Bool = 0 != 0 || 0 == 1 && true
let ex4_value5的值: Bool = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex4_value6: Bool = (true || false) && true || false != true
let ex4_value6的值: Bool = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

// -----请忽略以下内容-----
fn init {
  checkResult(ex4_value1, ex4_value1的值)
  checkResult(ex4_value2, ex4_value2的值)
  checkResult(ex4_value3, ex4_value3的值)
  checkResult(ex4_value4, ex4_value4的值)
  checkResult(ex4_value5, ex4_value5的值)
  checkResult(ex4_value6, ex4_value6的值)
  println("恭喜你，完成了练习。")
}