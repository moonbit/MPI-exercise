// 辅助判定用文件，可以无视

enum List[T] {
  Nil
  Cons(T, List[T])
} derive (Show, Eq)

enum Option[T] {
  Some(T)
  None
} derive (Show, Eq)

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}
fn checkResultWithMessage[T: Eq](v1: T, v2: T, message: (T, T) -> String) {
  if v1 == v2 { () } else { abort(message(v1, v2)) }
}