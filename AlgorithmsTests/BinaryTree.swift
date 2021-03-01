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
    
    func testSameTree() throws {
        // 100. Same Tree
        let tree1Node2 = TreeNode(2)
        let tree1Node3 = TreeNode(3)
        let tree1Node1 = TreeNode(1, tree1Node2, tree1Node3)
        
        let tree2Node2 = TreeNode(2)
        let tree2Node3 = TreeNode(3)
        let tree2Node1 = TreeNode(1, tree2Node2, tree2Node3)
        
        let result = isSameTree(tree1Node1, tree2Node1)
        XCTAssertTrue(result)
    }
    
    func testSymmetricTree() throws {
        // 101. Symmetric Tree
        let node1Left2Left = TreeNode(3)
        let node1Left2Right = TreeNode(4)
        let node1Left2 = TreeNode(2, node1Left2Left, node1Left2Right)
        
        let node1Right2Left = TreeNode(4)
        let node1Right2Right = TreeNode(3)
        let node1Right2 = TreeNode(2, node1Right2Left, node1Right2Right)
        
        let node1 = TreeNode(1, node1Left2, node1Right2)
        
        let result = isSymmetric(node1)
        XCTAssertTrue(result)
    }
    func testSymmetricTree2() throws {
        // 101. Symmetric Tree
        
        let node1 = TreeNode(1)
        
        let result = isSymmetric(node1)
        XCTAssertTrue(result)
    }
    func testSymmetricTree3() throws {
        // 101. Symmetric Tree
        let node2 = TreeNode()
        
        
        let node1 = TreeNode(1, node2, nil)
        
        let result = isSymmetric(node1)
        XCTAssertFalse(result)
    }
    
    
    func testMaximumDepthBinaryTree() throws {
        // 104. Maximum Depth of Binary Tree
        let treeNodeD = TreeNode(15)
        let treeNodeE = TreeNode(7)
        let treeNodeB = TreeNode(9)
        let treeNodeC = TreeNode(20, treeNodeD, treeNodeE)
        let treeNodeA = TreeNode(3, treeNodeB, treeNodeC)
        
        let result = maxDepth(treeNodeA)
        let expectedResult = 3
        XCTAssertEqual(result, expectedResult)
    }
    
    func testMaximumDepthBinaryTree2() throws {
        // 104. Maximum Depth of Binary Tree
        let treeNodeC = TreeNode(2)
        let treeNodeA = TreeNode(1, nil, treeNodeC)
        
        let result = maxDepth(treeNodeA)
        let expectedResult = 2
        XCTAssertEqual(result, expectedResult)
    }
    
    func testMaximumDepthBinaryTree3() throws {
        // 104. Maximum Depth of Binary Tree
        
        let result = maxDepth(nil)
        let expectedResult = 0
        XCTAssertEqual(result, expectedResult)
    }
    
    func testMaximumDepthBinaryTree4() throws {
        // 104. Maximum Depth of Binary Tree
        
        let result = maxDepth(TreeNode(1))
        let expectedResult = 1
        XCTAssertEqual(result, expectedResult)
    }
    
    func testValidateBinarySearch() throws {
        // 98. Validate Binary Search Tree
        
        let treeNodeD = TreeNode(3)
        let treeNodeE = TreeNode(6)
        let treeNodeB = TreeNode(1)
        let treeNodeC = TreeNode(4, treeNodeD, treeNodeE)
        let treeNodeA = TreeNode(5, treeNodeB, treeNodeC)
        
        let result = isValidBST(treeNodeA)
        XCTAssertFalse(result)
    }
    func testValidateBinarySearch2() throws {
        // 98. Validate Binary Search Tree
        
        let treeNodeB = TreeNode(1)
        let treeNodeC = TreeNode(3)
        let treeNodeA = TreeNode(2, treeNodeB, treeNodeC)
        
        let result = isValidBST(treeNodeA)
        XCTAssertTrue(result)
    }
    
    func testValidateBinarySearch3() throws {
        // 98. Validate Binary Search Tree
        
        let treeNodeB = TreeNode(1)
        
        let treeNodeA = TreeNode(0, nil, treeNodeB)
        
        let result = isValidBST(treeNodeA)
        XCTAssertTrue(result)
    }
    
    func testValidateBinarySearch4() throws {
        // 98. Validate Binary Search Tree
        
        let treeNodeD = TreeNode(3)
        let treeNodeE = TreeNode(7)
        let treeNodeB = TreeNode(4, treeNodeD, treeNodeE)
        let treeNodeC = TreeNode(6, nil, nil)
        let treeNodeA = TreeNode(5, treeNodeB, treeNodeC)
        
        let result = isValidBST(treeNodeA)
        XCTAssertFalse(result)
        
    }
    
    func testArrayToBinaryTree() throws {
        //108. Convert Sorted Array to Binary Search Tree
        let nums = [-10,-3,0,5,9]
        
        let treeNodeD = TreeNode(-10)
        let treeNodeE = TreeNode(5)
        let treeNodeB = TreeNode(-3, nil, treeNodeE)
        let treeNodeC = TreeNode(9, treeNodeD, nil)
        let treeNodeA = TreeNode(0, treeNodeB, treeNodeC)
        
        let expectedResult = treeNodeA
        let result = sortedArrayToBST(nums)
        print(result)
        print(expectedResult)
    }
    
    func testArrayToBinaryTree2() throws {
        //108. Convert Sorted Array to Binary Search Tree
        let nums = [1,3]
        let result = sortedArrayToBST(nums)
        print(result)

    }
    
    func testArrayToBinaryTree3() throws {
        //108. Convert Sorted Array to Binary Search Tree
        let nums = [-1, 0, 1, 2]
        let result = sortedArrayToBST(nums)
        print(result)

    }
    
    func testArrayToBinaryTree4() throws {
        //108. Convert Sorted Array to Binary Search Tree
        let nums = [0,1,2,3,4,5] 
        let result = sortedArrayToBST(nums)
        print(result)

    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
