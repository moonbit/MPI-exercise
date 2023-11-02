let value1: Int = {
  let tmp: Int = 1
  let tmp: Int = {
    let tmp: Int = 2
    let tmp: Int = 3
    tmp
  }
  tmp
}
let value1的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value2: Int = {
  let y = 100
  x * y
}

let x = 1
let y = 2

let value2的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn init {
  checkResult(value1, value1的值)
  checkResult(value2, value2的值)
  println("恭喜你，完成了练习。")
}