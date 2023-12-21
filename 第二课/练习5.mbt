let ex5_value1: Int = {
  let tmp: Int = 1
  let tmp: Int = {
    let tmp: Int = 2
    let tmp: Int = 3
    tmp
  }
  tmp
}
let ex5_value1的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let ex5_value2: Int = {
  let y = 100
  x * y
}

let x = 1
let y = 2

let ex5_value2的值: Int = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

// -----请忽略以下内容-----

fn init {
  checkResult(ex5_value1, ex5_value1的值)
  checkResult(ex5_value2, ex5_value2的值)
  println("恭喜你，完成了练习。")
}