//
//  CountingSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

public func countingSort(_ array: [Int]) -> [Int] {
    let max = getMax(array) ?? 0
    
    var countArray = Array<Int>(repeating: 0, count: max+1)
    for element in array { countArray[element] += 1 }
    
    for index in 1..<countArray.count {
        countArray[index] += countArray[index-1]
    }
    
    var output = Array<Int>(repeating: 0, count: array.count)
    for element in array {
        let outputIndex = countArray[element] - 1
        output[outputIndex] = element
        countArray[element] -= 1
    }
    return output
}


public func getMax(_ array: [Int]) -> Int? {
    guard array.count > 0 else { return nil }
    var max = array[0]
    for i in 1..<array.count {
        max = (array[i] > max) ? array[i] : max
    }
    return max
}
