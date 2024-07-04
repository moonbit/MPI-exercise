// 请实现一个尾递归的奇偶性判断函数
// 输入均为自然数
fn 是偶数(value : Int) -> Bool {
  // 请实现偶数判断函数并使用奇数判断函数
  false
}

fn 是奇数(value : Int) -> Bool {
  // 请实现奇数判断函数并使用偶数判断函数
  false
}

test "第八课练习1" {
  @test.is_false(是偶数(2147483647))!
  @test.is_true(是偶数(0))!
  @test.is_true(是奇数(1001))!
  @test.is_false(是奇数(114514))!
}
