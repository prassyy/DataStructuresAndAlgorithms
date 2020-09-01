//
//  Queue.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 17/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Queue<T> {
    private var array: [T]
    private var front: Int
    private var rear: Int
    private var size: Int
    private let capacity: Int
    
    init(defaultValue: T, capacity: Int) {
        self.array = Array<T>(repeating: defaultValue, count: capacity)
        self.capacity = capacity
        self.front = 0
        self.rear = capacity - 1
        self.size = 0
    }
    
    func enqueue(item: T) {
        guard !isFull() else { return }
        rear = (rear + 1) % capacity
        array[rear] = item
        size += 1
    }
    
    func dequeue() -> T? {
        guard !isEmpty() else { return nil }
        let item = array[front]
        front = (front + 1) % capacity
        size -= 1
        return item
    }
    
    func isEmpty() -> Bool { size == 0 }
    
    func isFull() -> Bool { size == capacity }
}
