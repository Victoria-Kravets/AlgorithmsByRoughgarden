//
//  Path.swift
//  Algorithms
//
//  Created by Victoria Kravets on 20.10.2020.
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
