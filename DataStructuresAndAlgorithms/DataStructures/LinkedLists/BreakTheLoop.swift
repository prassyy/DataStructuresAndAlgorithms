//
//  BreakTheLoop.swift
//  DataStructuresAndAlgorithms
//
//  Created by Prassyy on 30/08/20.
//  Copyright © 2020 prassy. All rights reserved.
//

import Foundation

extension LinkedList {
    func hasLoop() -> Bool {
        return nodeInLoop() != nil
    }
    
    private func nodeInLoop() -> Node<T>? {
        var slowPointer: Node? = head
        var fastPointer: Node? = head
        while slowPointer?.next != nil && fastPointer?.next != nil {
            let slowNext = slowPointer?.next
            let fastNext = fastPointer?.next?.next
            slowPointer = slowNext
            fastPointer = fastNext
            if slowPointer == fastPointer {
                return slowPointer
            }
        }
        return nil
    }
    
    func breakLoop() {
        guard let head = head, let nodeInLoop = nodeInLoop() else { return }
        var meetingPoint: Node? = head
        while true {
            var current: Node? = nodeInLoop.next
            while current != nodeInLoop {
                if current?.next == meetingPoint {
                    current?.next = nil
                    return
                }
                current = current?.next
            }
            meetingPoint = meetingPoint?.next
        }
    }
}
