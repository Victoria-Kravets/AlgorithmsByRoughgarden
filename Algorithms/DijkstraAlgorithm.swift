//
//  DijkstraAlgorithm.swift
//  Algorithms
//
//  Created by Victoria Kravets on 06.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

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
