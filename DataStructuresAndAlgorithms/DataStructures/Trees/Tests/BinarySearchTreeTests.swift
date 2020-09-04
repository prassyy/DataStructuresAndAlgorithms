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
    
    func testShouldFindTheCorrectHeightOfTree() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        XCTAssertEqual(bsTree.height(), 2)
    }
    
    func testWhenTraversedPreOrderShouldTraverseInCorrectOrder() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        var order = [String]()
        bsTree.traverseTree(order: .preorder) {
            guard let node = $0 else { return }
            order.append(String(node.data))
        }
        XCTAssertEqual(order.joined(separator: " "), "5 2 1 10 8 20")
    }
    
    func testWhenTraversedInorderShouldTraverseInCorrectOrder() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        var order = [String]()
        bsTree.traverseTree(order: .inorder) {
            guard let node = $0 else { return }
            order.append(String(node.data))
        }
        XCTAssertEqual(order.joined(separator: " "), "1 2 5 8 10 20")
    }
    
    func testWhenTraversedPostorderShouldTraverseInCorrectOrder() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        var order = [String]()
        bsTree.traverseTree(order: .postorder) {
            guard let node = $0 else { return }
            order.append(String(node.data))
        }
        XCTAssertEqual(order.joined(separator: " "), "1 2 8 20 10 5")
    }
    
    func testWhenTraversedLevelorderShouldTraverseInCorrectOrder() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        var order = [String]()
        bsTree.traverseTree(order: .levelorder) {
            guard let node = $0 else { return }
            order.append(String(node.data))
        }
        XCTAssertEqual(order.joined(separator: " "), "5 2 10 1 8 20")
    }
    
    func testWhenDeletingALeafNodeShouldDeleteTheNode() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        bsTree.delete(data: 1)
        XCTAssertEqual(bsTree.print(), [2, 5, 8, 10, 20])
    }
    
    func testWhenDeleteingANodeWithOneChildShouldAppropriatelyRemoveNode() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        bsTree.delete(data: 2)
        XCTAssertEqual(bsTree.print(), [1, 5, 8, 10, 20])
    }
    
    func testWhenDeletingANodeWithBothChildrenShouldReplaceItWithRightChildNode() {
        let bsTree = BinarySearchTree<Int>()
        bsTree.insert(data: 5)
        bsTree.insert(data: 2)
        bsTree.insert(data: 10)
        bsTree.insert(data: 1)
        bsTree.insert(data: 8)
        bsTree.insert(data: 20)
        bsTree.delete(data: 8)
        XCTAssertEqual(bsTree.print(), [1, 2, 5, 10, 20])
    }
}

extension BinarySearchTree {
    func print() -> [T] {
        var output: [T] = []
        traverseTree(order: .inorder) { node in
            guard let node = node else { return }
            output.append(node.data)
        }
        return output
    }
}
