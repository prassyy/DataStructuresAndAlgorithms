//
//  PriorityQueue.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 22/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

enum Priority: Int {
    case low = 0
    case normal
    case high
}

class PriorityQueue<T> {
    var heap: Heap<Item<T>>
    
    init() {
        self.heap = Heap<Item>(maxSize: 10, defaultValue: Item(priority: .low, payload: nil))
    }
    
    func enqueue(data: T, priority: Priority) {
        heap.add(element: Item(priority: priority, payload: data))
    }
    
    func dequeue() -> Item<T>? {
        return heap.poll()
    }
}

struct Item<T>: Comparable {
    var priority: Priority
    var payload: T?

    static func < (lhs: Item, rhs: Item) -> Bool { lhs.priority.rawValue < rhs.priority.rawValue }
    static func == (lhs: Item, rhs: Item) -> Bool { lhs.priority == rhs.priority }
}
