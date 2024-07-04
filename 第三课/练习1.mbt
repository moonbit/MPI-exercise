fn reverse(list : List[Int]) -> List[Int] {
  // 请完成reverse函数，定义一个将列表翻转的函数
  list
}

// -----请忽略以下内容-----

test "第三课练习1" {
  @test.eq(reverse(Nil), Nil)!
  @test.eq(reverse(Cons(1, Nil)), Cons(1, Nil))!
  @test.eq(reverse(Cons(2, Cons(1, Nil))), Cons(1, Cons(2, Nil)))!
}
