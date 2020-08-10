//
//  BubbleSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 10/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    public func bubbleSort() -> Array<Element> {
        var output = self
        var exchanges: Int = 1
        while exchanges > 0 {
            exchanges = 0
            for j in 0..<self.count-1 {
                if output[j+1] < output[j] {
                    let temp = output[j]
                    output[j] = output[j+1]
                    output[j+1] = temp
                    exchanges += 1
                }
            }
        }
        return output
    }
}
