let ex5_value1 : Int = {
  let tmp : Int = 1
  let tmp : Int = {
    let tmp : Int = 2
    let tmp : Int = 3
    tmp
  }
  tmp
}

// 请将下方代码替换为你对其上方表达式简化值的预测
let ex5_value1的值 : Int = 0

let ex5_value2 : Int = {
  let ex5_y = 100
  ex5_x * ex5_y
}

// 请将下方代码替换为你对其上方表达式简化值的预测
let ex5_value2的值 : Int = 0

let ex5_x = 1

let ex5_y = 2

// -----请忽略以下内容-----

test "第二课练习5" {
  @test.eq(ex5_value1, ex5_value1的值)!
  @test.eq(ex5_value2, ex5_value2的值)!
}
