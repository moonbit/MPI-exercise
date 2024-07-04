// 辅助判定用文件，可以无视

enum List[T] {
  Nil
  Cons(T, List[T])
} derive(Debug, Show, Eq)
