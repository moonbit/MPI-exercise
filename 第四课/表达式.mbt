// 在这个练习中，你将尝试创建一个代表数学表达式的数据结构
// 同时你需要实现一些相关函数

type Expression // 请将此处替换为你所定义的Expression类型

// 这个类型应当实现如下几个方法

fn literal(i: Int) -> Expression {
  abort("请实现一个从整数创建表达式的函数")
}

fn add(expr1: Expression, expr2: Expression) -> Expression {
  abort("请实现一个表达式相加的函数")
}

fn multiply(expr1: Expression, expr2: Expression) -> Expression {
  abort("请实现一个表达式相乘的函数")
}

fn eval(expr: Expression) -> Int {
  abort("请实现一个对表达式化简获得它所代表的值的函数")
}

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn init {
  checkResult(eval(add(literal(1), literal(0))), 1)
  checkResult(eval(multiply(literal(1), literal(10))), 10)
  checkResult(eval(multiply(add(literal(1), literal(0)), multiply(literal(2), literal(5)))), 10)
  println("恭喜你，完成了练习。")
}