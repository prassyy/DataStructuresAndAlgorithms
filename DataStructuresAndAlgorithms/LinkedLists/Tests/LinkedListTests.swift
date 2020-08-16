//
//  LinkedListTests.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 16/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import XCTest
@testable import DataStructuresAndAlgorithms

class LinkedListTests: XCTestCase {
    func testLinkedListAdd() {
        let list = LinkedList()
        list.append(data: 1)
        XCTAssertEqual(list.printList(), "1")
        XCTAssertEqual(list.length(), 1)
        list.append(data: 3)
        XCTAssertEqual(list.printList(), "1 3")
        XCTAssertEqual(list.length(), 2)
    }
    
    func testLinkedListInsertion() {
        let list = LinkedList()
        list.append(data: 1); list.append(data: 2); list.append(data: 3)
        XCTAssertEqual(list.printList(), "1 2 3")
        XCTAssertEqual(list.length(), 3)
        list.insert(at: 1, data: 4)
        XCTAssertEqual(list.printList(), "1 4 2 3")
        XCTAssertEqual(list.length(), 4)
        list.insert(at: 0, data: 5)
        XCTAssertEqual(list.printList(), "5 1 4 2 3")
        XCTAssertEqual(list.length(), 5)
    }
    
    func testLinkedListPush() {
        let list = LinkedList()
        list.append(data: 1); list.push(data: 2)
        XCTAssertEqual(list.printList(), "2 1")
        XCTAssertEqual(list.length(), 2)
        list.push(data: 3)
        XCTAssertEqual(list.printList(), "3 2 1")
        XCTAssertEqual(list.length(), 3)
        list.push(data: 4)
        XCTAssertEqual(list.printList(), "4 3 2 1")
        XCTAssertEqual(list.length(), 4)
    }
    
    func testLinkedListDeletion() {
        let list = LinkedList()
        list.append(data: 1); list.append(data: 2); list.append(data: 3)
        XCTAssertEqual(list.printList(), "1 2 3")
        XCTAssertEqual(list.length(), 3)
        list.delete(at: 4)
        XCTAssertEqual(list.printList(), "1 2 3")
        XCTAssertEqual(list.length(), 3)
        list.delete(at: 1)
        XCTAssertEqual(list.printList(), "1 3")
        XCTAssertEqual(list.length(), 2)
        list.delete(node: list.head!)
        XCTAssertEqual(list.printList(), "3")
        XCTAssertEqual(list.length(), 1)
    }
    
    func testLinkedListGetAtPosition() {
        let list = LinkedList()
        list.append(data: 1); list.append(data: 2); list.append(data: 3)
        XCTAssertEqual(list.get(at: 0), 1)
        XCTAssertEqual(list.get(at: 1), 2)
        XCTAssertEqual(list.get(at: 2), 3)
        XCTAssertEqual(list.length(), 3)
    }
}
