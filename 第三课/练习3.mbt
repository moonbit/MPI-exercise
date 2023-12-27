fn find(predicate: (Int) -> Bool, list: List[Int]) -> Option[Int] {
  abort("请完成find函数，定义一个查找列表中符合特定条件(predicate)的函数，并返回找到的第一个结果")
}

// -----请忽略以下内容-----

fn init {
  checkResult(find(fn (i){ i == 0 }, Nil), None)
  checkResult(find(fn (i) { i.is_non_neg() }, Cons(-1, Cons(0, Cons(1, Nil)))), Some(0))
  checkResult(find(fn (_i) { true }, Cons(1, Cons(2, Cons(3, Nil)))), Some(1))
  println("恭喜你，完成了练习。")
}