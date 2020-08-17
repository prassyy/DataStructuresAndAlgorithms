//
//  Stack.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 17/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Stack<T> {
    enum Exception: Error {
        case stackoverflow
    }
    
    let capacity: Int
    var array: [T]
    var size: Int
    
    init(defaultValue: T, capacity: Int) {
        self.array = Array<T>(repeating: defaultValue, count: capacity)
        self.capacity = capacity
        self.size = 0
    }
    
    func push(value: T) throws {
        if size >= capacity {
            throw Exception.stackoverflow
        }
        array[size] = value
        size += 1
    }
    
    func pop() -> T? {
        guard size > 0 else { return nil }
        size -= 1
        return array[size]
    }
    
    func peek() -> T? {
        guard size > 0 else { return nil }
        return array[size - 1]
    }
}
