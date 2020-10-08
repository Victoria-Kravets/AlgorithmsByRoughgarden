//
//  DijkstraAlgorithm.swift
//  Algorithms
//
//  Created by Victoria Kravets on 06.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class Path {
    var node: Node
    var edge: Edge?
    var previousPath: Path?
    
    var pathWeight: Int
    
    init(node: Node, edge: Edge? = nil, previousPath: Path? = nil) {
        if let previousPath = previousPath, let edge = edge {
            self.pathWeight = previousPath.pathWeight + edge.lenght
            self.previousPath = previousPath
            self.edge = edge
        } else {
            self.pathWeight = 0
        }
        self.node = node
    }
}

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

func dijkstraSearch(graph: Graph, sourceNode: Node, finishNode: Node) -> Int { // O(*nm*)
    var edges = sourceNode.neighbors
    sourceNode.visited = true
    var shortestLength = 0
    
    while !edges.isEmpty { // O(*m*)
        
        let shortestEdge = edges.min { $0.lenght < $1.lenght } //O(*n*)
        shortestLength += shortestEdge?.lenght ?? 0

        (shortestEdge?.neighbor.neighbors ?? []).forEach { //O(*k*) k < n
            if !$0.neighbor.visited {
                edges.append($0)
            }
        }
        shortestEdge?.neighbor.visited = true
        edges.removeAll(where: { $0 == shortestEdge }) // O(*n*)
        
    }
    
    return shortestLength
}

