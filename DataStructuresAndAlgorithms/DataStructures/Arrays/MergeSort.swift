//
//  MergeSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 13/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public func mergeSort() -> [Element] {
        guard count > 2 else { return self }
        
        var leftSortedArray = Array(self[0..<count/2]).mergeSort()
        var rightSortedArray = Array(self[count/2..<count]).mergeSort()
        return merge(&leftSortedArray, &rightSortedArray)
    }
    
    func merge(_ leftSubArray: inout [Element], _ rightSubArray: inout [Element]) -> [Element] {
        var i=0, j=0

        var output = [Element]()
        output.reserveCapacity(leftSubArray.count + rightSubArray.count)

        while i < leftSubArray.count && j < rightSubArray.count {
            if leftSubArray[i] < rightSubArray[j] {
                output.append(leftSubArray[i])
                i += 1
            } else if rightSubArray[j] < leftSubArray[i] {
                output.append(rightSubArray[j])
                j += 1
            } else {
                output.append(leftSubArray[i])
                i += 1
                output.append(rightSubArray[j])
                j += 1
            }
        }

        while i < leftSubArray.count {
            output.append(leftSubArray[i])
            i += 1
        }
        while j < rightSubArray.count {
            output.append(rightSubArray[j])
            j += 1
        }

        return output
    }
}
