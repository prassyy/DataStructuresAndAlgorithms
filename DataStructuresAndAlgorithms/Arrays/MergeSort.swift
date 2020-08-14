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
        while i < leftSubArray.count && j < rightSubArray.count {
            if leftSubArray[i] < rightSubArray[j] {
                output.append(leftSubArray[i])
                i += 1;
            } else {
                output.append(rightSubArray[j])
                j += 1;
            }
        }
        output.append(contentsOf: i >= leftSubArray.count
                ? rightSubArray[j..<rightSubArray.count]
                : leftSubArray[i..<leftSubArray.count])
        return output
    }
}
