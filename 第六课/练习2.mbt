// 我们提到，事实上可以用fold_right来实现fold_left
// 在这里，你可以直接挑战这个问题，也可以挑战练习3看看有什么不一样的思路

fn fold_right[A, B](list : List[A], f : (A, B) -> B, b : B) -> B {
  match list {
    Nil => b
    Cons(hd, tl) => f(hd, fold_right(tl, f, b))
  }
}

fn fold_left[A, B](list: List[A], f: (B, A) -> B, b: B) -> B {
  abort("请实现你的fold_left，并利用fold_right")
}

// -----请忽略以下内容-----
enum List[T] {
  Nil
  Cons(T, List[T])
} derive (Show, Eq)
fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}
fn checkResultWithMessage[T: Eq](v1: T, v2: T, message: String) {
  if v1 == v2 { () } else { abort(message) }
}

fn init {
  checkResultWithMessage(fold_left(Nil, fn (a, b) { a + b }, 0), 0, "fold_left在空列表上运行结果应当为传入参数")
  checkResultWithMessage(fold_left(Nil, fn (a, b) { a + b }, 0), 1, "fold_left在空列表上运行结果应当为传入参数")
  checkResult(fold_left(Cons("1", Cons("2", Cons("3", Nil))), fn (b: String, a) { "(\(b) + \(a))" }, "0"), "(((0 + 1) + 2) + 3)")
  println("恭喜你，完成了练习")
}