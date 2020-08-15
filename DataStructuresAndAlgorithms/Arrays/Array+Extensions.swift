//
//  Array+Extensions.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 15/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public mutating func swap(_ i: Int, _ j: Int) {
        let temp = self[i]
        self[i] = self[j]
        self[j] = temp
    }
}
