// 辅助判定用文件，可以无视

enum List[T] {
  Nil
  Cons(T, List[T])
} derive (Show, Eq)

enum Option[T] {
  Some(T)
  None
} derive (Show, Eq)

fn fold_left[A, B](self: List[A], f: (B, A) -> B, b: B) -> B {
  match self {
    Nil => b
    Cons(hd, tl) => tl.fold_left(f, f(b, hd))
  }
}

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}
fn checkResultWithMessage[T: Eq](v1: T, v2: T, message: String) {
  if v1 == v2 { () } else { abort(message) }
}