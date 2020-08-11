//
//  SelectionSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 10/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    public func selectionSort() -> Array<Element> {
        guard count > 0 else { return self }
        var output = self
        for i in 0..<count {
            var minValueIndex = i
            for j in i..<count {
                if output[j] < output[minValueIndex] {
                    minValueIndex = j
                }
            }
            if minValueIndex != i {
                let temp = output[i]
                output[i] = output[minValueIndex]
                output[minValueIndex] = temp
            }
        }
        return output
    }
}
