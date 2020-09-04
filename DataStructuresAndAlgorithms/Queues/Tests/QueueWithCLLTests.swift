//
//  QueueWithCLLTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 04/09/20.
//  Copyright © 2020 prassy. All rights reserved.
//

@testable import DataStructuresAndAlgorithms

import XCTest

class QueueWithCLLTests: XCTestCase {
    func testWhenEnqueueingOneItemShouldAddItToQueue() {
        let queue = Queue_WithCLL<Int>()
        queue.enqueue(item: 1)
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertNil(queue.dequeue())
    }
    
    func testQueuesEnqueue() {
        let queue = Queue_WithCLL<Int>()
        XCTAssertNil(queue.dequeue())
        queue.enqueue(item: 1)
        queue.enqueue(item: 2)
        queue.enqueue(item: 3)
        queue.enqueue(item: 4)
        queue.enqueue(item: 5)
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertEqual(queue.dequeue(), 2)
        XCTAssertEqual(queue.dequeue(), 3)
        XCTAssertEqual(queue.dequeue(), 4)
        XCTAssertEqual(queue.dequeue(), 5)
    }
    
    func testWhenQueueIsEmptyShouldReturnIsEmptyAsTrue() {
        let queue = Queue_WithCLL<Int>()
        XCTAssertNil(queue.dequeue())
        XCTAssert(queue.isEmpty())
    }
}
