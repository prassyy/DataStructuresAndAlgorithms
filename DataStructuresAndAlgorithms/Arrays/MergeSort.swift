//
//  MergeSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 13/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public func mergeSort() -> Array<Element> {
        guard count > 2 else { return self }
        let leftSubArray = Array(self[0..<count/2])
        let rightSubArray = Array(self[count/2..<count])
        return merge(leftSubArray.mergeSort(), rightSubArray.mergeSort())
    }
    
    func merge(_ leftSubArray: Array<Element>, _ rightSubArray: Array<Element>) -> Array<Element> {
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
