//
//  ArrayTests.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 10/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import XCTest
import DataStructuresAndAlgorithms

class ArrayTests: XCTestCase {
    
    func testBubbleSortWithSmallInput() {
        XCTAssertEqual([1,9,3,7,8,45,87,12,76].bubbleSort(), [1,3,7,8,9,12,45,76,87])
        XCTAssertEqual(Array<Int>([]).bubbleSort(), [])
        XCTAssertEqual([100].bubbleSort(), [100])
        XCTAssertEqual([1,9].bubbleSort(), [1,9])
    }
}
