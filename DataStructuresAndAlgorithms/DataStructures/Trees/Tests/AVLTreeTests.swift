//
//  AVLTreeTests.swift
//  DataStructuresAndAlgorithmsTests
//
//  Created by Prassyy on 04/10/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import XCTest
@testable import DataStructuresAndAlgorithms

class AVLTreeTests: XCTestCase {

    func testWhenAddedAnyValuesAlwaysKeepsBfBetweenPositve1AndNegative1() {
        let tree = AVLTree<Int>()
        tree.insert(value: 1)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 2)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 3)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 4)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 5)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 6)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 7)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 8)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
        tree.insert(value: 9)
        XCTAssert(tree.balanceFactor() <= 1 && tree.balanceFactor() >= -1)
    }

}
