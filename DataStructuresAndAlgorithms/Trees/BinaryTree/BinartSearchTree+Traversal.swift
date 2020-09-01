//
//  BinartSearchTree+Traversal.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 01/09/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

enum TraversalOrder {
    case preorder
    case inorder
    case postorder
    case levelorder
}

extension BinarySearchTree {
    
    func traverseTree(order: TraversalOrder, visit: (BSNode<T>?)->Void) {
        switch order {
        case .preorder: preorder(root: root, visit: visit)
        case .inorder: inorder(root: root, visit: visit)
        case .postorder: postorder(root: root, visit: visit)
        case .levelorder: levelorder(root: root, visit: visit)
        }
    }
    
    func preorder(root: BSNode<T>?, visit: (BSNode<T>?)->Void) {
        if root == nil { return }
        visit(root)
        preorder(root: root?.leftChild, visit: visit)
        preorder(root: root?.rightChild, visit: visit)
    }
    
    func inorder(root: BSNode<T>?, visit: (BSNode<T>?)->Void) {
        if root == nil { return }
        inorder(root: root?.leftChild, visit: visit)
        visit(root)
        inorder(root: root?.rightChild, visit: visit)
    }
    
    func postorder(root: BSNode<T>?, visit: (BSNode<T>?)->Void) {
        if root == nil { return }
        postorder(root: root?.leftChild, visit: visit)
        postorder(root: root?.rightChild, visit: visit)
        visit(root)
    }
    
    func levelorder(root: BSNode<T>?, visit: (BSNode<T>?)->Void) {
        guard let root = root else { return }
        let queue = Queue<BSNode>(defaultValue: root, capacity: 10)
        queue.enqueue(item: root)
        while !queue.isEmpty() {
            guard let nextItem = queue.dequeue()
                else { break }
            if let leftChild = nextItem.leftChild {
                queue.enqueue(item: leftChild)
            }
            if let rightChild = nextItem.rightChild {
                queue.enqueue(item: rightChild)
            }
            visit(nextItem)
        }
    }
}
