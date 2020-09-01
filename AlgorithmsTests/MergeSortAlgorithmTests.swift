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
    
    func testQuickSort1() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [3,2,8,5,1,4,7,6]
        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
        XCTAssertEqual(array, [1,2,3,4,5,6,7,8])
        //k = 5,4,6
    }
    
    func testQuickSort2() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [11,3,2,9,8,5,1,10,4,7,12,6]
        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
        XCTAssertEqual(array, [1,2,3,4,5,6,7,8,9,10,11,12])
        //k = 7,8,9
    }
    
    func testQuickSort3() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [4,17,1,13,3,18,6,15,2,5,7,8,11,9,20,10,12,14,16,19]
        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
        XCTAssertEqual(array, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
        //k = 12,14,15,13
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
