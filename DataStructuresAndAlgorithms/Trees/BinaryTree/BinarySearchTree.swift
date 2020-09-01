//
//  BinarySearchTree.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 31/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class BinarySearchTree<T: Comparable> {
    class BSNode<T> {
        var data: T
        var leftChild: BSNode?
        var rightChild: BSNode?
        
        init(data: T) { self.data = data }
    }
    
    var root: BSNode<T>?
    
    init() { }

    func insert(data: T) {
        root = insert(data: data, in: root)
    }
    
    func insert(data: T, in root: BSNode<T>?) -> BSNode<T> {
        guard let root = root else {
            return BSNode(data: data)
        }
        if data <= root.data {
            root.leftChild = insert(data: data, in: root.leftChild)
        } else {
            root.rightChild = insert(data: data, in: root.rightChild)
        }
        return root
    }
    
    func print() -> [T] {
        var output: [T] = []
        traverseTree(with: root) { node in
            guard let node = node else { return }
            output.append(node.data)
        }
        return output
    }
    
    func traverseTree(with root: BSNode<T>?, do visit: ((BSNode<T>?) -> Void)) {
        guard root != nil else { return }
        traverseTree(with: root?.leftChild, do: visit)
        visit(root)
        traverseTree(with: root?.rightChild, do: visit)
    }
    
    func findMin() -> T? {
        return findMin(root: root)
    }
    
    func findMin(root: BSNode<T>?) -> T? {
        guard let root = root else { return nil }
        return findMin(root: root.leftChild) ?? root.data
    }
    
    func findMax() -> T? {
        return findMax(root: root)
    }
    
    func findMax(root: BSNode<T>?) -> T? {
        guard let root = root else { return nil }
        return findMax(root: root.rightChild) ?? root.data
    }
    
    func height() -> Int {
        return height(root: root)
    }
    
    func height(root: BSNode<T>?) -> Int {
        if root == nil { return -1 }
        return max(height(root: root?.leftChild),
                   height(root: root?.rightChild)) + 1
    }
}
