//
//  InsertionSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 12/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    public func insertionSort() -> [Element] {
        guard count > 0 else { return self }
        var output = self
        for i in 1..<count {
            let valueToInsert = output[i]
            
            var j = 0
            while valueToInsert > output[j], j < i {
                j += 1
            }
            
            var rotateIndex = i
            while rotateIndex > j {
                output[rotateIndex] = output[rotateIndex-1]
                rotateIndex -= 1
            }
            output[j] = valueToInsert
        }
        return output
    }
}
