// 我们提到，事实上可以用fold_right来实现fold_left
// 在这里，你可以直接挑战这个问题，也可以挑战练习3看看有什么不一样的思路

fn fold_right[A, B](list : @immut/list.List[A], f : (A, B) -> B, b : B) -> B {
  match list {
    Nil => b
    Cons(hd, tl) => f(hd, fold_right(tl, f, b))
  }
}

fn my_fold_left[A, B](list : @immut/list.List[A], f : (B, A) -> B, b : B) -> B {
  // 请实现你的fold_left，并利用fold_right
  b
}

// -----请忽略以下内容-----

test "第六课练习2" {
  @test.eq(my_fold_left(Nil, fn(a, b) { a + b }, 0), 0)!
  @test.eq(my_fold_left(Nil, fn(a, b) { a + b }, 0), 1)!
  @test.eq(
    my_fold_left(
      Cons("1", Cons("2", Cons("3", Nil))),
      fn(b : String, a) { "(\(b) + \(a))" },
      "0",
    ),
    "(((0 + 1) + 2) + 3)",
  )!
}
