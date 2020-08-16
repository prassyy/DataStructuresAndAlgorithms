//
//  RadixSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 15/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

public func radixSort(_ array: [Int]) -> [Int] {
    var output = array
    let max = getMax(array) ?? 0
    var exp = 1
    while max/exp > 0 {
        output = countSort(output, radix: exp)
        exp *= 10
    }
    return output
}

func countSort(_ array: [Int], radix: Int) -> [Int] {
    var countArray = [Int](repeating: 0, count: 10)
    for element in array {
        let index = (element/radix)%10
        countArray[index] += 1
    }
    
    for index in 1..<countArray.count {
        countArray[index] += countArray[index - 1]
    }
    
    var output = [Int](repeating: 0, count: array.count)
    var index = array.count - 1
    while index >= 0 {
        let countIndex = (array[index]/radix)%10
        output[countArray[countIndex] - 1] = array[index]
        countArray[countIndex] -= 1
        index -= 1
    }
    return output
}
