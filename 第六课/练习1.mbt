// 在课上，我们使用两个堆栈模拟了一个队列，那么我们是不是也可以用两个队列（或者单个队列）来模拟一个堆栈呢？
// 请在此给出你的答案。事实上有两种可行的方案，一种方案的添加效率较高，而另一种方案的取出效率较高。
// 队列的实现在文件最后，与课上的内容相同。

type Stack[T] Unit // 请将它替换为你定义的堆栈

fn Stack::empty[T]() -> Stack[T] {
  // 请实现创建空堆栈的操作
  Stack(())
}

fn push[T](self : Stack[T], value : T) -> Stack[T] {
  // 请实现向堆栈添加数据的操作
  Stack(())
}

fn pop[T](self : Stack[T]) -> (T?, Stack[T]) {
  // 请实现从堆栈取出栈顶元素的操作
  (None, Stack(()))
}

// -----队列实现-----

struct Queue[T] {
  front : @immut/list.List[T]
  back : @immut/list.List[T]
} derive(Debug, Show, Eq)

fn Queue::empty[T]() -> Queue[T] {
  { front: Nil, back: Nil }
}

fn push[T](self : Queue[T], value : T) -> Queue[T] { // 将元素存入队尾
  normalize({ ..self, back: Cons(value, self.back) })
}

fn pop[T](self : Queue[T]) -> (T?, Queue[T]) { // 取出第一个元素
  match self.front {
    Nil => (None, self)
    Cons(top, rest) => (Some(top), normalize({ ..self, front: rest }))
  }
}

fn normalize[T](self : Queue[T]) -> Queue[T] { // 如果front为空，反转back到front
  match self.front {
    Nil => { front: self.back.reverse(), back: Nil }
    _ => self
  }
}

// -----请忽略以下内容-----

test "第六课练习1" {
  @test.eq((Stack::empty() : Stack[Unit]).pop().0, None)!
  @test.eq(Stack::empty().push(1).pop().0, Some(1))!
  @test.eq(Stack::empty().push(1).pop().1.pop().0, None)!
  @test.eq(Stack::empty().push(0).push(1).push(2).pop().0, Some(2))!
}
