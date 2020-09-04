//
//  LinkedList.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Node<T> {
    let data: T
    var next: Node?
    
    init(data: T) { self.data = data }
}

class LinkedList<T> {
    var head: Node<T>?
    
    func append(data: T) {
        let newNode = Node(data: data)
        if var lastNode = head {
            while let nextNode = lastNode.next {
                lastNode = nextNode
            }
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    func length() -> Int {
        var count = 0
        var currentNode = head
        while currentNode != nil {
            count += 1
            currentNode = currentNode?.next
        }
        return count
    }
    
    func get(at i: Int) -> T? {
        var index = 0
        var currentNode = head
        while currentNode != nil {
            if index == i {
                return currentNode?.data
            }
            index += 1
            currentNode = currentNode?.next
        }
        return nil
    }
    
    func getNode(at i: Int) -> Node<T>? {
        var index = 0
        var currentNode = head
        while currentNode != nil {
            if index == i {
                return currentNode
            }
            index += 1
            currentNode = currentNode?.next
        }
        return nil
    }
}
