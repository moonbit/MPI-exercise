fn reverse(list: List[Int]) -> List[Int] {
  abort("请完成reverse函数，定义一个将列表翻转的函数")
}

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn op_equal[T: Eq](self: List[T], other: List[T]) -> Bool {
  match (self, other) {
    (Nil, Nil) => true
    (Cons(hd, tl), Cons(hd2, tl2)) => hd == hd2 && tl == tl2
    _ => false
  }
}

fn to_string[T: Show](self: List[T]) -> String {
  match self {
    Nil => "Nil"
    Cons(hd, tl) => "\(hd)::\(tl)"
  }
}

fn init {
  checkResult(reverse(Nil), Nil)
  checkResult(reverse(Cons(1, Nil)), Cons(1, Nil))
  checkResult(reverse(Cons(2, Cons(1, Nil))), Cons(1, Cons(2, Nil)))
  println("恭喜你，完成了练习。")
}

enum List[T] {
  Nil
  Cons(T, List[T])
}