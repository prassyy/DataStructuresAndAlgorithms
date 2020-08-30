//
//  BreakTheLoopTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 30/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

@testable import DataStructuresAndAlgorithms

import XCTest

class BreakTheLoopTests: XCTestCase {

    func testWhenListHasLoopHasLoopShouldReturnTrue() {
        let linkedList = LinkedList()
        linkedList.append(data: 1)
        linkedList.append(data: 2)
        linkedList.append(data: 3)
        linkedList.append(data: 4)
        linkedList.append(data: 5)
        linkedList.append(data: 6)
        let meetingPoint = linkedList.getNode(at: 2)
        let lastNode = linkedList.getNode(at: 5)
        lastNode?.next = meetingPoint
        XCTAssert(linkedList.hasLoop())
    }
    
    func testWhenListHasNoLoopHasLoopShouldReturnFalse() {
        let linkedList = LinkedList()
        linkedList.append(data: 1)
        linkedList.append(data: 2)
        linkedList.append(data: 3)
        linkedList.append(data: 4)
        linkedList.append(data: 5)
        linkedList.append(data: 6)
        XCTAssertFalse(linkedList.hasLoop())
    }
    
    func testWhenListHasLoopBreakLoopShouldBreakTheLoop1() {
        let linkedList = LinkedList()
        linkedList.append(data: 1)
        linkedList.append(data: 2)
        linkedList.append(data: 3)
        linkedList.append(data: 4)
        linkedList.append(data: 5)
        linkedList.append(data: 6)
        let meetingPoint = linkedList.getNode(at: 2)
        let lastNode = linkedList.getNode(at: 5)
        lastNode?.next = meetingPoint
        XCTAssert(linkedList.hasLoop())
        linkedList.breakLoop()
        XCTAssertFalse(linkedList.hasLoop())
        XCTAssertEqual(linkedList.printList(), "1 2 3 4 5 6")
    }
    
    func testWhenListHasLoopBreakLoopShouldBreakTheLoop2() {
        let linkedList = LinkedList()
        linkedList.append(data: 1)
        linkedList.append(data: 2)
        linkedList.append(data: 3)
        linkedList.append(data: 4)
        linkedList.append(data: 5)
        linkedList.append(data: 6)
        let lastNode = linkedList.getNode(at: 5)
        lastNode?.next = linkedList.head
        XCTAssert(linkedList.hasLoop())
        linkedList.breakLoop()
        XCTAssertFalse(linkedList.hasLoop())
        XCTAssertEqual(linkedList.printList(), "1 2 3 4 5 6")
    }
}
