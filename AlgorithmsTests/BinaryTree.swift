//
//  BinaryTree.swift
//  AlgorithmsTests
//
//  Created by Victoria on 24.02.2021.
//  Copyright © 2021 Victoria Kravets. All rights reserved.
//

import XCTest
@testable import Algorithms

class BinaryTree: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
       
        let tree1Node2 = TreeNode(2)
        let tree1Node3 = TreeNode(3)
        let tree1Node1 = TreeNode(1, tree1Node2, tree1Node3)
        
        let tree2Node2 = TreeNode(2)
        let tree2Node3 = TreeNode(3)
        let tree2Node1 = TreeNode(1, tree2Node2, tree2Node3)
        
        let result = isSameTree(tree1Node1, tree2Node1)
        XCTAssertTrue(result)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
