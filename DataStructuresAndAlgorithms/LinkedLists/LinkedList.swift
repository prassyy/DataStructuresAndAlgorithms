//
//  LinkedList.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) { self.data = data }
}

class LinkedList {
    var head: Node?
    
    func append(data: Int) {
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
    
    func printList() -> String {
        var output = ""
        if var currentNode = head {
            output = String(currentNode.data)
            while let node = currentNode.next {
                output += " " + String(node.data)
                currentNode = node
            }
        }
        return output
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
    
    func get(at i: Int) -> Int? {
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
}
