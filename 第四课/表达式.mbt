// 在这个练习中，你将尝试创建一个代表数学表达式的数据结构
// 同时你需要实现一些相关函数

type Expression Unit // 请将此处替换为你所定义的Expression类型

// 这个类型应当实现如下几个方法

fn literal(i : Int) -> Expression {
  // 请实现一个从整数创建表达式的函数
  Expression(())
}

fn add(self : Expression, expr2 : Expression) -> Expression {
  // 请实现一个表达式相加的函数
  Expression(())
}

fn multiply(self : Expression, expr2 : Expression) -> Expression {
  // 请实现一个表达式相乘的函数
  Expression(())
}

fn eval(expr : Expression) -> Int {
  // 请实现一个对表达式化简获得它所代表的值的函数
  0
}

// -----请忽略以下内容-----

test "第四课练习1" {
  @test.eq(eval(add(literal(1), literal(0))), 1)!
  @test.eq(eval(literal(1).multiply(literal(10))), 10)!
  @test.eq(
    eval(literal(1).add(literal(0)).multiply(literal(2).multiply(literal(5)))),
    10,
  )!
}
