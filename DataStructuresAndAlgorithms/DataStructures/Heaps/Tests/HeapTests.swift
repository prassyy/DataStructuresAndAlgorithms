//
//  HeapTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 22/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

@testable import DataStructuresAndAlgorithms
import XCTest

class HeapTests: XCTestCase {
    func testMaxHeap() {
        let maxHeap = Heap<Int>(maxSize: 10, defaultValue: 0)
        maxHeap.add(element: 1)
        maxHeap.add(element: 4)
        maxHeap.add(element: 6)
        maxHeap.add(element: 2)
        maxHeap.add(element: 29)
        XCTAssertEqual(maxHeap.peek(), 29)
        XCTAssertEqual(maxHeap.poll(), 29)
        XCTAssertEqual(maxHeap.peek(), 6)
        XCTAssertEqual(maxHeap.poll(), 6)
        XCTAssertEqual(maxHeap.peek(), 4)
        XCTAssertEqual(maxHeap.poll(), 4)
        XCTAssertEqual(maxHeap.peek(), 2)
        XCTAssertEqual(maxHeap.poll(), 2)
        XCTAssertEqual(maxHeap.peek(), 1)
        XCTAssertEqual(maxHeap.poll(), 1)
    }
}
