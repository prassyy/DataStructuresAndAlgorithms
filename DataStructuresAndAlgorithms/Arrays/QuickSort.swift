//
//  QuickSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 15/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    public func quickSort() -> [Element] {
        var output = self
        quickSort(array: &output, start: 0, end: output.count-1)
        return output
    }
    
    func quickSort(array: inout [Element], start: Int, end: Int) {
        guard start < end else { return }
        let pIndex = partition(&array, start: start, end: end)
        quickSort(array: &array, start: start, end: pIndex-1)
        quickSort(array: &array, start: pIndex+1, end: end)
    }
    
    func partition(_ array: inout [Element], start: Int, end: Int) -> Int {
        let pivot = array[end]
        var pIndex = start
        for i in start..<end {
            if array[i] <= pivot {
                array.swap(i, pIndex)
                pIndex += 1
            }
        }
        array.swap(pIndex, end)
        return pIndex
    }
}
