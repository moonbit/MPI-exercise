fn find(predicate : (Int) -> Bool, list : List[Int]) -> Int? {
  // 请完成find函数，定义一个查找列表中符合特定条件(predicate)的函数，并返回找到的第一个结果
  None
}

// -----请忽略以下内容-----

test "第三课练习3" {
  @test.eq(find(fn(i) { i == 0 }, Nil), None)!
  @test.eq(
    find(fn(i) { i.is_non_neg() }, Cons(-1, Cons(0, Cons(1, Nil)))),
    Some(0),
  )!
  @test.eq(find(fn(_i) { true }, Cons(1, Cons(2, Cons(3, Nil)))), Some(1))!
}
