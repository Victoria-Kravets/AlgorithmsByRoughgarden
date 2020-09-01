//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Victoria Kravets on 17.08.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import XCTest
@testable import Algorithms

class MergeSortAlgorithmTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMergeSort() throws {
        let mergeAlgorithm =  MergeSortAlgorithm()
        let result = mergeAlgorithm.mergeSort(to: [5, 3, 6, 2, 8, 1, 4, 7])
        XCTAssertEqual(result, [1,2,3,4,5,6,7,8])
    }
    
    func testInsersion1() throws {
        let mergeAlgorithm =  MergeSortAlgorithm()
        let result = mergeAlgorithm.getInversionsCount(from: [1,3,5,2,4,6])
        XCTAssertEqual(result.0, 3)
    }
    
    func testInsersion2() throws {
        let mergeAlgorithm =  MergeSortAlgorithm()
        let result = mergeAlgorithm.getInversionsCount(from: [6,5,4,3,2,1])
        XCTAssertEqual(result.0, 15)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
