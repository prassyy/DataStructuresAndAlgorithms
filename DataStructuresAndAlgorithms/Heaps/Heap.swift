//
//  Heap.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 19/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

class Heap<Element: Comparable> {
    var collection: [Element]
    var size: Int
    let maxSize: Int
    
    init(maxSize: Int, defaultValue: Element) {
        self.maxSize = maxSize
        self.collection = [Element](repeating: defaultValue, count: maxSize)
        self.size = 0
    }
    
    func parentIndex(for childIndex: Int) -> Int { (childIndex-1)/2 }
    func leftChildIndex(for index: Int) -> Int { 2*index + 1 }
    func rightChildIndex(for index: Int) -> Int { 2*index + 2 }

    func hasLeftChild(index: Int) -> Bool { (leftChildIndex(for: index) < size) }
    func hasRightChild(index: Int) -> Bool { (rightChildIndex(for: index) < size) }
    func hasParent(index: Int) -> Bool { parentIndex(for: index) >= 0 }
    
    func leftChild(for index: Int) -> Element? {
        guard hasLeftChild(index: index) else { return nil }
        return collection[leftChildIndex(for: index)]
    }
    
    func rightChild(for index: Int) -> Element? {
        guard hasRightChild(index: index) else { return nil }
        return collection[rightChildIndex(for: index)]
    }
    
    func parent(for index: Int) -> Element? {
        guard hasParent(index: index) else { return nil }
        return collection[parentIndex(for: index)]
    }
    
    func add(element: Element) {
        guard size < maxSize else { return }
        collection[size] = element
        size+=1
        heapifyUp(from: size-1)
    }
    
    func heapifyUp(from index: Int) {
        if let parent = parent(for: index) {
            let parentIndex = self.parentIndex(for: index)
            if parent < collection[index] {
                collection.swap(index, parentIndex)
                heapifyUp(from: parentIndex)
            }
        }
    }
    
    func peek() -> Element? {
        guard size > 0 else { return nil }
        return collection[0]
    }
    
    func poll() -> Element? {
        guard size > 0 else { return nil }

        let item = collection[0]
        collection.swap(0, size-1)
        size -= 1

        heapifyDown(from: 0)
        return item
    }
    
    func heapifyDown(from index: Int) {
        if let leftChild = leftChild(for: index) {
            var largerChildIndex = leftChildIndex(for: index)
            if let rightChild = rightChild(for: index),
                rightChild > leftChild {
                largerChildIndex = rightChildIndex(for: index)
            }

            if collection[index] < collection[largerChildIndex] {
                collection.swap(index, largerChildIndex)
                heapifyDown(from: largerChildIndex)
            }
        }
    }
}
