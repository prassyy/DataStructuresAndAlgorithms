//
//  AVLTree.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 04/10/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class AVLTree<T: Comparable> {
    class AVLTNode<T: Comparable> {
        let value: T
        var balanceFactor: Int
        var height: Int
        var leftChild: AVLTNode<T>?
        var rightChild: AVLTNode<T>?
        
        init(value: T) {
            self.value = value
            self.height = 0
            self.balanceFactor = 0
        }
    }
    
    private var root: AVLTNode<T>?

    func insert(value: T) {
        root = self.insert(value: value, in: root)
    }
    
    private func insert(value: T, in node: AVLTNode<T>?) -> AVLTNode<T> {
        guard var node = node else {
            return AVLTNode(value: value)
        }
        if node.value == value {
            //Not allowing duplicates
            return node
        } else if value < node.value {
            node.leftChild = insert(value: value, in: node.leftChild)
        } else {
            node.rightChild = insert(value: value, in: node.rightChild)
        }
        updateBalanceFactor(for: &node)
        return balance(node)
    }
    
    private func updateBalanceFactor(for node: inout AVLTNode<T>) {
        let leftChildHeight = node.leftChild?.height ?? -1
        let rightChildHeight = node.rightChild?.height ?? -1
        node.height = max(leftChildHeight, rightChildHeight) + 1
        node.balanceFactor = rightChildHeight - leftChildHeight
    }
    
    private func balance(_ node: AVLTNode<T>) -> AVLTNode<T> {
        if node.balanceFactor == 2 {
            if let rightChild = node.rightChild {
                let rightChildBalanceFactor = rightChild.balanceFactor
                if rightChildBalanceFactor == -1 {
                    node.rightChild = rightRotation(tree: rightChild)
                }
            }
            return leftRotation(tree: node)
        } else if node.balanceFactor == -2 {
            if let leftChild = node.leftChild {
                let leftChildBalanceFactor = leftChild.balanceFactor
                if leftChildBalanceFactor == 1 {
                    node.leftChild = leftRotation(tree: leftChild)
                }
            }
            return rightRotation(tree: node)
        }
        return node
    }
    
    func balanceFactor() -> Int {
        return root?.balanceFactor ?? 0
    }
    
    private func leftRotation(tree: AVLTNode<T>) -> AVLTNode<T> {
        guard var parent = tree.rightChild else {
            return tree
        }
        var treeCopy = tree
        treeCopy.rightChild = parent.leftChild
        parent.leftChild = treeCopy
        updateBalanceFactor(for: &treeCopy)
        updateBalanceFactor(for: &parent)
        return parent
    }
    
    private func rightRotation(tree: AVLTNode<T>) -> AVLTNode<T> {
        guard var parent = tree.leftChild else {
            return tree
        }
        var treeCopy = tree
        treeCopy.leftChild = parent.rightChild
        parent.rightChild = treeCopy
        updateBalanceFactor(for: &treeCopy)
        updateBalanceFactor(for: &parent)
        return parent
    }
}
