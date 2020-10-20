//
//  HeapDataStructure.swift
//  AlgorithmsTests
//
//  Created by Victoria Kravets on 19.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import XCTest
@testable import Algorithms

class HeapDataStructure: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInsertFromHeap() throws {
        let binaryTreeArray = [4,4,8,9,4,12,9,11,13,7,10]
        let heap = Heap(array: binaryTreeArray)
        heap.insert(element: 5)
        XCTAssertEqual(heap.getHeap(), [4,4,5,9,4,8,9,11,13,7,10,12])
    }//selectMinimum

    
    func testSelectMinimumFromHeap() throws {
        let binaryTreeArray = [4,4,8,9,4,12,9,11,13]
        let heap = Heap(array: binaryTreeArray)
        let min = heap.selectMinimum()
        XCTAssertEqual(4, min)
        XCTAssertEqual(heap.getHeap(), [4,4,8,9,13,12,9,11])
    }
    
    func test2SelectMinimumFromHeap() throws {
        let binaryTreeArray = [4,4,8,9,4,12,9,11,13,6,14]
        let heap = Heap(array: binaryTreeArray)
        let min = heap.selectMinimum()
        XCTAssertEqual(4, min)
        XCTAssertEqual(heap.getHeap(), [4,4,8,9,6,12,9,11,13,14])
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
