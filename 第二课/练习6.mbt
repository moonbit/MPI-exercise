let value1: String = if 0.1 + 0.2 == 0.3 { "Great!" } else { "C'est la vie :-)" }
let value1的值: String = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value2: String = if x > y {
  "x更小"
} else if x < y {
  "y更小"
} else {
  "一样小"
}

let x = 1
let y = 2

let value2的值: String = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

let value3: Bool = {
  let x = 3
  {
    let x = x + 1
    let y = 6
    if x > y && x > 5 && if true { 1 } else { 0 } < 0 || not(false) {
      true && false
    } else {
      false || true
    }
  }
}

let value3的值: Bool = abort("请将abort开头的代码行替换为你对其上方表达式简化值的预测")

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn init {
  checkResult(value1, value1的值)
  checkResult(value2, value2的值)
  checkResult(value3, value3的值)
  println("恭喜你，完成了练习。")
}