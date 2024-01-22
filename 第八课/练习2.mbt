// 请实现一个利用Option[T]的循环队列

struct Queue[T] {
}

fn Queue::make[T]() -> Queue[T] {
  {}
}

fn Queue::push[T](queue: Queue[T], value: T) -> Queue[T] {
  queue
}

fn Queue::pop[T](queue: Queue[T]) -> Queue[T] {
  queue
}

fn Queue::peek[T](queue: Queue[T]) -> Option[T] {
  None
}

fn Queue::length[T](queue: Queue[T]) -> Int {
  0
}

fn init {
  println("===第八课练习2===")
  let queue: Queue[String] = Queue::make()
  queue.push("a").push("s").push("d").push("f")
  checkResult(queue.length(), 4)
  checkResult(queue.peek(), Some("a"))
  queue.pop().pop().pop().push("x")
  checkResult(queue.length(), 2)
  checkResult(queue.peek(), Some("f"))
  queue.pop().pop().pop()
  checkResult(queue.length(), 0)
  checkResult(queue.peek(), None)
  println("===第八课练习2===")
}