//
//  LinkedList+Insertion.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension LinkedList {
    func insert(at position: Int, data: Int) {
        if position == 0 {
            push(data: data)
            return
        }

        var index = 0
        var currentNode = head
        while let nextNode = currentNode?.next {
            if index == position - 1 {
                let node = Node(data: data)
                node.next = currentNode?.next
                currentNode?.next = node
            } else if index >= position {
                break
            }
            index += 1
            currentNode = nextNode
        }
    }
    
    func push(data: Int) {
        let node = Node(data: data)
        node.next = head
        head = node
    }
}
