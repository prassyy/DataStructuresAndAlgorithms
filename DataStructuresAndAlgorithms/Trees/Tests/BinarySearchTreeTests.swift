//
//  BinarySearchTreeTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 31/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

@testable import DataStructuresAndAlgorithms

import XCTest

class BinarySearchTreeTests: XCTestCase {

    func testWhenInsertingToABstShouldInsertInCorrectOrder() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        bsTree.insert(data: -34)
        let output = bsTree.print()
            .map { String($0) }
            .joined(separator: " ")
        XCTAssertEqual(output, "-34 1 2 5 8 10 20")
    }
    
    func testWhenFindingMinInABsTreeShouldGiveTheMin() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        XCTAssertEqual(bsTree.findMin(), 1)
    }
    
    func testWhenFindingMaxInABsTreeShouldGiveTheMax() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        XCTAssertEqual(bsTree.findMax(), 20)
    }
}
