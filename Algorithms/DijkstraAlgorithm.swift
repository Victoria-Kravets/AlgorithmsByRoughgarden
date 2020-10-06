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
    var shortestLength = 0
    
    
    while !edges.isEmpty { // O(*m*)
        
        let shortestEdge = edges.min { $0.lenght < $1.lenght } //O(*n*)
        shortestLength += shortestEdge?.lenght ?? 0
        edges.append(contentsOf: shortestEdge?.neighbor.neighbors ?? []) //O(*k*) k < n
        edges.removeAll(where: { $0 == shortestEdge }) // O(*n*)
        
    }
    
    return shortestLength
}
