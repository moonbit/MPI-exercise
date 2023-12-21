// 现有如下AVL树定义
enum AVLTree {
  Node(Int, AVLTree, AVLTree, Int) // 树中的数据、左子树、右子树、高度
  Empty // 空树
} derive (Eq, Show)

// 现在，请实现向AVL树中添加元素的操作
fn insert(tree: AVLTree, value: Int) -> AVLTree {
  abort("请实现向AVL树中添加元素的函数")
}

// 现在，请查找树中第k小的元素
// 从1开始计数
fn kth_smallest(tree: AVLTree, k: Int) -> Option[Int] {
  abort("请实现查找树中第k小的元素的函数")
}

// -----请忽略以下内容-----

fn contains(self: AVLTree, target: Int) -> Bool {
  match self {
    Empty => false
    Node(value, left, right, _) => value == target || 
        (value > target && left.contains(target)) || 
        (value < target && right.contains(target))
  }
}

fn is_balanced(self: AVLTree) -> Bool {
  match self {
    Empty => true
    Node(_, Empty, Empty, _) => true
    Node(_, Node(_, _, _, h) as left, Empty, _) => h <= 2 && left.is_balanced()
    Node(_, Empty, Node(_, _, _, h) as right, _) => h <= 2 && right.is_balanced()
    Node(_, Node(_, _, _, h1) as left, Node(_, _, _, h2) as right, _) => h1 >= h2 - 2 && h1 <= h2 + 2 && left.is_balanced() && right.is_balanced()
  }
}

fn init {
  let tree = List::Cons(1, Cons(2, Cons(3, Cons(0, Cons(-5, Cons(-8, Cons(100, Cons(2048, Nil)))))))).fold_left(insert, Empty)
  checkResultWithMessage(tree.contains(3), true, "树中应当有3：\(tree)")
  checkResultWithMessage(tree.contains(0), true, "树中应当有0：\(tree)")
  checkResultWithMessage(tree.contains(2048), true, "树中应当有2048：\(tree)")
  checkResultWithMessage(tree.is_balanced(), true, "树应当是平衡的：\(tree)")
  println("恭喜你，完成了AVL树的添加的练习")

  checkResultWithMessage(kth_smallest(tree, 1), Some(-8), "树中第1小的值应当是-8：\(tree)")
  checkResultWithMessage(kth_smallest(tree, 2), Some(-5), "树中第2小的值应当是-5：\(tree)")
  checkResultWithMessage(kth_smallest(tree, 3), Some(0), "树中第3小的值应当是0：\(tree)")
  checkResultWithMessage(kth_smallest(Empty, 3), None, "空树中应当无第3小的值")
  println("恭喜你，完成了查找第k小的值的练习")

}