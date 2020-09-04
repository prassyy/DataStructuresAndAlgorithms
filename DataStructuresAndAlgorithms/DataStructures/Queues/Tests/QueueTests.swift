//
//  QueueTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 17/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import XCTest
@testable import DataStructuresAndAlgorithms

class QueueTests: XCTestCase {
    func testQueuesEnqueue() {
        let queue = Queue<Int>(defaultValue: 0, capacity: 4)
        XCTAssertNil(queue.dequeue())
        queue.enqueue(item: 1)
        queue.enqueue(item: 2)
        queue.enqueue(item: 3)
        queue.enqueue(item: 4)
        queue.enqueue(item: 5) //Added beyond capacity
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertEqual(queue.dequeue(), 2)
        XCTAssertEqual(queue.dequeue(), 3)
        XCTAssertEqual(queue.dequeue(), 4)
        XCTAssertNil(queue.dequeue())
    }
}
