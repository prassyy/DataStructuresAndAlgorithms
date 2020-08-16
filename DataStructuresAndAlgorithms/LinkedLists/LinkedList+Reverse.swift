//
//  LinkedList+Reverse.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension LinkedList {
    func reverse() {
        var prev: Node? = nil
        var current: Node? = head
        while let currentNode = current {
            let next = currentNode.next
            currentNode.next = prev
            prev = currentNode
            current = next
        }
        head = prev
    }
    
    func recursiveReverse() {
        let newHead = recursive(prev: nil, current: head)
        head = newHead
    }
    
    func recursive(prev: Node?, current: Node?) -> Node? {
        if current == nil && current?.next == nil {
            return prev
        }
        let next = current?.next
        current?.next = prev
        return recursive(prev: current, current: next)
    }
}
