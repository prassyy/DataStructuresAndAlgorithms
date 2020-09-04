//
//  CircularLinkedList.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 02/09/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class CircularLinkedList<T> {
    var tail: Node<T>?
    
    func append(data: T) {
        let node = Node(data: data)
        if tail == nil {
            tail = node
            tail?.next = tail
        } else {
            let head = tail?.next
            node.next = head
            tail?.next = node
            tail = node
        }
    }
    
    func delete(node: Node<T>?) {
        var previous: Node<T>?
        traverse(from: tail?.next) { (nodeInList) in
            if nodeInList?.next == node {
                previous = nodeInList
            }
        }
        previous?.next = node?.next
        if node == tail {
            self.tail = previous == node ? nil : previous
        }
    }
    
    func traverse(from node: Node<T>?, visit: (Node<T>?) -> Void) {
        guard node != nil else { return }
        visit(node)
        if node != tail {
            traverse(from: node?.next, visit: visit)
        }
    }
    
    func length() -> Int {
        guard let tail = tail else { return 0 }
        return 1 + length(from: tail.next)
    }
    
    func length(from node: Node<T>?) -> Int {
        guard let node = node,
            node != tail else { return 0 }
        return 1 + length(from: node.next)
    }
}
