//
//  DijkstraAlgorithm.swift
//  Algorithms
//
//  Created by Victoria Kravets on 06.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

func dijkstraSearch(sourceNode: Node, finishNode: Node) -> Path? {
    
    var paths = [Path]() {
        didSet {
            paths.sort(by: { $0.pathWeight < $1.pathWeight })
        }
    }
    
    paths.append(Path(node: sourceNode))
    
    while !paths.isEmpty {
        let shortestPath = paths.removeFirst()
        
        if shortestPath.node.visited { continue }
        
        if shortestPath.node == finishNode {
            return shortestPath
        }
        
        shortestPath.node.visited = true
        for edge in shortestPath.node.neighbors {
            paths.append(Path(node: edge.neighbor, edge: edge, previousPath: shortestPath))
        }
    }
    
    return nil
}

func dijkstraSearchWithHeap(sourceNode: Node, finishNode: Node) -> Path? {
    let heap = HeapPath()
    heap.insert(element: Path(node: sourceNode))
    
    while !heap.getHeap().isEmpty {
        guard let shortestPath = heap.selectMinimum() else { return heap.findMinimum() }
        if shortestPath.node.visited { continue }
        if shortestPath.node == finishNode {
            return shortestPath
        }
        shortestPath.node.visited = true
        
        for edge in shortestPath.node.neighbors {
            heap.insert(element: Path(node: edge.neighbor, edge: edge, previousPath: shortestPath))
        }        
    }
    
    return heap.findMinimum()
}
