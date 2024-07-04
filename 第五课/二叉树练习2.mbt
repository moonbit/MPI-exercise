// 现有如下AVL树定义
enum AVLTree {
  Node(Int, AVLTree, AVLTree, Int) // 树中的数据、左子树、右子树、高度
  Empty // 空树
} derive(Eq, Debug, Show)

// 现在，请实现向AVL树中添加元素的操作
fn insert(tree : AVLTree, value : Int) -> AVLTree {
  // 请实现向AVL树中添加元素的函数
  tree
}

// 现在，请查找树中第k小的元素
// 从1开始计数
fn kth_smallest(tree : AVLTree, k : Int) -> Int? {
  // 请实现查找树中第k小的元素的函数
  None
}

// -----请忽略以下内容-----

fn contains(self : AVLTree, target : Int) -> Bool {
  match self {
    Empty => false
    Node(value, left, right, _) =>
      value == target || value > target && left.contains(target) || value < target &&
      right.contains(target)
  }
}

fn is_balanced(self : AVLTree) -> Bool {
  match self {
    Empty => true
    Node(_, Empty, Empty, _) => true
    Node(_, Node(_, _, _, h) as left, Empty, _) => h <= 2 && left.is_balanced()
    Node(_, Empty, Node(_, _, _, h) as right, _) =>
      h <= 2 && right.is_balanced()
    Node(_, Node(_, _, _, h1) as left, Node(_, _, _, h2) as right, _) =>
      h1 >= h2 - 2 && h1 <= h2 + 2 && left.is_balanced() && right.is_balanced()
  }
}

test "第五课练习2 AVL树的添加" {
  let tree = [1, 2, 3, 0, -5, -8, 100, 2048].fold_left(
    insert,
    init=AVLTree::Empty,
  )
  @test.is_true(tree.contains(3))!
  @test.is_true(tree.contains(0))!
  @test.is_true(tree.contains(2048))!
  @test.is_true(tree.is_balanced())!
}

test "第五课练习2 查找第k小的值" {
  let tree = [1, 2, 3, 0, -5, -8, 100, 2048].fold_left(
    insert,
    init=AVLTree::Empty,
  )
  @test.eq(kth_smallest(tree, 1), Some(-8))!
  @test.eq(kth_smallest(tree, 2), Some(-5))!
  @test.eq(kth_smallest(tree, 3), Some(0))!
  @test.eq(kth_smallest(Empty, 3), None)!
}
