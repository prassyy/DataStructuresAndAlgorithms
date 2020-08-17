//
//  StackTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 17/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import XCTest
@testable import DataStructuresAndAlgorithms

class StackTests: XCTestCase {

    func testStackPush() throws {
        let stack = Stack<Int>(defaultValue: 0, capacity: 50)
        XCTAssertEqual(stack.size, 0)
        try stack.push(value: 1)
        try stack.push(value: 2)
        XCTAssertEqual(stack.size, 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertEqual(stack.size, 0)
        XCTAssertNil(stack.pop())
    }
}
