//
//  CircularLinkedListTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 02/09/20.
//  Copyright © 2020 prassy. All rights reserved.
//

@testable import DataStructuresAndAlgorithms

import XCTest

class CircularLinkedListTests: XCTestCase {

    func testWhenAppendedOneItemShouldAddItemsToTail() {
        let cLList = CircularLinkedList<Int>()
        cLList.append(data: 1)
        XCTAssertEqual(cLList.printList(), "1")
        XCTAssertEqual(cLList.length(), 1)
    }
    
    func testWhenAddedMultipleItemsShouldAddThemCorrectly() {
        let cLList = CircularLinkedList<Int>()
        cLList.append(data: 1)
        cLList.append(data: 2)
        cLList.append(data: 3)
        cLList.append(data: 4)
        cLList.append(data: 5)
        XCTAssertEqual(cLList.printList(), "1 2 3 4 5")
        XCTAssertEqual(cLList.length(), 5)
    }
    
    func testWhenDeletingANodeShouldRemoveItFromList() {
        let cLList = CircularLinkedList<Int>()
        cLList.append(data: 1)
        cLList.append(data: 2)
        cLList.append(data: 3)
        cLList.append(data: 4)
        cLList.append(data: 5)
        XCTAssertEqual(cLList.printList(), "1 2 3 4 5")
        XCTAssertEqual(cLList.length(), 5)
        cLList.delete(node: cLList.tail?.next?.next)
        XCTAssertEqual(cLList.printList(), "1 3 4 5")
        XCTAssertEqual(cLList.length(), 4)
    }
    
    func testWhenDeletingTailShouldRemoveItFromList() {
        let cLList = CircularLinkedList<Int>()
        cLList.append(data: 1)
        cLList.append(data: 2)
        cLList.append(data: 3)
        cLList.append(data: 4)
        cLList.append(data: 5)
        XCTAssertEqual(cLList.printList(), "1 2 3 4 5")
        XCTAssertEqual(cLList.length(), 5)
        cLList.delete(node: cLList.tail)
        XCTAssertEqual(cLList.printList(), "1 2 3 4")
        XCTAssertEqual(cLList.length(), 4)
        XCTAssertEqual(cLList.tail?.data, 4)
    }
    
    func testWhenListHasOneNodeDeletingTailShouldDeleteList() {
        let cLList = CircularLinkedList<Int>()
        cLList.append(data: 1)
        XCTAssertEqual(cLList.printList(), "1")
        XCTAssertEqual(cLList.length(), 1)
        cLList.delete(node: cLList.tail)
        XCTAssertEqual(cLList.printList(), "")
        XCTAssertEqual(cLList.length(), 0)
        XCTAssertNil(cLList.tail)
        
    }
}

extension CircularLinkedList where T == Int {
    func printList() -> String {
        var output: [T] = []
        guard let head = tail?.next else { return "" }
        traverse(from: head) { node in
            guard let data = node?.data else { return }
            output.append(data)
        }
        return output
            .map { String($0) }
            .joined(separator: " ")
    }
}
