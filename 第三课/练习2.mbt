fn contains(item: Int, list: List[Int]) -> Bool {
  abort("请完成contains函数，定义一个判断列表中是否有特定item的函数")
}

// -----请忽略以下内容-----

fn init {
  checkResult(contains(1, Nil), false)
  checkResult(contains(1, Cons(1, Nil)), true)
  checkResult(contains(3, Cons(1, Cons(2, Cons(3, Nil)))), true)
  println("恭喜你，完成了练习。")
}