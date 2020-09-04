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
    
    func insert(data: T) {
        root = insert(data: data, in: root)
    }
    
    private func insert(data: T, in root: BSNode<T>?) -> BSNode<T> {
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
    
    func findMin() -> T? {
        return findMin(root: root)?.data
    }
    
    private func findMin(root: BSNode<T>?) -> BSNode<T>? {
        guard let root = root else { return nil }
        return findMin(root: root.leftChild) ?? root
    }
    
    func findMax() -> T? {
        return findMax(root: root)?.data
    }
    
    private func findMax(root: BSNode<T>?) -> BSNode<T>? {
        guard let root = root else { return nil }
        return findMax(root: root.rightChild) ?? root
    }
    
    func height() -> Int {
        return height(root: root)
    }
    
    private func height(root: BSNode<T>?) -> Int {
        if root == nil { return -1 }
        return max(height(root: root?.leftChild),
                   height(root: root?.rightChild)) + 1
    }
    
    func delete(data: T) {
        root = delete(data: data, from: root)
    }
    
    private func delete(data: T, from root: BSNode<T>?) -> BSNode<T>? {
        guard let root = root else { return nil }
        if data < root.data {
            root.leftChild = delete(data: data, from: root.leftChild)
            return root
        } else if data > root.data {
            root.rightChild = delete(data: data, from: root.rightChild)
            return root
        } else { //data == root.data
            if root.leftChild == nil && root.rightChild == nil {
                return nil
            } else if root.leftChild == nil {
                return root.rightChild
            } else if root.rightChild == nil {
                return root.leftChild
            } else { // has both children
                guard let node = findMin(root: root.rightChild) else {
                    return root
                }
                root.rightChild = delete(data: node.data, from: root.rightChild)
                node.leftChild = root.leftChild
                node.rightChild = root.rightChild
                return node
            }
        }
    }
}
