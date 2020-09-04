//
//  LinkedList+Deletion.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension LinkedList {
    func delete(node: Node<T>) {
        if node == head {
            head = head?.next
        } else {
            var currentNode = head
            while let nextNode = currentNode?.next {
                if nextNode == node {
                    currentNode?.next = nextNode.next
                }
                currentNode = nextNode
            }
        }
    }
    
    func delete(at position: Int) {
        if position == 0 {
            head = head?.next
        } else {
            var currentNode = head; var index = 0
            while let nextNode = currentNode?.next {
                if index == position - 1 {
                    currentNode?.next = nextNode.next
                    break
                }
                currentNode = nextNode
                index += 1
            }
        }
    }
}

extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
}
