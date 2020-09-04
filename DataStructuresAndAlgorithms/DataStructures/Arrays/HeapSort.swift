//
//  Heap.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

public class HeapSort<Element: Comparable> {
    var elements: [Element] = []
    var size: Int {
        elements.count
    }
    
    public init(_ array: [Element]) {
        self.configure(with: array)
    }

    func configure(with array: [Element]) {
        self.elements = array
    }
    
    public func sort() -> [Element] {
        for i in stride(from: size/2 - 1, through: 0, by: -1) {
            heapify(withRoot: i, upto: size)
        }
        
        var heapSize = size
        for i in stride(from: size-1, through: 0, by: -1) {
            elements.swap(i, 0)
            heapSize -= 1
            heapify(withRoot: 0, upto: heapSize)
        }
        return elements
    }
    
    func heapify(withRoot root: Int, upto size: Int) {
        var largestIndex = root
        let leftChildIndex = 2*root + 1
        let rightChildIndex = 2*root + 2
        
        if leftChildIndex < size && elements[leftChildIndex] > elements[largestIndex] {
            largestIndex = leftChildIndex
        }
        
        if rightChildIndex < size && elements[rightChildIndex] > elements[largestIndex] {
            largestIndex = rightChildIndex
        }
        
        if largestIndex != root {
            elements.swap(largestIndex, root)
            heapify(withRoot: largestIndex, upto: size)
        }
    }
}
