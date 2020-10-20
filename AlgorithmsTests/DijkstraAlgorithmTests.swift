//
//  DijkstraAlgorithmTests.swift
//  AlgorithmsTests
//
//  Created by Victoria Kravets on 20.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import XCTest
@testable import Algorithms

class DijkstraAlgorithmTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDijkstraTree() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        let nodeT = tree.addNode("t")

        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)
        tree.addEdge(nodeV, neighbor: nodeT, lenght: 6)
        tree.addEdge(nodeW, neighbor: nodeT, lenght: 3)
        
        tree.addEdge(nodeT, neighbor: nodeS, lenght: 5)
        let path = dijkstraSearch(sourceNode: nodeS, finishNode: nodeT)
        
        XCTAssertEqual(path?.pathWeight, 6)
    }
    
    func testDijkstraTree2() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        let nodeT = tree.addNode("t")

        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)
        tree.addEdge(nodeV, neighbor: nodeT, lenght: 4)
        tree.addEdge(nodeW, neighbor: nodeT, lenght: 3)
        
        tree.addEdge(nodeT, neighbor: nodeS, lenght: 5)
        let shortestPath = dijkstraSearch(sourceNode: nodeS, finishNode: nodeT)
        
        XCTAssertEqual(shortestPath?.pathWeight, 5)
    }
    
    func testDijkstraTree3() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)

        let shortestPath = dijkstraSearch(sourceNode: nodeS, finishNode: nodeW)
        
        XCTAssertEqual(shortestPath?.pathWeight, 3)
    }
    
    func testDijkstraSearchWithHeap() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        let nodeT = tree.addNode("t")

        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)
        tree.addEdge(nodeV, neighbor: nodeT, lenght: 6)
        tree.addEdge(nodeW, neighbor: nodeT, lenght: 3)
        
        tree.addEdge(nodeT, neighbor: nodeS, lenght: 5)
        let path = dijkstraSearchWithHeap(sourceNode: nodeS, finishNode: nodeT)
        
        XCTAssertEqual(path?.pathWeight, 6)
    }
    
    func testDijkstraSearchWithHeap2() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        let nodeT = tree.addNode("t")

        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)
        tree.addEdge(nodeV, neighbor: nodeT, lenght: 4)
        tree.addEdge(nodeW, neighbor: nodeT, lenght: 3)
        
        tree.addEdge(nodeT, neighbor: nodeS, lenght: 5)
        let shortestPath = dijkstraSearchWithHeap(sourceNode: nodeS, finishNode: nodeT)
        
        XCTAssertEqual(shortestPath?.pathWeight, 5)
    }
    
    func testDijkstraSearchWithHeap3() {
        let tree = Graph()
        
        let nodeS = tree.addNode("s")
        let nodeV = tree.addNode("v")
        let nodeW = tree.addNode("w")
        
        tree.addEdge(nodeS, neighbor: nodeV, lenght: 1)
        tree.addEdge(nodeS, neighbor: nodeW, lenght: 4)
        tree.addEdge(nodeV, neighbor: nodeW, lenght: 2)

        let shortestPath = dijkstraSearchWithHeap(sourceNode: nodeS, finishNode: nodeW)
        
        XCTAssertEqual(shortestPath?.pathWeight, 3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
