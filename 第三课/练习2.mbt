fn contains(item : Int, list : List[Int]) -> Bool {
  // 请完成contains函数，定义一个判断列表中是否有特定item的函数
  false
}

// -----请忽略以下内容-----

test "第三课练习2" {
  @test.eq(contains(1, Nil), false)!
  @test.eq(contains(1, Cons(1, Nil)), true)!
  @test.eq(contains(3, Cons(1, Cons(2, Cons(3, Nil)))), true)!
}
