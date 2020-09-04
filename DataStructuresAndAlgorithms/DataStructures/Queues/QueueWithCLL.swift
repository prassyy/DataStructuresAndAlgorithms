//
//  QueueWithCLL.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 04/09/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Queue_WithCLL<T> {
    private let cLList: CircularLinkedList<T>
    
    init() {
        self.cLList = CircularLinkedList<T>()
    }
    
    func enqueue(item: T) {
        cLList.append(data: item)
    }
    
    func dequeue() -> T? {
        let head = cLList.tail?.next
        cLList.delete(node: head)
        return head?.data
    }
    
    func isEmpty() -> Bool {
        return cLList.tail == nil
    }
}
