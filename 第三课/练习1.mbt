fn reverse(list: List[Int]) -> List[Int] {
  abort("请完成reverse函数，定义一个将列表翻转的函数")
}

// -----请忽略以下内容-----

fn init {
  checkResult(reverse(Nil), Nil)
  checkResult(reverse(Cons(1, Nil)), Cons(1, Nil))
  checkResult(reverse(Cons(2, Cons(1, Nil))), Cons(1, Cons(2, Nil)))
  println("恭喜你，完成了练习。")
}
