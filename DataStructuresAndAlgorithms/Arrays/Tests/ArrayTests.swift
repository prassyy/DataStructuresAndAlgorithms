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
    
    func testBubbleSort() {
        XCTAssertEqual([1,9,3,7,8,45,87,12,76].bubbleSort(), [1,3,7,8,9,12,45,76,87])
        XCTAssertEqual(Array<Int>([]).bubbleSort(), [])
        XCTAssertEqual([100].bubbleSort(), [100])
        XCTAssertEqual([1,9].bubbleSort(), [1,9])
    }
    
    func testSelectionSort() {
        XCTAssertEqual([1,9,3,7,8,45,87,12,76].selectionSort(), [1,3,7,8,9,12,45,76,87])
        XCTAssertEqual(Array<Int>([]).selectionSort(), [])
        XCTAssertEqual([100].selectionSort(), [100])
        XCTAssertEqual([1,9].selectionSort(), [1,9])
    }
    
    func testInsertionSort() {
        XCTAssertEqual([1,9,3,7,8,45,87,12,76].insertionSort(), [1,3,7,8,9,12,45,76,87])
        XCTAssertEqual(Array<Int>([]).insertionSort(), [])
        XCTAssertEqual([100].insertionSort(), [100])
        XCTAssertEqual([1,9].insertionSort(), [1,9])
    }
    
    func testMergeSort() {
        XCTAssertEqual([1,9,3,7,8,45,87,12,76].mergeSort(), [1,3,7,8,9,12,45,76,87])
        XCTAssertEqual(Array<Int>([]).mergeSort(), [])
        XCTAssertEqual([100].mergeSort(), [100])
        XCTAssertEqual([1,9].mergeSort(), [1,9])
    }
}
