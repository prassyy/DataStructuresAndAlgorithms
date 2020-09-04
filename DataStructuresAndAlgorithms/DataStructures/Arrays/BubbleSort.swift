//
//  BubbleSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 10/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    public func bubbleSort() -> [Element] {
        guard count > 0 else { return self }
        var output = self
        var exchanges: Int = 1
        while exchanges > 0 {
            exchanges = 0
            for j in 0..<count-1 {
                if output[j+1] < output[j] {
                    output.swap(j, j+1)
                    exchanges += 1
                }
            }
        }
        return output
    }
}
