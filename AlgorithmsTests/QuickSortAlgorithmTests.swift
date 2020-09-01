//
//  QuickSortAlgorithmTests.swift
//  AlgorithmsTests
//
//  Created by CallStar on 01.09.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import XCTest
@testable import Algorithms

class QuickSortAlgorithmTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testQuickSort1() throws {
//        let mergeAlgorithm =  QuickSortAlgorithm()
//        var array = [3,2,8,5,1,4,7,6]
//        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
//        XCTAssertEqual(array, [1,2,3,4,5,6,7,8])
//        //k = 5,4,6
//    }
//
//    func testQuickSort2() throws {
//        let mergeAlgorithm =  QuickSortAlgorithm()
//        var array = [11,3,2,9,8,5,1,10,4,7,12,6]
//        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
//        XCTAssertEqual(array, [1,2,3,4,5,6,7,8,9,10,11,12])
//        //k = 7,8,9
//    }
//
//    func testQuickSort3() throws {
//        let mergeAlgorithm =  QuickSortAlgorithm()
//        var array = [4,17,1,13,3,18,6,15,2,5,7,8,11,9,20,10,12,14,16,19]
//        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
//        XCTAssertEqual(array, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
//        //k = 12,14,15,13
//    }
    
//    func testQuickSort4() throws {
//        let mergeAlgorithm =  QuickSortAlgorithm()
//        var array = [6,8,9,2]
//        mergeAlgorithm.quickSort(array: &array, l: 0, r: array.count - 1)
//        XCTAssertEqual(array, [2,6,8,9])
//        //k = 12,14,15,13
//    }
    
    func testRSelect1() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [6,8,9,2]
        let result = mergeAlgorithm.rSelect(array: &array, l: 0, r: array.count - 1, i: 1)
        XCTAssertEqual(result, 6)
    }
    
    func testRSelect2() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [3,2,8,5,1,4,7,6]
        let result = mergeAlgorithm.rSelect(array: &array, l: 0, r: array.count - 1, i: 5)
        XCTAssertEqual(result, 6)
    }
    
    func testRSelect3() throws {
        let mergeAlgorithm =  QuickSortAlgorithm()
        var array = [4,17,1,13,3,18,6,15,2,5,7,8,11,9,20,10,12,14,16,19]
        let result = mergeAlgorithm.rSelect(array: &array, l: 0, r: array.count - 1, i: 16)
        XCTAssertEqual(result, 17)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
