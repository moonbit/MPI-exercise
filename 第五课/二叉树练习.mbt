// 现有如下二叉树定义

enum IntTree {
  Node(Int, IntTree, IntTree) // 树中的数据、左子树、右子树
  Empty // 空树
} derive (Eq, Show)

// 请尝试从数组构建一个二叉树，定义同课程PPT第七页，即
// 以第n个元素为根节点的树的值存储在第n位
// 左子树为以第n * 2 + 1个元素为根节点的树
// 右子树为以第n * 2 + 2个元素为根节点的树（从零开始计数）
// 例如，[0, 1, 2, 3, 4, 5, 6]应当构成
//         0
//       /   \
//      1     2
//     / \   / \
//    3   4 5   6
// 我们用Option中的None表示该处为空树
// 对于一个数组`array`，你可以通过`let x = array[n]`获得第n位的数据
// 你也可以通过`array.length()`获得数组的长度
fn array_to_tree(array: Array[Option[Int]]) -> IntTree {
  // 你可能会需要下方这个辅助函数
  // fn helper(n: Int, array: Array[Option[Int]]) -> IntTree {
  // }
  abort("请实现数组转二叉树的函数")
}

// 现在，请实现从二叉搜索树中删除元素的函数
// 删除拥有两个子树的根节点时请用左子树最大值替换根节点
fn remove_element(tree: IntTree, n: Int) -> IntTree {
  abort("请实现从二叉搜索树中删除元素的函数")
}

// -----请忽略以下内容-----

fn checkResult[T: Eq + Show](v1: T, v2: T) {
  if v1 == v2 { () } else { abort("\(v1)与\(v2)不相等") }
}

fn init {
  checkResult(array_to_tree([]), Empty)
  checkResult(array_to_tree([Some(0)]), Node(0, Empty, Empty))
  checkResult(array_to_tree([Some(0), None, Some(1)]), Node(0, Empty, Node(1, Empty, Empty)))
  checkResult(array_to_tree([Some(0), Some(1), Some(2), Some(3), Some(4)]), Node(0, Node(1, Node(3, Empty, Empty), Node(4, Empty, Empty)), Node(2, Empty, Empty)))
  println("恭喜你，完成了数组转二叉树的练习。")

  let bst = array_to_tree([Some(5), Some(2), Some(7), Some(1), Some(4), Some(6), None])
  checkResult(remove_element(bst, 10), bst)
  checkResult(remove_element(bst, 1), array_to_tree([Some(5), Some(2), Some(7), None, Some(4), Some(6), None]))
  checkResult(remove_element(bst, 7), array_to_tree([Some(5), Some(2), Some(6), Some(1), Some(4)]))
  checkResult(remove_element(bst, 5), array_to_tree([Some(4), Some(2), Some(7), Some(1), None, Some(6), None]))
  println("恭喜你，完成了二叉搜索树的元素删除练习。")
}