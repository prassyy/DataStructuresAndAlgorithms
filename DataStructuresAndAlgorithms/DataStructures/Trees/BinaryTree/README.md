### Binary Trees
A tree with nodes containing atmost 2 children is called a Binary Tree

### Types of Binary Tree
- **Proper Binary Tree:** A Tree in which nodes have either 0 or 2 nodes.
- **Complete Binary Tree:** A Tree in which nodes in all levels except possibly the last level are completely filled and the children in the last level should be as left as possible.
- **Perfect Binary Tree:** A Tree in which all levels are completely filled.
- **k Balanced Binary Tree:** A Tree in which the difference between the heights of left and right subtree for every node is not more than k.

### Implementing Binary Trees
- Dynamic Nodes - data, left child, right child.
- Arrays can store a complete binary tree. It id also called called a Heap.

### Traversal
- Breadth-First
    - Level Order
- Depth-First
    - (Root)(Left)(Right) - Pre-Order Traversal - DLR
    - (Left)(Root)(Right) - In-Order Traversal - LDR
    - (Left)(Right)(Root) - Post-Order Traversal - LRD

*Note:* In-Order Traversal of a Binary Search Tree will give a sorted list of elements

