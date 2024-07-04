let ex6_value1 : String = if 0.1 + 0.2 == 0.3 {
  "Great!"
} else {
  "C'est la vie :-)"
}

// 请将下方代码替换为你对其上方表达式简化值的预测
let ex6_value1的值 : String = ""

let ex6_value2 : String = if ex6_x > ex6_y {
  "x更小"
} else if ex6_x < ex6_y {
  "y更小"
} else {
  "一样小"
}

// 请将下方代码替换为你对其上方表达式简化值的预测
let ex6_value2的值 : String = ""

let ex6_x = 1

let ex6_y = 2

let ex6_value3 : Bool = {
  let x = 3
  let x = x + 1
  let y = 6
  if x > y && x > 5 && if true { 1 } else { 0 } < 0 || not(false) {
    true && false
  } else {
    false || true
  }
}

// 请将下方代码替换为你对其上方表达式简化值的预测
let ex6_value3的值 : Bool = true

// -----请忽略以下内容-----

test "第二课练习6" {
  @test.eq(ex6_value1, ex6_value1的值)!
  @test.eq(ex6_value2, ex6_value2的值)!
  @test.eq(ex6_value3, ex6_value3的值)!
}
